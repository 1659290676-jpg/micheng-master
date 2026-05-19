import Phaser from 'phaser';

export class BootScene extends Phaser.Scene {
  constructor() {
    super('Boot');
  }

  preload(): void {
    const b = 'cats/board';
    this.load.image('tile_green', `${b}/tile_green.png`);
    this.load.image('tile_red', `${b}/tile_red.png`);
    this.load.image('tile_neutral', `${b}/tile_neutral.png`);
  }

  create(): void {
    this.ensureTileTextures();
    this.ensureUnitTextures();
    this.scene.start('Board');
  }

  private ensureTileTextures(): void {
    const defs: Array<{ key: string; color: number }> = [
      { key: 'tile_green', color: 0x22c55e },
      { key: 'tile_red', color: 0xef4444 },
      { key: 'tile_neutral', color: 0x6b7280 },
    ];
    for (const { key, color } of defs) {
      if (this.hasRealTexture(key)) continue;
      const g = this.make.graphics({ x: 0, y: 0 });
      drawFlatHex(g, 64, 50, color);
      g.generateTexture(key, 128, 100);
      g.destroy();
    }
  }

  private ensureUnitTextures(): void {
    const defs: Array<{ key: string; color: number; size: number }> = [
      { key: 'mine', color: 0xfbbf24, size: 32 },
      { key: 'base', color: 0xa855f7, size: 40 },
      { key: 'barracks_normal', color: 0x9ca3af, size: 34 },
      { key: 'barracks_rare', color: 0x3b82f6, size: 34 },
      { key: 'barracks_epic', color: 0xa855f7, size: 34 },
      { key: 'barracks_legendary', color: 0xf59e0b, size: 36 },
      { key: 'soldier_player', color: 0x4ade80, size: 22 },
      { key: 'soldier_enemy', color: 0xf87171, size: 22 },
    ];
    for (const { key, color, size } of defs) {
      if (this.textures.exists(key)) continue;
      const g = this.make.graphics({ x: 0, y: 0 });
      g.fillStyle(color, 1);
      g.fillCircle(size, size, size - 2);
      g.generateTexture(key, size * 2, size * 2);
      g.destroy();
    }
  }

  private hasRealTexture(key: string): boolean {
    if (!this.textures.exists(key)) return false;
    const src = this.textures.get(key).getSourceImage() as HTMLImageElement;
    return (src?.naturalWidth ?? 0) > 0;
  }
}

function drawFlatHex(
  g: Phaser.GameObjects.Graphics,
  cx: number,
  cy: number,
  color: number,
): void {
  const r = 46;
  g.fillStyle(color, 1);
  g.beginPath();
  for (let i = 0; i < 6; i++) {
    const angle = (Math.PI / 180) * (60 * i);
    const x = cx + r * Math.cos(angle);
    const y = cy + r * Math.sin(angle);
    if (i === 0) g.moveTo(x, y);
    else g.lineTo(x, y);
  }
  g.closePath();
  g.fillPath();
}
