const { regClass } = Laya;
import ConfigData from "../../../../DataStock/ConfigData/ConfigData";
import LanguageMgr from "../../../../DataStock/LanguageMgr";
import { XYFrame } from "../../../../XYFrame/XYFrame";
import EnumUI from "../../../EnumUI";
import Game from "../../../Game";
import { Runtime_Item_WarOrderBase } from "./Runtime_Item_WarOrder.generated";

@regClass()
export class Runtime_Item_WarOrder extends Runtime_Item_WarOrderBase {
    private spine: number;
    update(): boolean {
        let t = this, sysId = EnumUI.WAR_ORDER, oldVis = t.visible;
        let vis = Game.SysMgr.isShow(sysId);
        t.visible = vis;
        if (!vis) {
            t.clearSpine(t);
            return oldVis != vis;
        }
        if (!t.spine) {
            t.spine = XYFrame.EffectMgr.addSpine("effect/fx_KL_daoju", t, t.width / 2, t.height / 2, 2500, 0, true).eid;
        }
        let isOpen = Game.SysMgr.isOpen(sysId);
        t.imgProBg.visible = t.imgPro.visible = isOpen;
        t.imgLock.visible = !isOpen;
        t.lb.color = isOpen ? "#f3f3f3" : "#808080";
        if (isOpen) {
            let warOrder = Game.Model.warOrder;
            if (warOrder.showOpenTag) {
                t.lb.text = "Open";
                t.proBar.value = t.proBar.max;
            } else {
                let vo = warOrder.getVo();
                let val = 0, max = 1;
                if (vo) {
                    val = vo.exp;
                    let cfgZlDj = ConfigData.getBattlelevel_104(vo.lv + 1); //战令等级
                    if (cfgZlDj && cfgZlDj.exp) {
                        max = cfgZlDj.exp;
                    }
                }
                t.lb.text = val + "/" + max;
                t.proBar.value = val;
                t.proBar.max = max;
            }
        } else {
            let data = ConfigData.getFunctionResource_101(sysId);
            t.lb.text = LanguageMgr.getTxt(6, data.gq);
        }

        t.upTxtPos();
        return oldVis != vis;
    }

    private upTxtPos() {
        let t = this;
        if (t.imgLock.visible) {
            let spaceX = 2;
            let w = t.imgLock.width + spaceX + t.lb.textWidth;
            t.bgText.width = w + 20;
            let x = t.bgText.x - w / 2;
            t.imgLock.x = x;
            t.lb.x = t.imgLock.x + t.imgLock.width + spaceX;
        } else {
            let w = t.lb.textWidth;
            t.bgText.width = w + 20;
            t.lb.x = t.bgText.x - w / 2;
        }
    }

    clear(): void {
        // let t = this;
        this.clearSpine(this);
    }

    private clearSpine(t: this) {
        if (t.spine) {
            XYFrame.EffectMgr.removeById(t.spine);
            t.spine = null;
        }
    }
}