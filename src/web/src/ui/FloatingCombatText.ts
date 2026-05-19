import Phaser from 'phaser';
import { TileFaction } from '../battle/tile/TileFaction';

export class FloatingCombatText {
  constructor(private scene: Phaser.Scene) {}

  damage(x: number, y: number, amount: number, attacker: TileFaction): void {
    const color = attacker === TileFaction.Player ? '#ffffff' : '#f87171';
    this.spawn(x, y - 24, `-${Math.round(amount)}`, color, 28);
  }

  goldReward(x: number, y: number, amount = 1): void {
    if (amount <= 0) return;
    this.spawn(x, y - 20, `+${amount} 🪙`, '#fbbf24', 22, 1400);
  }

  private spawn(
    x: number,
    y: number,
    text: string,
    color: string,
    fontSize: string | number,
    duration = 1000,
  ): void {
    const t = this.scene.add.text(x, y, text, {
      fontSize: typeof fontSize === 'number' ? `${fontSize}px` : fontSize,
      color,
      fontStyle: 'bold',
      stroke: '#000',
      strokeThickness: 3,
    }).setOrigin(0.5).setDepth(50);

    this.scene.tweens.add({
      targets: t,
      y: y - 48,
      alpha: 0,
      duration,
      ease: 'Cubic.easeOut',
      onComplete: () => t.destroy(),
    });
  }
}
