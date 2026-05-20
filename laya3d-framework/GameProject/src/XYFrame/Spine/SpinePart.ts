import { PoolManager } from "../Pool/PoolManager";
import ResPath from "../Resource/ResPath";
import SpineManager from "./SpineManager";
import SpineRender from "./SpineRender";

/**
 * @ Author: XXL
 * @ Date: 2025-06-09 20:59
 * @ Description: spine动画的部件
*/
export default class SpinePart extends Laya.GWidget implements IDepSprite {
    public depVal: number;
    public type: number;
    private _res: string;
    private _$url: string;
    private _templet: Laya.SpineTemplet;
    private _spine: SpineRender;
    private _act: string;
    private _loop: boolean;
    private _comp_call: (thisObj: any, part: SpinePart) => any;
    private _comp_t: any;

    public constructor() {
        super();
    }

    public getTemplet(): Laya.SpineTemplet {
        return this._templet;
    }

    /**
     * 设置加载完回调
     * @param call 回调
     * @param _t 回调参数
     * @returns 部件
     */
    public setCompCall<T>(call: (thisObj: T, part: SpinePart) => any, _t: T) {
        this._comp_call = call;
        this._comp_t = _t;
        return this;
    }

    /**
     * 设置数据
     * @param res 资源名
     * @param act 动作名
     * @param loop 是否循环
     */
    public setData(res: string, act: string, loop: boolean = true) {
        let _t = this;
        if (_t._res == res && _t._act == act && _t._loop == loop) {
            return;
        }
        if (_t._res == res) {
            _t.setAct(act, loop);
        } else {
            _t._act = act;
            _t._loop = loop;
            _t.setRes(res);
        }
    }

    /**
     * 设置资源
     * @param res 资源名
     * @returns 是否成功
     */
    public setRes(res: string) {
        let _t = this;
        if (_t._res == res) return false;
        if (_t._$url) {
            SpineManager.getInst<SpineManager>().free(_t._$url, _t.checkComplete, _t);
            _t._$url = null;
        }
        _t._res = res;
        if (res) {
            res = ResPath.getSpinePath(res) + ResPath.EXT_SKEL;
            _t._$url = res;
            // Frame.SpineMgr.load(res, _t.checkComplete, _t);
            SpineManager.getInst<SpineManager>().load(res, _t.checkComplete, _t);
        }
        return true;
    }


    /**
     * 设置动画
     * @param act 动作名
     * @param loop 是否循环
     */
    public setAct(act: string, loop: boolean = true) {
        let _t = this;
        if (_t._spine && this._templet) {
            _t._spine.play(act, loop);
        }
        _t._act = act;
        _t._loop = loop;
    }

    public set ratio(v: number) {
        if (this._spine && this._templet) {
            this._spine.ratio = v;
        }
    }

    /**
     * 获取动画
     * @returns 动画名
     */
    public getAct(): string {
        return this._act;
    }

    private checkComplete(templat: Laya.SpineTemplet, url: string, _t: this) {
        _t.depVal = _t.type;
        _t._templet = templat;
        if (templat) {
            let sp = _t._spine;
            if (!sp) {
                sp = _t._spine = _t.addComponent(SpineRender);
                sp.isOrg = false;
            }
            sp.templet = templat;
            sp.autoAdjust = true;
            if (_t._act) {
                sp.play(_t._act, _t._loop);
                if (sp.animationName) {
                    sp.useFastRender = false;
                }
            }
            if (_t._comp_call) {
                _t._comp_call(_t._comp_t, _t);
            }
        }
    }

    /**
     * 清理
     */
    public clear() {
        let _t = this;
        _t.removeSelf();
        let url = _t._$url;
        _t._res = null;
        _t._$url = null;
        _t._act = null;
        _t.type = null;
        _t._comp_call = null;
        _t._comp_t = null;
        _t._loop = true;
        _t._spine && (_t._spine.templet = null);
        _t._templet = null;
        _t.offAll(Laya.Event.LABEL);
        if (url) {
            SpineManager.getInst<SpineManager>().free(url, _t.checkComplete, _t);
        }
    }


    public recover() {
        PoolManager.getInst<PoolManager>().releaseCls(this);
    }

    destroy(): void {
        this.clear();
        super.destroy();
    }

    /**
     * 创建
     * @returns 部件
     */
    public static create() {
        return PoolManager.getInst<PoolManager>().getCls(SpinePart);
    }

}