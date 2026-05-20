import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Runtime_Vw_RewardTip from "./Runtime_Vw_RewardTip";


/**
 * @ Author: 
 * @ Date: 2026/4/14 11:06:17
 * @ Description: 
*/
export default class Vw_RewardTip extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "common/Vw_RewardTip";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_RewardTip;

    public get owner() {
        return this._owner;
    }

    protected inited(_t: this): void {
        let owner = _t.owner;

        UIUtils.setList(owner.list, false)
    }

    public onOpen(arg?: { list: number[][], target: Laya.GWidget }) {
        super.onOpen(arg);
        let t = this, owner = t.owner;
        Laya.stage.on(Laya.Event.MOUSE_DOWN, t, t.closeSelf);
        Laya.stage.on(Laya.Event.MOUSE_WHEEL, t, t.closeSelf);
        let list = arg.list
        if (list) {
            let row = Math.ceil(list.length / 2)
            owner.list.source = list
            owner.list.height = row * 63 + (row - 1) * 9
            owner.content.height = owner.list.y + owner.list.height + 14

        } else {
            owner.list.source = null
        }
        let target = arg.target
        if (target) {
            let p = Laya.Point.TEMP;
            p.reset();
            p = target.localToGlobal(p)
            p = t.owner.globalToLocal(p)
            owner.content.pos(p.x + target.width / 2, p.y - 20)
            owner.content.scale(0, 0)
            XYFrame.Tween.to(owner.content, { scaleX: 1.1, scaleY: 1.1 }, 150).to({ scaleX: 1, scaleY: 1 }, 100)
        }
    }

    public onClose() {
        super.onClose();
        let t = this;
        Laya.stage.off(Laya.Event.MOUSE_DOWN, t, t.closeSelf);
        Laya.stage.off(Laya.Event.MOUSE_WHEEL, t, t.closeSelf);
        t.owner.list.source = null
    }

    public static open(list: number[][], target: Laya.GWidget) {
        XYFrame.UIMgr.open(Vw_RewardTip, { list: list, target: target })
    }
}