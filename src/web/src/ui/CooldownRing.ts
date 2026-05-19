import Phaser from 'phaser';

/** 绿色环形 CD（Graphics 绘制） */
export class CooldownRing {
  private gfx: Phaser.GameObjects.Graphics;
  private radius: number;
  private progress = 0;

  constructor(
    scene: Phaser.Scene,
    x: number,
    y: number,
    radius = 22,
  ) {
    this.radius = radius;
    this.gfx = scene.add.graphics();
    this.gfx.setPosition(x, y);
    this.gfx.setDepth(6);
    this.draw(0);
  }

  setProgress(p: number): void {
    this.progress = Phaser.Math.Clamp(p, 0, 1);
    this.draw(this.progress);
  }

  setPosition(x: number, y: number): void {
    this.gfx.setPosition(x, y);
  }

  destroy(): void {
    this.gfx.destroy();
  }

  private draw(fill: number): void {
    this.gfx.clear();
    this.gfx.lineStyle(3, 0x22c55e, 0.35);
    this.gfx.strokeCircle(0, 0, this.radius);
    if (fill <= 0) return;
    this.gfx.fillStyle(0x22c55e, 0.75);
    const start = -Math.PI / 2;
    const end = start + Math.PI * 2 * fill;
    this.gfx.beginPath();
    this.gfx.moveTo(0, 0);
    this.gfx.arc(0, 0, this.radius - 2, start, end, false);
    this.gfx.closePath();
    this.gfx.fillPath();
  }
}
