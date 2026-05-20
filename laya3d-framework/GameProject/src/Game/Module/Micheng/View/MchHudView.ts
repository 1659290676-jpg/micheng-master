type MchHudState = {
    playerGold: number;
    enemyGold: number;
    timeLeftSec: number;
    playerTiles: number;
    enemyTiles: number;
    toast: string;
};

const HUD_WIDTH = 720;
const HUD_HEIGHT = 1280;

export class MchHudView {
    private readonly root = new Laya.Sprite();
    private readonly playerPanel = new Laya.Sprite();
    private readonly enemyPanel = new Laya.Sprite();
    private readonly timerPanel = new Laya.Sprite();
    private readonly coinPanel = new Laya.Sprite();
    private readonly actionPanel = new Laya.Sprite();
    private readonly toastPanel = new Laya.Sprite();
    private readonly playerName = this.createText(24, "#22c55e", true);
    private readonly playerStats = this.createText(22, "#ffffff", true);
    private readonly enemyName = this.createText(24, "#ef4444", true);
    private readonly enemyStats = this.createText(22, "#ffffff", true);
    private readonly timer = this.createText(32, "#ffffff", true);
    private readonly tiles = this.createText(20, "#ffffff", true);
    private readonly coinText = this.createText(28, "#facc15", true);
    private readonly actionText = this.createText(24, "#111827", true);
    private readonly toast = this.createText(22, "#ffffff", true);

    constructor() {
        this.root.name = "MichengHud";
        this.root.zOrder = 10000;
        this.root.mouseEnabled = false;

        this.setupPanel(this.playerPanel);
        this.setupPanel(this.enemyPanel);
        this.setupPanel(this.timerPanel);
        this.setupPanel(this.coinPanel);
        this.setupPanel(this.actionPanel);
        this.setupPanel(this.toastPanel);

        this.root.addChild(this.playerPanel);
        this.root.addChild(this.enemyPanel);
        this.root.addChild(this.timerPanel);
        this.root.addChild(this.coinPanel);
        this.root.addChild(this.actionPanel);
        this.root.addChild(this.toastPanel);
        this.root.addChild(this.playerName);
        this.root.addChild(this.playerStats);
        this.root.addChild(this.enemyName);
        this.root.addChild(this.enemyStats);
        this.root.addChild(this.timer);
        this.root.addChild(this.tiles);
        this.root.addChild(this.coinText);
        this.root.addChild(this.actionText);
        this.root.addChild(this.toast);
        Laya.stage.addChild(this.root);
        Laya.stage.on(Laya.Event.RESIZE, this, this.layout);
        this.layout();
    }

    update(state: MchHudState): void {
        this.playerName.text = "User705175";
        this.playerStats.text = `金 ${Math.floor(state.playerGold)}\n格 ${state.playerTiles}`;
        this.enemyName.text = "敌方猫";
        this.enemyStats.text = `金 ${Math.floor(state.enemyGold)}\n格 ${state.enemyTiles}`;
        this.timer.text = this.formatTime(state.timeLeftSec);
        this.tiles.text = `绿 ${state.playerTiles}  红 ${state.enemyTiles}`;
        this.coinText.text = String(Math.floor(state.playerGold));
        this.actionText.text = "...";
        this.toast.text = state.toast;
        this.layout();
    }

    destroy(): void {
        Laya.stage.off(Laya.Event.RESIZE, this, this.layout);
        this.root.destroy();
    }

    private layout(): void {
        const stageWidth = Laya.stage.width || 720;
        const stageHeight = Laya.stage.height || 1280;
        const targetAspect = HUD_WIDTH / HUD_HEIGHT;
        let viewWidth = stageWidth;
        let viewHeight = viewWidth / targetAspect;
        if (viewHeight > stageHeight) {
            viewHeight = stageHeight;
            viewWidth = viewHeight * targetAspect;
        }

        const scale = viewWidth / HUD_WIDTH;
        this.root.pos((stageWidth - viewWidth) / 2, (stageHeight - viewHeight) / 2);
        this.root.scale(scale, scale);

        this.drawRoundedPanel(this.playerPanel, 24, 64, 242, 142, "#111827", 0.52);
        this.drawRoundedPanel(this.enemyPanel, 468, 64, 228, 132, "#111827", 0.42);
        this.drawRoundedPanel(this.timerPanel, 260, 76, 200, 76, "#111827", 0.72);
        this.drawRoundedPanel(this.coinPanel, 28, 1182, 190, 62, "#3f2a10", 0.82);
        this.drawRoundedPanel(this.actionPanel, 594, 1086, 82, 82, "#ffffff", 0.88);

        this.playerPanel.graphics.drawRect(42, 22, 70, 70, "#bfdbfe");
        this.playerPanel.graphics.drawRect(54, 34, 46, 46, "#60a5fa");
        this.enemyPanel.graphics.drawRect(142, 18, 58, 58, "#fed7aa");
        this.enemyPanel.graphics.drawRect(154, 30, 34, 34, "#c08457");
        this.coinPanel.graphics.drawCircle(34, 31, 22, "#facc15");
        this.coinPanel.graphics.drawCircle(34, 31, 15, "#f59e0b");

        this.playerName.pos(104, 70);
        this.playerName.width = 150;
        this.playerStats.pos(104, 102);
        this.playerStats.width = 110;
        this.playerStats.leading = 6;

        this.enemyName.pos(486, 78);
        this.enemyName.width = 110;
        this.enemyStats.pos(486, 110);
        this.enemyStats.width = 118;
        this.enemyStats.leading = 6;

        this.timer.pos(260, 84);
        this.timer.width = 200;
        this.timer.align = "center";
        this.tiles.pos(260, 120);
        this.tiles.width = 200;
        this.tiles.align = "center";

        this.coinText.pos(70, 1194);
        this.coinText.width = 120;
        this.actionText.pos(594, 1108);
        this.actionText.width = 82;
        this.actionText.align = "center";

        const hasToast = this.toast.text.length > 0;
        this.toastPanel.visible = hasToast;
        this.toast.visible = hasToast;
        if (hasToast) {
            this.drawRoundedPanel(this.toastPanel, 150, 1038, 420, 52, "#111827", 0.72);
            this.toast.pos(160, 1052);
            this.toast.width = 400;
            this.toast.align = "center";
        }
    }

    private createText(fontSize: number, color: string, bold = false): Laya.Text {
        const text = new Laya.Text();
        text.font = "Arial";
        text.fontSize = fontSize;
        text.color = color;
        text.bold = bold;
        text.stroke = 3;
        text.strokeColor = "#000000";
        text.mouseEnabled = false;
        return text;
    }

    private setupPanel(panel: Laya.Sprite): void {
        panel.mouseEnabled = false;
    }

    private drawRoundedPanel(
        panel: Laya.Sprite,
        x: number,
        y: number,
        width: number,
        height: number,
        color: string,
        alpha: number,
    ): void {
        panel.pos(x, y);
        panel.alpha = alpha;
        panel.graphics.clear();
        panel.graphics.drawRect(0, 0, width, height, color);
    }

    private formatTime(seconds: number): string {
        const safe = Math.max(0, Math.ceil(seconds));
        const mins = Math.floor(safe / 60);
        const secs = safe % 60;
        return `${mins}:${secs < 10 ? "0" : ""}${secs}`;
    }
}
