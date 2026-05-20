const { regClass } = Laya;
import ConfigData from "../../../../DataStock/ConfigData/ConfigData";
import LanguageMgr from "../../../../DataStock/LanguageMgr";
import DateUtils from "../../../../XYFrame/Utils/DateUtils";
import { XYFrame } from "../../../../XYFrame/XYFrame";
import EnumUI from "../../../EnumUI";
import Game from "../../../Game";
import { Runtime_Item_FireTrialBase } from "./Runtime_Item_FireTrial.generated";

@regClass()
export class Runtime_Item_FireTrial extends Runtime_Item_FireTrialBase {
    private fireTrialTime: string;
    update(): boolean {
        let t = this, sysId = EnumUI.FIRE_TRIAL, oldVis = t.visible;
        let vis = Game.SysMgr.isShow(sysId);
        t.visible = vis;
        if (!vis) return oldVis != vis;
        let isOpen = Game.SysMgr.isOpen(sysId);
        t.imgLock.visible = !isOpen;
        t.lb.color = isOpen ? "#f3f3f3" : "#808080";
        if (isOpen) {
            let fireTrial = Game.Model.fireTrial;
            let state = fireTrial.getState();
            if (t.fireTrialTime) {
                XYFrame.Timer.clearById(t.fireTrialTime)
                t.fireTrialTime = null
            }
            if (state == 0 || Game.Model.fireTrial.getEndTime() <= 0) {
                //开始
                t.lb.text = LanguageMgr.getTxt(769);
                t.upTxtPos();
            } else {
                t.fireTrialTime = XYFrame.Timer.loop(1000, t.setFireTrialTime, t);
                t.setFireTrialTime(0, t)
            }
        } else {
            let data = ConfigData.getFunctionResource_101(sysId);
            t.lb.text = LanguageMgr.getTxt(6, data.gq);
            t.upTxtPos();
        }
        return oldVis != vis;
    }

    private setFireTrialTime(tm: number, t: this) {
        let time = Game.Model.fireTrial.getEndTime()
        t.lb.text = DateUtils.getDHM(time);
        t.upTxtPos();
        if (time < 0) {
            if (t.fireTrialTime) {
                XYFrame.Timer.clearById(t.fireTrialTime)
                t.fireTrialTime = null
            }
            Game.Model.fireTrial.CG577()
        }
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
        let t = this;
        if (t.fireTrialTime) {
            XYFrame.Timer.clearById(t.fireTrialTime)
            t.fireTrialTime = null
        }
    }
}