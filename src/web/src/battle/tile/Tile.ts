import Phaser from 'phaser';
import type { Building } from '../../entities/Building';
import type { Soldier } from '../../entities/Soldier';
import { TileFaction } from './TileFaction';

/**
 * 独立格子 GameObject 逻辑体（对应 Unity 的 Tile + 挂载脚本）
 * 存储网格坐标与归属；渲染由 sprite / buildingSprite 负责
 */
export class Tile {
  readonly col: number;
  readonly row: number;
  /** 轴向 Z 在 2D 中用 row 表示层序时可扩展；当前与 row 一致 */
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
