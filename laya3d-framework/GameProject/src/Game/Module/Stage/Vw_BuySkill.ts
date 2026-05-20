import Config_daoju_102 from "../../../DataStock/ConfigData/Ts/Config_daoju_102";
import Config_shop_101 from "../../../DataStock/ConfigData/Ts/Config_shop_101";
import Config_skill_105 from "../../../DataStock/ConfigData/Ts/Config_skill_105";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import Game from "../../Game";
import Runtime_Vw_BuySkill from "./Runtime_Vw_BuySkill";


/**
 * @ Author: 
 * @ Date: 2026/4/22 11:39:10
 * @ Description: 购买技能
*/
export default class Vw_BuySkill extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "stage/Vw_BuySkill";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_BuySkill;

    public get owner() {
        return this._owner;
    }

    private skillId: number;
    private shopId: number;
    private needCost: number[];

    private _spineId: number;

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onClick(owner.btnClose, _t.closeSelf);
        _t.onClick(owner.btn, _t.touchBuySkill);
        _t.addSpine("effect/fx_KL_lingquanniu", owner.btn, owner.btn.width / 2, owner.btn.height / 2, 2000);
    }

    public onOpen(skillId: number): void {
        super.onOpen();
        let _t = this;
        _t.skillId = skillId;
        _t.update(_t);
        if (_t._spineId) {
            _t.removeSpineById(_t._spineId);
        }
        let act = "1";
        if (skillId == 2) {
            act = "4";
        } else if (skillId == 3) {
            act = "3";
        } else if (skillId == 4) {
            act = "2";
        }
        _t._spineId = _t.addSpine("effect/fx_KL_gongxihuode", _t.owner.spineBase, 0, 0, 4000, 0, true, act, 1.5, 1.5).eid;
    }

    public onClose(): void {
        super.onClose();
        this._spineId = null;
    }

    private update(_t: this) {
        let owner = _t.owner;
        let skillId = _t.skillId;
        let shopId = Config_skill_105.getShopIdByKey(skillId);
        let gold_cost = Config_shop_101.getGoldPriceByKey(shopId);
        let shopItem = Config_shop_101.getItemByKey(shopId);
        let needCost = ConfigUtils.splitStr(gold_cost);
        let items = ConfigUtils.splitStr(shopItem);
        _t.shopId = shopId;
        _t.needCost = needCost;
        owner.lbTitle.text = Config_skill_105.getNByKey(skillId);
        needCost && (owner.btn.text = needCost[2] + "");
        if (items) {
            owner.lbCount.text = "+" + items[2];
            owner.imgIcon.src = ConfigUtils.getItemIconPath(items[0], items[1]);
            owner.lbDes.text = Config_daoju_102.getMsByKey(items[1]);
        }
    }

    private touchBuySkill() {
        let _t = this;
        if (Game.Model.bag.checkUseOne(_t.needCost)) {
            Game.Model.shop.CG501(_t.shopId, 1);
            _t.closeSelf();
        }
    }
}