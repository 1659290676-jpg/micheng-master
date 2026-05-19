import Phaser from 'phaser';
import type { BlueprintType } from '../game/BlueprintTypes';
import { BlueprintConfig } from '../game/BlueprintConfig';
import type { Tile } from '../battle/tile/Tile';
import { HEX_SIZE } from '../battle/hex/HexMath';

/**
 * 图纸贴在格心；容器可点击（避免挡住底下格子 pointer 事件）
 */
export class BlueprintNodeUI {
  readonly container: Phaser.GameObjects.Container;

  constructor(scene: Phaser.Scene, tile: Tile, blueprint: BlueprintType) {
    const x = tile.sprite.x;
    const y = tile.sprite.y;
    const iconKey = BlueprintConfig.icons[blueprint];
    const cost = BlueprintConfig.getCost(blueprint);

    const plate = scene.add.image(0, 0, 'blueprint_plate');
    plate.setDisplaySize(HEX_SIZE * 1.85, HEX_SIZE * 1.85);
    plate.setAlpha(0.92);

    const iconTex = scene.textures.exists(`bp_icon_${iconKey}`)
      ? `bp_icon_${iconKey}`
      : 'bp_icon_question';
    const icon = scene.add.image(0, -4, iconTex);
    icon.setDisplaySize(28, 28);

    const priceBg = scene.add.rectangle(0, 14, 36, 16, 0x000000, 0.65);
    const price = scene.add.text(0, 14, String(cost), {
      fontSize: '13px',
      color: '#fbbf24',
      fontStyle: 'bold',
    }).setOrigin(0.5);

    this.container = scene.add.container(x, y, [plate, icon, priceBg, price]);
    this.container.setDepth(8);

    const hitR = HEX_SIZE * 0.95;
    this.container.setInteractive(
      new Phaser.Geom.Circle(0, 0, hitR),
      Phaser.Geom.Circle.Contains,
    );
    this.container.setData('tile', tile);
    this.container.on('pointerdown', () => {
      scene.events.emit('tile-clicked', tile);
    });
  }

  destroy(): void {
    this.container.destroy();
  }
}
