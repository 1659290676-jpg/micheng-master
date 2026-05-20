import Config_daoju_102 from "../../../DataStock/ConfigData/Ts/Config_daoju_102";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Runtime_Vw_ItemDescTip from "./Runtime_Vw_ItemDescTip";


/**
 * @ Author: 
 * @ Date: 2026/4/14 11:13:49
 * @ Description: 
*/
export default class Vw_ItemDescTip extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "common/Vw_ItemDescTip";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_ItemDescTip;

    public get owner() {
        return this._owner;
    }
    
    protected inited(_t: this): void {
        let owner = _t.owner;
    }

    public onOpen(arg: any): void {
        super.onOpen(arg);
        if (!arg || !arg.target) {
            this.closeSelf();
            return;
        }
        let t = this, owner = t.owner;
        Laya.stage.on(Laya.Event.MOUSE_DOWN, t, t.closeSelf);
        Laya.stage.on(Laya.Event.MOUSE_WHEEL, t, t.closeSelf);
        let target: Laya.GWidget = arg.target;
        let ms:string = arg.desc;
        if(arg.item) {
            let item = arg.item;
            let type = item[0];
            let id = item[1];
            // let num = item[2];
            let cfg = ConfigUtils.getGoodCfg(type, id);
            if (cfg instanceof Config_daoju_102) {
                ms = LanguageMgr.getLngTxt(cfg.ms);
            } else {
                // ms = LanguageMgr.getLngTxt(cfg.ms);
            }
            if (!ms) {
                if (DEBUG) {
                    ms = "这道具还没有配描述";
                } else {
                    ms = ""
                }
            }
        }
        owner.txtDesc.text = ms;

        let p = Laya.Point.create().setTo(0, 0);
        p = target.localToGlobal(p);
        // p = t.dispaly.globalToLocal(p);
        owner.box.scale(0, 0);
        Laya.timer.callLater(t, t.setPos, [p.x, p.y, target.width, target.height])
        p.recover();
    }

    public onClose(): void {
        super.onClose();
        let t = this;
        Laya.stage.off(Laya.Event.MOUSE_DOWN, t, t.closeSelf);
        Laya.stage.off(Laya.Event.MOUSE_WHEEL, t, t.closeSelf);
        t.owner.txtDesc.text = "";
    }

    private setPos(x: number, y: number, tarW: number, tarH: number) {
        let t = this, owner = t.owner;
        if (!t.isOpen) return;
        // Laya.timer.callLater(t ,)
        let sw = Laya.stage.width;
        let sh = Laya.stage.height;
        let w0 = owner.bg.width;
        let h0 = owner.bg.height;
        let x0 = x + tarW / 2;
        x0 = x0 - w0 / 2;

        if (x0 + w0 > sw) {
            x0 = sw - w0;
        }
        if (y + h0 > sh) {
            y = sh - h0;
        }
        if (x0 < 0) {
            x0 = 0;
        }
        if (y < 0) {
            y = 0;
        }
        owner.imgJt.scaleY = -1;
        let x2 = x + tarW / 2;
        x2 = x2 - x0;
        owner.imgJt.x = x2;
        owner.imgJt.y = h0 + 9;
        owner.box.pivot(w0 / 2, h0);
        owner.box.setLeftTop(x0, y - owner.bg.height);

        XYFrame.Tween.to(owner.box, { scaleX: 1.1, scaleY: 1.1 }, 150).to({ scaleX: 1, scaleY: 1 }, 100)
    }

    public static show(target: Laya.GWidget, arr: number[]) {
        XYFrame.UIMgr.open(Vw_ItemDescTip, { target: target, item: arr });
    }

    public static show2(target: Laya.GWidget, type: number, item: number, num: number): void {
        Vw_ItemDescTip.show(target, [type, item, num]);
    }

    public static showDesc(target: Laya.GWidget, desc: string): void {
        XYFrame.UIMgr.open(Vw_ItemDescTip, {target: target, desc: desc});
    }
}