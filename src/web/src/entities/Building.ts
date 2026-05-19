import Phaser from 'phaser';
import { TileFaction } from '../battle/tile/TileFaction';
import type { Tile } from '../battle/tile/Tile';
import type { GridSystem } from '../battle/grid/GridSystem';
import type { BuildingKind, UnitKind } from '../game/BuildingKinds';
import { CooldownRing } from '../ui/CooldownRing';

interface BuildingOpts {
  cdSeconds: number;
  spawnUnit?: UnitKind;
}

export class Building {
  hp: number;
  maxHp: number;
  readonly kind: BuildingKind;
  readonly faction: TileFaction;
  readonly tile: Tile;
  readonly sprite: Phaser.GameObjects.Image;
  readonly spawnUnit: UnitKind;

  private cdRing: CooldownRing;
  private cdElapsed = 0;
  private readonly cdTotal: number;
  private cdTick?: Phaser.Time.TimerEvent;

  constructor(
    scene: Phaser.Scene,
    private grid: GridSystem,
    tile: Tile,
    kind: BuildingKind,
    faction: TileFaction,
    sprite: Phaser.GameObjects.Image,
    maxHp: number,
    opts: BuildingOpts,
  ) {
    this.tile = tile;
    this.kind = kind;
    this.faction = faction;
    this.sprite = sprite;
    this.maxHp = maxHp;
    this.hp = maxHp;
    this.spawnUnit = opts.spawnUnit ?? 'melee';
    this.cdTotal = opts.cdSeconds;
    tile.building = this;
    tile.buildingSprite = sprite;

    this.cdRing = new CooldownRing(scene, sprite.x, sprite.y - 4, 22);
    if (kind.startsWith('barracks')) {
      this.cdTick = scene.time.addEvent({
        delay: 50,
        loop: true,
        callback: () => this.tickCd(0.05),
      });
    } else if (
      kind === 'arrow_tower' ||
      kind === 'aoe_tower' ||
      kind === 'gold_mine' ||
      kind === 'lord_base'
    ) {
      this.cdTick = scene.time.addEvent({
        delay: 50,
        loop: true,
        callback: () => this.tickCd(0.05),
      });
    }
  }

  /** 建造完成立即出一只兵 */
  spawnNow(): void {
    if (!this.kind.startsWith('barracks') || this.hp <= 0) return;
    this.spawnUnitEntity();
    this.cdElapsed = 0;
    this.cdRing.setProgress(0);
  }

  takeDamage(amount: number, attacker?: TileFaction): void {
    if (this.hp <= 0) return;
    this.hp -= amount;
    const atk = attacker ?? opposite(this.faction);
    this.grid.combatText?.damage(this.sprite.x, this.sprite.y, amount, atk);
    this.sprite.setAlpha(0.65 + 0.35 * (this.hp / this.maxHp));
    if (this.hp <= 0) this.grid.destroyBuilding(this, atk);
  }

  private tickCd(dt: number): void {
    if (this.hp <= 0 || this.kind === 'wall') return;
    this.cdElapsed += dt;
    this.cdRing.setProgress(Math.min(1, this.cdElapsed / this.cdTotal));
    this.cdRing.setPosition(this.sprite.x, this.sprite.y - 2);
    if (this.cdElapsed < this.cdTotal) return;
    this.cdElapsed = 0;
    this.cdRing.setProgress(0);
    if (this.kind.startsWith('barracks')) this.spawnUnitEntity();
    if (this.kind === 'arrow_tower' || this.kind === 'aoe_tower') this.fireTower();
  }

  private spawnUnitEntity(): void {
    if (this.grid.countSoldiers(this.faction) >= 48) return;
    const spot = this.grid.findSpawnTileForBarracks(
      this.tile.col,
      this.tile.row,
      this.faction,
    );
    if (!spot) return;
    this.grid.spawnUnit(spot.col, spot.row, this.faction, this.spawnUnit);
  }

  private fireTower(): void {
    const range = this.kind === 'aoe_tower' ? 2 : 3;
    const dmg = this.kind === 'aoe_tower' ? 28 : 40;
    const target = this.grid.findNearestEnemyUnitOrBuilding(
      this.tile.col,
      this.tile.row,
      this.faction,
      range,
    );
    const atk = opposite(this.faction);
    if (target?.building) target.building.takeDamage(dmg, atk);
    else if (target?.soldier) target.soldier.takeDamage(dmg, atk);
  }

  destroy(): void {
    this.cdTick?.destroy();
    this.cdRing.destroy();
    this.sprite.destroy();
    this.tile.building = undefined;
    this.tile.buildingSprite = undefined;
    this.grid.refreshTerritoryDecals();
  }
}

function opposite(f: TileFaction): TileFaction {
  return f === TileFaction.Player ? TileFaction.Enemy : TileFaction.Player;
}
