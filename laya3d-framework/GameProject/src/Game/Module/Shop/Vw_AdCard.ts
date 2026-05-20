import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { EnumMsg } from "../../EnumMsg";
import EnumUI from "../../EnumUI";
import Game from "../../Game";
import { Enum_Advert } from "../Advert/Enum_Advert";
import { ShopConst } from "./EnumShop";
import Runtime_Vw_AdCard from "./Runtime_Vw_AdCard";


/**
 * @ Author: 
 * @ Date: 2026/4/14 17:15:46
 * @ Description: 
*/
export default class Vw_AdCard extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "shop/Vw_AdCard";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_AdCard;

    public get owner() {
        return this._owner;
    }

    protected inited(_t: this): void {
        let owner = _t.owner;

        owner.txtTitle.text = Game.SysMgr.getName(EnumUI.AD);
        owner.txt1.text = LanguageMgr.getTxt(508);
        owner.txt2.text = LanguageMgr.getTxt(509);
        owner.txt3.text = LanguageMgr.getTxt(510);
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onClick(owner.btnClose, _t.closeSelf);
        _t.onClick(owner.btn, _t.onClickBtnBuy);
        _t.onMsg(EnumMsg.UP_AD, _t.upAdState);
    }

    public onOpen(arg?: any): void {
        super.onOpen(arg);
        let t = this;
        t.upOpen(t);
        t.addSpine("effect/fx_KL_mianguanggao", t.owner, t.owner.imgIcon.x, t.owner.imgIcon.y, 2500)
    }

    public onClose(): void {
        super.onClose();
        let t = this;
    }

    private upOpen(t: this) {
        let owner = t.owner;
        let cfgShop = ConfigData.getShop_101(ShopConst.ad_goodsId1);
        let cfgRecharge = ConfigData.getRecharge_011(cfgShop.rechargeId);
        if (Game.Model.global.adRechargeIsOpen()) {
            owner.imgAd.visible = true;
            owner.btn.text = Game.Model.advert.getWatchCntByRechargeId(cfgShop.rechargeId) + "/" + cfgRecharge.adv;
            let x = owner.btn.width - owner.imgAd.width - owner.txtBtn.textWidth - 10 >> 1;
            owner.imgAd.x = x;
            owner.txtBtn.x = x + owner.imgAd.width + 10;
        } else {
            owner.imgAd.visible = false;
            owner.btn.text = LanguageMgr.getTxt(504, Game.Model.recharge.getChargeMoney(cfgShop.rechargeId));
            owner.txtBtn.x = owner.btn.width - owner.txtBtn.textWidth >> 1;
        }
    }

    private upAdState(t: this) {
        t.closeSelf();
    }

    /**点击购买按钮 */
    private onClickBtnBuy(): void {
        let cfgShop = ConfigData.getShop_101(ShopConst.ad_goodsId1);
        if (Game.Model.global.adRechargeIsOpen()) {
            Game.Model.advert.showAd(Enum_Advert.StoreBuy, cfgShop.rechargeId)
        } else {
            Game.Model.recharge.CG273(cfgShop.rechargeId, "");
        }
    }
}