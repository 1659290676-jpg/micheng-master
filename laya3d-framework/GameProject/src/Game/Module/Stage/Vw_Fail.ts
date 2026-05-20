import Config_recharge_011 from "../../../DataStock/ConfigData/Ts/Config_recharge_011";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";
import { EnumMsg } from "../../EnumMsg";
import EnumUI from "../../EnumUI";
import Game from "../../Game";
import { EnumStageScene } from "../../Scene/Define/EnumStageScene";
import { Enum_Advert, Enum_Advert_Opr } from "../Advert/Enum_Advert";
import Vw_Setting from "../Setting/Vw_Setting";
import Runtime_Vw_Fail from "./Runtime_Vw_Fail";


/**
 * @ Author: 
 * @ Date: 2026/3/25 20:57:56
 * @ Description: 关卡失败界面
*/
export default class Vw_Fail extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "stage/Vw_Fail";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Fail;

    public get owner() {
        return this._owner;
    }

    private _index: number;
    private _type: number;
    private _relive: number;

    protected inited(_t: this): void {
        let owner = _t.owner;
        let cost = ConfigUtils.getConstList(EnumUI.ROLE, 3);
        owner.btnRelive.text = cost[2] + "";
        owner.lbStrength.text = "-1";
        owner.lbTime.text = LanguageMgr.getTxt(307, ConfigUtils.getConst(EnumUI.ROLE, 9));// +{0}秒
        owner.btnExit.text = LanguageMgr.getTxt(409);// 退 出

        owner.lbFireDes.text = LanguageMgr.getTxt(414);// 火焰试炼进度将清空
        owner.lbArenaDes.text = LanguageMgr.getTxt(413);// 竞技场连胜进度将清空
        let list = Game.Model.arena.gearList;
        for (let i = 0, len = owner.arenaLbs.length; i < len; i++) {
            owner.arenaLbs[i].text = "x" + list[i];
        }
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onClick(owner.btnClose, _t.touchClose);
        _t.onClick(owner.btnExit, _t.touchClose);
        _t.onClick(owner.btnRelive, _t.touchRelive);
        _t.onClick(owner.gift0, _t.touchGift);
        _t.onClick(owner.gift1, _t.touchGift);
        _t.onMsg(EnumMsg.RECHARGE_AD_CNT, _t.updatGift);
        _t.onMsg(EnumMsg.Advert_Result, _t.onAdMsg);

        _t.addSpine("effect/fx_KL_shibai_tili", owner.normalBase, 297, 270, 3500);
    }

    public onOpen(type: number, relive: number): void {
        super.onOpen();
        XYFrame.UIMgr.close(Vw_Setting);
        let _t = this;
        _t._type = type;
        _t._relive = relive;
        _t._index = null;
        let owner = _t.owner;
        let bo = relive > 0;
        if (type == 1) {
            owner.lbTitle.text = LanguageMgr.getTxt(301);//时间到了
        } else {
            owner.lbTitle.text = LanguageMgr.getTxt(302);//您失败了
        }
        owner.btnRelive.visible = bo;
        owner.btnExit.visible = !bo;
        owner.giftBase.visible = bo;
        owner.giftBase.scroller.setPosX(0);
        if (bo) {
            _t.updatGift(_t);
        }
        let isBuy = Game.Model.warOrder.getVo()?.isBuy;
        if (!Game.SysMgr.isOpen(EnumUI.WAR_ORDER) || isBuy) {
            owner.gift1Base.removeSelf();
        } else {
            if (!owner.gift1Base.parent) {
                owner.parent.addChild(owner.gift1Base);
            }
        }

        _t.updatePage();
        XYFrame.AudioMgr.setMusicFlag("Vw_Fail", true);
    }

    public onClose(): void {
        super.onClose();
        XYFrame.AudioMgr.setMusicFlag("Vw_Fail", false);
    }

    private touchClose() {
        let _t = this;
        // _t.closeSelf();
        // Game.Model.stage.onExit(true);
        if (!_t._index) {
            if (Game.Model.stage.canPlayNext) {
                _t.closeSelf();
                Game.Model.stage.onExit(true);
            } else {
                Game.Model.advert.showAd(Enum_Advert.ForcedStage);
            }
        } else {
            _t.updatePage();
        }
    }

    private touchRelive() {
        // let _t = this;
        // _t.closeSelf();
        let cost = ConfigUtils.getConstList(EnumUI.ROLE, 3);
        if (Game.Model.bag.checkUseOne(cost)) {
            Game.Model.stage.CG463();
        }
    }

    private touchGift(e: Laya.Event) {
        let btn: Laya.GButton = e.target;
        let id = btn.data;
        if (id) {
            Game.Model.recharge.pay(id);
        }
    }

    /**
     * 更新礼包显示
     * @param _t 
     */
    private updatGift(_t: this) {
        let owner = _t.owner;
        let ids = [601, 101];
        let isRecharge = Game.Model.global.adRechargeIsOpen();
        for (let i = 0, len = ids.length; i < len; i++) {
            let gift: Laya.GButton = (<any>owner)["gift" + i];
            let btn: Laya.GButton = (<any>owner)["btnGift" + i];
            let id = ids[i];
            gift.data = btn.data = id;
            btn.text = isRecharge ? "" : LanguageMgr.getTxt(504, Game.Model.recharge.getChargeMoney(id));// ￥{0}
            let img: Laya.GWidget = (<any>owner)["imgGitfAd" + i];
            let lb: Laya.GTextField = (<any>owner)["lbGitf" + i];
            img.visible = lb.visible = isRecharge;
            if (isRecharge) {
                lb.text = Game.Model.advert.getWatchCntByRechargeId(id) + "/" + (Config_recharge_011.getAdvByKey(id) || 0);
            }
        }
    }

    private onAdMsg(_t: this, result: Enum_Advert_Opr, type: Enum_Advert) {
        if (type == Enum_Advert.ForcedStage) {
            if (result != Enum_Advert_Opr.Start) {
                _t.closeSelf();
                Game.Model.stage.onExit(true);
            }
        }
    }

    private updatePage() {
        let _t = this;
        let index = _t._index;
        if (index == null) {
            if (Game.Model.fireTrial.isShowGqExitTip()) {
                index = 1;
            } else if (Game.Model.arena.isShowGqExitTip()) {
                index = 2;
            } else {
                index = 0;
            }
        } else if (index == 1) {
            if (Game.Model.arena.isShowGqExitTip()) {
                index = 2;
            } else {
                index = 0;
            }
        } else {
            index = 0;
        }
        _t.setPage(index);
    }

    /**
     * 设置界面显示
     * @param index 
     */
    private setPage(index: number) {
        let _t = this;
        _t._index = index;
        let owner = _t.owner;
        owner.normalBase.visible = index == 0;
        owner.fireState.visible = index == 1;
        owner.arenaState.visible = index == 2;
        if (index == 0) {
            // 正常失败
            let type = _t._type;
            if (type == 1) {
                owner.imgIcon.src = ResPath.getAtlasImgPath(EnumAltas.Stage, "Bm_time");
                owner.imgIcon.y = 139;
                owner.lbDes.visible = false;
                owner.lbStrength.visible = false;
                owner.lbTime.visible = true;
            } else {
                owner.imgIcon.src = ResPath.getAtlasImgPath(EnumAltas.Stage, "Bm_kctl");
                owner.imgIcon.y = 159;
                owner.lbDes.visible = true;
                owner.lbStrength.visible = true;
                owner.lbTime.visible = false;
                owner.lbDes.text = LanguageMgr.getTxt(306, 1);// 生命+{0}\n继续进行游戏
            }
            // 没有复活次数
            if (!_t._relive || _t._relive <= 0) {
                owner.lbDes.visible = true;
                owner.lbDes.text = LanguageMgr.getTxt(424);//复活次数已用尽！
                owner.lbTime.visible = false;
                owner.lbStrength.visible = true;
                owner.imgIcon.src = ResPath.getAtlasImgPath(EnumAltas.Stage, "Bm_kctl");
                owner.imgIcon.y = 159;
            }
        } else if (index == 2) {
            // 竞技场连胜
            let tabIdx = Math.max(0, Game.Model.arena.tab - 1);
            for (let i = 0, len = owner.arenaBgs.length; i < len; i++) {
                let index = 1;
                if (i == tabIdx) {
                    index = 2
                }
                let bg = "bg_arena" + index;
                bg += i == 0 ? "0" : "1";
                owner.arenaBgs[i].src = ResPath.getAtlasImgPath(EnumAltas.Stage, bg);
                owner.arenaLbs[i].color = index == 2 ? "#ffef40" : "#f3f3f3";
            }
        }
    }
}