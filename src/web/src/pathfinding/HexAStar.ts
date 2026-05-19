import { getHexNeighbors, hexDistance, inBounds } from '../battle/hex/HexCoords';

export interface PathNode {
  col: number;
  row: number;
}

/**
 * 六边形网格 A*（平顶 odd-r）
 * @param isWalkable 返回 false 则视为障碍
 */
export function findHexPath(
  startCol: number,
  startRow: number,
  goalCol: number,
  goalRow: number,
  isWalkable: (col: number, row: number) => boolean,
): PathNode[] {
  if (!inBounds(goalCol, goalRow) || !isWalkable(goalCol, goalRow)) return [];

  const startKey = key(startCol, startRow);
  const goalKey = key(goalCol, goalRow);

  const open = new Set<string>([startKey]);
  const cameFrom = new Map<string, string>();
  const gScore = new Map<string, number>([[startKey, 0]]);
  const fScore = new Map<string, number>([
    [startKey, hexDistance(startCol, startRow, goalCol, goalRow)],
  ]);

  while (open.size > 0) {
    let current = '';
    let bestF = Infinity;
    for (const k of open) {
      const f = fScore.get(k) ?? Infinity;
      if (f < bestF) {
        bestF = f;
        current = k;
      }
    }

    if (current === goalKey) return reconstruct(cameFrom, current);

    open.delete(current);
    const [cc, cr] = parseKey(current);

    for (const n of getHexNeighbors(cc, cr)) {
      if (!isWalkable(n.col, n.row)) continue;
      const nk = key(n.col, n.row);
      const tentative = (gScore.get(current) ?? Infinity) + 1;
      if (tentative < (gScore.get(nk) ?? Infinity)) {
        cameFrom.set(nk, current);
        gScore.set(nk, tentative);
        fScore.set(nk, tentative + hexDistance(n.col, n.row, goalCol, goalRow));
        open.add(nk);
      }
    }
  }

  return [];
}

function reconstruct(cameFrom: Map<string, string>, current: string): PathNode[] {
  const path: PathNode[] = [parseKeyNode(current)];
  while (cameFrom.has(current)) {
    current = cameFrom.get(current)!;
    path.unshift(parseKeyNode(current));
  }
  return path.length > 1 ? path.slice(1) : path;
}

function key(col: number, row: number): string {
  return `${col},${row}`;
}

function parseKey(k: string): [number, number] {
  const [c, r] = k.split(',').map(Number);
  return [c, r];
}

function parseKeyNode(k: string): PathNode {
  const [col, row] = parseKey(k);
  return { col, row };
}
