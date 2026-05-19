import Phaser from 'phaser';
import type { GridSystem } from '../battle/grid/GridSystem';
import { TileFaction } from '../battle/tile/TileFaction';

export type BuildMode =
  | 'none'
  | 'mine'
  | 'mystery25'
  | 'barracks50'
  | 'barracks100'
  | 'barracks250';

export type MatchResult = 'none' | 'player_win' | 'enemy_win';

export class GameManager {
  playerGold = 100;
  enemyGold = 100;

  readonly startingGold = 100;
  readonly baseGoldPerSec = 5;
  readonly mineBonusPerSec = 2;
  readonly matchDurationSec = 180;

  timeLeftSec = 180;
  matchOver = false;
  result: MatchResult = 'none';

  buildMode: BuildMode = 'none';

  private goldAccumulator = 0;
  private enemyGoldAccumulator = 0;

  constructor(
    _scene: Phaser.Scene,
    private grid: GridSystem,
    private onToast: (msg: string) => void,
    private onMatchEnd: (result: MatchResult) => void,
  ) {}

  reset(): void {
    this.playerGold = this.startingGold;
    this.enemyGold = this.startingGold;
    this.timeLeftSec = this.matchDurationSec;
    this.matchOver = false;
    this.result = 'none';
    this.buildMode = 'none';
    this.goldAccumulator = 0;
    this.enemyGoldAccumulator = 0;
  }

  setBuildMode(mode: BuildMode): void {
    this.buildMode = mode;
    const labels: Record<BuildMode, string> = {
      none: '浏览',
      mine: '建造金矿 (50金)',
      mystery25: '问号盲盒 (25金)',
      barracks50: '兵营抽卡 (50金)',
      barracks100: '兵营抽卡 (100金)',
      barracks250: '兵营抽卡 (250金)',
    };
    this.onToast(`模式：${labels[mode]}`);
  }

  update(deltaMs: number): void {
    if (this.matchOver) return;

    const dt = deltaMs / 1000;
    this.timeLeftSec = Math.max(0, this.timeLeftSec - dt);
    if (this.timeLeftSec <= 0) {
      this.resolveByTileCount();
      return;
    }

    const playerMines = this.grid.countBuildings(TileFaction.Player, 'mine');
    const enemyMines = this.grid.countBuildings(TileFaction.Enemy, 'mine');
    const playerRate = this.baseGoldPerSec + playerMines * this.mineBonusPerSec;
    const enemyRate = this.baseGoldPerSec + enemyMines * this.mineBonusPerSec;

    this.goldAccumulator += playerRate * dt;
    this.enemyGoldAccumulator += enemyRate * dt;

    while (this.goldAccumulator >= 1) {
      this.playerGold += 1;
      this.goldAccumulator -= 1;
    }
    while (this.enemyGoldAccumulator >= 1) {
      this.enemyGold += 1;
      this.enemyGoldAccumulator -= 1;
    }

    if (this.grid.isBaseDestroyed(TileFaction.Player)) {
      this.endMatch('enemy_win');
    } else if (this.grid.isBaseDestroyed(TileFaction.Enemy)) {
      this.endMatch('player_win');
    }
  }

  trySpendPlayerGold(amount: number): boolean {
    if (this.playerGold < amount) {
      this.onToast(`金币不足！需要 ${amount}，当前 ${Math.floor(this.playerGold)}`);
      return false;
    }
    this.playerGold -= amount;
    return true;
  }

  trySpendEnemyGold(amount: number): boolean {
    if (this.enemyGold < amount) return false;
    this.enemyGold -= amount;
    return true;
  }

  endMatch(result: MatchResult): void {
    if (this.matchOver) return;
    this.matchOver = true;
    this.result = result;
    this.onMatchEnd(result);
  }

  private resolveByTileCount(): void {
    const { player, enemy } = this.grid.countTilesByFaction();
    if (player > enemy) this.endMatch('player_win');
    else if (enemy > player) this.endMatch('enemy_win');
    else this.endMatch('player_win');
  }

  getTileCounts(): { player: number; enemy: number } {
    return this.grid.countTilesByFaction();
  }
}
