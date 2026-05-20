/** 《咪城大师》Laya3D 迁移版核心类型：不依赖旧恐龙/城市玩法。 */

export const enum MchFaction {
    Neutral = 0,
    Player = 1,
    Enemy = 2,
}

export interface MchHexCoord {
    col: number;
    row: number;
}

export interface MchAxialCoord {
    q: number;
    r: number;
}

export interface MchTileState {
    key: string;
    col: number;
    row: number;
    faction: MchFaction;
}

export const enum MchBuildingKind {
    LordBase = "lord_base",
    GoldMine = "gold_mine",
    ArrowTower = "arrow_tower",
    BarracksNormal = "barracks_normal",
    BarracksRare = "barracks_rare",
    BarracksEpic = "barracks_epic",
    BarracksLegendary = "barracks_legendary",
    EmptyWall = "empty_wall",
}

export const enum MchSoldierKind {
    Normal = "normal",
    Rare = "rare",
    Epic = "epic",
    Legendary = "legendary",
}

export const enum MchBlueprintType {
    Tower = "tower",
    Mine = "mine",
    BarracksLow = "barracks_low",
    BarracksMid = "barracks_mid",
    BarracksHigh = "barracks_high",
    Mystery = "mystery",
}

export interface MchBuildingState {
    id: string;
    kind: MchBuildingKind;
    faction: MchFaction;
    col: number;
    row: number;
    hp: number;
    maxHp: number;
}

export interface MchSoldierState {
    id: string;
    kind: MchSoldierKind;
    faction: MchFaction;
    col: number;
    row: number;
    hp: number;
    maxHp: number;
    attack: number;
}

export interface MchBlueprintState {
    id: string;
    type: MchBlueprintType;
    faction: MchFaction;
    col: number;
    row: number;
    cost: number;
}

export interface MchLevelConfig {
    id: string;
    name: string;
    cols: number;
    rows: number;
    playerStartRow: number;
    enemyEndRow: number;
    tileRadius: number;
    tileHeight: number;
    tileGap: number;
}
