import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_shop_101 from "../../../DataStock/ConfigData/Ts/Config_shop_101";
import { GameDesign } from "../../../XYFrame/Design/GameDesign";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import EnumUI from "../../EnumUI";
import Game from "../../Game";
import EnumShop from "./EnumShop";
import { Item_Shop1 } from "./Item_Shop1";
import { Item_Shop2 } from "./Item_Shop2";
import { Item_Shop3 } from "./Item_Shop3";
import { Item_Shop_Base } from "./Item_Shop_Base";
import Runtime_Vw_Shop from "./Runtime_Vw_Shop";

export interface Shop_Data {
    /**商店id */
    id: number
    /**金币价格 */
    goldPrice: string
    /**充值id */
    rechargeId: number
}

/**
 * @ Author: 
 * @ Date: 2026/4/14 16:54:24
 * @ Description: 商店
*/
export default class Vw_Shop extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "shop/Vw_Shop";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Shop;

    public get owner() {
        return this._owner;
    }

    private uiMap = {
        [EnumShop.Card]: Item_Shop1,
        [EnumShop.Gold]: Item_Shop3,
        [EnumShop.Advertising]: Item_Shop2,
        [EnumShop.Item]: Item_Shop2,
    }
    private uiArr: number[] = [EnumShop.Card, EnumShop.Gold, EnumShop.Advertising, EnumShop.Item]
    private itemList: Item_Shop_Base[] = []
    private scrollY = 0

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.topGp.visible = false;
    }

    protected initListener(): void {
        let t = this;
        t.onMsg(EnumMsg.UP_AD, t.upShopItems);
        t.onMsg(EnumMsg.RECHARGE_AD_CNT, t.upShopItems);
        t.onMsg(EnumMsg.WAR_ORDER_UPDATE, t.upShopItems);
    }

    public onOpen(arg?: any) {
        super.onOpen(arg);
        let t = this;

        t.initItem()
        t.playAni()
    }

    public onClose() {
        super.onClose();
        let t = this;
        t.freeAllItems(t);

        // XYFrame.Tween.kill(t.owner.bgTitle)
        // XYFrame.Tween.kill(t.owner.panel)
    }

    public onResize(): void {
        super.onResize();
        let t = this;
        let owner = t.owner;
        let panel = owner.panel;
        let height = Laya.stage.height -owner.y - panel.y - 105 - GameDesign.btmNotch;
        panel.height = height;
        owner.imgBlack.pos(-owner.x, -owner.y);
        owner.imgBlack.size(Laya.stage.width, Laya.stage.height);
    }

    private upShopItems(t: this) {
        t.freeAllItems(t);
        Laya.timer.callLater(t, t.initItem);
    }

    private freeAllItems(t: this) {
        t.scrollY = t.owner.panel.scroller.posY || 0
        for (let item of t.itemList) {
            if (item) {
                item.removeSelf()
                XYFrame.PoolMgr.releasePrefabInst(item);
            }
        }
        t.itemList.length = 0
    }

    private initItem() {
        if (!this.isOpen) return;
        let cfgs = ConfigData.shop_101
        let typeMapArr: Record<number, number[]> = {}
        for (let k in cfgs) {
            let cfg = cfgs[k]
            let functionId = Config_shop_101.getFunctionId(cfg);
            if (functionId && !Game.SysMgr.isOpen(functionId)) {
                continue;
            }
            if (functionId == EnumUI.WAR_ORDER) {
                if (Game.Model.warOrder.isBuy) { // 通行证已购买，不显示
                    continue;
                }
            } else if (functionId == EnumUI.AD) {
                // if (Game.Model.global.adRechargeIsOpen()) {
                //     continue
                // }
                if (Game.Model.hero.vo.isAdUnlock) { // 解锁了广告卡，不显示
                    continue;
                }
            }
            let type = Config_shop_101.getType(cfg)
            let ui = this.uiMap[type];
            if (ui) {
                if (!typeMapArr[type]) {
                    typeMapArr[type] = []
                }
                typeMapArr[type].push(+k)
            }
        }

        let y = 0
        for (let type of this.uiArr) {
            let arr = typeMapArr[type]
            if (arr && arr.length > 0) {
                let cls = this.uiMap[type]
                let ui = XYFrame.PoolMgr.getPrefabInst(ResPath.getUIPrefab(cls.PREFAB + ResPath.EXT_PREFAB), cls);//cls.create();
                if (ui) {
                    this.owner.panel.addChild(ui)
                    // this.dispaly.addChild(ui)
                    ui.uiInit()
                    ui.initList(arr, type)
                    ui.y = y
                    y += ui.height + 39
                    this.itemList.push(ui)
                }
            }
        }
        this.owner.panel.scroller.posY = this.scrollY
    }

    private playAni() {
        let t = this, owner = t.owner;
        // Frame.Tween.to(t.bgTitle, { scaleY: 0 }, 1).to({ scaleY: 1.1 }, 200).to({ scaleY: 1 }, 200)
        // owner.bgTitle.y = -80
        // XYFrame.Tween.to(owner.bgTitle, { y: 0 }, 200).to({ y: -80 }, 200)
        t.tweenTo(owner.panel, { alpha: 0 }, 50).to({ alpha: 1 }, 200)
    }

}