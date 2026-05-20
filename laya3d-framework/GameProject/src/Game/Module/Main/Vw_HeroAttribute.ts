import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_AttributeGrowth_105 from "../../../DataStock/ConfigData/Ts/Config_AttributeGrowth_105";
import EnumKey from "../../../DataStock/GameData/EnumKey";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { EnumAltas } from "../../EnumAtlas";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import { ButtonBase } from "../Component/ButtonBase";
import Runtime_Vw_HeroAttribute from "./Runtime_Vw_HeroAttribute";


/**
 * @ Author: 
 * @ Date: 2026/4/15 23:00:34
 * @ Description: 
*/
export default class Vw_HeroAttribute extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "main/Vw_HeroAttribute";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_HeroAttribute;

    public get owner() {
        return this._owner;
    }

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.list.itemRenderer = _t.itemRenderer.bind(_t);
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onClick(owner.btnClose, _t.closeSelf);
        _t.onMsg(EnumMsg.Role_Val, _t.onMoneyMsg);
        _t.onMsg(EnumMsg.ROLE_ATTR_UPDATE, _t.onAttrMsg);
    }

    public onOpen(...args: any[]): void {
        super.onOpen();
        let _t = this;
        let owner = _t.owner;
        owner.list.numItems = 3;
        _t.onMoneyMsg(_t);
    }

    public onClose(): void {
        super.onClose();
        let _t = this;
        let owner = _t.owner;
        owner.list.numItems = 0;
    }

    private onMoneyMsg(_t: this) {
        _t.owner.compGold.title = Game.Model.hero.vo.gold + "";
    }

    private onAttrMsg(_t: this) {
        _t.owner.list.refresh();
    }

    /**
     * 列表项渲染器
     * @param index 
     * @param item 
     */
    private itemRenderer(index: number, item: Laya.GWidget) {
        let _t = this;
        let key = 0;
        let color = "#FFFFFF";
        let flag = 0;
        if (index == 0) {
            flag = 1;
            key = EnumKey.Attack;
            color = "#E24465";
        } else if (index == 1) {
            flag = 3;
            key = EnumKey.GrowUp;
            color = "#A5D678";
        } else if (index == 2) {
            flag = 2;
            key = EnumKey.Speed;
            color = "#7ABEDC";
        }
        let icon: Laya.GImage = item.getChildByName("icon");
        let txt: Laya.GTextField = item.getChildByName("txt");
        let btn: ButtonBase = item.getChildByName("btn");
        let maxTxt = btn.getChildByName("max");
        let btnTxtNode = btn.getChildByName("node");
        btn.bindData = flag;
        icon.src = ResPath.getAtlasImgPath(EnumAltas.Main, "Icon_Attr" + key);
        _t.onClick(btn, _t.onTouchBuy);
        let buy = Game.Model.hero.vo.getBuy(flag);
        let cost = 0;
        let attrVal = Game.Model.hero.vo.getTotalAttr(key);
        if (key == EnumKey.Attack) {
            cost = Config_AttributeGrowth_105.getAtkCostByKey(buy);
            attrVal /= 10000;
        } else if (key == EnumKey.Speed) {
            cost = Config_AttributeGrowth_105.getSpeedCostByKey(buy);
            attrVal /= 100;
        } else if (key == EnumKey.GrowUp) {
            cost = Config_AttributeGrowth_105.getGrowthCostByKey(buy);
            attrVal /= 10000;
        }
        let isMax = !cost || cost <= 0;
        if (!ConfigData.AttributeGrowth_105[buy + 1]) {
            isMax = true;
        }
        btn.text = (cost || 0) + "";
        maxTxt.visible = isMax;
        btnTxtNode.visible = !isMax;

        txt.color = color;
        attrVal = Math.floor(attrVal * 100);
        txt.text = attrVal / 100 + "";
    }

    private onTouchBuy(e: Laya.Event) {
        let btn: ButtonBase = e.target;
        let index = btn.bindData;
        let buy = Game.Model.hero.vo.getBuy(index);
        let cost = 0;
        if (index == 1) {
            cost = Config_AttributeGrowth_105.getAtkCostByKey(buy);
        } else if (index == 2) {
            cost = Config_AttributeGrowth_105.getSpeedCostByKey(buy);
        } else if (index == 3) {
            cost = Config_AttributeGrowth_105.getGrowthCostByKey(buy);
        } else {
            return;
        }
        let isMax = !cost || cost <= 0;
        if (!ConfigData.AttributeGrowth_105[buy + 1]) {
            isMax = true;
        }
        if (isMax) {
            return;
        }
        if (Game.Model.bag.checkUse(EnumKey.Gold, 0, cost)) {
            Game.Model.hero.CG125(index);
        }
    }
}