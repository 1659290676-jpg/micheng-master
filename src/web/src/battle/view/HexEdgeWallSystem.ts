import type { GridSystem } from '../grid/GridSystem';
import type { Tile } from '../tile/Tile';
import { getHexNeighbors } from '../hex/HexCoords';
import { computeOutwardEdgeMask, tileCountsForEdgeWalls } from './HexEdgeWallLogic';
import { HexEdgeWallRing } from './HexEdgeWallRing';
/** 刷新本格及六邻格的格内贴边墙 */
export class HexEdgeWallSystem {
  constructor(
    private scene: Phaser.Scene,
    private grid: GridSystem,
  ) {}

  refreshAround(center: Tile, animateCenter = false): void {
    const seen = new Set<string>();
    const tiles: Tile[] = [center];
    for (const n of getHexNeighbors(center.col, center.row)) {
      const t = this.grid.getTile(n.col, n.row);
      if (t) tiles.push(t);
    }
    for (const t of tiles) {
      if (seen.has(t.key)) continue;
      seen.add(t.key);
      const animate = t.key === center.key && animateCenter;
      this.syncTile(t, animate);
    }
  }

  syncTile(tile: Tile, animate = false): void {
    if (!tileCountsForEdgeWalls(tile)) {
      tile.hexEdgeWalls?.destroy();
      tile.hexEdgeWalls = undefined;
      return;
    }

    const faction = tile.building!.faction;
    const mask = computeOutwardEdgeMask(tile, (c, r) => this.grid.getTile(c, r));

    if (tile.hexEdgeWalls) {
      tile.hexEdgeWalls.rebuild(this.scene, faction, mask, animate);
    } else {
      tile.hexEdgeWalls = new HexEdgeWallRing(
        this.scene,
        tile,
        faction,
        mask,
        animate,
      );
    }
  }
}
