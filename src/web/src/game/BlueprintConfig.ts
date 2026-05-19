import type { BlueprintType, BlueprintWeightsFile } from './BlueprintTypes';
import weightsJson from '@data/blueprint_weights.json';

const data = weightsJson as BlueprintWeightsFile;

export class BlueprintConfig {
  static readonly weights: Record<BlueprintType, number> = data.weights;
  static readonly costs: Record<BlueprintType, number> = data.costs;
  static readonly icons: Record<BlueprintType, string> = data.icons;

  static rollBlueprint(): BlueprintType {
    const entries = Object.entries(this.weights) as [BlueprintType, number][];
    const total = entries.reduce((s, [, w]) => s + w, 0);
    let r = Math.random() * total;
    for (const [type, weight] of entries) {
      r -= weight;
      if (r <= 0) return type;
    }
    return 'barracks_low';
  }

  static getCost(type: BlueprintType): number {
    return this.costs[type] ?? 50;
  }
}
