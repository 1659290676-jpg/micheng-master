import Phaser from 'phaser';
import type { GameManager, MatchResult } from '../game/GameManager';
import { TileFaction } from '../battle/tile/TileFaction';

export class GameHud {
  private goldText!: Phaser.GameObjects.Text;
  private timerText!: Phaser.GameObjects.Text;
  private countText!: Phaser.GameObjects.Text;
  private toastText!: Phaser.GameObjects.Text;
  private endPanel?: Phaser.GameObjects.Container;

  constructor(
    private scene: Phaser.Scene,
    private game: GameManager,
  ) {
    this.buildTopHud();
  }

  showToast(msg: string): void {
    this.toastText.setText(msg);
    this.scene.time.delayedCall(2000, () => {
      if (this.toastText.text === msg) this.toastText.setText('');
    });
  }

  refresh(): void {
    const { player, enemy } = this.game.getTileCounts();
    const m = Math.floor(this.game.timeLeftSec / 60);
    const s = Math.floor(this.game.timeLeftSec % 60);
    const mines = this.game.countMines(TileFaction.Player);
    const mineHint =
      mines > 0 ? `  矿×${mines}每~6秒+10` : '';
    this.goldText.setText(
      `金币 ${Math.floor(this.game.playerGold)}  (+${this.game.baseGoldPerSec}/秒${mineHint})`,
    );
    this.timerText.setText(`剩余 ${m}:${s.toString().padStart(2, '0')}`);
    this.countText.setText(`绿格 ${player}  vs  红格 ${enemy}`);
  }

  hideEndPanel(): void {
    this.endPanel?.destroy();
    this.endPanel = undefined;
  }

  showEndPanel(result: MatchResult, onRestart: () => void): void {
    this.hideEndPanel();
    const w = this.scene.scale.width;
    const h = this.scene.scale.height;
    const bg = this.scene.add.rectangle(w / 2, h / 2, w, h, 0x000000, 0.75);
    const title =
      result === 'player_win' ? '胜利！' : result === 'enemy_win' ? '失败…' : '平局';
    const titleText = this.scene.add
      .text(w / 2, h / 2 - 40, title, {
        fontSize: '36px',
        color: result === 'player_win' ? '#4ade80' : '#f87171',
        fontStyle: 'bold',
      })
      .setOrigin(0.5);
    const btn = this.scene.add
      .text(w / 2, h / 2 + 40, '再来一局', {
        fontSize: '24px',
        color: '#fff',
        backgroundColor: '#3b82f6',
        padding: { x: 16, y: 8 },
      })
      .setOrigin(0.5)
      .setInteractive({ useHandCursor: true });
    btn.on('pointerdown', onRestart);
    this.endPanel = this.scene.add.container(0, 0, [bg, titleText, btn]);
    this.endPanel.setDepth(200);
  }

  private buildTopHud(): void {
    this.goldText = this.scene.add
      .text(12, 8, '', { fontSize: '17px', color: '#fbbf24', fontStyle: 'bold' })
      .setDepth(100);
    this.timerText = this.scene.add
      .text(12, 32, '', { fontSize: '16px', color: '#e5e7eb' })
      .setDepth(100);
    this.countText = this.scene.add
      .text(12, 56, '', { fontSize: '14px', color: '#a3e635' })
      .setDepth(100);
    this.toastText = this.scene.add
      .text(12, 80, '', { fontSize: '14px', color: '#fca5a5' })
      .setDepth(100);
    this.scene.add
      .text(12, 104, '每格建筑六边贴墙 · 相邻共用边自动合并', {
        fontSize: '13px',
        color: '#94a3b8',
      })
      .setDepth(100);
  }
}
