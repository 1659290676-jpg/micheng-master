import { BOARD_COLS, BOARD_ROWS } from './HexMath';

/** 奇数列偏移 odd-r ↔ 轴向坐标 (q,r) */
export function offsetToAxial(col: number, row: number): { q: number; r: number } {
  const q = col;
  const r = row - (col - (col & 1)) / 2;
  return { q, r };
}

export function axialToOffset(q: number, r: number): { col: number; row: number } {
  const col = q;
  const row = r + (q - (q & 1)) / 2;
  return { col, row };
}

const AXIAL_DIRS = [
  { q: 1, r: 0 },
  { q: 1, r: -1 },
  { q: 0, r: -1 },
  { q: -1, r: 0 },
  { q: -1, r: 1 },
  { q: 0, r: 1 },
];

export function getHexNeighbors(col: number, row: number): Array<{ col: number; row: number }> {
  const { q, r } = offsetToAxial(col, row);
  const out: Array<{ col: number; row: number }> = [];
  for (const d of AXIAL_DIRS) {
    const o = axialToOffset(q + d.q, r + d.r);
    if (inBounds(o.col, o.row)) out.push(o);
  }
  return out;
}

export function hexDistance(colA: number, rowA: number, colB: number, rowB: number): number {
  const a = offsetToAxial(colA, rowA);
  const b = offsetToAxial(colB, rowB);
  return (
    (Math.abs(a.q - b.q) +
      Math.abs(a.q + a.r - b.q - b.r) +
      Math.abs(a.r - b.r)) /
    2
  );
}

export function inBounds(col: number, row: number): boolean {
  return col >= 0 && col < BOARD_COLS && row >= 0 && row < BOARD_ROWS;
}
