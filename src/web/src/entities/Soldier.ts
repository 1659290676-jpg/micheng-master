import Phaser from 'phaser';
import { TileFaction } from '../battle/tile/TileFaction';
import type { Tile } from '../battle/tile/Tile';
import type { GridSystem } from '../battle/grid/GridSystem';
import { getHexNeighbors, hexDistance } from '../battle/hex/HexCoords';
import { findHexPath } from '../pathfinding/HexAStar';
import type { UnitKind } from '../game/BuildingKinds';
import { UNIT_TEXTURE } from '../game/BuildingKinds';
import { barracksTierForUnit, COMBAT_BALANCE } from '../game/CombatBalance';

export class Soldier {
  hp: number;
  maxHp: number;
  attack: number;
  readonly faction: TileFaction;
  readonly unitKind: UnitKind;
  readonly flying: boolean;
  readonly attackRange: number;
  readonly buildingDmgMul: number;
  tile: Tile;
  readonly sprite: Phaser.GameObjects.Image;

  private path: Array<{ col: number; row: number }> = [];
  private moveTimer?: Phaser.Time.TimerEvent;
  private combatTimer?: Phaser.Time.TimerEvent;
  private goalCol = 0;
  private goalRow = 0;
  private stuckTicks = 0;

  constructor(
    private scene: Phaser.Scene,
    private grid: GridSystem,
    tile: Tile,
    faction: TileFaction,
    sprite: Phaser.GameObjects.Image,
    unitKind: UnitKind = 'melee',
  ) {
    this.tile = tile;
    this.faction = faction;
    this.unitKind = unitKind;
    this.sprite = sprite;
    const tier = barracksTierForUnit(unitKind);
    const stats = COMBAT_BALANCE.barracks[tier];
    this.maxHp = stats.unitHp;
    this.hp = stats.unitHp;
    this.attack = stats.unitAttack;
    this.flying = unitKind === 'flying';
    this.attackRange = stats.attackRangeHex;
    this.buildingDmgMul = unitKind === 'siege' ? 1.5 : 1;
    tile.soldier = this;
    this.refreshPath();
    this.startMoveLoop(stats.moveIntervalMs);
    this.startCombatLoop();
  }

  static textureKey(faction: TileFaction, kind: UnitKind): string {
    return faction === TileFaction.Player
      ? UNIT_TEXTURE[kind].player
      : UNIT_TEXTURE[kind].enemy;
  }

  takeDamage(amount: number, attacker?: TileFaction): void {
    if (this.hp <= 0) return;
    this.hp -= amount;
    const atk =
      attacker ??
      (this.faction === TileFaction.Player ? TileFaction.Enemy : TileFaction.Player);
    this.grid.combatText?.damage(this.sprite.x, this.sprite.y, amount, atk);
    if (this.hp <= 0) this.grid.destroySoldier(this, atk);
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
      delay: 800,
      loop: true,
      callback: () => this.combatTick(),
    });
  }

  private combatTick(): void {
    if (this.hp <= 0) return;
    const adj = this.grid.getAdjacentEnemies(
      this.tile.col,
      this.tile.row,
      this.faction,
      this.attackRange,
    );
    if (adj.length === 0) return;

    const target = adj[0];
    let dmg = this.attack;
    if (target.building) dmg *= this.buildingDmgMul;
    if (target.building) target.building.takeDamage(dmg, this.faction);
    else if (target.soldier) target.soldier.takeDamage(dmg, this.faction);
  }

  private stepMove(): void {
    if (this.hp <= 0) return;

    const adj = this.grid.getAdjacentEnemies(
      this.tile.col,
      this.tile.row,
      this.faction,
      this.attackRange,
    );
    const blockingEnemies = adj.filter((t) => {
      const kind = t.building?.kind;
      return kind !== 'arrow_tower' && kind !== 'lord_base';
    });
    if (blockingEnemies.length > 0) return;

    if (this.path.length === 0) this.refreshPath();

    if (this.path.length > 0) {
      const next = this.path[0]!;
      const nextTile = this.grid.getTile(next.col, next.row);
      if (
        nextTile &&
        this.grid.canUnitEnterTile(
          next.col,
          next.row,
          this.faction,
          this.goalCol,
          this.goalRow,
          this.flying,
        ) &&
        (!nextTile.soldier || nextTile.soldier === this)
      ) {
        this.path.shift();
        this.moveToTile(nextTile);
        this.stuckTicks = 0;
        return;
      }
      this.path.shift();
    }

    this.stuckTicks++;
    if (this.tryGreedyStepTowardGoal()) {
      this.stuckTicks = 0;
      return;
    }

    if (this.stuckTicks >= 2) {
      this.refreshPath();
      this.stuckTicks = 0;
    }
  }

  private tryGreedyStepTowardGoal(): boolean {
    const goal = this.grid.findAdvanceGoalForSoldier(
      this.tile.col,
      this.tile.row,
      this.faction,
    );
    if (!goal) return false;

    const enemy =
      this.faction === TileFaction.Player ? TileFaction.Enemy : TileFaction.Player;

    const candidates = getHexNeighbors(this.tile.col, this.tile.row)
      .map((n) => this.grid.getTile(n.col, n.row))
      .filter((t): t is Tile => {
        if (!t) return false;
        return this.grid.canUnitEnterTile(
          t.col,
          t.row,
          this.faction,
          goal.col,
          goal.row,
          this.flying,
        );
      })
      .filter((t) => !t.soldier || t.soldier === this);

    if (candidates.length === 0) return false;

    candidates.sort((a, b) => {
      const da = hexDistance(a.col, a.row, goal.col, goal.row);
      const db = hexDistance(b.col, b.row, goal.col, goal.row);
      const aBonus = a.faction === enemy && a.isEmpty() ? -3 : 0;
      const bBonus = b.faction === enemy && b.isEmpty() ? -3 : 0;
      const aAlly = a.faction === this.faction && a.isEmpty() ? 0.15 : 0;
      const bAlly = b.faction === this.faction && b.isEmpty() ? 0.15 : 0;
      return da + aBonus + aAlly - (db + bBonus + bAlly);
    });

    this.moveToTile(candidates[0]!);
    this.goalCol = goal.col;
    this.goalRow = goal.row;
    return true;
  }

  private moveToTile(nextTile: Tile): void {
    this.tile.soldier = undefined;
    this.tile = nextTile;
    this.tile.soldier = this;
    this.sprite.setPosition(nextTile.sprite.x, nextTile.sprite.y - 6);
    if (!nextTile.building) {
      this.grid.captureTile(nextTile, this.faction);
    }
  }

  private refreshPath(): void {
    const goal = this.grid.findAdvanceGoalForSoldier(
      this.tile.col,
      this.tile.row,
      this.faction,
    );
    if (!goal) {
      this.path = [];
      return;
    }
    this.goalCol = goal.col;
    this.goalRow = goal.row;

    this.path = findHexPath(
      this.tile.col,
      this.tile.row,
      goal.col,
      goal.row,
      (c, r) =>
        this.grid.canPlanUnitPath(c, r, goal.col, goal.row, this.flying),
    );
  }

  destroy(): void {
    this.moveTimer?.destroy();
    this.combatTimer?.destroy();
    this.tile.soldier = undefined;
    this.sprite.destroy();
  }
}
