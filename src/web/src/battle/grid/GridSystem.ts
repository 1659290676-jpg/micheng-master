import Phaser from 'phaser';
import {
  generateRectBoard,
  getBoardPixelSize,
  hexToPixel,
  HEX_SIZE,
} from '../hex/HexMath';
import { getHexNeighbors } from '../hex/HexCoords';
import { Tile } from '../tile/Tile';
import { TileFaction } from '../tile/TileFaction';
import { Building, type BuildingKind } from '../../entities/Building';
import { Soldier } from '../../entities/Soldier';
import type { BarracksRarity } from '../../game/GachaManager';

const FACTION_TEXTURE: Record<TileFaction, string> = {
  [TileFaction.Neutral]: 'tile_neutral',
  [TileFaction.Player]: 'tile_green',
  [TileFaction.Enemy]: 'tile_red',
};

const FACTION_TINT: Record<TileFaction, number> = {
  [TileFaction.Neutral]: 0x6b7280,
  [TileFaction.Player]: 0x22c55e,
  [TileFaction.Enemy]: 0xef4444,
};

export class GridSystem {
  private tiles = new Map<string, Tile>();
  private offsetX = 0;
  private offsetY = 0;

  constructor(private scene: Phaser.Scene) {}

  buildBoard(): void {
    const tiles = generateRectBoard();
    const { width: boardW, height: boardH } = getBoardPixelSize();
    this.offsetX = this.scene.scale.width / 2 - boardW / 2;
    this.offsetY = this.scene.scale.height / 2 - boardH / 2 + 40;

    for (const { col, row } of tiles) {
      const faction =
        row >= 8 ? TileFaction.Player : TileFaction.Enemy;
      const tex = FACTION_TEXTURE[faction];
      const { x, y } = hexToPixel(col, row);
      const sprite = this.scene.add.image(
        this.offsetX + x,
        this.offsetY + y,
        tex,
      );
      sprite.setDisplaySize(HEX_SIZE * 2.05, HEX_SIZE * 2.05);
      sprite.setDepth(2);
      sprite.setInteractive({ useHandCursor: true });
      const tile = new Tile(col, row, faction, sprite);
      sprite.setData('tile', tile);
      sprite.on('pointerdown', () => {
        this.scene.events.emit('tile-clicked', tile);
      });
      this.tiles.set(tile.key, tile);
    }

    this.placeBase(4, 15, TileFaction.Player);
    this.placeBase(4, 0, TileFaction.Enemy);
  }

  getTile(col: number, row: number): Tile | undefined {
    return this.tiles.get(`${col},${row}`);
  }

  getAllTiles(): Tile[] {
    return [...this.tiles.values()];
  }

  captureTile(tile: Tile, faction: TileFaction): void {
    tile.faction = faction;
    const tex = FACTION_TEXTURE[faction];
    if (this.scene.textures.exists(tex)) {
      tile.sprite.setTexture(tex);
      tile.sprite.clearTint();
    } else {
      tile.sprite.setTint(FACTION_TINT[faction]);
    }
  }

  /** 建筑被毁：周围 6 格翻转 */
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
      if (t.building?.kind === 'base' && t.building.faction === faction) {
        return t.building.hp <= 0;
      }
    }
    return true;
  }

  canPlayerBuild(tile: Tile): boolean {
    return tile.faction === TileFaction.Player && tile.isEmpty();
  }

  canEnemyBuild(tile: Tile): boolean {
    return tile.faction === TileFaction.Enemy && tile.isEmpty();
  }

  placeMine(tile: Tile, faction: TileFaction): Building | null {
    if (!tile.isEmpty()) return null;
    const spr = this.createBuildingSprite(tile, 'mine', faction);
    return new Building(this.scene, this, tile, 'mine', faction, spr, 140);
  }

  placeBarracks(tile: Tile, faction: TileFaction, rarity: BarracksRarity): Building | null {
    if (rarity === 'none' || !tile.isEmpty()) return null;
    const tex =
      rarity === 'legendary'
        ? 'barracks_legendary'
        : rarity === 'epic'
          ? 'barracks_epic'
          : rarity === 'rare'
            ? 'barracks_rare'
            : 'barracks_normal';
    const spr = this.createBuildingSprite(tile, tex, faction);
    return new Building(this.scene, this, tile, 'barracks', faction, spr, 200, rarity);
  }

  placeBase(col: number, row: number, faction: TileFaction): Building | null {
    const tile = this.getTile(col, row);
    if (!tile) return null;
    const spr = this.createBuildingSprite(tile, 'base', faction, 1.35);
    return new Building(this.scene, this, tile, 'base', faction, spr, 1200);
  }

  spawnSoldier(col: number, row: number, faction: TileFaction, rarity: BarracksRarity): Soldier | null {
    const tile = this.getTile(col, row);
    if (!tile?.isEmpty()) return null;
    const key = faction === TileFaction.Player ? 'soldier_player' : 'soldier_enemy';
    const spr = this.scene.add.image(tile.sprite.x, tile.sprite.y - 8, key);
    spr.setDisplaySize(28, 28);
    spr.setDepth(10);
    return new Soldier(this.scene, this, tile, faction, spr, rarity);
  }

  destroyBuilding(building: Building): void {
    const destroyer =
      building.faction === TileFaction.Player ? TileFaction.Enemy : TileFaction.Player;
    const { col, row } = building.tile;
    building.destroy();
    this.flipNeighborsOnBuildingDestroyed(this.getTile(col, row)!, destroyer);
  }

  destroySoldier(soldier: Soldier): void {
    soldier.destroy();
  }

  findAdjacentEmptyTile(col: number, row: number): Tile | null {
    const neighbors = getHexNeighbors(col, row);
    const empty = neighbors
      .map((n) => this.getTile(n.col, n.row))
      .filter((t): t is Tile => !!t && t.isEmpty());
    if (empty.length === 0) return null;
    return empty[Math.floor(Math.random() * empty.length)];
  }

  getAdjacentEnemies(col: number, row: number, faction: TileFaction): Tile[] {
    const enemy =
      faction === TileFaction.Player ? TileFaction.Enemy : TileFaction.Player;
    return getHexNeighbors(col, row)
      .map((n) => this.getTile(n.col, n.row))
      .filter(
        (t): t is Tile =>
          !!t &&
          (t.faction === enemy || t.building?.faction === enemy || t.soldier?.faction === enemy) &&
          (!!t.building || !!t.soldier),
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
        const d =
          Math.abs(t.col - col) + Math.abs(t.row - row);
        if (d <= maxRange && d < bestD) {
          bestD = d;
          best = t;
        }
      }
    }
    return best;
  }

  findTargetForSoldier(col: number, row: number, faction: TileFaction): Tile | null {
    const enemy =
      faction === TileFaction.Player ? TileFaction.Enemy : TileFaction.Player;
    let base: Tile | null = null;
    let nearest: Tile | null = null;
    let nearestD = Infinity;
    for (const t of this.tiles.values()) {
      if (t.building?.kind === 'base' && t.building.faction === enemy) base = t;
      if (t.soldier?.faction === enemy || t.building?.faction === enemy) {
        const d = Math.abs(t.col - col) + Math.abs(t.row - row);
        if (d < nearestD) {
          nearestD = d;
          nearest = t;
        }
      }
    }
    return base ?? nearest;
  }

  private createBuildingSprite(
    tile: Tile,
    textureKey: string,
    faction: TileFaction,
    scale = 1,
  ): Phaser.GameObjects.Image {
    const spr = this.scene.add.image(tile.sprite.x, tile.sprite.y - 6, textureKey);
    spr.setDisplaySize(36 * scale, 36 * scale);
    spr.setDepth(5);
    if (faction === TileFaction.Enemy) spr.setFlipX(true);
    return spr;
  }
}
