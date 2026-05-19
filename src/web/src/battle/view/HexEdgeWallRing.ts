import Phaser from 'phaser';
import { HEX_SIZE } from '../hex/HexMath';
import type { Tile } from '../tile/Tile';
import { TileFaction } from '../tile/TileFaction';

/**
 * 单格六边贴线墙（仅渲染 mask 为 true 的边，不占邻格）。
 */
export class HexEdgeWallRing {
  readonly container: Phaser.GameObjects.Container;
  private wallSprites: Phaser.GameObjects.Image[] = [];

  constructor(
    scene: Phaser.Scene,
    private tile: Tile,
    faction: TileFaction,
    edgeMask: boolean[],
    animateNew = false,
  ) {
    this.container = scene.add.container(tile.sprite.x, tile.sprite.y);
    this.container.setDepth(tile.sprite.depth + 0.5);
    this.applyMask(scene, faction, edgeMask, animateNew);
  }

  rebuild(
    scene: Phaser.Scene,
    faction: TileFaction,
    edgeMask: boolean[],
    animateNew = false,
  ): void {
    this.container.setPosition(this.tile.sprite.x, this.tile.sprite.y);
    this.applyMask(scene, faction, edgeMask, animateNew);
  }

  private applyMask(
    scene: Phaser.Scene,
    faction: TileFaction,
    edgeMask: boolean[],
    animateNew: boolean,
  ): void {
    for (const s of this.wallSprites) s.destroy();
    this.wallSprites = [];
    this.container.removeAll(true);

    const radius = HEX_SIZE * 0.82;
    for (let i = 0; i < 6; i++) {
      if (!edgeMask[i]) continue;
      const deg = i * 60;
      const rad = Phaser.Math.DegToRad(deg);
      const x = Math.cos(rad) * radius;
      const y = Math.sin(rad) * radius;
      const wall = scene.add.image(x, y, 'ent_wall_edge');
      wall.setDisplaySize(HEX_SIZE * 0.52, HEX_SIZE * 0.38);
      wall.setRotation(rad + Math.PI / 2);
      if (faction === TileFaction.Enemy) wall.setFlipX(true);
      if (animateNew) {
        wall.setScale(0.05);
        scene.tweens.add({
          targets: wall,
          scaleX: 1,
          scaleY: 1,
          duration: 220,
          delay: i * 35,
          ease: 'Back.easeOut',
        });
      }
      this.wallSprites.push(wall);
      this.container.add(wall);
    }
  }

  setPosition(x: number, y: number): void {
    this.container.setPosition(x, y);
  }

  destroy(): void {
    this.container.destroy();
    this.wallSprites = [];
  }
}
