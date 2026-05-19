import Phaser from 'phaser';
import { TileFaction } from '../battle/tile/TileFaction';
import type { Tile } from '../battle/tile/Tile';
import type { GridSystem } from '../battle/grid/GridSystem';
import type { BarracksRarity } from '../game/GachaManager';

export type BuildingKind = 'base' | 'mine' | 'barracks' | 'tower';

export class Building {
  hp: number;
  maxHp: number;
  readonly kind: BuildingKind;
  readonly faction: TileFaction;
  readonly tile: Tile;
  readonly sprite: Phaser.GameObjects.Image;
  readonly barracksRarity?: BarracksRarity;
  private spawnTimer?: Phaser.Time.TimerEvent;
  private attackTimer?: Phaser.Time.TimerEvent;

  constructor(
    private scene: Phaser.Scene,
    private grid: GridSystem,
    tile: Tile,
    kind: BuildingKind,
    faction: TileFaction,
    sprite: Phaser.GameObjects.Image,
    maxHp: number,
    barracksRarity?: BarracksRarity,
  ) {
    this.tile = tile;
    this.kind = kind;
    this.faction = faction;
    this.sprite = sprite;
    this.maxHp = maxHp;
    this.hp = maxHp;
    this.barracksRarity = barracksRarity;
    tile.building = this;
    tile.buildingSprite = sprite;

    if (kind === 'barracks') this.startBarracksSpawn();
    if (kind === 'tower') this.startTowerAttack();
  }

  takeDamage(amount: number): void {
    if (this.hp <= 0) return;
    this.hp -= amount;
    this.sprite.setAlpha(0.6 + 0.4 * (this.hp / this.maxHp));
    if (this.hp <= 0) this.grid.destroyBuilding(this);
  }

  private startBarracksSpawn(): void {
    this.spawnTimer = this.scene.time.addEvent({
      delay: 5000,
      loop: true,
      callback: () => this.spawnSoldier(),
    });
  }

  private spawnSoldier(): void {
    if (this.hp <= 0) return;
    const spot = this.grid.findAdjacentEmptyTile(this.tile.col, this.tile.row);
    if (!spot) return;
    this.grid.spawnSoldier(spot.col, spot.row, this.faction, this.barracksRarity ?? 'normal');
  }

  private startTowerAttack(): void {
    this.attackTimer = this.scene.time.addEvent({
      delay: 1500,
      loop: true,
      callback: () => {
        const target = this.grid.findNearestEnemyUnitOrBuilding(
          this.tile.col,
          this.tile.row,
          this.faction,
          3,
        );
        if (target?.building) target.building.takeDamage(40);
        else if (target?.soldier) target.soldier.takeDamage(40);
      },
    });
  }

  destroy(): void {
    this.spawnTimer?.destroy();
    this.attackTimer?.destroy();
    this.sprite.destroy();
    this.tile.building = undefined;
    this.tile.buildingSprite = undefined;
  }
}
