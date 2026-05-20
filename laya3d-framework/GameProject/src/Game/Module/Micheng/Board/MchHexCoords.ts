import type { MchAxialCoord, MchHexCoord, MchLevelConfig } from "../Core/MchTypes";

const AXIAL_DIRS: MchAxialCoord[] = [
    { q: 1, r: 0 },
    { q: 1, r: -1 },
    { q: 0, r: -1 },
    { q: -1, r: 0 },
    { q: -1, r: 1 },
    { q: 0, r: 1 },
];

/** 平顶六边形：使用 odd-q 偏移坐标，保持和 Phaser 原型一致。 */
export function offsetToAxial(col: number, row: number): MchAxialCoord {
    return {
        q: col,
        r: row - (col - (col & 1)) / 2,
    };
}

export function axialToOffset(q: number, r: number): MchHexCoord {
    return {
        col: q,
        row: r + (q - (q & 1)) / 2,
    };
}

export function inBounds(col: number, row: number, cfg: MchLevelConfig): boolean {
    return col >= 0 && col < cfg.cols && row >= 0 && row < cfg.rows;
}

export function getHexNeighbors(
    col: number,
    row: number,
    cfg: MchLevelConfig,
): MchHexCoord[] {
    const a = offsetToAxial(col, row);
    const out: MchHexCoord[] = [];
    for (const d of AXIAL_DIRS) {
        const o = axialToOffset(a.q + d.q, a.r + d.r);
        if (inBounds(o.col, o.row, cfg)) {
            out.push(o);
        }
    }
    return out;
}

export function hexDistance(
    colA: number,
    rowA: number,
    colB: number,
    rowB: number,
): number {
    const a = offsetToAxial(colA, rowA);
    const b = offsetToAxial(colB, rowB);
    return (
        Math.abs(a.q - b.q) +
        Math.abs(a.q + a.r - b.q - b.r) +
        Math.abs(a.r - b.r)
    ) / 2;
}

export function hexToWorld(
    col: number,
    row: number,
    cfg: MchLevelConfig,
): Laya.Vector3 {
    const r = cfg.tileRadius + cfg.tileGap;
    const x = col * r * 1.5;
    const z = (row + (col & 1) * 0.5) * Math.sqrt(3) * r;
    return new Laya.Vector3(x, 0, z);
}

export function centerBoardPosition(pos: Laya.Vector3, cfg: MchLevelConfig): Laya.Vector3 {
    const max = hexToWorld(cfg.cols - 1, cfg.rows - 1, cfg);
    return new Laya.Vector3(pos.x - max.x / 2, pos.y, pos.z - max.z / 2);
}
