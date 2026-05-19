import Phaser from 'phaser';
import type { GameManager, BuildMode, MatchResult } from '../game/GameManager';

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
    this.buildBuildBar();
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
    this.goldText.setText(`金币: ${Math.floor(this.game.playerGold)} (+${this.game.baseGoldPerSec}+矿)`);
    this.timerText.setText(`剩余 ${m}:${s.toString().padStart(2, '0')}`);
    this.countText.setText(`绿格 ${player} : 红格 ${enemy}`);
  }

  showEndPanel(result: MatchResult, onRestart: () => void): void {
    if (this.endPanel) this.endPanel.destroy();
    const w = this.scene.scale.width;
    const h = this.scene.scale.height;
    const bg = this.scene.add.rectangle(w / 2, h / 2, w, h, 0x000000, 0.75);
    const title =
      result === 'player_win'
        ? '胜利！'
        : result === 'enemy_win'
          ? '失败…'
          : '平局';
    const titleText = this.scene.add.text(w / 2, h / 2 - 40, title, {
      fontSize: '36px',
      color: result === 'player_win' ? '#4ade80' : '#f87171',
      fontStyle: 'bold',
    }).setOrigin(0.5);
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
    this.goldText = this.scene.add.text(12, 8, '', { fontSize: '16px', color: '#fbbf24' }).setDepth(100);
    this.timerText = this.scene.add.text(12, 28, '', { fontSize: '16px', color: '#e5e7eb' }).setDepth(100);
    this.countText = this.scene.add.text(12, 48, '', { fontSize: '14px', color: '#a3e635' }).setDepth(100);
    this.toastText = this.scene.add.text(12, 72, '', { fontSize: '14px', color: '#fca5a5' }).setDepth(100);
  }

  private buildBuildBar(): void {
    const modes: Array<{ mode: BuildMode; label: string; y: number }> = [
      { mode: 'mine', label: '金矿50', y: 0 },
      { mode: 'mystery25', label: '?25', y: 0 },
      { mode: 'barracks50', label: '兵50', y: 0 },
      { mode: 'barracks100', label: '兵100', y: 0 },
      { mode: 'barracks250', label: '兵250', y: 0 },
    ];
    const startX = 8;
    const y = this.scene.scale.height - 44;
    modes.forEach((m, i) => {
      const btn = this.scene.add
        .text(startX + i * 68, y, m.label, {
          fontSize: '13px',
          color: '#fff',
          backgroundColor: '#374151',
          padding: { x: 6, y: 4 },
        })
        .setDepth(100)
        .setInteractive({ useHandCursor: true });
      btn.on('pointerdown', () => this.game.setBuildMode(m.mode));
    });
    this.scene.add
      .text(startX + modes.length * 68 + 8, y, '取消', {
        fontSize: '13px',
        color: '#9ca3af',
        backgroundColor: '#1f2937',
        padding: { x: 6, y: 4 },
      })
      .setDepth(100)
      .setInteractive({ useHandCursor: true })
      .on('pointerdown', () => this.game.setBuildMode('none'));
  }
}
