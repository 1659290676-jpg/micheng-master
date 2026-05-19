import type { GameManager } from './GameManager';
import type { GridSystem } from '../battle/grid/GridSystem';
import type { FrontierManager } from '../build/FrontierManager';
import type { BuildSystem } from '../build/BuildSystem';
import { TileFaction } from '../battle/tile/TileFaction';
import { BlueprintConfig } from './BlueprintConfig';
export class EnemyAI {
  private timer = 0;

  constructor(
    private game: GameManager,
    private grid: GridSystem,
    private frontier: FrontierManager,
    private buildSystem: BuildSystem,
  ) {}

  update(deltaMs: number): void {
    if (this.game.matchOver) return;
    this.timer += deltaMs;
    if (this.timer < 2800) return;
    this.timer = 0;

    const candidates = this.grid
      .getAllTiles()
      .filter((t) => this.grid.isFrontierBuildable(t, TileFaction.Enemy));

    if (candidates.length === 0) return;

    const tile = candidates[Math.floor(Math.random() * candidates.length)];
    let bp = this.frontier.getEnemyBlueprint(tile);
    if (!bp) {
      bp = BlueprintConfig.rollBlueprint();
    }
    this.buildSystem.tryEnemyBuild(tile, bp);
  }
}
