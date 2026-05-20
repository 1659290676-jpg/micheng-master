import SceneCtrlBase from "../../../Scene/Ctrl/SceneCtrlBase";
import { MchBoardModel } from "../Board/MchBoardModel";
import { MCH_LEVEL_1 } from "../Config/MchLevelConfig";
import { MchBoardView } from "../View/MchBoardView";
import { MchBlueprintView } from "../View/MchBlueprintView";
import { MchEntityView } from "../View/MchEntityView";
import type { MchBlueprintState } from "../Core/MchTypes";

const { regClass } = Laya;

/**
 * 咪城专属场景控制器。
 *
 * 注意：本控制器不继承旧 StageSceneCtrl，不创建旧恐龙/城市玩法对象。
 */
@regClass()
export class MchStageSceneCtrl extends SceneCtrlBase {
    declare owner: Laya.Sprite3D;

    private boardModel: MchBoardModel;
    private boardView: MchBoardView;
    private entityView: MchEntityView;
    private blueprintView: MchBlueprintView;

    async enter(): Promise<boolean> {
        await super.enter();
        this.buildBoard();
        return true;
    }

    exit(): void {
        Laya.stage.off(Laya.Event.MOUSE_DOWN, this, this.onStageMouseDown);
        this.blueprintView?.destroy();
        this.entityView?.destroy();
        this.boardView?.destroy();
        this.blueprintView = null;
        this.entityView = null;
        this.boardView = null;
        this.boardModel = null;
        super.exit();
    }

    private buildBoard(): void {
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
        Laya.stage.on(Laya.Event.MOUSE_DOWN, this, this.onStageMouseDown);
        console.log("[Micheng] 图纸调试：在运行预览中点击主堡周边带图纸的六边形地板建造。");
    }

    private onBlueprintClick(blueprint: MchBlueprintState): void {
        const building = this.boardModel.tryBuildPlayerBlueprint(blueprint.col, blueprint.row);
        if (!building) return;
        this.blueprintView.build();
        this.entityView.addBuildingWithFlip(building);
        console.log(`[Micheng] build ${blueprint.type} at ${blueprint.col},${blueprint.row}`);
    }

    private onStageMouseDown(): void {
        const blueprint = this.blueprintView?.pickBlueprintAtStagePoint(Laya.stage.mouseX, Laya.stage.mouseY);
        if (blueprint) this.onBlueprintClick(blueprint);
    }
}
