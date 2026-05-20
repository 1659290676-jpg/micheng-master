import { GameDesign } from "../../../XYFrame/Design/GameDesign";
import { VerticalLayout } from "../../../XYFrame/UI/UILayout";
import DateUtils from "../../../XYFrame/Utils/DateUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import Vw_BuyStamina from "../Main/Vw_BuyStamina";
import Vw_Shop from "./Vw_Shop";

/**
 * @ Author: XXL
 * @ Date: 2026-04-22 09:38
 * @ Description: 弹道的商店界面
*/
export default class Vw_ShopAlone extends Vw_Shop {

    protected _timeId: string;

    protected inited(_t: this): void {
        _t.layout && (_t.layout.vertical = VerticalLayout.Top_Notch);
        let owner = _t.owner;
        owner.topGp.visible = true;
        owner.imgBlack.alpha = 0.8;
    }

    protected initListener(): void {
        let _t = this;
        super.initListener();
        let owner = _t.owner;
        _t.onClick(owner.btnClose, _t.closeSelf);
        _t.onClick(owner.btnStamina, _t.touchStamina);
        _t.onMsg(EnumMsg.Role_Val, _t.updateMoney);
        _t.onMsg(EnumMsg.STAMINA_VAL, _t.updateStamina);
    }

    public onOpen(...args: any[]): void {
        super.onOpen();

        let _t = this, owner = _t.owner;
        _t.updateMoney(_t);
        _t.updateStamina(_t);
    }

    public onClose(): void {
        super.onClose();
        let _t = this, owner = _t.owner;
        _t._timeId = null;
    }

    public onResize(): void {
        super.onResize();
        let t = this;
        let owner = t.owner;
        let panel = owner.panel;
        let height = Laya.stage.height - owner.y - panel.y - GameDesign.btmNotch;
        panel.height = height;
    }

    /**
     * 点击加体力
     */
    private touchStamina() {
        XYFrame.UIMgr.open(Vw_BuyStamina);
    }

    /**
     * 货币
     * @param _t 
     */
    private updateMoney(_t: this) {
        _t.owner.lbGold.text = Game.Model.hero.vo.gold + "";
    }

    /**
     * 更新体力显示
     * @param _t 
     */
    private updateStamina(_t: this) {
        let owner = _t.owner;
        let model = Game.Model.stamina;
        let current = model.current;
        let max = model.maxCount;
        let freeTime = model.freeTime;
        if (freeTime > 0 || current < max) {
            if (!_t._timeId) {
                _t._timeId = _t.addLoop(1000, _t._staminaTimeRun);
            }
            owner.lbStaminaTime.fontSize = 28;
            _t._staminaTimeRun(0, _t);
        } else {
            if (_t._timeId) {
                _t.removeTimer(_t._timeId);
                _t._timeId = null;
            }
            owner.lbStaminaTime.text = "MAX";
            owner.lbStaminaTime.fontSize = 36;
        }
        owner.lbStamina.text = current + "";
        owner.lbStamina.visible = freeTime <= 0;
        owner.imgLimitless.visible = freeTime > 0;
        owner.btnStamina.visible = freeTime <= 0 && current < max;
    }

    private _staminaTimeRun(dt: number, _t: this) {
        let model = Game.Model.stamina;
        let freeTime = model.freeTime || model.recoverTime;
        let now = Game.Model.global.getSrvTm();
        let time = freeTime - now;
        if (time < 0) time = 0;
        _t.owner.lbStaminaTime.text = DateUtils.getMS(time);
    }
}