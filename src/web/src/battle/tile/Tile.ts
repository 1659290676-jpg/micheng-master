import Phaser from 'phaser';
import type { Building } from '../../entities/Building';
import type { Soldier } from '../../entities/Soldier';
import { TileFaction } from './TileFaction';

export class Tile {
  readonly col: number;
  readonly row: number;
  readonly z: number;

  faction: TileFaction;
  sprite: Phaser.GameObjects.Image;
  buildingSprite?: Phaser.GameObjects.Image;
  building?: Building;
  soldier?: Soldier;

  constructor(col: number, row: number, faction: TileFaction, sprite: Phaser.GameObjects.Image) {
    this.col = col;
    this.row = row;
    this.z = row;
    this.faction = faction;
    this.sprite = sprite;
  }

  get key(): string {
    return `${this.col},${this.row}`;
  }

  isEmpty(): boolean {
    return !this.building && !this.soldier;
  }

  isObstacleForPath(): boolean {
    return !!this.building;
  }

  isPlayerTerritory(): boolean {
    return this.faction === TileFaction.Player;
  }

  isEnemyTerritory(): boolean {
    return this.faction === TileFaction.Enemy;
  }
}
