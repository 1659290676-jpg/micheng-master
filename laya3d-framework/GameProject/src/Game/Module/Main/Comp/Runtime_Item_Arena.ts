const { regClass } = Laya;
import ConfigData from "../../../../DataStock/ConfigData/ConfigData";
import LanguageMgr from "../../../../DataStock/LanguageMgr";
import ResPath from "../../../../XYFrame/Resource/ResPath";
import DateUtils from "../../../../XYFrame/Utils/DateUtils";
import { XYFrame } from "../../../../XYFrame/XYFrame";
import { EnumAltas } from "../../../EnumAtlas";
import EnumUI from "../../../EnumUI";
import Game from "../../../Game";
import ItemTipsMgr from "../../Tip/ItemTipsMgr";
import { StepData } from "../StepMgr";
import { Runtime_Item_ArenaBase } from "./Runtime_Item_Arena.generated";

@regClass()
export class Runtime_Item_Arena extends Runtime_Item_ArenaBase {
    private arenaTime: string;

    update(): boolean {
        let t = this, sysId = EnumUI.ARENA, oldVis = t.visible;
        let vis = Game.SysMgr.isShow(sysId);
        t.visible = vis;
        if (!vis) return oldVis != vis;
        let isOpen = Game.SysMgr.isOpen(sysId);
        t.imgLock.visible = !isOpen;
        t.lb.color = isOpen ? "#f3f3f3" : "#808080";
        if (isOpen) {
            if (t.arenaTime) {
                XYFrame.Timer.clearById(t.arenaTime)
                t.arenaTime = null
            }
            t.arenaTime = XYFrame.Timer.loop(1000, t.setArenaTime, t);
            t.setArenaTime(0, t)
        } else {
            let data = ConfigData.getFunctionResource_101(sysId);
            t.lb.text = LanguageMgr.getTxt(6, data.gq);
            t.upTxtPos();
        }
        return oldVis != vis;
    }

    private setArenaTime(tm: number, t: this) {
        t.lb.text = DateUtils.getDHM(Game.Model.arena.getEndTime());
        t.upTxtPos();
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
        if (t.arenaTime) {
            XYFrame.Timer.clearById(t.arenaTime)
            t.arenaTime = null
        }
        XYFrame.Tween.kill(t.imgBgMulti);
        XYFrame.Tween.kill(t.lbMulti);
        t.imgBgMulti.visible = false;
        t.lbMulti.scale(1, 1);
    }

    startAni(step: StepData): void {
        let t = this;
        // 条子出来 - 数字缩放 - 条子回去
        let mod = Game.Model.arena
        t.imgBgMulti.visible = false;
        let lb = t.lbMulti;
        lb.text = mod.getGearByIndex(step.callArg[0]) + "x"
        // t.btn0.scale(1.2, 1.2)
        ItemTipsMgr.showItemFlyAni(t, {
            w: 70,
            h: 70,
            dir: 1,
            src: ResPath.getAtlasImgPath(EnumAltas.Main, "Icon_Arena"),
            endCallBack: function () {
                // lb.text = "0x";
                t.imgBgMulti.visible = true;
                t.imgBgMulti.x = t.width
                XYFrame.Tween.to(t.imgBgMulti, { x: -85 }, 500).delay(1000).to({ x: t.width }, 500)
                XYFrame.Tween.delay(lb, 500).to({ scaleX: 1.2, scaleY: 1.2 }, 300).call(function () {
                    lb.text = mod.getGearByIndex(step.callArg[1]) + "x"
                }).to({ scaleX: 1, scaleY: 1 }, 100)
                Game.StepMgr.triggerStep()
            }
        })
    }
}