import Phaser from 'phaser';
import type { GridSystem } from '../battle/grid/GridSystem';
import type { Tile } from '../battle/tile/Tile';
import { TileFaction } from '../battle/tile/TileFaction';
import { getHexNeighbors } from '../battle/hex/HexCoords';
import type { BlueprintType } from '../game/BlueprintTypes';
import { BlueprintConfig } from '../game/BlueprintConfig';
import { BlueprintNodeUI } from './BlueprintNodeUI';
import { WallManager } from './WallManager';

export class FrontierManager {
  private playerBlueprints = new Map<string, BlueprintType>();
  private enemyBlueprints = new Map<string, BlueprintType>();
  private playerUI = new Map<string, BlueprintNodeUI>();
  private walls: WallManager;

  constructor(
    private scene: Phaser.Scene,
    private grid: GridSystem,
  ) {
    this.walls = new WallManager(grid);
  }

  refreshAll(): void {
    // 先算图纸，再铺墙（墙不能占边界格）
    this.refreshFaction(TileFaction.Player, true);
    this.refreshFaction(TileFaction.Enemy, false);
    this.walls.refresh(TileFaction.Player);
    this.walls.refresh(TileFaction.Enemy);
    this.grid.refreshTerritoryDecals();
  }

  refreshAfterBuild(faction: TileFaction): void {
    if (faction === TileFaction.Player) {
      this.refreshFaction(TileFaction.Player, true);
    } else {
      this.refreshFaction(TileFaction.Enemy, false);
    }
    this.walls.refresh(faction);
    this.grid.refreshTerritoryDecals();
  }

  getPlayerBlueprint(tile: Tile): BlueprintType | undefined {
    return this.playerBlueprints.get(tile.key);
  }

  getEnemyBlueprint(tile: Tile): BlueprintType | undefined {
    return this.enemyBlueprints.get(tile.key);
  }

  clearPlayerBlueprint(tile: Tile): void {
    this.playerBlueprints.delete(tile.key);
    this.playerUI.get(tile.key)?.destroy();
    this.playerUI.delete(tile.key);
  }

  private refreshFaction(faction: TileFaction, showUI: boolean): void {
    const map = faction === TileFaction.Player ? this.playerBlueprints : this.enemyBlueprints;
    const newFrontier = new Set<string>();

    for (const tile of this.grid.getAllTiles()) {
      if (!this.isFrontierTile(tile, faction)) continue;
      newFrontier.add(tile.key);
      if (!map.has(tile.key)) {
        map.set(tile.key, BlueprintConfig.rollBlueprint());
      }
    }

    for (const key of [...map.keys()]) {
      if (!newFrontier.has(key)) {
        map.delete(key);
        if (faction === TileFaction.Player) {
          this.playerUI.get(key)?.destroy();
          this.playerUI.delete(key);
        }
      }
    }

    if (showUI) this.syncPlayerUI();
  }

  private isFrontierTile(tile: Tile, faction: TileFaction): boolean {
    if (tile.faction !== faction || !tile.isEmpty()) return false;
    return getHexNeighbors(tile.col, tile.row).some((n) => {
      const t = this.grid.getTile(n.col, n.row);
      return t?.building?.faction === faction && t.building.kind !== 'wall';
    });
  }

  private syncPlayerUI(): void {
    for (const [key, ui] of [...this.playerUI]) {
      if (!this.playerBlueprints.has(key)) {
        ui.destroy();
        this.playerUI.delete(key);
      }
    }
    for (const [key, bp] of this.playerBlueprints) {
      if (this.playerUI.has(key)) continue;
      const parts = key.split(',').map(Number);
      const tile = this.grid.getTile(parts[0], parts[1]);
      if (!tile) continue;
      this.playerUI.set(key, new BlueprintNodeUI(this.scene, tile, bp));
    }
  }
}
