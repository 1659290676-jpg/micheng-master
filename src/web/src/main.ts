import Phaser from 'phaser';
import { BootScene } from './scenes/BootScene';
import { BoardScene } from './scenes/BoardScene';

const config: Phaser.Types.Core.GameConfig = {
  type: Phaser.AUTO,
  parent: 'game',
  width: 720,
  height: 1280,
  backgroundColor: '#1a1a2e',
  scene: [BootScene, BoardScene],
  scale: {
    mode: Phaser.Scale.FIT,
    autoCenter: Phaser.Scale.CENTER_BOTH,
  },
};

new Phaser.Game(config);
