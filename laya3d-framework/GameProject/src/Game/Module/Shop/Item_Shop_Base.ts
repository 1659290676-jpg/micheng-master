import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_shop_101 from "../../../DataStock/ConfigData/Ts/Config_shop_101";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import EnumUI from "../../EnumUI";
import Game from "../../Game";
import { Enum_Advert } from "../Advert/Enum_Advert";
import Vw_WarOrderBuyTip from "../WarOrder/Vw_WarOrderBuyTip";
import EnumShop, { ShopConst } from "./EnumShop";
import { Item_Shop_Grid } from "./Item_Shop_Grid";
import Vw_AdCard from "./Vw_AdCard";

export class Item_Shop_Base extends Laya.GWidget implements IPool {
    public list!: Laya.GList;
    public title?: Laya.GTextField
    // public spine: UISpine

    private txtMap = {
        [EnumShop.Gold]: 505,
        [EnumShop.Advertising]: 506,
        [EnumShop.Item]: 507,
    }

    public uiInit(): void {
        let t = this
        // t.list = t.getChild("list");
        UIUtils.setList(t.list, false);
        t.list.on(Laya.UIEvent.ClickItem, t, t.onItem);
        // t.list.on(Laya.Event.CLICK, t, t.onItem);
        // t.list.on(Laya.Event.ITEM_CLICK, t, t.onItem);

    }

    public initList(dataList: number[], type: number) {
        let t = this
        if (t.title) {
            t.title.text = t.txtMap[type] ? LanguageMgr.getTxt(t.txtMap[type]) : ""
        }
        t.list.source = dataList

        t.refreshSize(dataList.length)
        // t.addSpine()
    }

    public refreshSize(len: number) {

    }

    // public addSpine() {

    // }

    private onItem(item: Item_Shop_Grid) {
        let id = item.data
        let cfg = ConfigData.shop_101[id]
        if (!cfg) {
            return
        }
        let functionId = Config_shop_101.getFunctionId(cfg);
        if (functionId == EnumUI.WAR_ORDER) {
            XYFrame.UIMgr.open(Vw_WarOrderBuyTip);
            return;
        }
        if (id == ShopConst.ad_goodsId1) {
            XYFrame.UIMgr.open(Vw_AdCard);
            return;
        }
        let rechargeId = Config_shop_101.getRechargeId(cfg)
        if (Game.Model.global.adRechargeIsOpen()) {
            //看广告
            Game.Model.advert.showAd(Enum_Advert.StoreBuy, rechargeId)
            return
        }
        let costStr = Config_shop_101.getGoldPrice(cfg)
        if (costStr) {
            //道具购买
            let arr = ConfigUtils.splitStr(costStr)
            if (ConfigUtils.checkEnough(arr[0], arr[1], arr[2])) {
                // Frame.UIMgr.openByObj(Vw_Shop_Alert, id)
                Game.Model.shop.CG501(id, 1)
            }
        } else {
            if (rechargeId) {
                Game.Model.recharge.CG273(rechargeId, "")
            }
        }
    }

    public clear() {
        let t = this
        // t.list.off(Laya.UIEvent.ClickItem, t, t.onItem);
        t.list.source = null;
        // if (t.spine) {
        //     t.spine.dispose()
        //     t.spine = null;
        // }
    }
}