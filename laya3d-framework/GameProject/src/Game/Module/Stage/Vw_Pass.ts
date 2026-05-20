import Config_stage_001 from "../../../DataStock/ConfigData/Ts/Config_stage_001";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import { Enum_Advert, Enum_Advert_Opr } from "../Advert/Enum_Advert";
import Vw_ShopAlone from "../Shop/Vw_ShopAlone";
import Runtime_Vw_Pass from "./Runtime_Vw_Pass";


/**
 * @ Author: 
 * @ Date: 2026/3/25 21:01:21
 * @ Description: 关卡通过界面
*/
export default class Vw_Pass extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "stage/Vw_Pass";
    public static readonly preloads: string[] = [
        "spine/effect/fx_KL_jinbishouji" + ResPath.EXT_SKEL
        , "spine/effect/fx_KL_chenggongjiangbei" + ResPath.EXT_SKEL
    ];
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Pass;

    public get owner() {
        return this._owner;
    }

    private pass_lev: number;
    private _time_id: string;
    private _is_get: boolean;

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.btnNext.text = LanguageMgr.getTxt(303);
        owner.lbReward.text = LanguageMgr.getTxt(305);// 奖励
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onClick(owner.btnNext, _t.touchNext);
        _t.onClick(owner.btnAd, _t.touchAd);
        _t.onClick(owner.btnGold, _t.touchGold);
        _t.onMsg(EnumMsg.Role_Val, _t.onMoneyMsg);
        _t.onMsg(EnumMsg.Advert_Result, _t.onAdMsg);
        _t.onMsg(EnumMsg.STAGE_RECEIVE_RD, _t.onRdMsg);

        _t.addSpine("effect/fx_KL_chenggongjiangbei", owner.panelBase, 301, 255, 1000, 1000, false, "start").addStep(0, "loop");
        _t.addSpine("effect/fx_KL_gongxihuode", owner.goldSpine, 0, 0, 4000, 0, true, "1");
    }

    public onOpen(lev: number): void {
        super.onOpen();
        let _t = this;
        _t.owner.imgGold.scale(1, 1);
        _t.pass_lev = lev;
        _t._is_get = false;
        _t.update(_t);
        _t.onMoneyMsg(_t);
        XYFrame.AudioMgr.playUI("win");
        XYFrame.AudioMgr.setMusicFlag("Vw_Pass", true);
    }

    public onClose(): void {
        super.onClose();
        this._time_id = null;
        this._is_get = false;
        XYFrame.AudioMgr.setMusicFlag("Vw_Pass", false);
    }

    /**
     * 下一关按钮点击
     */
    private touchNext() {
        let _t = this;
        if (_t._is_get) return;
        // _t.closeSelf();
        // Game.Model.stage.sendEnter();
        if (Game.Model.stage.canPlayNext) {
            Game.Model.stage.CG459();
        } else {
            // 需要处理广告
            Game.Model.advert.showAd(Enum_Advert.ForcedStage);
        }
    }

    /**
     * 广告按钮点击
     */
    private touchAd() {
        Game.Model.advert.showAd(Enum_Advert.StageRd);
    }

    private touchGold() {
        XYFrame.UIMgr.open(Vw_ShopAlone);
    }

    private update(_t: this) {
        let owner = _t.owner;
        owner.lbTitle.text = LanguageMgr.getTxt(304, _t.pass_lev);// 关卡{0}已完成
        let reward = Config_stage_001.getRewardByKey(_t.pass_lev);
        if (!reward) return;
        let info = reward[0];
        if (!info) return;
        let count = info[2] || 0;
        owner.btnAd.text = (count * 2) + "";
        owner.btnAd.lbMul.text = "x2";
        owner.lbCount.text = count + "";
    }

    private onMoneyMsg(_t: this) {
        let owner = _t.owner;
        owner.lbGold.text = Game.Model.hero.vo.gold + "";
    }

    private onAdMsg(_t: this, result: Enum_Advert_Opr, type: Enum_Advert) {
        if (type == Enum_Advert.StageRd) {
            if ((result == Enum_Advert_Opr.End || result == Enum_Advert_Opr.Free)) {
                if (type == Enum_Advert.StageRd) {
                    Game.Model.stage.clearResult();
                    _t.showFlyGold(_t);
                }
            }
        } else if (type == Enum_Advert.ForcedStage) {
            // 强制广告回要领取奖励
            if (result >= Enum_Advert_Opr.End) {
                Game.Model.stage.CG459();
            }
        }

    }

    private onRdMsg(_t: this) {
        _t.showFlyGold(_t);
    }

    private showFlyGold(_t: this) {
        if (_t._time_id) return;
        _t._is_get = true;
        let owner = _t.owner;
        let x = owner.moneyBase.x + owner.imgGold.x;
        let y = owner.moneyBase.y + owner.imgGold.y;
        let time = 2000;
        let item = _t.addSpine("effect/fx_KL_jinbishouji", owner, x, y, time, time, false, null, 0.7, 0.7);
        item.rotation = 11;
        item.ani.on(Laya.Event.LABEL, _t, _t._onGoldEvent);
        _t._time_id = _t.addDelay(time, _t._playEnd)
        XYFrame.AudioMgr.playUI("gold");
    }

    private _onGoldEvent(event: any) {
        if (event.name == "jingbitiaodong") {
            XYFrame.Msg.emit(EnumMsg.GOLD_EFF_SCALE);
            let _t = this;
            let time = 100;
            let scale = 1.7;
            _t.tweenTo(_t.owner.imgGold, { scaleX: 1, scaleY: 1 }, 50).to({ scaleX: scale, scaleY: scale }, time).to({ scaleX: 1, scaleY: 1 }, time);
        }
    }

    /**
     * 动画播放完成
     */
    private _playEnd(dt: number, _t: this) {
        _t.closeSelf();
        if (Game.StepMgr.hasStep()) {
            // 退出
            Game.SceneMgr.onExit();
        } else if (Game.Model.stamina.canPlay && Game.Model.stage.canPlayNext) {
            // 判断是否直接进入下关
            Game.Model.stage.sendEnter();
        } else {
            // 退出
            Game.SceneMgr.onExit();
        }

    }


}