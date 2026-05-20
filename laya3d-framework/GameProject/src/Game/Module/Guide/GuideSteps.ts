import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_guide_001 from "../../../DataStock/ConfigData/Ts/Config_guide_001";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import ClassUtils from "../../../XYFrame/Utils/ClassUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import Vw_GuideLayer from "../Main/Vw_GuideLayer";
import GuideHand from "./GuideHand";
import GuideMgr from "./GuideMgr";

/**
 * @ Author: XXL
 * @ Date: 2024-01-31 12:10
 * @ Description: 指引的步骤
*/
export default class GuideSteps implements IPool {
    public type: number;
    public mgr: GuideMgr;//管理器

    /**是否暂停指引*/
    private _pause: boolean = false;
    /**指引的id*/
    private _id: number;
    /**步骤*/
    private steps: Base_GuideStep[];
    /**当前指引的步骤*/
    private curStep: Base_GuideStep;
    // /**指引表数据*/
    // private vo: Vo_Guide;

    /**需要检测的ui*/
    private _needUI: { [key: string | number]: boolean };
    /**延迟检测中*/
    private _delay_id: string;

    /**开始指引时间*/
    private start_tm: number;
    /**强指引的界面ui*/
    private _maskUI: string[];
    /**遮罩中，检测关闭其他界面*/
    private _mask_tm: string;
    /**超时没指引，关闭指引*/
    private _tmout_id: string;
    /**超时的时间*/
    private _tmout_num: number;
    /**当前监听的事件列表*/
    private _event: string;
    /**所有事件*/
    private _all_evt: string;

    /**指引是否暂停*/
    public set pause(bo: boolean) {
        if (this._pause == bo) return;
        let _t = this;
        _t._pause = bo;
        if (bo) {//暂停指引
            _t.stopCur(_t);
        }
    }

    public get pause() {
        return this._pause;
    }

    /**
     * 是否有步骤
     */
    public get isStep() {
        return this.steps != null;
    }

    /**
     * 当前是否在指引中
    */
    public get isGuide() {
        return this.curStep != null;
    }

    /**
     * 指引id
     */
    public get id() {
        return this._id;
    }

    /**强制指引的ui*/
    public get maskUI() {
        return this._maskUI;
    }

    /**
     * 创建指引步骤
     * @param id 指引id
     * @param cover 重复是否覆盖
     * @returns 0没有指引 1指引相同 2新指引
     */
    public build(id: number, cover?: boolean) {
        let _t = this;
        if (_t._id == id && !cover) return 1;
        _t.clearSteps(_t);
        _t._id = id;
        let stepId = id * 100 + 1;
        if (!ConfigData.getCfgData(Config_guide_001.Key, stepId)) {
            return 0;
        }
        let c = ConfigData.getGuide_001(stepId);
        let uiMap: { [key: string | number]: boolean } = {};
        !_t.steps && (_t.steps = []);
        let evt: string = "";
        while (ConfigData.getCfgData(Config_guide_001.Key, stepId)) {
            c = ConfigData.getGuide_001(stepId);
            var step = XYFrame.PoolMgr.getCls(Item_GuideStep_UI);
            step.index = stepId % 100;
            step.p = _t;
            step.cfg = c;
            step.st = 0;
            _t.steps.push(step);
            var n = _t.mgr.getVwName(c.uiId);
            if (n) {
                uiMap[n] = true;
            }
            if (c.evt) {
                if (evt != "") {
                    evt += "," + c.evt;
                } else {
                    evt = c.evt;
                }
            }

            stepId += 1;
            // c = ConfigData.getGuide_001(stepId);
        }

        if (_t.steps.length == 0) {
            _t.steps = null;
            uiMap = null;
        } else {
            _t.checkAllEvt(evt);
        }
        if (uiMap) {
            if (!_t._needUI) {
                XYFrame.Msg.on(EnumMsg.GUIDE_UI, _t.uiMsg1, _t);
                XYFrame.Msg.on(EnumMsg.CLOSE_UI, _t.uiMsg, _t);
                XYFrame.Msg.on(EnumMsg.OPEN_UI, _t.uiMsg, _t);
                XYFrame.Msg.on(EnumMsg.OPEN_TWEEN, _t.uiMsg, _t);
            }
        } else {
            if (_t._needUI) {
                XYFrame.Msg.off(EnumMsg.GUIDE_UI, _t.uiMsg1, _t);
                XYFrame.Msg.off(EnumMsg.CLOSE_UI, _t.uiMsg, _t);
                XYFrame.Msg.off(EnumMsg.OPEN_UI, _t.uiMsg, _t);
                XYFrame.Msg.off(EnumMsg.OPEN_TWEEN, _t.uiMsg, _t);
            }
        }
        _t._needUI = uiMap;
        return 2;
    }

    /**
     * 开始指引
     */
    public guide(isBuild?: boolean) {
        let _t = this;
        if (!_t._delay_id) {
            _t._delay_id = XYFrame.Timer.once(11, _t.delayTm, _t);
        }
    }

    /**
     * 检测开始指引
     * @param _t 
     */
    private checkGuide(_t: this) {
        if (_t._delay_id) {
            XYFrame.Timer.clearById(_t._delay_id);
            _t._delay_id = null;
        }
        _t.checkEvent();
        if (_t.pause) {
            let step: Base_GuideStep;
            let isFinish = true;
            for (let i = 0, len = _t.steps.length; i < len; i++) {
                step = _t.steps[i];
                if (step.st < 2 || !step.st) {
                    isFinish = false;
                    break;
                }
            }
            //全部完成，清理
            if (isFinish) {
                _t.mgr.clean(_t.type, true);
            }
        } else if (_t.steps) {
            let step: Base_GuideStep;
            let isFinish = 0;
            let i = 0, len = _t.steps.length;
            for (; i < len; i++) {
                step = _t.steps[i];
                if (step.st < 2 || !step.st) isFinish |= Math.pow(2, step.index);
                var s = step.check(step);
                if (s == 0 || s == 4) {//指引断流
                    step = null;
                    break;
                } else if (s == 1) {//可指引
                    break;
                } else {
                    if (s == 3) //不用指引直接完成
                        step.st = 2;
                    step = null;
                }
            }
            if (step != _t.curStep) {
                if (_t.curStep) {
                    if (_t.curStep.index != i && (!_t.curStep.st || _t.curStep.st < 2)) {
                        _t.curStep.st = 2;
                        isFinish &= ~Math.pow(2, _t.curStep.index);
                    }
                    _t.curStep.exit();
                }
                _t.curStep = step;
                if (step) {
                    _t.start_tm = Laya.timer.currTimer;
                    let bo = step.enter();
                    if (!bo) {
                        step.exit();
                        _t.curStep = null;
                        _t.checkEvent(step.cfg.evt);
                    }
                }
            } else if (step && step.cfg) {
                let bo = step.enter();
                if (!bo) {
                    step.exit();
                    _t.curStep = null;
                    _t.checkEvent(step.cfg.evt);
                }
            }
            //全部完成，清理
            if (s == 4 || !isFinish) {
                _t.mgr.clean(_t.type, true);
            }
        }
    }

    /**
     * 设置强指引关闭，其他界面
     * @param l 
     */
    public setMask(l?: string[]) {
        let _t = this;
        if (l) {
            _t._maskUI = l;

            if (!_t._mask_tm) {
                _t._mask_tm = XYFrame.Timer.loop(2000, _t.checkMaskTm, _t);
            }
            _t.checkMaskTm(0, _t);
        } else {
            _t._maskUI = null;
            if (_t._mask_tm) {
                XYFrame.Timer.clearById(_t._mask_tm);
                _t._mask_tm = null;
            }
        }
    }

    /**
     * 定时检测关闭其他界面，防止遮罩卡死
     * @param _t 
     * @param now 
     */
    private checkMaskTm(tm: number, _t: this) {
        if (!_t.pause && _t._maskUI && (!_t._delay_id)) {

            XYFrame.UIMgr.closeBlack(_t._maskUI);
        }
    }

    /**
     * 停止当前步骤
     * @param _t 
     */
    private stopCur(_t: this) {
        if (_t.curStep) {
            if (_t.curStep.st != 2)
                _t.curStep.st = 0;
            _t.curStep.exit();
            _t.curStep = null;
        }
        _t.checkEvent();
    }

    /**
     * 监听总事件
     * @param str 
     */
    private checkAllEvt(str?: string) {
        let _t = this;
        if (_t._all_evt == str || (!_t._all_evt && !str)) return;
        if (_t._all_evt) {
            let list = _t._all_evt.split(",");
            for (let i = 0, len = list.length; i < len; i++) {
                if (list[i])
                    XYFrame.Msg.off(list[i], _t.onEventCall, _t);
            }
            list = null;
        }
        _t._all_evt = str;
        if (str) {
            let list = str.split(",");
            for (let i = 0, len = list.length; i < len; i++) {
                if (list[i]) {
                    XYFrame.Msg.on(list[i], _t.onEventCall, _t);
                }
            }
        }
    }
    /**
     * 监听当前不可指引步骤的事件
     * @param str 
     * @returns 
     */
    private checkEvent(str?: string) {
        let _t = this;
        if (_t._event == str || (!_t._event && !str)) return;
        if (_t._event) {
            let list = _t._event.split(",");
            for (let i = 0, len = list.length; i < len; i++) {
                if (list[i])
                    XYFrame.Msg.off(list[i], _t.onEventCall, _t);
            }
            list = null;
        }
        _t._event = str;
        if (str) {
            let list = str.split(",");
            for (let i = 0, len = list.length; i < len; i++) {
                if (list[i]) {
                    XYFrame.Msg.on(list[i], _t.onEventCall, _t);
                }
            }
        }
    }

    /**
     * 事件监听
     * @param _t 
     */
    private onEventCall(_t: this) {
        _t.guide();
    }

    /**
     * 清理步骤
     * @param _t 
     */
    private clearSteps(_t: this) {
        if (_t.curStep) {
            _t.curStep.exit();
            _t.curStep = null;
        }
        if (_t.steps) {
            for (let step of _t.steps) {
                XYFrame.PoolMgr.releaseCls(step);
            }
            _t.steps.length = 0;
            _t._id = null;
        }
        if (_t._delay_id) {
            XYFrame.Timer.clearById(_t._delay_id);
            _t._delay_id = null;
        }
        _t.start_tm = null;
        if (_t._tmout_id) {
            XYFrame.Timer.clearById(_t._tmout_id);
            _t._tmout_id = null;
        }
        _t.setMask();
        _t.checkEvent();
        _t.checkAllEvt();
    }

    /**
     * 指引超时
     * @param _t 
     */
    private checkTmOut(_t: this) {
        if (_t.pause) return;//暂停中
        if (_t.curStep) {
            _t._tmout_num = 0;
        } else {
            _t._tmout_num++;
            if (_t._tmout_num >= 2) {//超过两次
                _t.mgr.clean(_t.type, true);
            }
        }
    }


    private uiMsg1(_t: this, ui: new () => UIBase | UIBase) {
        let name: string;
        name = ClassUtils.getName(ui);
        _t.uiMsg(_t, name);
    }

    /**
     * ui关闭和打开
     * @param _t 
     * @param name 
     */
    private uiMsg(_t: this, name: string) {
        if (_t.pause || _t._delay_id || !_t._needUI) return;
        if (name && _t._needUI[name]) {
            _t.guide();
        }
    }

    /**
     * 延迟检测指引
     * @param _t 
     */
    private delayTm(tm: number, _t: this) {
        _t._delay_id = null;
        _t.checkGuide(_t);
    }

    recover?() {
        this.dispose();
    }
    destroy() {
        this.clear();
    }

    /**
     * 清理指引
     */
    public clear() {
        let _t = this;
        _t.clearSteps(_t);
        _t._pause = false;
        _t.steps = null;
        if (_t._needUI) {
            XYFrame.Msg.off(EnumMsg.GUIDE_UI, _t.uiMsg1, _t);
            XYFrame.Msg.off(EnumMsg.CLOSE_UI, _t.uiMsg, _t);
            XYFrame.Msg.off(EnumMsg.OPEN_UI, _t.uiMsg, _t);
            XYFrame.Msg.off(EnumMsg.OPEN_TWEEN, _t.uiMsg, _t);
            _t._needUI = null;
        }
    }

    /**
     * 回收
     */
    public dispose() {
        XYFrame.PoolMgr.releaseCls(this);
        this.mgr = null;
    }

}

/**
 * 指引步骤基类
 */
class Base_GuideStep implements IPool {

    public p: GuideSteps;
    /**步骤下标*/
    public index: number;
    /**0未指引 1指引中 2已指引*/
    public st: number;
    public cfg: Struct_guide_001;
    /**是否遮罩中*/
    public isMask: boolean;
    public cache: any;

    /**
     * 检测是否指引
     * @returns 0不能指引 1指引 2跳过到下步
     */
    public check(_t: this) {
        return 0;
    }

    /**
     * 进入指引
     */
    public enter() {
        return true;
    }

    /**
     * 退出指引
     */
    public exit() {
        if (this.cache) {
            delete this.cache;
        }
    }


    /**清理数据*/
    public clear() {
        let _t = this;
        if (_t.st == 1) {//正在指引中就退出
            _t.exit();
        }
        _t.index = _t.st = _t.p = null;
        if (_t.cache) {
            delete _t.cache;
        }
    }

    public dispose() {
        XYFrame.PoolMgr.releaseCls(this);
    }

    recover() {
        XYFrame.PoolMgr.releaseCls(this);
    }
    destroy() {
        this.clear();
    }
}

/**
 * ui的指引步骤
 */
class Item_GuideStep_UI extends Base_GuideStep {
    public cfg: Struct_guide_001;

    /**自动匹配窗口尺寸*/
    private isSize: boolean;
    private isHand: boolean;

    private clickComp: Laya.Sprite;
    private clickType: string;

    /**遮罩区域*/
    private maskRng: { x: number, y: number, w: number, h: number };

    /**事件*/
    private evt: string[];
    /**完成事件*/
    private finishEvt: string[];

    /**打开不指引的ui*/
    private oui: string[];

    private delay_id: string;

    public clear(): void {
        super.clear();
        this.cfg = this.isMask = this.oui = null;
    }

    public check(_t: this): number {
        let cfg = _t.cfg;
        if (_t.st > 2) return _t.st;
        else if (_t.st > 1) return 2;
        if (cfg.uiId) {
            if (!_t.p.mgr.checkOpenById(cfg.uiId)) {//界面是否打开中
                return 0;
            }
        }

        //检测函数
        if (cfg.checkFun) {
            if (typeof _t.p.mgr[cfg.checkFun] == "function") {
                return _t.p.mgr[cfg.checkFun](cfg, _t);
            }
            return 2
        }
        return 1;
    }

    public enter() {
        let _t = this;
        _t.st = 1;
        _t.clearEvn(_t);
        _t.maskRng = null;
        let issize = false;
        let cfg = _t.cfg;
        let isGuide = false;
        if (cfg.enf) {
            _t.p.mgr[cfg.enf] && _t.p.mgr[cfg.enf](_t.cfg);
        }
        var l = _t.maskRng = _t.p.mgr.getMask(cfg, _t);
        if (l) {
            isGuide = true;
            _t.isHand = true;
            let target = _t.p.mgr.getClickComp(cfg, _t);
            _t.p.mgr.getTargetOriginParent(target, true);
            XYFrame.UIMgr.open(Vw_GuideLayer, { rect: l, handDir: cfg.handDir || 1, des: cfg.des, target: target });
            issize = true;
            _t.isMask = true;
            _t.p.mgr.is_mask |= Math.pow(2, _t.p.type);

            let list: string[] = [];
            if (cfg.uiId) {
                var s = _t.p.mgr.getVwName(cfg.uiId);
                list.push(s);
            }
            // if (cfg.aid) {
            //     s = _t.p.mgr.getVwName(cfg.aid);
            //     list.push(s);
            // }
            // if (cfg.cui) {
            //     let l = cfg.cui.split(",");
            //     for (let i = 0, len = l.length; i < len; i++) {
            //         s = _t.p.mgr.getVwName(l[i]);
            //         if (s) {
            //             list.push(s);
            //         }
            //     }
            // }
            // if (cfg.oui) {
            //     let l = cfg.oui.split(",");
            //     for (let i = 0, len = l.length; i < len; i++) {
            //         s = _t.p.mgr.getVwName(l[i]);
            //         if (s) {
            //             list.push(s);
            //         }
            //     }
            // }
            // Frame.UIMgr.closeBlack(list);
            _t.p.setMask(list);
        }
        // if (cfg.sp) {//匹配尺寸
        issize = true;
        // }
        // let container = Frame.LayerMgr.getUILayer(EnumUiLayer.TIP);
        // if (l) {//没有容器不指引
        //     GuideHand.ins.onGuide(container, { handDir: cfg.handDir || 1, maskRect: l });
        //     _t.isHand = true;
        //     isGuide = true;
        // } else {
        //     _t.isHand = false;
        // }
        //匹配尺寸
        if (!_t.isSize != !issize) {
            if (_t.isSize) {
                XYFrame.Msg.off(EnumMsg.RESIZE, _t.onResize, _t);
            } else {
                XYFrame.Msg.on(EnumMsg.RESIZE, _t.onResize, _t);
            }
            _t.isSize = issize;
        }
        //点击
        _t.clickComp = _t.p.mgr.getClickComp(cfg, _t);
        if (_t.clickComp) {//有点击
            _t.clickType = Laya.Event.CLICK;
            let disp = _t.clickComp;
            disp && disp.on(_t.clickType, _t, _t.onClickComp);
        }
        //额外监听
        if (cfg.evt) {
            _t.evt = cfg.evt.split(",");
            for (let i = 0, len = _t.evt.length; i < len; i++) {
                XYFrame.Msg.on(_t.evt[i], _t.evtMsg, _t);
            }
        }
        //额外监听完成的事件
        if (cfg.fevt) {
            _t.finishEvt = cfg.fevt.split(",");
            for (let i = 0, len = _t.finishEvt.length; i < len; i++) {
                XYFrame.Msg.on(_t.finishEvt[i], _t.finishMsg, _t);
            }
        }
        return isGuide;
    }

    public exit(): void {
        super.exit();
        let _t = this;
        _t.maskRng = null;
        if (_t.isMask) {
            _t.p.mgr.is_mask &= ~Math.pow(2, _t.p.type);
            _t.isMask = false;
            let target = _t.p.mgr.getClickComp(_t.cfg, _t);
            _t.p.mgr.resetTargetOriginParent(target);
            XYFrame.UIMgr.close(Vw_GuideLayer);
            _t.p.setMask();
        }
        if (_t.isSize) {
            _t.isSize = false;
            XYFrame.Msg.off(EnumMsg.RESIZE, _t.onResize, _t);
        }
        if (_t.isHand) {
            _t.isHand = false;
            GuideHand.ins.onClose();
        }
        //退出指引调用
        if (_t.cfg.exf) {
            _t.p.mgr[_t.cfg.exf] && _t.p.mgr[_t.cfg.exf](_t.cfg);
        }
        _t.clearEvn(_t);
    }

    /**
     * 清理监听的事件
     * @param _t 
     */
    private clearEvn(_t: this) {
        if (_t.delay_id) {
            XYFrame.Timer.clearById(_t.delay_id);
            _t.delay_id = null;
        }
        if (_t.clickComp) {
            let disp = _t.clickComp;
            disp && disp.off(_t.clickType, _t, _t.onClickComp);
            _t.clickComp = _t.clickType = null;
        }
        if (_t.evt) {
            for (let i = 0, len = _t.evt.length; i < len; i++) {
                XYFrame.Msg.off(_t.evt[i], _t.evtMsg, _t);
            }
            _t.evt = null;
        }
        if (_t.finishEvt) {
            for (let i = 0, len = _t.finishEvt.length; i < len; i++) {
                XYFrame.Msg.off(_t.finishEvt[i], _t.finishMsg, _t);
            }
            _t.finishEvt = null;
        }
    }

    /**
     * 点击处理
     * @param e 
     */
    private onClickComp(e: Laya.Event) {
        let _t = this;
        let s = 0;
        if (_t.p.mgr[_t.cfg.clickFun]) {
            s = _t.p.mgr[_t.cfg.clickFun](_t.cfg, e);
            if (s != null) {
                _t.st = s;
            }
        }
        if (!_t.st || _t.st < 2 || s > 1) {
            _t.st = s > 1 ? s : 2;
            _t.p.guide();
        }
    }

    private onDelay(_t: this) {
        if (_t.st == 1) {
            if (!_t.delay_id) {
                _t.delay_id = XYFrame.Timer.once(33, _t.delayCall, _t);
            }
        }
    }

    private delayCall(tm: number, _t: this) {
        _t.delay_id = null;
        if (_t.st == 1) {
            _t.enter();
        }
    }

    /**
     * 事件更新
     * @param _t 
     */
    private evtMsg(_t: this) {
        _t.onDelay(_t);
    }

    /**
     * 完成事件
     * @param _t 
     */
    private finishMsg(_t: this) {
        if (_t.st != 2) {
            _t.st = 2;
            _t.p.guide();
        }
    }

    /**
     * 尺寸更新
     * @param _t 
     */
    private onResize(_t: this) {
        if (_t.cache) {
            delete _t.cache;
        }
        _t.onDelay(_t);
    }
}
