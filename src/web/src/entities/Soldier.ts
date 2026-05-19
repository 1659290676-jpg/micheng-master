import Phaser from 'phaser';
import { TileFaction } from '../battle/tile/TileFaction';
import type { Tile } from '../battle/tile/Tile';
import type { GridSystem } from '../battle/grid/GridSystem';
import { findHexPath } from '../pathfinding/HexAStar';
import type { BarracksRarity } from '../game/GachaManager';

const RARITY_STATS: Record<
  BarracksRarity,
  { hp: number; attack: number; moveInterval: number }
> = {
  none: { hp: 80, attack: 10, moveInterval: 450 },
  normal: { hp: 110, attack: 18, moveInterval: 420 },
  rare: { hp: 130, attack: 28, moveInterval: 400 },
  epic: { hp: 200, attack: 45, moveInterval: 380 },
  legendary: { hp: 380, attack: 65, moveInterval: 360 },
};

export class Soldier {
  hp: number;
  maxHp: number;
  attack: number;
  readonly faction: TileFaction;
  tile: Tile;
  readonly sprite: Phaser.GameObjects.Image;

  private path: Array<{ col: number; row: number }> = [];
  private moveTimer?: Phaser.Time.TimerEvent;
  private combatTimer?: Phaser.Time.TimerEvent;
  private inCombat = false;

  constructor(
    private scene: Phaser.Scene,
    private grid: GridSystem,
    tile: Tile,
    faction: TileFaction,
    sprite: Phaser.GameObjects.Image,
    rarity: BarracksRarity = 'normal',
  ) {
    this.tile = tile;
    this.faction = faction;
    this.sprite = sprite;
    const stats = RARITY_STATS[rarity] ?? RARITY_STATS.normal;
    this.maxHp = stats.hp;
    this.hp = stats.hp;
    this.attack = stats.attack;
    tile.soldier = this;
    this.refreshPath();
    this.startMoveLoop(stats.moveInterval);
    this.startCombatLoop();
  }

  takeDamage(amount: number): void {
    if (this.hp <= 0) return;
    this.hp -= amount;
    this.sprite.setScale(0.85 + 0.15 * (this.hp / this.maxHp));
    if (this.hp <= 0) this.grid.destroySoldier(this);
  }

  private startMoveLoop(intervalMs: number): void {
    this.moveTimer = this.scene.time.addEvent({
      delay: intervalMs,
      loop: true,
      callback: () => this.stepMove(),
    });
  }

  private startCombatLoop(): void {
    this.combatTimer = this.scene.time.addEvent({
      delay: 1000,
      loop: true,
      callback: () => this.combatTick(),
    });
  }

  private combatTick(): void {
    if (this.hp <= 0) return;
    const adj = this.grid.getAdjacentEnemies(this.tile.col, this.tile.row, this.faction);
    if (adj.length === 0) {
      this.inCombat = false;
      return;
    }
    this.inCombat = true;
    const target = adj[0];
    if (target.building) target.building.takeDamage(this.attack);
    else if (target.soldier) target.soldier.takeDamage(this.attack);
  }

  private stepMove(): void {
    if (this.hp <= 0 || this.inCombat) return;

    if (this.path.length === 0) this.refreshPath();
    if (this.path.length === 0) return;

    const next = this.path.shift()!;
    const nextTile = this.grid.getTile(next.col, next.row);
    if (!nextTile || nextTile.isObstacleForPath() || nextTile.soldier) {
      this.refreshPath();
      return;
    }

    this.tile.soldier = undefined;
    this.tile = nextTile;
    this.tile.soldier = this;
    this.sprite.setPosition(nextTile.sprite.x, nextTile.sprite.y - 8);

    this.grid.captureTile(nextTile, this.faction);

    const adj = this.grid.getAdjacentEnemies(next.col, next.row, this.faction);
    if (adj.length > 0) this.inCombat = true;
  }

  private refreshPath(): void {
    const goal = this.grid.findTargetForSoldier(this.tile.col, this.tile.row, this.faction);
    if (!goal) {
      this.path = [];
      return;
    }
    const full = findHexPath(
      this.tile.col,
      this.tile.row,
      goal.col,
      goal.row,
      (c, r) => {
        const t = this.grid.getTile(c, r);
        if (!t) return false;
        if (t.col === goal.col && t.row === goal.row) return true;
        return !t.isObstacleForPath() && !t.soldier;
      },
    );
    this.path = full;
  }

  destroy(): void {
    this.moveTimer?.destroy();
    this.combatTimer?.destroy();
    this.tile.soldier = undefined;
    this.sprite.destroy();
  }
}
