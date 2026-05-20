import ConfigUtils from "../../../DataStock/ConfigUtils";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import DateUtils from "../../../XYFrame/Utils/DateUtils";
import EnumUI from "../../EnumUI";
import Game from "../../Game";
import { Enum_Advert } from "../Advert/Enum_Advert";
import Runtime_Vw_BuyStamina from "./Runtime_Vw_BuyStamina";


/**
 * @ Author: 
 * @ Date: 2026/4/21 10:31:58
 * @ Description: 
*/
export default class Vw_BuyStamina extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "main/Vw_BuyStamina";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_BuyStamina;

    public get owner() {
        return this._owner;
    }

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.lbTitle.text = LanguageMgr.getTxt(22);// 补充体力
        owner.lbTimeTitle.text = LanguageMgr.getTxt(23);// 下一次补充体力时间:
        owner.btnAd.text = LanguageMgr.getTxt(41);// 获得
        owner.btnBuy.text = LanguageMgr.getTxt(21);// 立即补充
        let list = ConfigUtils.getConstList(EnumUI.ROLE, 3);
        owner.btnBuy.lbNeed.text = list[2] + "";
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onClick(owner.btnBuy, _t.onClickBuy);
        _t.onClick(owner.btnAd, _t.onClickAd);
        _t.onClick(owner.btnClose, _t.closeSelf);
        _t.addLoop(1000, _t.updateTime);
    }

    private onClickBuy() {
        let list = ConfigUtils.getConstList(EnumUI.ROLE, 3);
        let current = Game.Model.stamina.current;
        let maxCount = Game.Model.stamina.maxCount;
        if (current < maxCount && Game.Model.bag.checkUseOne(list)) {
            Game.Model.stamina.CG481(maxCount - current);
        }
        this.closeSelf();
    }

    private onClickAd() {
        this.closeSelf();
        Game.Model.advert.showAd(Enum_Advert.Stamina);
    }

    private updateTime(dt: number, _t: this) {
        let owner = _t.owner;
        let time = Game.Model.stamina.recoverTime;
        time = time - Game.Model.global.getSrvTm();
        if (time < 0) {
            time = 0;
        }
        owner.lbTime.text = DateUtils.getMS(time);
    }

}