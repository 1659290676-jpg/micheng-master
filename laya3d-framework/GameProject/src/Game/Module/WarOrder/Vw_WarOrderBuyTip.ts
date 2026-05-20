import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import DateUtils from "../../../XYFrame/Utils/DateUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import Runtime_Vw_WarOrderBuyTip from "./Runtime_Vw_WarOrderBuyTip";


/**
 * @ Author: 
 * @ Date: 2026/4/13 11:45:15
 * @ Description: 
*/
export default class Vw_WarOrderBuyTip extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "warOrder/Vw_WarOrderBuyTip";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_WarOrderBuyTip;

    public get owner() {
        return this._owner;
    }

    // 活动id
    private actId: number;
    private cfg: Struct_zlgm_104;// 期数购买配置

    /**倒计时定时器id */
    private tmId: string;
    private eTm: number;


    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.btnBuy.sound = "buy";

        owner.txtTitle.text = LanguageMgr.getTxt(680);
        owner.txt1.text = LanguageMgr.getTxt(681);
        owner.txt2.text = LanguageMgr.getTxt(682);
        owner.txt3.text = LanguageMgr.getTxt(683);
        owner.txt4.text = LanguageMgr.getTxt(684);
        owner.txt5.text = LanguageMgr.getTxt(685);
        // t.tween_type = 1
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onClick(owner.btnClose, _t.closeSelf);
        _t.onClick(owner.btnBuy, _t.onClickBtnBuy);

        _t.onMsg(EnumMsg.WAR_ORDER_UPDATE, _t.updateMsg);
        _t.onMsg(EnumMsg.RECHARGE_AD_CNT, _t.updateAdCnt);
    }

    public onOpen(arg?: any): void {
        super.onOpen(arg);
        let t = this;
        if (typeof arg == "number") {
            t.actId = arg;
        } else {
            if (arg && arg.actId) {
                t.actId = arg.actId;
            } else {
                t.actId = Game.Model.warOrder.curActId || 1;
            }
        }

        let qs = Game.Model.warOrder.getQsById(t.actId);

        let cfg: Struct_zlgm_104;
        let cfgMap = ConfigData.zlgm_104;
        let temp: Struct_zlgm_104;
        for (let i in cfgMap) {
            temp = ConfigData.getZlgm_104(i);
            if (temp.issue == qs && temp.type == 1) {
                cfg = temp;
                break;
            }
        }
        if (!cfg) {
            t.closeSelf();
            return;
        }
        t.setData(cfg);
        t.addSpine("effect/fx_KL_tongxingbaoxiang", t.owner, t.owner.width / 2, 283, 2000, 0, true, "animation", 1, 1, 1);
    }

    public onClose(): void {
        super.onClose();
        let t = this;
        t.cfg = null;
        t.actId = null;
        if (t.tmId) {
            XYFrame.Timer.clearById(t.tmId);
            t.tmId = null;
        }
        t.eTm = null;
    }

    private setData(cfg: Struct_zlgm_104) {
        let t = this;
        let owner = t.owner;
        t.cfg = cfg;

        let cfgPay = ConfigData.getRecharge_011(cfg.chargeid);
        if (!cfgPay) {
            if (DEBUG) {
                console.error("充值配置不存在 id = " + cfg.chargeid);
            }
            return;
        }
        if (Game.Model.global.adRechargeIsOpen()) {
            owner.imgAd.visible = true;
            owner.btnBuy.text = Game.Model.advert.getWatchCntByRechargeId(cfg.chargeid) + "/" + cfgPay.adv;
            let x = owner.btnBuy.width - owner.imgAd.width - owner.txtBtnBuy.textWidth - 10 >> 1;
            owner.imgAd.x = x;
            owner.txtBtnBuy.x = x + owner.imgAd.width + 10;
        }
        else {
            owner.imgAd.visible = false;
            owner.btnBuy.text = LanguageMgr.getTxt(504, Game.Model.recharge.getChargeMoney(cfg.chargeid));
            owner.txtBtnBuy.x = owner.btnBuy.width - owner.txtBtnBuy.textWidth >> 1;
        }

        // 倒计时
        let vo = Game.Model.warOrder.getVo(t.actId);
        if (vo) {
            t.eTm = vo.eTm;
            if (!t.tmId) {
                t.tmId = XYFrame.Timer.loop(1000, t.onTm, t);
            }
            t.onTm(0, t);
        }
    }

    private updateMsg(t: this, actId: number): void {
        if (actId != t.actId) {
            return;
        }
        let vo = Game.Model.warOrder.getVo(actId);
        if (vo && vo.isBuy) {
            t.closeSelf();
        }
    }

    /**更新看广告次数 */
    private updateAdCnt(t: this) {
        t.setData(t.cfg);
    }

    private onClickBtnBuy(): void {
        let t = this;
        if (t.cfg) {
            // if (Game.Model.global.adRechargeIsOpen()) {
            //     //看广告
            //     Game.Model.advert.showAd(1, t.cfg.chargeid)
            // } else {
            //     Game.Model.recharge.CG273(t.cfg.chargeid, "");
            // }
            // Game.Model.warOrder.toBuy(t.cfg.chargeid);
            Game.Model.recharge.pay(t.cfg.chargeid);
        }
    }

    private onTm(tm: number, t: this) {
        let t1 = t.eTm - Game.Model.global.getSrvTm();
        if (t1 <= 0) {
            t.tmId && XYFrame.Timer.clearById(t.tmId);
            t.tmId = null;
            t.eTm = null;
            t.owner.txtTime.text = LanguageMgr.getTxt(671); //已结束
            return;
        }
        t.owner.txtTime.text = DateUtils.getDHMS(t1);
    }
}