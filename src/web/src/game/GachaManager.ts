export type BarracksRarity = 'none' | 'normal' | 'rare' | 'epic' | 'legendary';

interface Weighted {
  result: BarracksRarity;
  weight: number;
}

const POOLS: Record<number, Weighted[]> = {
  25: [
    { result: 'none', weight: 70 },
    { result: 'normal', weight: 10 },
    { result: 'epic', weight: 15 },
    { result: 'legendary', weight: 5 },
  ],
  50: [
    { result: 'normal', weight: 74 },
    { result: 'rare', weight: 20 },
    { result: 'epic', weight: 5 },
    { result: 'legendary', weight: 1 },
  ],
  100: [
    { result: 'normal', weight: 50 },
    { result: 'rare', weight: 40 },
    { result: 'epic', weight: 8 },
    { result: 'legendary', weight: 2 },
  ],
  250: [
    { result: 'epic', weight: 90 },
    { result: 'legendary', weight: 10 },
  ],
};

/** 盲盒兵营抽卡 — 根据投入金币返回品质 */
export class GachaManager {
  roll(cost: 25 | 50 | 100 | 250): BarracksRarity {
    const pool = POOLS[cost];
    if (!pool) return 'none';
    const total = pool.reduce((s, p) => s + p.weight, 0);
    let roll = Math.random() * total;
    for (const entry of pool) {
      roll -= entry.weight;
      if (roll <= 0) return entry.result;
    }
    return pool[pool.length - 1].result;
  }
}
