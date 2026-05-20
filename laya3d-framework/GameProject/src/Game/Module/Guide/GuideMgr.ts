import Singleton from "../../../XYFrame/Base/Singleton";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import ClassUtils from "../../../XYFrame/Utils/ClassUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import EnumUI from "../../EnumUI";
import Game from "../../Game";
import Vw_Arena from "../Arena/Vw_Arena";
import Vw_Gm from "../Gm/Vw_Gm";
import { EnumStep } from "../Main/EnumStep";
import Vw_Main from "../Main/Vw_Main";
import Vw_WarOrder from "../WarOrder/Vw_WarOrder";
import GuideSteps from "./GuideSteps";

/**指引对象原始位置 */
export interface GuideTargetOriginParent {
    parent: Laya.Sprite;
    pos: { x: number, y: number };
    index: number;
}

export default class GuideMgr extends Singleton {
    /**系统开启的指引*/
    public readonly T_BRANCH = 4;
    /**一些特殊的指引*/
    public readonly T_SPECAIL = 5;

    /**是否全屏覆盖中*/
    private _is_mask: number = 0;

    private _delay_tm: boolean;

    /**是否全屏覆盖中*/
    public set is_mask(v: number) {
        let bo = !v && this._is_mask > 0 || (v > 0 && !this._is_mask);
        this._is_mask = v;
        if (bo && !this._delay_tm) {
            this._delay_tm = true;
            XYFrame.Timer.once(500, this.delayMask, this);
        }

    }

    public get is_mask() {
        return this._is_mask;
    }

    private delayMask(tm: number, _t: this) {
        _t._delay_tm = false;
        XYFrame.Msg.emit(EnumMsg.GUIDE_MASK);
    }

    private steps: { [key: number]: GuideSteps } = {};

    /**保存暂停的字段*/
    private _plist: (string | number)[] = [];
    /**是否暂停指引中*/
    private _pause: boolean = false;
    /**暂停指引*/
    public get pause() {
        return this._pause;
    }

    /**
     * 设置是否暂停指引
     * @param flag 暂停标识
     * @param bo true暂停 false移除
     */
    public setPause(flag: string | number, bo: boolean) {
        let list = this._plist;
        let index = list.indexOf(flag);
        if (bo) {
            if (index == -1) {
                list.push(flag);
                this._pause = true;
                if (list.length == 1) {
                    this.guide();
                }
            }
        } else if (index >= 0) {
            list.splice(index, 1);
            if (list.length == 0) {
                this._pause = false;
                this.guide(true);
            }
        }
    }

    private _uiId: Dictionary<number>;
    private _uiName: Dictionary<string>;
    private _uiCls: Dictionary<Class<UIBase>>;

    protected onInit(): void {
        if (this._uiId) return;
        let _t = this;
        _t._uiId = {};
        _t._uiName = {};
        let map: any = _t._uiCls = {
            21: Vw_Main,//主界面
            22: Vw_WarOrder,//战令界面
            23: Vw_Arena,//竞技场
        }

        for (let k in map) {
            var name = ClassUtils.getName(map[k]);
            _t._uiId[name] = +k;
            _t._uiName[k] = name;
        }

        XYFrame.Msg.on(EnumMsg.SYS_OPEN, _t.onSysOpen, _t);
    }

    private onSysOpen(t: this, sysIds: number[]) {
        for (let sysId of sysIds) {
            sysId = +sysId;
            if (sysId == EnumUI.WAR_ORDER) {
                // t.buildBranch(1);
                // Game.StepMgr.addStep(EnumStep.warOrder, function () {
                //     Game.GuideMgr.buildBranch(1)
                // }, null, t)
                if (DEBUG) {
                    XYFrame.UIMgr.close(Vw_Gm);
                }
                Game.Model.openCall(function () {
                    Game.GuideMgr.buildBranch(1)
                }, t);
            } else if (sysId == EnumUI.ARENA) {
                // t.buildBranch(2);
                t.addArenaGuide()
            }
        }
    }

    private addArenaGuide() {
        // Game.StepMgr.addStep(EnumStep.arena, function () {
        //     Game.GuideMgr.buildBranch(2)
        // }, null, this)
        if (DEBUG) {
            XYFrame.UIMgr.close(Vw_Gm);
        }
        Game.Model.openCall(function () {
            Game.GuideMgr.buildBranch(2)
        }, this);
    }

    /**
     * 获取界面
     * @param id 
     */
    public getVw(id: number) {
        // if (id < 20) {//层级
        //     if (id == -1) return Laya.stage;
        //     return Frame.LayerMgr.getUILayer(id);
        // }
        let cls = this._uiCls[id];
        if (!cls) return null;
        return XYFrame.UIMgr.get(cls);
    }

    /**
     * 获取对应界面的类名
     * @param id 
     * @returns 
     */
    public getVwName(id: number | string) {
        return this._uiName[id];
    }

    /**
     * 检测是否打开界面中
     * @param name 
     */
    public checkOpen(cls: Class<UIBase>) {
        return XYFrame.UIMgr.isOpen(cls);
    }

    /**
     * 根据编号检查界面是否打开中
     * @param id 
     * @returns 
     */
    public checkOpenById(id: number) {
        if (id < 20) return true;
        if (!this._uiCls || !this._uiCls[id]) return false;
        return this.checkOpen(this._uiCls[id]);
    }

    /**
     * 根据类型获取步骤
     * @param type 
     */
    private getSteps(type: number) {
        let steps = this.steps[type];
        if (!steps) {
            steps = this.steps[type] = new GuideSteps();
            steps.type = type;
            steps.mgr = this;
            steps.pause = this._pause;
        }
        return steps;
    }

    /**
     * 是否正在指引中
     */
    public isGuide(type: number) {
        let steps = this.steps[type];
        return steps != null && steps.isGuide;
    }

    /**
     * 是否对应id引导
     * @param type 
     * @param id 
     * @returns 
     */
    public isGuideById(type: number, id: number) {
        let steps = this.steps[type];
        return steps != null && steps.isStep && steps.id == id;
    }

    /**
     * 创建指引
     * @param type 指引的类型
     * @param id 指引的id
     * @param cover 是否覆盖
     * @returns 0没有指引 1指引相同 2新指引
     */
    public build(type: number, id: number, cover = true, isBuild = true) {
        let steps = this.getSteps(type);
        let flag = steps.build(id, cover);
        if (flag == 2) {
            this.guide(isBuild);
        }
        return flag;
    }

    /**
     * 开始指引
     */
    private guide(isBuild?: boolean) {
        let steps: GuideSteps, last: GuideSteps;
        for (let k in this.steps) {
            steps = this.steps[k];
            if (steps && steps.isStep) {
                if (last) last.pause = true;
                last = steps;
            }
        }
        if (last) {
            if (this._pause) {
                last.pause = true;
            } else {
                last.pause = false;
                last.guide(isBuild);
            }
        }
    }


    /**
     * 创建特殊的指引
     * @param id 
     * @param cover 
     */
    public buildSp(id: number) {
        let flag = this.build(this.T_SPECAIL, id, false);
        if (!flag) {
            this.clean(this.T_SPECAIL);
        }
        return flag > 0;
    }

    /**
     * 创建系统开启的指引
     * @param id 
     */
    public buildBranch(id: number) {
        // Frame.UIMgr.closeByType(0);
        let flag = this.build(this.T_BRANCH, id);
        if (!flag) {
            this.clean(this.T_BRANCH);
        }
        return flag > 0;
    }

    /**
     * 清理指引
     * @param type 对应的类型，null或0清理所有，默认所有
     * @param isChild 是否子步骤调用
     */
    public clean(type?: number, isChild?: boolean) {
        let _t = this;
        let steps = _t.steps;
        if (type) {
            let step = steps[type];
            if (step) {
                step.dispose();
                delete steps[type];
                XYFrame.Msg.emit(EnumMsg.GUIDE_END, type);
                _t.guide();
            }
        } else {
            for (let k in steps) {
                steps[k].dispose();
                delete steps[k];
            }
        }
    }

    public getTargetOriginParent(target: Laya.Sprite, isCreate?: boolean) {
        if (!target || target.destroyed) return null;
        let originParent: GuideTargetOriginParent = target["_$originParent"];
        if (!originParent && target.parent && isCreate) {
            originParent = XYFrame.PoolMgr.getObj();
            let pos: { x: number, y: number } = XYFrame.PoolMgr.getObj();
            pos.x = target.x;
            pos.y = target.y;
            originParent.pos = pos;
            originParent.parent = target.parent;
            originParent.index = target.parent.getChildIndex(target);
            target["_$originParent"] = originParent;
        }
        return originParent;
    }

    /**
     * 重置指引对象的parent
     * @param target 
     */
    public resetTargetOriginParent(target: Laya.Sprite) {
        let originParent = this.getTargetOriginParent(target);
        delete target["_$originParent"];
        if (originParent) {
            let pos = originParent.pos;
            delete originParent.pos;
            target.pos(pos.x, pos.y);
            if (!originParent.parent.destroyed) {
                originParent.parent.addChildAt(target, originParent.index);
            }
            XYFrame.PoolMgr.releaseObj(pos);
            XYFrame.PoolMgr.releaseObj(originParent);
        }
    }


    public getClickComp(cfg: Struct_guide_001, step: any) {
        let ui = this.getVw(cfg.uiId);
        if (ui) {
            let target: Laya.Sprite = ui.guideObjMap[cfg.target];
            if (!target && cfg.getVwGuideTarget && typeof ui[cfg.getVwGuideTarget] == "function") {
                target = ui[cfg.getVwGuideTarget](cfg);
            }
            return target;
        }
        return null;
    }

    public getMask(cfg: Struct_guide_001, step: any) {
        let ui = this.getVw(cfg.uiId);
        if (ui) {
            // if (Frame.UIMgr.isTween(<any>ui)) {
            //     return null;
            // }
            let target: Laya.Sprite = this.getClickComp(cfg, step);
            if (!target) return null;

            let p = Laya.Point.create().setTo(0, 0);
            p = target.localToGlobal(p);
            let l: { x: number, y: number, w: number, h: number } = { x: p.x, y: p.y, w: target.width, h: target.height };
            p.recover();
            return l;
        }
        return null;
    }


    //------------------------------------------------- 指引步骤结束回调-------------------------------------------------

    //------------------------------------------------- 指引自定义点击-------------------------------------------------
    private clickWarOrderStep1(cfg: Struct_guide_001) {
        this.setPause("Vw_WarOrder", true);
    }

    private clickWarOrderStep3(cfg: Struct_guide_001) {
        this.setPause("Vw_WarOrderGuideTip", true);
    }

    private clickArenaDetail(cfg: Struct_guide_001) {
        // Frame.UIMgr.openByObj(Vw_Arena_Guilde)
        Game.Model.arena.isGuide = true
    }
}