import Phaser from 'phaser';
import { GridSystem } from '../battle/grid/GridSystem';
import type { Tile } from '../battle/tile/Tile';
import { GameManager, type MatchResult } from '../game/GameManager';
import { EnemyAI } from '../game/EnemyAI';
import { GameHud } from '../ui/GameHud';
import { FloatingCombatText } from '../ui/FloatingCombatText';
import { FrontierManager } from '../build/FrontierManager';
import { BuildSystem } from '../build/BuildSystem';

export class BoardScene extends Phaser.Scene {
  private grid!: GridSystem;
  private gameManager!: GameManager;
  private hud!: GameHud;
  private enemyAI!: EnemyAI;
  private frontier!: FrontierManager;
  private buildSystem!: BuildSystem;
  private ended = false;

  constructor() {
    super('Board');
  }

  create(): void {
    this.ended = false;
    this.tweens.killAll();
    this.time.removeAllEvents();

    this.events.off('tile-clicked');
    this.events.off('frontier-refresh');
    this.events.off('building-placed');

    this.grid = new GridSystem(this);
    this.grid.combatText = new FloatingCombatText(this);
    this.grid.buildBoard();
    this.frontier = new FrontierManager(this, this.grid);

    let hudRef!: GameHud;
    this.gameManager = new GameManager(
      this,
      this.grid,
      (msg) => hudRef.showToast(msg),
      (result) => this.onMatchEnd(result),
    );
    this.hud = hudRef = new GameHud(this, this.gameManager);
    this.buildSystem = new BuildSystem(
      this,
      this.grid,
      this.frontier,
      this.gameManager,
      (msg) => hudRef.showToast(msg),
    );

    this.gameManager.reset();
    this.frontier.refreshAll();
    this.enemyAI = new EnemyAI(
      this.gameManager,
      this.grid,
      this.frontier,
      this.buildSystem,
    );

    this.events.on('tile-clicked', (tile: Tile) => {
      if (this.ended || this.gameManager.matchOver) return;
      this.buildSystem.tryPlayerBuild(tile);
    });
    this.events.on('frontier-refresh', () => {
      if (!this.ended) this.frontier.refreshAll();
    });
    this.events.on('building-placed', () => {
      if (!this.ended) this.frontier.refreshAll();
    });
  }

  update(_time: number, delta: number): void {
    if (this.gameManager.matchOver || this.ended) return;
    this.gameManager.update(delta);
    this.enemyAI.update(delta);
    this.hud.refresh();
  }

  private onMatchEnd(result: MatchResult): void {
    if (this.ended) return;
    this.ended = true;
    this.hud.showEndPanel(result, () => this.restartMatch());
  }

  private restartMatch(): void {
    this.hud.hideEndPanel();
    this.scene.restart();
  }
}
