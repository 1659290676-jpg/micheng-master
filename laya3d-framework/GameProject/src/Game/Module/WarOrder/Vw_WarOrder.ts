import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_guide_001 from "../../../DataStock/ConfigData/Ts/Config_guide_001";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { EnumUILayer } from "../../../XYFrame/UI/Layer/EnumUILayer";
import DateUtils from "../../../XYFrame/Utils/DateUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import { Item_WarOrder1 } from "./Comp/Item_WarOrder1";
import { Item_WarOrder2 } from "./Comp/Item_WarOrder2";
import Runtime_Vw_WarOrder from "./Runtime_Vw_WarOrder";
import Vw_WarOrderBuyTip from "./Vw_WarOrderBuyTip";
import Vw_WarOrderGuideTip from "./Vw_WarOrderGuideTip";


/**
 * @ Author: 
 * @ Date: 2026/4/13 11:43:49
 * @ Description: 
*/
export default class Vw_WarOrder extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "warOrder/Vw_WarOrder";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_WarOrder;

    public get owner() {
        return this._owner;
    }

    private imgProWidth: number = 100;

    /**活动id */
    private actId: number;
    private timeId: string

    /**倒计时定时器id */
    private tmId: string;
    private eTm: number;

    protected inited(_t: this): void {
        let owner = _t.owner;

        _t.imgProWidth = owner.imgPro.width;
        let list = owner.list;
        list.itemProvider = (index: number) => {
            if (index == list.numItems - 1) {
                // return "resources/ui/warOrder/Item_WarOrder2.lh";
                return ResPath.getUIPrefab(Item_WarOrder2.PREFAB + ResPath.EXT_PREFAB);
            }
            // return "resources/ui/warOrder/Item_WarOrder1.lh";
            return ResPath.getUIPrefab(Item_WarOrder1.PREFAB + ResPath.EXT_PREFAB);
        }
        // UiUtil.setList(t.m_list);
        list.setVirtual();
        list.itemRenderer = (index: number, item: any) => {
            let data = list.source[index];
            item.itemIndex = index;
            item.data = data;
            item.setData && item.setData(data, _t.actId);
        }
        list.on(Laya.UIEvent.Scroll, _t, _t.onListScroll);

        owner.txt1.text = LanguageMgr.getTxt(676);
        owner.txt2.text = LanguageMgr.getTxt(677);
        owner.txtTitle.text = LanguageMgr.getTxt(672);
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onClick(owner.btnClose, _t.closeSelf);

        _t.onClick(owner.btnAct, _t.onClickBtnAct);
        _t.onClick(owner.comProg, _t.onClickBtnProBar);
        _t.onClick(owner.btnHelp, _t.onClickBtnProBar);
        _t.onClick(owner.btnAdd, _t.onAddT);

        _t.onMsg(EnumMsg.WAR_ORDER_UPDATE, _t.updateMsg);
        _t.onMsg(EnumMsg.WAR_ORDER_GET_GOLD, _t.showAni);
        _t.onMsg(EnumMsg.Role_Val, _t.upGold);
    }

    protected regGuide(): void {
        let _t = this;
        let owner = _t.owner;
        _t.guideObjMap = _t.guideObjMap || {};
        _t.guideObjMap["btnAct"] = owner.btnAct;
        _t.guideObjMap["comProg"] = owner.comProg;
    }

    public onResize(): void {
        super.onResize();
        let t = this;
        let height = Laya.stage.height;
        t.owner.height = height;
        let listHeight = height - t.owner.list.y;
        t.owner.list.height = t.owner.progressPanel.height = listHeight;
    }

    public onOpen(arg?: any) {
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

        t.owner.imgGold.visible = false
        t.upOpen(t);
        Game.Model.warOrder.CG521();
    }

    public onClose() {
        super.onClose();
        let t = this;
        t.owner.list.source = null;
        if (t.tmId) {
            XYFrame.Timer.clearById(t.tmId);
            t.tmId = null;
        }
        let warOrder = Game.Model.warOrder;
        if (warOrder.curActId != t.actId) {
            let ids1 = warOrder.getNotFetchIds1(t.actId);
            let b: boolean;
            if (ids1 && ids1.length > 0) {
                b = true;
                warOrder.CG523(t.actId, 1, 0);
            } else {
                ids1 = warOrder.getNotFetchIds2(warOrder.curActId);
                if (ids1 && ids1.length > 0) {
                    b = true;
                    warOrder.CG523(t.actId, 2, 0);
                }
            }
            if (!b) {
                let vo = warOrder.getVo(t.actId);
                if (vo && vo.pro > 0) {// 领取进度宝箱奖励
                    warOrder.CG523(t.actId, 1, 0);
                }
            }
        }
        Game.GuideMgr.setPause("Vw_WarOrder", false);
        Game.StepMgr.triggerStep();
        t.eTm = null;

        if (t.timeId) {
            XYFrame.Timer.clearById(t.timeId)
            t.timeId = null
        }
    }

    private upOpen(t: this) {
        t.updateMsg(t, t.actId); //更新数据
        t.upGold(t);
        let vo = Game.Model.warOrder.getVo(t.actId);
        if (vo) {
            let prefab1 = Laya.loader.getRes(ResPath.getUIPrefab(Item_WarOrder1.PREFAB + ResPath.EXT_PREFAB)) as Laya.PrefabImpl;
            let h1 = prefab1.data.height;
            let lv = vo.lv;

            if (Game.GuideMgr.isGuideById(Game.GuideMgr.T_BRANCH, 1)) {
                t.owner.list.scroller.scrollBottom(false);
                Laya.timer.callLater(t, () => {
                    if (t.isOpen) {
                        t.owner.list.scroller.scrollTop(true);
                    }
                });
                XYFrame.Timer.once(1000, t.onFirstScrollAniEnd, t);
            } else {
                let y = h1 * lv;
                t.owner.list.scroller.setPosY(y);
                Laya.timer.callLater(t, () => {
                    if (t.isOpen) {
                        t.onListScroll();
                    }
                });
            }
        }
    }

    private onFirstScrollAniEnd(tm: number, t: this) {
        if (t.isOpen) {
            Game.GuideMgr.setPause("Vw_WarOrder", false);
        }
    }


    private updateMsg(t: this, actId: number) {
        if (actId != t.actId) {
            return;
        }
        let vo = Game.Model.warOrder.getVo(actId);
        if (!vo) return;
        t.eTm = vo.eTm;
        if (!t.tmId) {
            t.tmId = XYFrame.Timer.loop(1000, t.onTm, t);
        }
        t.onTm(0, t);
        t.updateList(t);

        let cfgZlDj = ConfigData.getBattlelevel_104(vo.lv + 1);
        if (cfgZlDj && cfgZlDj.exp) {
            t.owner.txtPro.text = vo.exp + "/" + cfgZlDj.exp;
            t.owner.imgPro.width = t.imgProWidth * Math.min(1, vo.exp / cfgZlDj.exp);
            t.owner.txtLv.text = (vo.lv + 1) + "";
        } else {
            t.owner.txtPro.text = "MAX";
            t.owner.imgPro.width = t.imgProWidth
            t.owner.txtLv.text = vo.lv + "";
        }
        let curId = Game.Model.warOrder.curActId;
        if (curId != t.actId) {
            t.owner.btnAct.visible = t.owner.imgAct.visible = false;
        } else {
            let isBuy = vo.isBuy;
            t.owner.imgAct.visible = !isBuy;
            t.owner.btnAct.visible = true;
            t.owner.btnAct.text = LanguageMgr.getTxt(isBuy ? 674 : 673); //激活/已激活
        }
    }

    private updateList(t: this) {
        let vo = Game.Model.warOrder.getVo(t.actId);
        let dataList: any[] = Game.Model.warOrder.getCfgList(vo ? vo.qs : 1);
        dataList.push(1); // 最后一个特殊item
        t.owner.list.source = dataList;
        // let prefab1 = Laya.loader.getRes("resources/ui/warOrder/Item_WarOrder1.lh") as Laya.PrefabImpl;
        // let h1 = prefab1.data.height;
        // t.m_imgListPro.height = h1 * (dataList.length - 1);
        // if (vo) {
        //     t.owner.imgLineSel.visible = true;
        //     // let cfgZlDj = ConfigData.getBattlelevel_104(vo.lv + 1);
        //     let cfgZlDj = ConfigData.battlelevel_104[vo.lv + 1];
        //     let lv = cfgZlDj ? vo.lv + 1 : vo.lv
        //     // lv = vo.lv + 1;
        //     let y = h1 * lv;
        //     t.owner.imgLineSel.y = y + t.owner.list.layout.padding[0] - t.owner.imgLineSel.height;
        // } else {
        //     t.owner.imgLineSel.visible = false;
        // }
    }

    protected upGold(t: this) {
        let hn = Game.Model.hero.vo.gold;
        t.owner.lbGold.text = hn + "";
    }

    protected showAni(t: this) {
        let tm = 2000;
        t.owner.imgGold.visible = true
        let parent = XYFrame.UIMgr.getLayer(EnumUILayer.Tips);
        let pos = Laya.Point.create().setTo(417, 50);
        pos = t.owner.localToGlobal(pos)
        let sp = t.addSpine("effect/fx_KL_jinbishouji", parent, pos.x, pos.y, tm, tm, false,)
        // let sp = UISpine.createEff(parent, pos.x, pos.y, "fx_KL_jinbishouji", false, tm);
        // pos.recover();
        // sp.setScale(0.8);
        // sp.container.rotation = 0;
        // sp.addLabelEvent(EnumSpinePart.BODY, t.onJinBiShoujiEvent, t)
        sp.ani.on(Laya.Event.LABEL, t, t.onJinBiShoujiEvent)
        t.timeId = XYFrame.Timer.once(tm, function () {
            t.timeId = null;
            if (!t.owner.imgGold.destroyed) {
                t.owner.imgGold.visible = false
            }
        }, t);
        XYFrame.AudioMgr.playUI("gold");
    }

    private onListScroll() {
        let t = this;
        let posY = (<Laya.GWidget>t.owner.list._$container).y;
        (<Laya.GWidget>t.owner.progressPanel._$container).y = posY;
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

    private onClickBtnAct() {
        let t = this;
        let vo = Game.Model.warOrder.getVo(t.actId);
        if (!vo) return;
        if (vo.isBuy) {
            return;
        }
        XYFrame.UIMgr.open(Vw_WarOrderBuyTip, { actId: t.actId });
    }

    private onClickBtnProBar() {
        XYFrame.UIMgr.open(Vw_WarOrderGuideTip);
    }

    protected onAddT() {
        // let t = this;
        //Frame.UIMgr.openByObj(Vw_Gq_Win, { gq: t.gq, imgGold: t.imgGold });
        // t.showAni(t);
    }

    private onJinBiShoujiEvent(eventData: any) {
        let t = this;
        if (eventData && eventData.name == "jingbitiaodong") {
            XYFrame.Msg.emit(EnumMsg.GOLD_EFF_SCALE);
            if (!t.owner.iconGold.destroyed) {
                if (t.owner.iconGold.scaleX > 1 && t.owner.iconGold.scaleX < 1.1) return;
                let s = 1.3;
                let tm = 100;
                t.owner.iconGold.scale(1, 1);
                t.tweenTo(t.owner.iconGold, { scaleX: s, scaleY: s }, tm).to({ scaleX: 1, scaleY: 1 }, 120);
            }
        }
    }

    //-------------------------------指引---------------------------------
    /**获取第一个item的免费奖励 */
    private getFirstIcon1(cfg: Config_guide_001) {
        let t = this, list = t.owner.list;
        let num = t.owner.list.numChildren;
        for (let i = 0; i < num; i++) {
            let item = list.getChildAt(i) as Item_WarOrder1;
            if (item.data && item.data.lv == 0) {
                return item.item1;
            }
        }
        return null;
    }
    /**获取第一个item的进阶奖励 */
    private getFirstIcon2(cfg: Config_guide_001) {
        let t = this, list = t.owner.list;
        let num = list.numChildren;
        for (let i = 0; i < num; i++) {
            let item = list.getChildAt(i) as Item_WarOrder1;
            if (item.data && item.data.lv == 0) {
                return item.item2;
            }
        }
        return null;
    }
}