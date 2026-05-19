import type { GameManager } from './GameManager';
import type { GridSystem } from '../battle/grid/GridSystem';
import { GachaManager } from './GachaManager';
import { TileFaction } from '../battle/tile/TileFaction';
import type { Tile } from '../battle/tile/Tile';

/** 简易敌方 AI：周期性在己方领地抽卡/造矿 */
export class EnemyAI {
  private timer = 0;
  private gacha = new GachaManager();

  constructor(
    private game: GameManager,
    private grid: GridSystem,
  ) {}

  update(deltaMs: number): void {
    if (this.game.matchOver) return;
    this.timer += deltaMs;
    if (this.timer < 2500) return;
    this.timer = 0;

    const tile = this.pickRandomEnemyTile();
    if (!tile) return;

    const roll = Math.random();
    if (roll < 0.35 && this.game.trySpendEnemyGold(50)) {
      this.grid.placeMine(tile, TileFaction.Enemy);
    } else if (roll < 0.7 && this.game.trySpendEnemyGold(50)) {
      const rarity = this.gacha.roll(50);
      if (rarity !== 'none') this.grid.placeBarracks(tile, TileFaction.Enemy, rarity);
    } else if (this.game.trySpendEnemyGold(25)) {
      const rarity = this.gacha.roll(25);
      if (rarity !== 'none') this.grid.placeBarracks(tile, TileFaction.Enemy, rarity);
    }
  }

  private pickRandomEnemyTile(): Tile | null {
    const candidates: Tile[] = [];
    for (const t of this.grid.getAllTiles()) {
      if (this.grid.canEnemyBuild(t)) candidates.push(t);
    }
    if (candidates.length === 0) return null;
    return candidates[Math.floor(Math.random() * candidates.length)];
  }
}
