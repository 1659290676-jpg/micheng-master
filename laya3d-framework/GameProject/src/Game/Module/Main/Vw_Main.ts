import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_qd_115 from "../../../DataStock/ConfigData/Ts/Config_qd_115";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import DateUtils from "../../../XYFrame/Utils/DateUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";
import { EnumMsg } from "../../EnumMsg";
import EnumUI from "../../EnumUI";
import Game from "../../Game";
import { ButtonBase } from "../Component/ButtonBase";
import Vw_Role from "../Role/Vw_Role";
import Vw_Setting from "../Setting/Vw_Setting";
import Vw_AdCard from "../Shop/Vw_AdCard";
import Vw_Shop from "../Shop/Vw_Shop";
import Vw_Stage from "../Stage/Vw_Stage";
import ItemTipsMgr from "../Tip/ItemTipsMgr";
import Vw_WarOrder from "../WarOrder/Vw_WarOrder";
import { EnumStep } from "./EnumStep";
import Runtime_Vw_Main from "./Runtime_Vw_Main";
import { StepData } from "./StepMgr";
import Vw_BuyStamina from "./Vw_BuyStamina";


/**
 * @ Author: 
 * @ Date: 2026/3/12 20:44:38
 * @ Description: 
*/
export default class Vw_Main extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "main/Vw_Main";
    public static readonly preloads: string[] = [
        ResPath.UI_PREFAB2 + "stage/Vw_Stage" + ResPath.EXT_PREFAB,
    ];
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Main;

    public get owner() {
        return this._owner;
    }

    private _timeId: string;

    protected stepCall: Record<number, Function>;

    private btnWXClub: Laya.GWidget;

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.onInit();

        owner.btnShop.text = LanguageMgr.getTxt(2);
        owner.btnStage.text = LanguageMgr.getTxt(24);

        if (Game.Bridge.invokeMethod({ method: "isClubBtn" })) {
            XYFrame.ResMgr.loadAsync<any>(ResPath.getUIPrefab("main/comp/Item_WXClub.lh")).then((prefab: Laya.PrefabImpl) => {
                if (prefab && prefab.create) {
                    let item = prefab.create() as Laya.GWidget;
                    owner.btnRoot.addChild(item);
                    _t.btnWXClub = item;
                    _t.onClick(item, _t.onClickBtnWXClub);
                    owner.leftIcons.push(item);
                    _t.upIconsPos(_t, 1);
                }
            });
        }
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.stepCall = {
            [EnumStep.arenaAni]: _t.startArenaAni,
            // [EnumStep.fireTrialJump]: t.arenaAni,
            [EnumStep.warOrderAni]: _t.startWarOrderAni,
        }
        for (let i = 0; i < owner.tabs.length; i++) {
            let tab = _t.owner.tabs[i];
            tab.bindData = i;
            _t.onClick(tab, _t.touchTab);
        }
        _t.onClick(owner.btnSeting, _t.touchSetting)
        _t.onClick(owner.imgHead, _t.touchHead);
        _t.onClick(owner.btnArena, _t.touchArena);
        _t.onClick(owner.btnFireTrial, _t.touchFireTrial);
        _t.onClick(owner.btnWarOrder, _t.touchWarOrder);
        _t.onClick(owner.btnAdCard, _t.touchAdCard);
        _t.onClick(owner.btnStamina, _t.touchStamina);
        _t.onClick(owner.btnGold, _t.touchGold);
        if (_t.btnWXClub) {
            _t.btnWXClub.offClick(_t, _t.onClickBtnWXClub);
            _t.onClick(_t.btnWXClub, _t.onClickBtnWXClub);
        }
        _t.onMsg(EnumMsg.Role_Val, _t.updateMoney);
        _t.onMsg(EnumMsg.STAGE_LEVEL, _t.upGq);
        _t.onMsg(EnumMsg.STAMINA_VAL, _t.updateStamina);
        _t.onMsg(EnumMsg.UP_AD, _t.upAd);
        _t.onMsg(EnumMsg.GOLD_EFF_SCALE, _t.onMsgGoldEff);
        _t.onMsg(EnumMsg.STEP_UPDATE, _t.stepUpdate);
        _t.onMsg(EnumMsg.UP_Head, _t.upHead);
        _t.onMsg(EnumMsg.FIRETRIAL_CHANGE, _t.upFireTrial);
    }

    // public onResize(): void {
    //     super.onResize();
    //     this.owner.topGp.y = GameDesign.topNotch;
    // }

    protected regGuide(): void {
        let t = this, owner = t.owner;
        t.guideObjMap = t.guideObjMap || {};
        t.guideObjMap["btnArena"] = owner.btnArena;
        t.guideObjMap["btnWarOrder"] = owner.btnWarOrder;
    }

    public onOpen(...args: any[]): void {
        super.onOpen();

        let _t = this, owner = _t.owner;
        _t.upHead(_t);
        _t.selectPage(1);
        _t.updateMoney(_t);
        _t.updateStamina(_t);
        owner.btnArena.update();
        owner.btnAdCard.update();
        owner.btnWarOrder.update();
        owner.btnFireTrial.update();
        Game.StepMgr.triggerStep();
        _t.upIconsPos(_t, 1);
        _t.upIconsPos(_t, 2);
    }

    public onClose(): void {
        super.onClose();
        let _t = this, owner = _t.owner;
        _t._timeId = null;
        _t.selectPage(-1);
        owner.btnArena.clear();
        owner.btnAdCard.clear();
        owner.btnWarOrder.clear();
        owner.btnFireTrial.clear();
    }

    public selectPage(index: number) {
        let _t = this;
        let selectedIndex = _t.owner.selectedIndex;
        _t.owner.selectTab(index);
        if (selectedIndex != index) {
            // 打开页面
            switch (selectedIndex) {
                case 0:
                    // 关闭商店
                    XYFrame.UIMgr.close(Vw_Shop);
                    break;
                case 1:
                    // 关闭关卡
                    XYFrame.UIMgr.close(Vw_Stage);
                    break;
            }
            switch (index) {
                case 0:
                    // 打开商店
                    XYFrame.UIMgr.open(Vw_Shop);
                    break;
                case 1:
                    // 打开关卡
                    XYFrame.UIMgr.open(Vw_Stage);
                    break;
            }
        }
    }

    private touchTab(e: Laya.Event) {
        let tab: ButtonBase = e.target;
        this.selectPage(tab.bindData);
    }

    private touchSetting() {
        XYFrame.UIMgr.open(Vw_Setting);
    }

    /**
     * 货币
     * @param _t 
     */
    private updateMoney(_t: this) {
        _t.owner.lbGold.text = Game.Model.hero.vo.gold + "";
    }

    private onMsgGoldEff(_t: this) {
        let time = 100;
        let scale = 1.7;
        _t.tweenTo(_t.owner.imgGold, { scaleX: 1, scaleY: 1 }, 50).to({ scaleX: scale, scaleY: scale }, time).to({ scaleX: 1, scaleY: 1 }, time);
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

    /**更新关卡 */
    private upGq(_t: this) {
        let owner = _t.owner;
        let b = owner.btnArena.update();
        b = owner.btnFireTrial.update() || b;
        b && _t.upIconsPos(_t, 2);
        b = owner.btnWarOrder.update();
        b = owner.btnAdCard.update() || b;
        b && _t.upIconsPos(_t, 1);

    }

    /**阶段流程更新 */
    private stepUpdate(t: this, step: StepData) {
        if (!t.stepCall) return;
        let call = t.stepCall[step.stepType]
        if (call) {
            call(t, step)
        }
    }

    /**更新火焰试炼 */
    private upFireTrial(_t: this) {
        _t.owner.btnFireTrial.update() && _t.upIconsPos(_t, 2);
    }

    /**更新广告卡是否解锁 */
    private upAd(_t: this) {
        _t.owner.btnAdCard.update() && _t.upIconsPos(_t, 1);
    }

    private upHead(_t: this) {
        _t.owner.imgHead.src = ResPath.getHeadSrc(Game.Model.hero.vo.headId);
    }

    /**点击头像 */
    private touchHead() {
        XYFrame.UIMgr.open(Vw_Role);
    }

    /**点击竞技场 */
    private touchArena() {
        if (!Game.SysMgr.isOpen(EnumUI.ARENA, true)) {
            return
        }
        Game.Model.arena.CG551()
    }

    /**点击火焰试炼 */
    private touchFireTrial() {
        if (!Game.SysMgr.isOpen(EnumUI.FIRE_TRIAL, true)) {
            return;
        }
        Game.Model.fireTrial.open()
    }

    /**点击战令 */
    private touchWarOrder() {
        if (!Game.SysMgr.isOpen(EnumUI.WAR_ORDER, true)) {
            return;
        }
        let warOrder = Game.Model.warOrder;
        let vo = warOrder.getVo();
        if (!vo || Game.Model.global.getSrvTm() >= vo.eTm) {
            // Vw_Msg.setCfgTxt(675);
            return;
        }
        if (warOrder.showOpenTag) {
            warOrder.showOpenTag = false;
            this.owner.btnWarOrder.update();
        }
        XYFrame.UIMgr.open(Vw_WarOrder);
    }

    /**点击广告卡 */
    private touchAdCard() {
        if (!Game.SysMgr.isOpen(EnumUI.AD, true)) {
            return;
        }
        XYFrame.UIMgr.open(Vw_AdCard);
    }

    /**
     * 点击加体力
     */
    private touchStamina() {
        XYFrame.UIMgr.open(Vw_BuyStamina);
    }

    /**点击微信游戏圈 */
    private onClickBtnWXClub() {
        let gameId = window.gameInfo.appId;
        let cfg = ConfigData.qd_115[gameId];
        if (cfg) {
            // let c = ConfigData.getQd_115(gameId);
            let link = Config_qd_115.getLink(cfg);
            if (link)
                Game.Bridge.invokeMethod({ method: "pageShow", data: link });
        }
    }

    private touchGold() {
        this.selectPage(0);
    }

    /**竞技场增加动画 */
    private startArenaAni(t: this, step: StepData) {
        t.owner.btnArena.startAni(step);
    }

    /**战令钥匙增加动画 */
    private startWarOrderAni(t: this, step: StepData) {
        let num = step.callArg[0]
        ItemTipsMgr.showItemFlyAni(t.owner.btnWarOrder, {
            w: 70,
            h: 70,
            num: num,
            dir: 2,
            src: ResPath.getAtlasImgPath(EnumAltas.Main, "Icon_WarOrder"),
            endCallBack: function () {
                Game.StepMgr.triggerStep()
            }
        })
    }

    /**
     * 更新图标位置
     * @param _t 
     * @param pos 1:主界面左边的图标 2:主界面右边的图标
     */
    public upIconsPos(_t: this, pos: 1 | 2) {
        let y = 195;
        let icons = pos == 1 ? _t.owner.leftIcons : _t.owner.rightIcons;
        for (let icon of icons) {
            if (icon.visible) {
                icon.y = y;
                y += icon.height + 20;
            }
        }
    }

}