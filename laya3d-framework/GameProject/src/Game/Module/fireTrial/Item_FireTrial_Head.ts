import ResPath from "../../../XYFrame/Resource/ResPath";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { Item_FireTrial_HeadBase } from "./Item_FireTrial_Head.generated";

const { regClass } = Laya;

/**火焰试炼头像数据 */
export interface FireTrial_Head_Data {
    frame: string,
    head: string,
    /**归属id */
    belongId?: number
}

/**
 * 火焰试炼头像
 */
@regClass()
export class Item_FireTrial_Head extends Item_FireTrial_HeadBase {
    public static readonly PREFAB = "fireTrial/Item_FireTrial_Head";

    public jumpProgress: number = 0
    private spine1: number;
    private spine2: number;

    public setData(data: FireTrial_Head_Data) {
        let t = this

        t.box.y = 78
        let frame = t.box.getChild("frame") as Laya.GImage
        let head = t.box.getChild("head") as Laya.GImage
        frame.src = data.frame
        head.src = data.head

    }

    public setPanelScale(s: number) {
        this.panel.scale(s, s)
    }

    public setScale(s: number) {
        this.box.scale(s, s)
    }

    public setRotation(r: number) {
        this.box.rotation = r
    }

    public playAni() {
        let t = this
        // t.spine = UISpine.createEff(t, 72, 158, "fx_touxiangkuangrongjie", false);
        // let y = t.spineBox.height * t.scaleX - t.panel.height / 2 - 10
        t.spine1 = XYFrame.EffectMgr.addSpine("effect/fx_kl_touxiangkuang", t, t.width / 2, 90, 1000, 1000, false, "down", 1, 1, 0).eid;
        t.spine2 = XYFrame.EffectMgr.addSpine("effect/fx_kl_touxiangkuang", t, t.width / 2, 90, 1000, 1000, false, "up").eid;
        // t.spine.y -= y
        // t.spine.setScale(t.scaleX)
        XYFrame.Tween.kill(t.box)
        XYFrame.Tween.to(t.box, { y: 233 }, 500)
    }

    destroy(): void {
        this.clear()
        super.destroy();
    }

    public clear() {
        let t = this
        t.scale(1, 1)
        t.setScale(1)
        t.setPanelScale(1)
        t.alpha = 1
        t.box.rotation = 0
        if (t.spine1) {
            // t.spine.removeSelf();
            // XYFrame.EffectMgr.onRemove(t.spine);
            XYFrame.EffectMgr.removeById(t.spine1);
            t.spine1 = null
        }
        if (t.spine2) {
            XYFrame.EffectMgr.removeById(t.spine2);
            t.spine2 = null
        }
        XYFrame.Tween.kill(t.box)
        // t.removeSelf()
    }

    public static create(parent?: any, x?: number, y?: number, data?: FireTrial_Head_Data) {
        let grid = XYFrame.PoolMgr.getPrefabInst(ResPath.getUIPrefab(Item_FireTrial_Head.PREFAB + ResPath.EXT_PREFAB), Item_FireTrial_Head);//Laya.loader.getRes(ResPath.getUIPrefab(Item_FireTrial_Head.PREFAB + ResPath.EXT_PREFAB));
        if (parent) {
            parent.addChild(grid);
        }
        if (x && y) {
            grid.pos(x, y);
        }
        if (data) {
            grid.setData(data);
        }
        // grid.scale(1, 1)
        // grid.setScale(1)
        return grid
    }
}