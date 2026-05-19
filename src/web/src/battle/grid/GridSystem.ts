import Phaser from 'phaser';
import {
  generateRectBoard,
  getBoardPixelSize,
  hexToPixel,
  HEX_SIZE,
} from '../hex/HexMath';
import { getHexNeighbors, hexDistance } from '../hex/HexCoords';
import { findHexPath } from '../../pathfinding/HexAStar';
import { Tile } from '../tile/Tile';
import { TileFaction } from '../tile/TileFaction';
import { Building } from '../../entities/Building';
import { Soldier } from '../../entities/Soldier';
import type { BarracksRarity } from '../../game/GachaManager';
import type { FloatingCombatText } from '../../ui/FloatingCombatText';
import {
  BUILDING_TEXTURE,
  type BuildingKind,
  type UnitKind,
} from '../../game/BuildingKinds';
import { buildingCountsForEdgeWalls } from '../view/HexEdgeWallLogic';
import { HexEdgeWallSystem } from '../view/HexEdgeWallSystem';
import { tileCountsForEdgeWalls } from '../view/HexEdgeWallLogic';

const FACTION_TEXTURE: Record<TileFaction, string> = {
  [TileFaction.Neutral]: 'tile_neutral',
  [TileFaction.Player]: 'tile_player',
  [TileFaction.Enemy]: 'tile_enemy',
};

export class GridSystem {
  private tiles = new Map<string, Tile>();
  private demonDecals = new Map<string, Phaser.GameObjects.Image>();
  private offsetX = 0;
  private offsetY = 0;
  private hexEdgeWalls!: HexEdgeWallSystem;
  combatText?: FloatingCombatText;

  constructor(private scene: Phaser.Scene) {
    this.hexEdgeWalls = new HexEdgeWallSystem(scene, this);
  }

  buildBoard(): void {
    const tiles = generateRectBoard();
    const { width: boardW, height: boardH } = getBoardPixelSize();
    this.offsetX = this.scene.scale.width / 2 - boardW / 2;
    this.offsetY = this.scene.scale.height / 2 - boardH / 2 + 24;

    for (const { col, row } of tiles) {
      const faction = row >= 8 ? TileFaction.Player : TileFaction.Enemy;
      const tex = FACTION_TEXTURE[faction];
      const { x, y } = hexToPixel(col, row);
      const sprite = this.scene.add.image(this.offsetX + x, this.offsetY + y, tex);
      sprite.setDisplaySize(HEX_SIZE * 2.02, HEX_SIZE * 2.02);
      sprite.setDepth(2);
      sprite.setInteractive(
        new Phaser.Geom.Circle(0, 0, HEX_SIZE * 0.92),
        Phaser.Geom.Circle.Contains,
      );
      if (sprite.input) sprite.input.cursor = 'pointer';
      const tile = new Tile(col, row, faction, sprite);
      sprite.setData('tile', tile);
      sprite.on('pointerdown', () => {
        this.scene.events.emit('tile-clicked', tile);
      });
      this.tiles.set(tile.key, tile);
    }

    this.placeLordBase(4, 15, TileFaction.Player);
    this.placeLordBase(4, 0, TileFaction.Enemy);
    this.refreshTerritoryDecals();
    this.scene.events.emit('frontier-refresh');
  }

  getTile(col: number, row: number): Tile | undefined {
    return this.tiles.get(`${col},${row}`);
  }

  getAllTiles(): Tile[] {
    return [...this.tiles.values()];
  }

  isFrontierBuildable(tile: Tile, faction: TileFaction): boolean {
    if (tile.faction !== faction || !tile.isEmpty()) return false;
    return getHexNeighbors(tile.col, tile.row).some((n) => {
      const t = this.getTile(n.col, n.row);
      return t?.building?.faction === faction && t.building.kind !== 'wall';
    });
  }

  captureTile(tile: Tile, faction: TileFaction): void {
    tile.faction = faction;
    const tex = FACTION_TEXTURE[faction];
    if (this.scene.textures.exists(tex)) {
      tile.sprite.setTexture(tex);
      tile.sprite.clearTint();
    }
    this.refreshTerritoryDecals();
    this.scene.events.emit('frontier-refresh');
  }

  refreshTerritoryDecals(): void {
    for (const t of this.tiles.values()) {
      const show =
        t.faction === TileFaction.Enemy && t.isEmpty() && !t.soldier;
      const existing = this.demonDecals.get(t.key);
      if (!show) {
        existing?.destroy();
        this.demonDecals.delete(t.key);
        continue;
      }
      if (existing) continue;
      const decal = this.scene.add.image(t.sprite.x, t.sprite.y, 'deco_demon');
      decal.setDisplaySize(22, 22);
      decal.setAlpha(0.45);
      decal.setDepth(2);
      this.demonDecals.set(t.key, decal);
    }
  }

  flipNeighborsOnBuildingDestroyed(tile: Tile, destroyer: TileFaction): void {
    for (const n of getHexNeighbors(tile.col, tile.row)) {
      const t = this.getTile(n.col, n.row);
      if (t) this.captureTile(t, destroyer);
    }
  }

  countTilesByFaction(): { player: number; enemy: number } {
    let player = 0;
    let enemy = 0;
    for (const t of this.tiles.values()) {
      if (t.faction === TileFaction.Player) player++;
      else if (t.faction === TileFaction.Enemy) enemy++;
    }
    return { player, enemy };
  }

  countBuildings(faction: TileFaction, kind: BuildingKind): number {
    let n = 0;
    for (const t of this.tiles.values()) {
      if (t.building?.faction === faction && t.building.kind === kind) n++;
    }
    return n;
  }

  isBaseDestroyed(faction: TileFaction): boolean {
    for (const t of this.tiles.values()) {
      if (t.building?.kind === 'lord_base' && t.building.faction === faction) {
        return t.building.hp <= 0;
      }
    }
    return true;
  }

  placeLordBase(col: number, row: number, faction: TileFaction): Building | null {
    const tile = this.getTile(col, row);
    if (!tile) return null;
    return this.spawnBuilding(tile, faction, 'lord_base', 2800, { cdSeconds: 3 });
  }

  /** 邻格有「格内贴边墙」建筑时，不铺占格自动墙 */
  isEdgeWallNeighborTile(tile: Tile): boolean {
    return getHexNeighbors(tile.col, tile.row).some((n) => {
      const t = this.getTile(n.col, n.row);
      return t ? tileCountsForEdgeWalls(t) : false;
    });
  }

  refreshHexEdgeWallsAround(tile: Tile, animateCenter = false): void {
    this.hexEdgeWalls.refreshAround(tile, animateCenter);
  }

  placeMine(tile: Tile, faction: TileFaction): Building | null {
    if (!tile.isEmpty()) return null;
    return this.spawnBuilding(tile, faction, 'gold_mine', 140, { cdSeconds: 6 });
  }

  placeTower(tile: Tile, faction: TileFaction): Building | null {
    if (!tile.isEmpty()) return null;
    return this.spawnBuilding(tile, faction, 'arrow_tower', 400, { cdSeconds: 3 });
  }

  placeBarracks(tile: Tile, faction: TileFaction, rarity: BarracksRarity): Building | null {
    if (rarity === 'none' || !tile.isEmpty()) return null;
    const { kind, unit } = barracksFromRarity(rarity);
    const b = this.spawnBuilding(tile, faction, kind, 200, {
      cdSeconds: 3,
      spawnUnit: unit,
    });
    if (b) b.spawnNow();
    return b;
  }

  placeWall(tile: Tile, faction: TileFaction): Building | null {
    if (!tile.isEmpty()) return null;
    return this.spawnBuilding(tile, faction, 'wall', 280, { cdSeconds: 9999 });
  }

  removeWall(tile: Tile): void {
    if (tile.building?.kind === 'wall') {
      tile.building.destroy();
    }
  }

  spawnUnit(
    col: number,
    row: number,
    faction: TileFaction,
    unitKind: UnitKind,
  ): Soldier | null {
    const tile = this.getTile(col, row);
    if (!tile?.isEmpty()) return null;
    const key = Soldier.textureKey(faction, unitKind);
    const spr = this.scene.add.image(tile.sprite.x, tile.sprite.y - 6, key);
    spr.setDisplaySize(32, 32);
    spr.setDepth(4);
    return new Soldier(this.scene, this, tile, faction, spr, unitKind);
  }

  /** 兵营旁找出生点：朝敌方前排分散，避免堆在主堡脚下 */
  findSpawnTileForBarracks(
    col: number,
    row: number,
    faction: TileFaction,
  ): Tile | null {
    const enemyDir = faction === TileFaction.Player ? -1 : 1;
    const empty: Tile[] = [];
    const seen = new Set<string>();
    const queue: Array<{ col: number; row: number; d: number }> = [
      { col, row, d: 0 },
    ];
    while (queue.length > 0) {
      const cur = queue.shift()!;
      const key = `${cur.col},${cur.row}`;
      if (seen.has(key)) continue;
      seen.add(key);
      const t = this.getTile(cur.col, cur.row);
      if (!t) continue;
      if (cur.d > 0 && t.isEmpty()) empty.push(t);
      if (cur.d >= 4) continue;
      for (const n of getHexNeighbors(cur.col, cur.row)) {
        queue.push({ col: n.col, row: n.row, d: cur.d + 1 });
      }
    }
    if (empty.length === 0) return null;
    empty.sort((a, b) => {
      const fa = (a.row - row) * enemyDir;
      const fb = (b.row - row) * enemyDir;
      if (fa !== fb) return fa - fb;
      return hexDistance(col, row, a.col, a.row) - hexDistance(col, row, b.col, b.row);
    });
    return empty[0];
  }

  destroyBuilding(building: Building, destroyer?: TileFaction): void {
    const killer =
      destroyer ??
      (building.faction === TileFaction.Player
        ? TileFaction.Enemy
        : TileFaction.Player);
    const tile = building.tile;
    const hadEdgeWalls = buildingCountsForEdgeWalls(building.kind);
    building.destroy();
    if (hadEdgeWalls) {
      this.refreshHexEdgeWallsAround(tile, false);
    }
    this.flipNeighborsOnBuildingDestroyed(tile, killer);
    if (killer === TileFaction.Player && building.kind !== 'wall') {
      this.combatText?.goldReward(tile.sprite.x, tile.sprite.y, 1);
    }
    this.scene.events.emit('frontier-refresh');
  }

  destroySoldier(soldier: Soldier, killer?: TileFaction): void {
    const { x, y } = soldier.sprite;
    soldier.destroy();
    if (killer === TileFaction.Player) {
      this.combatText?.goldReward(x, y, 1);
    }
    this.refreshTerritoryDecals();
  }

  getAdjacentEnemies(
    col: number,
    row: number,
    faction: TileFaction,
    maxRange = 1,
  ): Tile[] {
    const enemy =
      faction === TileFaction.Player ? TileFaction.Enemy : TileFaction.Player;
    const result: Tile[] = [];
    for (const t of this.tiles.values()) {
      if (!t.building && !t.soldier) continue;
      if (t.building?.faction !== enemy && t.soldier?.faction !== enemy) continue;
      const d = hexDistance(col, row, t.col, t.row);
      if (d <= maxRange) result.push(t);
    }
    return result.sort(
      (a, b) =>
        hexDistance(col, row, a.col, a.row) - hexDistance(col, row, b.col, b.row),
    );
  }

  findNearestEnemyUnitOrBuilding(
    col: number,
    row: number,
    faction: TileFaction,
    maxRange: number,
  ): Tile | null {
    const enemy =
      faction === TileFaction.Player ? TileFaction.Enemy : TileFaction.Player;
    let best: Tile | null = null;
    let bestD = Infinity;
    for (const t of this.tiles.values()) {
      if (t.building?.faction === enemy || t.soldier?.faction === enemy) {
        const d = hexDistance(col, row, t.col, t.row);
        if (d <= maxRange && d < bestD) {
          bestD = d;
          best = t;
        }
      }
    }
    return best;
  }

  countSoldiers(faction: TileFaction): number {
    let n = 0;
    for (const t of this.tiles.values()) {
      if (t.soldier?.faction === faction) n++;
    }
    return n;
  }

  /** 推进目标：能到主塔则主塔；否则最近敌方空地（避免全堵在己方边界） */
  findAdvanceGoalForSoldier(col: number, row: number, faction: TileFaction): Tile | null {
    const primary = this.findTargetForSoldier(col, row, faction);
    if (!primary) return null;

    const path = findHexPath(
      col,
      row,
      primary.col,
      primary.row,
      (c, r) => this.canPlanUnitPath(c, r, primary.col, primary.row, false),
    );
    if (path.length > 0) return primary;

    const enemy =
      faction === TileFaction.Player ? TileFaction.Enemy : TileFaction.Player;
    let best: Tile | null = null;
    let bestD = Infinity;
    for (const t of this.tiles.values()) {
      if (t.faction !== enemy || t.building || t.soldier) continue;
      const d = hexDistance(col, row, t.col, t.row);
      if (d < bestD) {
        bestD = d;
        best = t;
      }
    }
    return best ?? primary;
  }

  /** 寻路目标：敌主塔 > 最近敌建筑(含墙) > 最近敌兵 */
  findTargetForSoldier(col: number, row: number, faction: TileFaction): Tile | null {
    const enemy =
      faction === TileFaction.Player ? TileFaction.Enemy : TileFaction.Player;
    let lordBase: Tile | null = null;
    let nearestBuilding: Tile | null = null;
    let nearestBuildingD = Infinity;
    let nearestSoldier: Tile | null = null;
    let nearestSoldierD = Infinity;

    for (const t of this.tiles.values()) {
      if (t.building?.kind === 'lord_base' && t.building.faction === enemy) {
        lordBase = t;
      }
      if (t.building?.faction === enemy) {
        const d = hexDistance(col, row, t.col, t.row);
        if (d < nearestBuildingD) {
          nearestBuildingD = d;
          nearestBuilding = t;
        }
      }
      if (t.soldier?.faction === enemy) {
        const d = hexDistance(col, row, t.col, t.row);
        if (d < nearestSoldierD) {
          nearestSoldierD = d;
          nearestSoldier = t;
        }
      }
    }

    if (lordBase) return lordBase;
    if (nearestBuilding) return nearestBuilding;
    return nearestSoldier;
  }

  /** A* 规划用：忽略占格小兵，避免边界处集体堵死 */
  canPlanUnitPath(
    col: number,
    row: number,
    goalCol: number,
    goalRow: number,
    flying: boolean,
  ): boolean {
    const t = this.getTile(col, row);
    if (!t) return false;
    if (col === goalCol && row === goalRow) return true;
    if (t.building) {
      if (flying && t.building.kind !== 'wall') return false;
      return false;
    }
    return true;
  }

  /** 实际迈步：可踏入敌方/己方空地；他方小兵占格不可进入 */
  canUnitEnterTile(
    col: number,
    row: number,
    _faction: TileFaction,
    goalCol: number,
    goalRow: number,
    flying: boolean,
  ): boolean {
    const t = this.getTile(col, row);
    if (!t) return false;
    if (col === goalCol && row === goalRow) return true;
    if (t.soldier) return false;
    return this.canPlanUnitPath(col, row, goalCol, goalRow, flying);
  }

  private spawnBuilding(
    tile: Tile,
    faction: TileFaction,
    kind: BuildingKind,
    maxHp: number,
    opts: { cdSeconds: number; spawnUnit?: UnitKind },
  ): Building | null {
    const tex = BUILDING_TEXTURE[kind];
    const spr = this.scene.add.image(tile.sprite.x, tile.sprite.y - 4, tex);
    const scale = kind === 'lord_base' ? 1.15 : kind === 'wall' ? 0.95 : 1;
    spr.setDisplaySize(40 * scale, 44 * scale);
    spr.setDepth(kind === 'lord_base' ? 8 : 6);
    spr.setScale(0.15);
    this.scene.tweens.add({
      targets: spr,
      scale: scale,
      duration: 260,
      ease: 'Back.easeOut',
    });
    if (faction === TileFaction.Enemy) spr.setFlipX(true);
    const b = new Building(this.scene, this, tile, kind, faction, spr, maxHp, opts);
    if (buildingCountsForEdgeWalls(kind)) {
      this.refreshHexEdgeWallsAround(tile, true);
    }
    this.refreshTerritoryDecals();
    this.scene.events.emit('building-placed', faction);
    return b;
  }
}

function barracksFromRarity(rarity: BarracksRarity): { kind: BuildingKind; unit: UnitKind } {
  switch (rarity) {
    case 'rare':
      return Math.random() < 0.55
        ? { kind: 'barracks_flying', unit: 'flying' }
        : { kind: 'barracks_ranged', unit: 'ranged' };
    case 'epic':
      return { kind: 'barracks_melee', unit: 'heavy' };
    case 'legendary':
      return { kind: 'barracks_ranged', unit: 'siege' };
    default:
      return { kind: 'barracks_melee', unit: 'melee' };
  }
}
