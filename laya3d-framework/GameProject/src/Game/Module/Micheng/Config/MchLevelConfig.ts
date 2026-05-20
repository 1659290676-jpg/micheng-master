import type { MchLevelConfig } from "../Core/MchTypes";

/** 第一关：当前 Phaser 原型对应的平顶 9x16 棋盘。 */
export const MCH_LEVEL_1: MchLevelConfig = {
    id: "mch_level_1",
    name: "咪城第一关",
    cols: 9,
    rows: 16,
    playerStartRow: 8,
    enemyEndRow: 7,
    tileRadius: 0.48,
    tileHeight: 0.08,
    tileGap: 0.04,
};
