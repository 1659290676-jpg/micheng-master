/** 平顶六边形 (flat-top)，奇数列偏移 (odd-r) */
export interface HexCoord {
  col: number;
  row: number;
}

export const BOARD_COLS = 9;
export const BOARD_ROWS = 16;
export const HEX_SIZE = 26;

/** 9×16 = 144 格 */
export function generateRectBoard(
  cols = BOARD_COLS,
  rows = BOARD_ROWS,
): HexCoord[] {
  const tiles: HexCoord[] = [];
  for (let row = 0; row < rows; row++) {
    for (let col = 0; col < cols; col++) {
      tiles.push({ col, row });
    }
  }
  return tiles;
}

/** 平顶 odd-r → 像素（格心） */
export function hexToPixel(col: number, row: number): { x: number; y: number } {
  const x = HEX_SIZE * (3 / 2) * col;
  const y = HEX_SIZE * Math.sqrt(3) * (row + 0.5 * (col & 1));
  return { x, y };
}

export function getBoardPixelSize(): { width: number; height: number } {
  let maxX = 0;
  let maxY = 0;
  for (const { col, row } of generateRectBoard()) {
    const { x, y } = hexToPixel(col, row);
    maxX = Math.max(maxX, x);
    maxY = Math.max(maxY, y);
  }
  return {
    width: maxX + HEX_SIZE * 2,
    height: maxY + HEX_SIZE * Math.sqrt(3),
  };
}

/** 根据行判定初始归属：上 8 行红方，下 8 行绿方 */
export function defaultOwnerForRow(row: number): 'playerA' | 'playerB' {
  return row >= 8 ? 'playerA' : 'playerB';
}
