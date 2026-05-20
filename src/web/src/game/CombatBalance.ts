import type { BarracksRarity } from './GachaManager';
import type { UnitKind } from './BuildingKinds';

/** 关卡初始数值（策划表） */
export const COMBAT_BALANCE = {
  goldMine: {
    buildingHp: 140,
    goldIntervalSec: 5.995,
    goldPerPulse: 10,
  },
  arrowTower: {
    buildingHp: 400,
    attackDamage: 120,
    attackIntervalSec: 2.995,
    attackRangeHex: 3,
  },
  mysteryEmptyWall: {
    buildingHp: 100,
  },
  lordBase: {
    buildingHp: 1000,
    goldIntervalSec: 5,
    goldPerPulse: 10,
    attackDamage: 150,
    attackIntervalSec: 1,
    attackRangeHex: 3,
  },
  barracks: {
    normal: {
      buildingHp: 300,
      unitHp: 100,
      unitAttack: 13,
      spawnIntervalSec: 7,
      moveIntervalMs: 2400,
      attackRangeHex: 1.2,
    },
    rare: {
      buildingHp: 400,
      unitHp: 150,
      unitAttack: 20,
      spawnIntervalSec: 15,
      moveIntervalMs: 1000,
      attackRangeHex: 5,
    },
    epic: {
      buildingHp: 800,
      unitHp: 250,
      unitAttack: 50,
      spawnIntervalSec: 18,
      moveIntervalMs: 3000,
      attackRangeHex: 3,
    },
    legendary: {
      buildingHp: 4000,
      unitHp: 1400,
      unitAttack: 100,
      spawnIntervalSec: 40,
      moveIntervalMs: 2000,
      attackRangeHex: 1,
    },
  } satisfies Record<
    Exclude<BarracksRarity, 'none'>,
    {
      buildingHp: number;
      unitHp: number;
      unitAttack: number;
      spawnIntervalSec: number;
      moveIntervalMs: number;
      attackRangeHex: number;
    }
  >,
} as const;

export type BarracksTier = Exclude<BarracksRarity, 'none'>;

export function barracksTierForUnit(unit: UnitKind): BarracksTier {
  switch (unit) {
    case 'ranged':
    case 'flying':
      return 'rare';
    case 'heavy':
      return 'epic';
    case 'siege':
      return 'legendary';
    default:
      return 'normal';
  }
}

export function barracksTierForRarity(rarity: BarracksRarity): BarracksTier {
  if (rarity === 'none' || rarity === 'normal') return 'normal';
  return rarity;
}
