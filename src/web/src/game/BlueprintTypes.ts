export type BlueprintType =
  | 'tower'
  | 'mine'
  | 'barracks_low'
  | 'barracks_mid'
  | 'barracks_high'
  | 'mystery';

export interface BlueprintWeightsFile {
  weights: Record<BlueprintType, number>;
  costs: Record<BlueprintType, number>;
  icons: Record<BlueprintType, string>;
}

export const BLUEPRINT_LABELS: Record<BlueprintType, string> = {
  tower: '防御塔',
  mine: '金矿',
  barracks_low: '低级兵营',
  barracks_mid: '中级兵营',
  barracks_high: '高级兵营',
  mystery: '随机盲盒',
};

export const BLUEPRINT_ICON_CHAR: Record<string, string> = {
  shield: '🛡',
  stone: '⛏',
  helmet: '⛑',
  question: '?',
};

export function barracksCost(bp: BlueprintType): 50 | 100 | 250 | null {
  if (bp === 'barracks_low') return 50;
  if (bp === 'barracks_mid') return 100;
  if (bp === 'barracks_high') return 250;
  return null;
}
