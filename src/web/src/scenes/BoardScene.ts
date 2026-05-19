import Phaser from 'phaser';
import { GridSystem } from '../battle/grid/GridSystem';
import type { Tile } from '../battle/tile/Tile';
import { TileFaction } from '../battle/tile/TileFaction';
import { GameManager, type MatchResult } from '../game/GameManager';
import { GachaManager } from '../game/GachaManager';
import { EnemyAI } from '../game/EnemyAI';
import { GameHud } from '../ui/GameHud';

export class BoardScene extends Phaser.Scene {
  private grid!: GridSystem;
  private gameManager!: GameManager;
  private gacha = new GachaManager();
  private hud!: GameHud;
  private enemyAI!: EnemyAI;

  constructor() {
    super('Board');
  }

  create(): void {
    this.grid = new GridSystem(this);
    this.grid.buildBoard();

    let hudRef!: GameHud;
    this.gameManager = new GameManager(
      this,
      this.grid,
      (msg) => hudRef.showToast(msg),
      (result) => this.onMatchEnd(result),
    );
    this.hud = hudRef = new GameHud(this, this.gameManager);
    this.gameManager.reset();
    this.enemyAI = new EnemyAI(this.gameManager, this.grid);

    this.events.on('tile-clicked', (tile: Tile) => this.onTileClicked(tile));

    this.add
      .text(12, 92, '咪城大师 PVP · 底部选建造 · 绿方=你 红方=AI', {
        fontSize: '13px',
        color: '#94a3b8',
      })
      .setDepth(100);
  }

  update(_time: number, delta: number): void {
    if (this.gameManager.matchOver) return;
    this.gameManager.update(delta);
    this.enemyAI.update(delta);
    this.hud.refresh();
  }

  private onTileClicked(tile: Tile): void {
    if (this.gameManager.matchOver) return;

    const mode = this.gameManager.buildMode;
    if (mode === 'none') {
      this.hud.showToast(`格(${tile.col},${tile.row})`);
      return;
    }

    if (!this.grid.canPlayerBuild(tile)) {
      this.hud.showToast('只能在自己领地的空格建造');
      return;
    }

    if (mode === 'mine') {
      if (!this.gameManager.trySpendPlayerGold(50)) return;
      this.grid.placeMine(tile, TileFaction.Player);
      this.hud.showToast('建造金矿！全局产金 +2/秒');
      return;
    }

    if (mode === 'mystery25') {
      if (!this.gameManager.trySpendPlayerGold(25)) return;
      const rarity = this.gacha.roll(25);
      if (rarity === 'none') {
        this.hud.showToast('问号盲盒：什么都没有…');
        return;
      }
      this.grid.placeBarracks(tile, TileFaction.Player, rarity);
      this.hud.showToast(`问号开出【${rarity}】兵营`);
      return;
    }

    const cost = mode === 'barracks50' ? 50 : mode === 'barracks100' ? 100 : 250;
    if (mode.startsWith('barracks')) {
      if (!this.gameManager.trySpendPlayerGold(cost)) return;
      const rarity = this.gacha.roll(cost as 50 | 100 | 250);
      this.grid.placeBarracks(tile, TileFaction.Player, rarity);
      this.hud.showToast(`建造【${rarity}】兵营`);
    }
  }

  private onMatchEnd(result: MatchResult): void {
    this.scene.pause();
    this.hud.showEndPanel(result, () => {
      this.scene.resume();
      this.scene.restart();
    });
  }
}
