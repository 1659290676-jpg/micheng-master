import Phaser from 'phaser';
import { TileFaction } from '../battle/tile/TileFaction';
import type { Tile } from '../battle/tile/Tile';
import type { GridSystem } from '../battle/grid/GridSystem';
import type { BuildingKind, UnitKind } from '../game/BuildingKinds';
import type { GameManager } from '../game/GameManager';
import { COMBAT_BALANCE, type BarracksTier } from '../game/CombatBalance';
import { CooldownRing } from '../ui/CooldownRing';

export interface BuildingOpts {
  cdSeconds: number;
  spawnUnit?: UnitKind;
  barracksTier?: BarracksTier;
  goldPulse?: { intervalSec: number; amount: number };
  attack?: {
    intervalSec: number;
    damage: number;
    rangeHex: number;
    soldiersOnly: boolean;
  };
}

export class Building {
  hp: number;
  maxHp: number;
  readonly kind: BuildingKind;
  readonly faction: TileFaction;
  readonly tile: Tile;
  readonly sprite: Phaser.GameObjects.Image;
  readonly spawnUnit: UnitKind;
  readonly barracksTier?: BarracksTier;

  private cdRing?: CooldownRing;
  private primaryCdElapsed = 0;
  private readonly primaryCdTotal: number;
  private goldCdElapsed = 0;
  private readonly goldCdTotal: number;
  private readonly goldPerPulse: number;
  private attackCdElapsed = 0;
  private readonly attackCdTotal: number;
  private readonly attackDamage: number;
  private readonly attackRange: number;
  private readonly attackSoldiersOnly: boolean;
  private cdTick?: Phaser.Time.TimerEvent;

  constructor(
    scene: Phaser.Scene,
    private grid: GridSystem,
    private game: GameManager,
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
    this.barracksTier = opts.barracksTier;
    this.primaryCdTotal = opts.cdSeconds;
    tile.building = this;
    tile.buildingSprite = sprite;

    const gold = opts.goldPulse;
    this.goldCdTotal = gold?.intervalSec ?? 0;
    this.goldPerPulse = gold?.amount ?? 0;

    const atk = opts.attack;
    this.attackCdTotal = atk?.intervalSec ?? 0;
    this.attackDamage = atk?.damage ?? 0;
    this.attackRange = atk?.rangeHex ?? 0;
    this.attackSoldiersOnly = atk?.soldiersOnly ?? true;

    const needsTick =
      kind.startsWith('barracks') ||
      kind === 'gold_mine' ||
      kind === 'arrow_tower' ||
      kind === 'lord_base';

    if (needsTick) {
      this.cdRing = new CooldownRing(scene, sprite.x, sprite.y - 4, 22);
      this.cdTick = scene.time.addEvent({
        delay: 50,
        loop: true,
        callback: () => this.tick(0.05),
      });
    }
  }

  /** 建造完成立即出一只兵 */
  spawnNow(): void {
    if (!this.kind.startsWith('barracks') || this.hp <= 0) return;
    this.spawnUnitEntity();
    this.primaryCdElapsed = 0;
    this.cdRing?.setProgress(0);
  }

  takeDamage(amount: number, attacker?: TileFaction): void {
    if (this.hp <= 0) return;
    this.hp -= amount;
    const atk = attacker ?? opposite(this.faction);
    this.grid.combatText?.damage(this.sprite.x, this.sprite.y, amount, atk);
    this.sprite.setAlpha(0.65 + 0.35 * (this.hp / this.maxHp));
    if (this.hp <= 0) this.grid.destroyBuilding(this, atk);
  }

  private tick(dt: number): void {
    if (this.hp <= 0 || this.kind === 'wall') return;

    if (this.goldCdTotal > 0) {
      this.goldCdElapsed += dt;
      if (this.goldCdElapsed >= this.goldCdTotal) {
        this.goldCdElapsed = 0;
        this.game.grantGold(this.faction, this.goldPerPulse);
        if (this.faction === TileFaction.Player) {
          this.grid.combatText?.goldReward(
            this.sprite.x,
            this.sprite.y - 18,
            this.goldPerPulse,
          );
        }
      }
    }

    if (this.attackCdTotal > 0) {
      this.attackCdElapsed += dt;
      if (this.attackCdElapsed >= this.attackCdTotal) {
        this.attackCdElapsed = 0;
        this.fireAttack();
      }
    }

    if (!this.kind.startsWith('barracks')) {
      this.updatePassiveCdRing();
      return;
    }

    this.primaryCdElapsed += dt;
    this.cdRing?.setProgress(Math.min(1, this.primaryCdElapsed / this.primaryCdTotal));
    this.cdRing?.setPosition(this.sprite.x, this.sprite.y - 2);
    if (this.primaryCdElapsed < this.primaryCdTotal) return;
    this.primaryCdElapsed = 0;
    this.cdRing?.setProgress(0);
    this.spawnUnitEntity();
  }

  private spawnUnitEntity(): void {
    if (this.grid.countSoldiers(this.faction) >= 48) return;
    const spot = this.grid.findSpawnTileForBarracks(
      this.tile.col,
      this.tile.row,
      this.faction,
    );
    if (!spot) return;
    this.grid.spawnUnit(
      spot.col,
      spot.row,
      this.faction,
      this.spawnUnit,
      { x: this.sprite.x, y: this.sprite.y - 6 },
    );
  }

  private updatePassiveCdRing(): void {
    const total =
      this.attackCdTotal > 0 ? this.attackCdTotal : this.goldCdTotal;
    const elapsed =
      this.attackCdTotal > 0 ? this.attackCdElapsed : this.goldCdElapsed;
    if (total <= 0) return;
    this.cdRing?.setProgress(Math.min(1, elapsed / total));
    this.cdRing?.setPosition(this.sprite.x, this.sprite.y - 2);
  }

  private fireAttack(): void {
    const target = this.grid.findNearestEnemyInRange(
      this.tile.col,
      this.tile.row,
      this.faction,
      this.attackRange,
      this.attackSoldiersOnly,
    );
    if (!target?.soldier) return;
    const atk = opposite(this.faction);
    target.soldier.takeDamage(this.attackDamage, atk);
  }

  destroy(): void {
    this.cdTick?.destroy();
    this.cdRing?.destroy();
    this.sprite.destroy();
    this.tile.building = undefined;
    this.tile.buildingSprite = undefined;
    this.grid.refreshTerritoryDecals();
  }
}

export function lordBaseOpts(): BuildingOpts {
  const b = COMBAT_BALANCE.lordBase;
  return {
    cdSeconds: 9999,
    goldPulse: { intervalSec: b.goldIntervalSec, amount: b.goldPerPulse },
    attack: {
      intervalSec: b.attackIntervalSec,
      damage: b.attackDamage,
      rangeHex: b.attackRangeHex,
      soldiersOnly: true,
    },
  };
}

export function goldMineOpts(): BuildingOpts {
  const m = COMBAT_BALANCE.goldMine;
  return {
    cdSeconds: m.goldIntervalSec,
    goldPulse: { intervalSec: m.goldIntervalSec, amount: m.goldPerPulse },
  };
}

export function arrowTowerOpts(): BuildingOpts {
  const t = COMBAT_BALANCE.arrowTower;
  return {
    cdSeconds: t.attackIntervalSec,
    attack: {
      intervalSec: t.attackIntervalSec,
      damage: t.attackDamage,
      rangeHex: t.attackRangeHex,
      soldiersOnly: true,
    },
  };
}

export function barracksOpts(tier: BarracksTier, unit: UnitKind): BuildingOpts {
  const s = COMBAT_BALANCE.barracks[tier];
  return {
    cdSeconds: s.spawnIntervalSec,
    spawnUnit: unit,
    barracksTier: tier,
  };
}

function opposite(f: TileFaction): TileFaction {
  return f === TileFaction.Player ? TileFaction.Enemy : TileFaction.Player;
}
