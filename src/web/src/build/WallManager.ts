import type { GridSystem } from '../battle/grid/GridSystem';
import type { Tile } from '../battle/tile/Tile';
import { TileFaction } from '../battle/tile/TileFaction';
import { getHexNeighbors } from '../battle/hex/HexCoords';

/**
 * 城墙自动生成在建筑群「内侧封口」，绝不占用可建造的边界格。
 * 边界格 = 与领主塔/兵营等相邻、待放图纸的空格。
 */
export class WallManager {
  constructor(private grid: GridSystem) {}

  refresh(faction: TileFaction): void {
    const toRemove: Tile[] = [];
    const toAdd: Tile[] = [];

    for (const tile of this.grid.getAllTiles()) {
      if (tile.building?.kind === 'wall' && tile.building.faction === faction) {
        if (!this.shouldHaveWall(tile, faction)) toRemove.push(tile);
      }
    }

    for (const tile of this.grid.getAllTiles()) {
      if (this.shouldHaveWall(tile, faction) && tile.isEmpty()) {
        toAdd.push(tile);
      }
    }

    for (const t of toRemove) {
      if (t.building) this.grid.removeWall(t);
    }
    for (const t of toAdd) {
      this.grid.placeWall(t, faction);
    }
  }

  private shouldHaveWall(tile: Tile, faction: TileFaction): boolean {
    if (tile.faction !== faction || !tile.isEmpty()) return false;

    // 可建造边界格：留给图纸，不铺墙
    if (this.grid.isFrontierBuildable(tile, faction)) return false;

    const neighbors = getHexNeighbors(tile.col, tile.row)
      .map((n) => this.grid.getTile(n.col, n.row))
      .filter((t): t is Tile => !!t);

    const buildingNeighbors = neighbors.filter(
      (t) => t.building?.faction === faction && t.building.kind !== 'wall',
    );
    if (buildingNeighbors.length < 2) return false;

    const allEmptyAllied = neighbors.every(
      (t) => t.faction === faction && !t.building,
    );
    if (allEmptyAllied) return false;

    return true;
  }
}
