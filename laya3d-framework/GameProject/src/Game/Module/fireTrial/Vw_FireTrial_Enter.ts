import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import DateUtils from "../../../XYFrame/Utils/DateUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Game from "../../Game";
import Vw_Error from "../Role/Vw_Error";
import Runtime_Vw_FireTrial_Enter from "./Runtime_Vw_FireTrial_Enter";


/**
 * @ Author: 
 * @ Date: 2026/4/14 15:28:45
 * @ Description: 
*/
export default class Vw_FireTrial_Enter extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "fireTrial/Vw_FireTrial_Enter";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_FireTrial_Enter;

    public get owner() {
        return this._owner;
    }

    private timeId: string;

    protected inited(_t: this): void {
        let owner = _t.owner;

        owner.lbTitle.text = LanguageMgr.getTxt(751)
        owner.btnStart.text = LanguageMgr.getTxt(753)

    }

    protected initListener(): void {
        let _t = this, owner = _t.owner;
        _t.onClick(owner.btnClose, _t.closeSelf);
        _t.onClick(owner.btnStart, _t.onClickStart);

    }

    public onOpen(arg?: any) {
        super.onOpen(arg);
        let t = this;

        // let cfg = ConfigData.getStreakRank_106(arg)
        t.init()
        // Frame.ImgMgr.loadImg("bg_fireTrial2.png", t.bg);
        t.owner.bg.src = ResPath.getImgPath("fireTrial/bg_fireTrial2.png")
    }

    public onClose() {
        super.onClose();
        let t = this;
        if (t.timeId) {
            XYFrame.Timer.clearById(t.timeId)
            t.timeId = null
        }
        // Frame.ImgMgr.free(t.bg);
        t.owner.bg.src = null;
    }


    private init() {
        let t = this, owner = t.owner;
        let state = Game.Model.fireTrial.getState()
        let showBtn = false
        let showTime = false
        let txt = 0
        if (state == 0) {
            //开启
            showBtn = true
            txt = 755
        } else if (state == 2) {
            //冷却中
            showTime = true
            txt = 752
        } else {
            //已领奖
            txt = 754
        }
        if (txt) {
            owner.lbDes.text = LanguageMgr.getTxt(txt)
        }

        owner.btnStart.visible = showBtn
        owner.cdCom.visible = showTime

        if (showTime) {
            if (t.timeId) {
                XYFrame.Timer.clearById(t.timeId)
                t.timeId = null
            }
            t.timeId = XYFrame.Timer.loop(1000, t.timeTik, t)
            t.timeTik(0, t)
        }
    }

    private timeTik(tm: number, t: this) {
        t.owner.lbTime.text = DateUtils.getDHM(Game.Model.fireTrial.getEndTime())
    }

    private onClickStart() {
        if (Game.isOnline) {
            Game.Model.fireTrial.CG571()
        } else {
            Vw_Error.open(3);
            this.closeSelf();
        }
    }
}