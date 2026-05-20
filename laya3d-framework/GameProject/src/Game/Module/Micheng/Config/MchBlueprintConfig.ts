import { MchBlueprintType, MchBuildingKind, MchSoldierKind } from "../Core/MchTypes";

type WeightedBlueprint = {
    type: MchBlueprintType;
    weight: number;
};

export type MchBarracksRollResult = {
    kind: MchBuildingKind | null;
    soldier: MchSoldierKind | null;
    weight: number;
};

const BLUEPRINT_WEIGHTS: WeightedBlueprint[] = [
    { type: MchBlueprintType.Tower, weight: 18 },
    { type: MchBlueprintType.Mine, weight: 22 },
    { type: MchBlueprintType.BarracksLow, weight: 35 },
    { type: MchBlueprintType.BarracksMid, weight: 12 },
    { type: MchBlueprintType.BarracksHigh, weight: 3 },
    { type: MchBlueprintType.Mystery, weight: 10 },
];

const BARRACKS_POOLS: Record<25 | 50 | 100 | 250, MchBarracksRollResult[]> = {
    25: [
        { kind: null, soldier: null, weight: 70 },
        { kind: MchBuildingKind.BarracksNormal, soldier: MchSoldierKind.Normal, weight: 10 },
        { kind: MchBuildingKind.BarracksEpic, soldier: MchSoldierKind.Epic, weight: 15 },
        { kind: MchBuildingKind.BarracksLegendary, soldier: MchSoldierKind.Legendary, weight: 5 },
    ],
    50: [
        { kind: MchBuildingKind.BarracksNormal, soldier: MchSoldierKind.Normal, weight: 74 },
        { kind: MchBuildingKind.BarracksRare, soldier: MchSoldierKind.Rare, weight: 20 },
        { kind: MchBuildingKind.BarracksEpic, soldier: MchSoldierKind.Epic, weight: 5 },
        { kind: MchBuildingKind.BarracksLegendary, soldier: MchSoldierKind.Legendary, weight: 1 },
    ],
    100: [
        { kind: MchBuildingKind.BarracksNormal, soldier: MchSoldierKind.Normal, weight: 50 },
        { kind: MchBuildingKind.BarracksRare, soldier: MchSoldierKind.Rare, weight: 40 },
        { kind: MchBuildingKind.BarracksEpic, soldier: MchSoldierKind.Epic, weight: 8 },
        { kind: MchBuildingKind.BarracksLegendary, soldier: MchSoldierKind.Legendary, weight: 2 },
    ],
    250: [
        { kind: MchBuildingKind.BarracksEpic, soldier: MchSoldierKind.Epic, weight: 90 },
        { kind: MchBuildingKind.BarracksLegendary, soldier: MchSoldierKind.Legendary, weight: 10 },
    ],
};

export const MCH_BLUEPRINT_COSTS: Record<MchBlueprintType, 25 | 50 | 100 | 250> = {
    [MchBlueprintType.Tower]: 50,
    [MchBlueprintType.Mine]: 50,
    [MchBlueprintType.BarracksLow]: 50,
    [MchBlueprintType.BarracksMid]: 100,
    [MchBlueprintType.BarracksHigh]: 250,
    [MchBlueprintType.Mystery]: 25,
};

export const MCH_BLUEPRINT_LABELS: Record<MchBlueprintType, string> = {
    [MchBlueprintType.Tower]: "防御塔",
    [MchBlueprintType.Mine]: "金矿",
    [MchBlueprintType.BarracksLow]: "50兵营",
    [MchBlueprintType.BarracksMid]: "100兵营",
    [MchBlueprintType.BarracksHigh]: "250兵营",
    [MchBlueprintType.Mystery]: "盲盒",
};

function rollWeighted<T extends { weight: number }>(items: T[]): T {
    const total = items.reduce((sum, item) => sum + item.weight, 0);
    let roll = Math.random() * total;
    for (const item of items) {
        roll -= item.weight;
        if (roll <= 0) return item;
    }
    return items[items.length - 1];
}

export function rollMchBlueprint(): MchBlueprintType {
    return rollWeighted(BLUEPRINT_WEIGHTS).type;
}

export function rollMchBarracksResult(cost: 25 | 50 | 100 | 250): MchBarracksRollResult {
    return rollWeighted(BARRACKS_POOLS[cost]);
}
