import Phaser from 'phaser';
import type { GridSystem } from '../battle/grid/GridSystem';
import type { Tile } from '../battle/tile/Tile';
import { TileFaction } from '../battle/tile/TileFaction';
import type { GameManager } from '../game/GameManager';
import { GachaManager, type BarracksRarity } from '../game/GachaManager';
import type { FrontierManager } from './FrontierManager';
import {
  barracksCost,
  BLUEPRINT_LABELS,
  type BlueprintType,
} from '../game/BlueprintTypes';
import { playBuildTileFlip } from '../battle/view/TileFlipFX';

const MYSTERY_RESULT_LABEL: Record<BarracksRarity, string> = {
  none: '什么都没有',
  normal: '普通品质兵营',
  rare: '稀有兵营',
  epic: '史诗品质兵营',
  legendary: '传奇品质兵营',
};

export class BuildSystem {
  private gacha = new GachaManager();

  constructor(
    private scene: Phaser.Scene,
    private grid: GridSystem,
    private frontier: FrontierManager,
    private game: GameManager,
    private onToast: (msg: string) => void,
  ) {}

  tryPlayerBuild(tile: Tile): void {
    if (tile.building?.kind === 'wall') {
      this.onToast('这里是城墙，无法建造');
      return;
    }
    const bp = this.frontier.getPlayerBlueprint(tile);
    if (!bp) {
      this.onToast('请点击领主塔旁带图纸的绿格');
      return;
    }
    if (!this.grid.isFrontierBuildable(tile, TileFaction.Player)) {
      this.onToast('需要在己方建筑旁的空格建造');
      return;
    }

    const cost = this.getEffectiveCost(bp);
    if (!this.game.trySpendPlayerGold(cost)) return;

    this.frontier.clearPlayerBlueprint(tile);
    playBuildTileFlip(this.scene, tile, () => {
      this.executeBlueprint(tile, TileFaction.Player, bp);
      this.frontier.refreshAfterBuild(TileFaction.Player);
    });
  }

  tryEnemyBuild(tile: Tile, bp: BlueprintType): boolean {
    const cost = this.getEffectiveCost(bp);
    if (!this.game.trySpendEnemyGold(cost)) return false;
    if (!this.grid.isFrontierBuildable(tile, TileFaction.Enemy)) return false;
    this.executeBlueprint(tile, TileFaction.Enemy, bp);
    this.frontier.refreshAfterBuild(TileFaction.Enemy);
    return true;
  }

  private getEffectiveCost(bp: BlueprintType): number {
    const barracks = barracksCost(bp);
    if (barracks) return barracks;
    if (bp === 'mystery') return 25;
    return 50;
  }

  private executeBlueprint(
    tile: Tile,
    faction: TileFaction,
    bp: BlueprintType,
  ): void {
    switch (bp) {
      case 'tower':
        this.grid.placeTower(tile, faction);
        break;
      case 'mine':
        this.grid.placeMine(tile, faction);
        break;
      case 'mystery': {
        const rarity = this.gacha.roll(25);
        if (rarity === 'none') {
          if (faction === TileFaction.Player) {
            this.onToast(`盲盒：${MYSTERY_RESULT_LABEL.none}`);
          }
          return;
        }
        this.grid.placeBarracks(tile, faction, rarity);
        if (faction === TileFaction.Player) {
          this.onToast(`盲盒开出：${MYSTERY_RESULT_LABEL[rarity]}`);
        }
        break;
      }
      case 'barracks_low':
      case 'barracks_mid':
      case 'barracks_high': {
        const c = barracksCost(bp)!;
        const rarity = this.gacha.roll(c);
        this.grid.placeBarracks(tile, faction, rarity);
        if (faction === TileFaction.Player) {
          this.onToast(`建造 ${BLUEPRINT_LABELS[bp]}，已出兵！`);
        }
        break;
      }
    }
  }
}
