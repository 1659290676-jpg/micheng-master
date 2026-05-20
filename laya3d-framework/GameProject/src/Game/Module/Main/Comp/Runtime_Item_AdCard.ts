const { regClass } = Laya;
import LanguageMgr from "../../../../DataStock/LanguageMgr";
import { XYFrame } from "../../../../XYFrame/XYFrame";
import EnumUI from "../../../EnumUI";
import Game from "../../../Game";
import { Runtime_Item_AdCardBase } from "./Runtime_Item_AdCard.generated";

@regClass()
export class Runtime_Item_AdCard extends Runtime_Item_AdCardBase {
    private spine: number;
    onConstruct(): void {
        this.lb.text = LanguageMgr.getTxt(511);
        this.upTxtPos();
    }

    update(): boolean {
        let t = this;
        let oldVis = t.visible;
        t.visible = Game.SysMgr.isShow(EnumUI.AD) && !Game.Model.hero.vo.isAdUnlock;
        if (t.visible) {
            if (!t.spine) {
                t.spine = XYFrame.EffectMgr.addSpine("effect/fx_KL_mianguanggao", t, 53, 61, 2500, 0, true, null, 0.23, 0.23).eid;
            }
        } else {
            t.clearSpine(t);
        }
        return oldVis != this.visible;
    }

    private upTxtPos() {
        let t = this;
        let w = t.lb.textWidth;
        t.bgText.width = w + 20;
        t.lb.x = t.bgText.x - w / 2;
    }

    clear(): void {
        this.clearSpine(this);
    }

    private clearSpine(t: this) {
        if (t.spine) {
            XYFrame.EffectMgr.removeById(t.spine);
            t.spine = null;
        }
    }
}