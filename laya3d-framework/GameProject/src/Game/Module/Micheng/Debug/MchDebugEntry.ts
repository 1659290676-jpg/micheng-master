import { MchBoardModel } from "../Board/MchBoardModel";
import { MCH_LEVEL_1 } from "../Config/MchLevelConfig";
import { MchBoardView } from "../View/MchBoardView";
import { MchBlueprintView } from "../View/MchBlueprintView";
import { MchEntityView } from "../View/MchEntityView";
import { MchBuildingKind, MchFaction, type MchBlueprintState } from "../Core/MchTypes";
import { MchHudView } from "../View/MchHudView";

const { regClass } = Laya;
const DEBUG_VIEW_WIDTH = 720;
const DEBUG_VIEW_HEIGHT = 1280;
const MATCH_DURATION_SEC = 180;
const BASE_GOLD_PER_SEC = 5;
const GOLD_MINE_GOLD_PER_SEC = 5;
const BATTLE_STEP_SEC = 0.65;
type MchDebugCameraPreset = "battle" | "overview";

/**
 * LayaAir 编辑器调试入口。
 *
 * 使用方式：
 * 1. 打开 `laya3d-framework/GameProject`。
 * 2. 在 3D 场景中新建空 `Sprite3D`。
 * 3. 给该节点添加 `MchDebugEntry` 脚本。
 * 4. 运行后生成第一关 9x16 棋盘、基础实体占位和玩家侧图纸建造占位。
 */
@regClass()
export class MchDebugEntry extends Laya.Script {
    declare owner: Laya.Sprite3D;

    private boardModel: MchBoardModel;
    private boardView: MchBoardView;
    private entityView: MchEntityView;
    private blueprintView: MchBlueprintView;
    private debugCamera: Laya.Camera;
    private debugLight: Laya.Sprite3D;
    private debugCameraPreset: MchDebugCameraPreset = "battle";
    private hudView: MchHudView;
    private playerGold = 100;
    private enemyGold = 100;
    private timeLeftSec = MATCH_DURATION_SEC;
    private goldAccumulator = 0;
    private enemyGoldAccumulator = 0;
    private battleAccumulator = 0;
    private toastText = "点击贴地图纸建造";
    private toastExpireMs = 0;

    onStart(): void {
        this.setupDebugView();
        this.boardModel = new MchBoardModel(MCH_LEVEL_1);
        this.boardModel.seedInitialBases();
        this.boardView = new MchBoardView(this.owner, this.boardModel);
        this.boardView.build();
        this.entityView = new MchEntityView(this.owner, this.boardModel, this.boardView);
        this.entityView.build();
        this.blueprintView = new MchBlueprintView(
            this.owner,
            this.boardModel,
            this.boardView,
            this.onBlueprintClick.bind(this),
        );
        this.blueprintView.build();
        this.hudView = new MchHudView();
        this.updateHud();
        Laya.timer.frameLoop(1, this, this.updateMatchDebug);
        Laya.stage.on(Laya.Event.MOUSE_DOWN, this, this.onStageMouseDown);
        Laya.stage.on(Laya.Event.KEY_DOWN, this, this.onStageKeyDown);
        Laya.stage.on(Laya.Event.RESIZE, this, this.updateDebugCameraViewport);
        console.log("[Micheng] 图纸调试：点击图纸地板建造。按 V 切换对战/结算相机视角。");
    }

    onDestroy(): void {
        Laya.stage.off(Laya.Event.MOUSE_DOWN, this, this.onStageMouseDown);
        Laya.stage.off(Laya.Event.KEY_DOWN, this, this.onStageKeyDown);
        Laya.stage.off(Laya.Event.RESIZE, this, this.updateDebugCameraViewport);
        Laya.timer.clear(this, this.updateMatchDebug);
        this.hudView?.destroy();
        this.blueprintView?.destroy();
        this.entityView?.destroy();
        this.boardView?.destroy();
        this.debugCamera?.destroy();
        this.debugLight?.destroy();
        this.blueprintView = null;
        this.entityView = null;
        this.boardView = null;
        this.boardModel = null;
        this.debugCamera = null;
        this.debugLight = null;
        this.hudView = null;
    }

    private onBlueprintClick(blueprint: MchBlueprintState): void {
        if (this.playerGold < blueprint.cost) {
            this.showToast(`金币不足，需要 ${blueprint.cost}`);
            return;
        }
        const building = this.boardModel.tryBuildPlayerBlueprint(blueprint.col, blueprint.row);
        if (!building) return;
        this.playerGold -= blueprint.cost;
        this.blueprintView.build();
        this.entityView.addBuildingWithFlip(building);
        this.showToast(`建造成功 -${blueprint.cost}`);
        this.updateHud();
        console.log(`[Micheng] build ${blueprint.type} at ${blueprint.col},${blueprint.row}`);
    }

    private onStageMouseDown(): void {
        const blueprint = this.blueprintView?.pickBlueprintAtStagePoint(Laya.stage.mouseX, Laya.stage.mouseY);
        if (blueprint) this.onBlueprintClick(blueprint);
    }

    private updateMatchDebug(): void {
        const dt = Laya.timer.delta / 1000;
        this.timeLeftSec = Math.max(0, this.timeLeftSec - dt);

        this.goldAccumulator += this.getGoldRate(MchFaction.Player) * dt;
        this.enemyGoldAccumulator += this.getGoldRate(MchFaction.Enemy) * dt;
        while (this.goldAccumulator >= 1) {
            this.playerGold += 1;
            this.goldAccumulator -= 1;
        }
        while (this.enemyGoldAccumulator >= 1) {
            this.enemyGold += 1;
            this.enemyGoldAccumulator -= 1;
        }

        this.battleAccumulator += dt;
        while (this.battleAccumulator >= BATTLE_STEP_SEC) {
            this.battleAccumulator -= BATTLE_STEP_SEC;
            if (this.boardModel.stepBattle()) {
                this.boardView.build();
                this.blueprintView.build();
                this.entityView.build();
            }
        }

        if (this.toastExpireMs > 0 && Laya.timer.currTimer >= this.toastExpireMs) {
            this.toastText = "";
            this.toastExpireMs = 0;
        }
        this.updateHud();
    }

    private getGoldRate(faction: MchFaction): number {
        return BASE_GOLD_PER_SEC +
            this.boardModel.countBuildings(faction, MchBuildingKind.GoldMine) * GOLD_MINE_GOLD_PER_SEC;
    }

    private showToast(text: string): void {
        this.toastText = text;
        this.toastExpireMs = Laya.timer.currTimer + 1800;
        this.updateHud();
    }

    private updateHud(): void {
        if (!this.hudView || !this.boardModel) return;
        const counts = this.boardModel.countTilesByFaction();
        this.hudView.update({
            playerGold: this.playerGold,
            enemyGold: this.enemyGold,
            timeLeftSec: this.timeLeftSec,
            playerTiles: counts.player,
            enemyTiles: counts.enemy,
            toast: this.toastText,
        });
    }

    private onStageKeyDown(evt: Laya.Event): void {
        if (evt.keyCode !== 86) return;
        this.debugCameraPreset = this.debugCameraPreset === "battle" ? "overview" : "battle";
        this.applyDebugCameraPreset();
        console.log(`[Micheng] camera preset: ${this.debugCameraPreset}`);
    }

    private setupDebugView(): void {
        const scene = this.owner.scene;
        if (!scene) return;

        this.debugCamera = scene.getChildByName("MichengDebugCamera") as Laya.Camera;
        if (!this.debugCamera) {
            this.debugCamera = new Laya.Camera(0, 0.1, 100);
            this.debugCamera.name = "MichengDebugCamera";
            scene.addChild(this.debugCamera);
        }

        this.debugCamera.orthographic = true;
        this.debugCamera.clearColor = new Laya.Color(0.45, 0.62, 0.78, 1);
        this.applyDebugCameraPreset();
        this.updateDebugCameraViewport();

        this.debugLight = scene.getChildByName("MichengDebugLight") as Laya.Sprite3D;
        if (!this.debugLight) {
            this.debugLight = new Laya.Sprite3D("MichengDebugLight");
            scene.addChild(this.debugLight);
            this.debugLight.addComponent(Laya.DirectionLightCom);
        }
        this.debugLight.transform.rotationEuler = new Laya.Vector3(-45, 25, 0);
        console.log("[Micheng] 调试相机已对准棋盘中心。");
    }

    private applyDebugCameraPreset(): void {
        if (!this.debugCamera) return;

        if (this.debugCameraPreset === "overview") {
            this.debugCamera.orthographicVerticalSize = 18.4;
            this.debugCamera.transform.position = new Laya.Vector3(0, 22, 7.5);
            this.debugCamera.transform.lookAt(new Laya.Vector3(0, 0, 0), Laya.Vector3.Up);
            return;
        }

        this.debugCamera.orthographicVerticalSize = 11.8;
        this.debugCamera.transform.position = new Laya.Vector3(0, 13.2, 8.85);
        this.debugCamera.transform.lookAt(new Laya.Vector3(0, 0, 0.3), Laya.Vector3.Up);
    }

    private updateDebugCameraViewport(): void {
        if (!this.debugCamera) return;

        const stageWidth = Laya.stage.width || DEBUG_VIEW_WIDTH;
        const stageHeight = Laya.stage.height || DEBUG_VIEW_HEIGHT;
        const targetAspect = DEBUG_VIEW_WIDTH / DEBUG_VIEW_HEIGHT;
        let width = stageWidth;
        let height = width / targetAspect;
        if (height > stageHeight) {
            height = stageHeight;
            width = height * targetAspect;
        }

        const x = (stageWidth - width) / 2;
        const y = (stageHeight - height) / 2;
        this.debugCamera.viewport = new Laya.Viewport(x, y, width, height);
    }

}
