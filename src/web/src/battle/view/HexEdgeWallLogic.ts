import { getHexNeighbors } from '../hex/HexCoords';
import type { Tile } from '../tile/Tile';
import type { BuildingKind } from '../../game/BuildingKinds';

/** 参与「格内六边贴墙」的建筑（不含占邻格旧墙、不含装饰） */
export function buildingCountsForEdgeWalls(kind: BuildingKind | undefined): boolean {
  if (!kind || kind === 'wall') return false;
  return (
    kind === 'lord_base' ||
    kind === 'gold_mine' ||
    kind === 'arrow_tower' ||
    kind === 'aoe_tower' ||
    kind === 'empty_wall' ||
    kind.startsWith('barracks')
  );
}

export function tileCountsForEdgeWalls(tile: Tile): boolean {
  return buildingCountsForEdgeWalls(tile.building?.kind);
}

export type GetTileFn = (col: number, row: number) => Tile | undefined;

/**
 * 计算 6 条边是否渲染 outward 墙。
 * 与 getHexNeighbors 下标一一对应；邻格也有建筑则共用边不画。
 */
export function computeOutwardEdgeMask(
  tile: Tile,
  getTile: GetTileFn,
): boolean[] {
  const mask: boolean[] = [];
  if (!tileCountsForEdgeWalls(tile)) {
    return [false, false, false, false, false, false];
  }
  const neighbors = getHexNeighbors(tile.col, tile.row);
  for (let i = 0; i < 6; i++) {
    const n = neighbors[i];
    if (!n) {
      mask.push(false);
      continue;
    }
    const nt = getTile(n.col, n.row);
    if (nt && tileCountsForEdgeWalls(nt)) {
      mask.push(false);
    } else {
      mask.push(true);
    }
  }
  return mask;
}
