import type { Tile } from '../tile/Tile';

/** 点击建造：格子横向收成边后回调（再翻开 / 出建筑） */
export function playBuildTileFlip(
  scene: Phaser.Scene,
  tile: Tile,
  onReveal: () => void,
): void {
  const spr = tile.sprite;
  scene.tweens.killTweensOf(spr);
  scene.tweens.add({
    targets: spr,
    scaleX: 0,
    duration: 160,
    ease: 'Cubic.easeIn',
    onComplete: () => {
      onReveal();
      spr.setScale(1, spr.scaleY);
      spr.setAlpha(tile.building ? 0.55 : 1);
      scene.tweens.add({
        targets: spr,
        scaleX: 1,
        duration: 180,
        ease: 'Cubic.easeOut',
        onComplete: () => {
          if (!tile.building) spr.setAlpha(1);
        },
      });
    },
  });
}
