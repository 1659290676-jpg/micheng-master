import Phaser from 'phaser';

export class BootScene extends Phaser.Scene {
  constructor() {
    super('Boot');
  }

  preload(): void {
    const b = 'cats/board';
    this.load.image('tile_green', `${b}/tile_green.png`);
    this.load.image('tile_red', `${b}/tile_red.png`);
  }

  create(): void {
    this.generateAllTextures();
    this.scene.start('Board');
  }

  private generateAllTextures(): void {
    genHexTile(this, 'tile_player', 0x3d6b4f, 0x5a9e72);
    genHexTile(this, 'tile_enemy', 0x6b3d3d, 0x9e5a5a);
    genHexTile(this, 'tile_neutral', 0x4a4a55, 0x5c5c6a);
    genBlueprintPlate(this);
    genBpIcon(this, 'bp_icon_shield', 0x60a5fa, 'shield');
    genBpIcon(this, 'bp_icon_stone', 0xfbbf24, 'pick');
    genBpIcon(this, 'bp_icon_helmet', 0xa78bfa, 'helm');
    genBpIcon(this, 'bp_icon_question', 0xf472b6, 'q');
    genBuilding(this, 'ent_lord_base', 0xc4b5fd, 'castle');
    genBuilding(this, 'ent_gold_mine', 0xfbbf24, 'mine');
    genBuilding(this, 'ent_arrow_tower', 0x93c5fd, 'tower');
    genBuilding(this, 'ent_aoe_tower', 0xf97316, 'aoe');
    genBuilding(this, 'ent_barracks_melee', 0x9ca3af, 'melee');
    genBuilding(this, 'ent_barracks_ranged', 0x34d399, 'bow');
    genBuilding(this, 'ent_barracks_flying', 0x38bdf8, 'fly');
    genBuilding(this, 'ent_wall', 0x78716c, 'wall');
    genUnit(this, 'unit_melee_p', 0x4ade80);
    genUnit(this, 'unit_melee_e', 0xf87171);
    genUnit(this, 'unit_ranged_p', 0x86efac);
    genUnit(this, 'unit_ranged_e', 0xfca5a5);
    genUnit(this, 'unit_flying_p', 0x7dd3fc);
    genUnit(this, 'unit_flying_e', 0xfda4af);
    genUnit(this, 'unit_heavy_p', 0x22c55e);
    genUnit(this, 'unit_heavy_e', 0xdc2626);
    genUnit(this, 'unit_siege_p', 0xa3e635);
    genUnit(this, 'unit_siege_e', 0xfb923c);
    genDemon(this);
  }
}

function genHexTile(
  scene: Phaser.Scene,
  key: string,
  dark: number,
  light: number,
): void {
  if (scene.textures.exists(key)) return;
  const g = scene.make.graphics({ x: 0, y: 0 });
  const cx = 64;
  const cy = 56;
  const r = 50;
  g.fillStyle(dark, 1);
  hexPath(g, cx, cy, r);
  g.fillPath();
  g.fillStyle(light, 0.35);
  hexPath(g, cx, cy, r - 8);
  g.fillPath();
  g.lineStyle(2, 0xffffff, 0.12);
  hexPath(g, cx, cy, r);
  g.strokePath();
  g.generateTexture(key, 128, 112);
  g.destroy();
}

function genBlueprintPlate(scene: Phaser.Scene): void {
  const g = scene.make.graphics({ x: 0, y: 0 });
  g.fillStyle(0x1e293b, 0.75);
  hexPath(g, 48, 42, 38);
  g.fillPath();
  g.lineStyle(2, 0xfbbf24, 0.85);
  hexPath(g, 48, 42, 38);
  g.strokePath();
  g.generateTexture('blueprint_plate', 96, 84);
  g.destroy();
}

function genBpIcon(
  scene: Phaser.Scene,
  key: string,
  color: number,
  shape: string,
): void {
  const g = scene.make.graphics({ x: 0, y: 0 });
  g.fillStyle(color, 1);
  if (shape === 'shield') {
    g.fillTriangle(16, 4, 4, 20, 28, 20);
    g.fillRect(10, 12, 12, 14);
  } else if (shape === 'pick') {
    g.fillRect(14, 8, 4, 18);
    g.fillTriangle(8, 8, 24, 8, 16, 2);
  } else if (shape === 'helm') {
    g.fillCircle(16, 14, 12);
    g.fillRect(6, 14, 20, 10);
  } else {
    g.fillStyle(0xffffff, 1);
    g.fillCircle(16, 16, 12);
    g.fillStyle(color, 1);
    g.fillCircle(16, 16, 8);
  }
  g.generateTexture(key, 32, 32);
  g.destroy();
}

function genBuilding(
  scene: Phaser.Scene,
  key: string,
  color: number,
  shape: string,
): void {
  const g = scene.make.graphics({ x: 0, y: 0 });
  g.fillStyle(0x1f2937, 0.5);
  g.fillEllipse(24, 42, 36, 10);
  g.fillStyle(color, 1);
  if (shape === 'castle') {
    g.fillRect(10, 14, 28, 24);
    g.fillRect(6, 8, 10, 12);
    g.fillRect(32, 8, 10, 12);
    g.fillTriangle(24, 4, 14, 14, 34, 14);
  } else if (shape === 'mine') {
    g.fillTriangle(8, 28, 24, 8, 40, 28);
    g.fillStyle(0xfde68a, 1);
    g.fillCircle(24, 20, 6);
  } else if (shape === 'tower') {
    g.fillRect(16, 10, 16, 30);
    g.fillTriangle(32, 10, 24, 2, 16, 10);
  } else if (shape === 'wall') {
    g.fillStyle(0x57534e, 1);
    for (let i = 0; i < 3; i++) {
      g.fillRect(8 + i * 10, 16 + (i % 2) * 6, 9, 14);
    }
  } else if (shape === 'fly') {
    g.fillEllipse(24, 22, 28, 16);
    g.fillTriangle(4, 18, 14, 8, 14, 28);
    g.fillTriangle(44, 18, 34, 8, 34, 28);
  } else if (shape === 'bow') {
    g.fillRect(20, 12, 8, 24);
    g.lineStyle(3, color, 1);
    g.beginPath();
    g.arc(12, 24, 14, -1.2, 1.2);
    g.strokePath();
  } else {
    g.fillRect(14, 14, 20, 22);
    g.fillCircle(24, 12, 8);
  }
  g.generateTexture(key, 48, 48);
  g.destroy();
}

function genUnit(scene: Phaser.Scene, key: string, color: number): void {
  const g = scene.make.graphics({ x: 0, y: 0 });
  g.fillStyle(0x000000, 0.25);
  g.fillEllipse(16, 28, 20, 6);
  g.fillStyle(color, 1);
  g.fillCircle(16, 14, 10);
  g.fillRect(10, 18, 12, 12);
  g.generateTexture(key, 32, 32);
  g.destroy();
}

function genDemon(scene: Phaser.Scene): void {
  const g = scene.make.graphics({ x: 0, y: 0 });
  g.fillStyle(0x000000, 0.7);
  g.fillCircle(16, 16, 14);
  g.fillStyle(0xef4444, 1);
  g.fillCircle(11, 13, 3);
  g.fillCircle(21, 13, 3);
  g.lineStyle(2, 0xef4444, 1);
  g.beginPath();
  g.arc(16, 20, 7, 0, Math.PI);
  g.strokePath();
  g.generateTexture('deco_demon', 32, 32);
  g.destroy();
}

function hexPath(
  g: Phaser.GameObjects.Graphics,
  cx: number,
  cy: number,
  r: number,
): void {
  g.beginPath();
  for (let i = 0; i < 6; i++) {
    const angle = (Math.PI / 180) * (60 * i);
    const x = cx + r * Math.cos(angle);
    const y = cy + r * Math.sin(angle);
    if (i === 0) g.moveTo(x, y);
    else g.lineTo(x, y);
  }
  g.closePath();
}
