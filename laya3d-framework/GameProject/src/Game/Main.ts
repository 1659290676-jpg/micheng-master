import Logger from "../XYFrame/Logger/Logger";
import { XYFrame } from "../XYFrame/XYFrame";
import Game from "./Game";
import { MchDebugEntry } from "./Module/Micheng/Debug/MchDebugEntry";

const { regClass, property } = Laya;
const FORCE_MICHENG_DEBUG_BOOT = true;

@regClass()
export class Main extends Laya.Script {

    onStart() {
        Logger.log("Main start");
        if (FORCE_MICHENG_DEBUG_BOOT) {
            this.startMichengDebug();
            Logger.log("Main start micheng debug end");
            return;
        }

        this.owner.addComponent(XYFrame);
        Logger.log("Main start end");
        this.owner.addComponent(Game);
    }

    private startMichengDebug(): void {
        const scene = this.getScene3D();
        if (!scene) {
            Logger.error("Micheng debug boot failed: Scene3D not found");
            return;
        }

        const oldRoot = scene.getChildByName("MichengDebugRoot");
        oldRoot?.destroy();

        const root = new Laya.Sprite3D("MichengDebugRoot");
        scene.addChild(root);
        root.addComponent(MchDebugEntry);
        console.log("[Micheng] 已启用咪城调试启动入口，不进入旧恐龙玩法。");
    }

    private getScene3D(): Laya.Scene3D | null {
        const stageScene = (Laya.stage as any)._scene3Ds?.[0] as Laya.Scene3D;
        if (stageScene) return stageScene;
        return this.findScene3D(this.owner);
    }

    private findScene3D(node: Laya.Node): Laya.Scene3D | null {
        if (node instanceof Laya.Scene3D) return node;
        for (let i = 0; i < node.numChildren; i++) {
            const found = this.findScene3D(node.getChildAt(i));
            if (found) return found;
        }
        return null;
    }

}