import MovieClip from "../MovieClip/MovieClip";
import SpinePart from "../Spine/SpinePart";

export default class ItemEffectBase extends Laya.GWidget implements IPool {
    protected _eid: number;
    /**是否循环播放*/
    protected _loop: boolean;
    /**播放时长*/
    protected _remain: number;
    /**循环一次时间*/
    protected _cyTm: number;
    /**已播放时长*/
    protected _tm: number;

    /**特效完成回调函数*/
    protected _call: Function;
    /**回调主体this*/
    protected _callThis: any;
    /**回调函数参数*/
    protected _callArg: any;

    protected _ani: MovieClip | SpinePart;

    protected _actList: { time: number, actName: string, loopTime: number, loop: boolean }[];
    protected _stepAct: { time: number, actName: string, loopTime: number, loop: boolean } = {
        time: 0,
        actName: "",
        loopTime: 0,
        loop: false
    };

    /**
     * 
     * @param _t 特效this
     * @param url 特效资源路径
     * @param parent 添加parent
     * @param x 水平坐标x轴
     * @param y 垂直坐标y轴
     * @param cyTm 循环时间
     * @param remain 特效时长
     * @param loop 是否循环播放
     * @param actName 动作名称
     * @param scaleX 水平缩放
     * @param scaleY 垂直缩放
     * @param childIndex 添加到parent的索引
     */
    public init(_t: ItemEffectBase, url: string, parent: Laya.GWidget, x: number, y: number, cyTm: number, remain: number, loop: boolean, actName: string, scaleX: number, scaleY: number, childIndex: number) {
    }

    /**
     * 帧频
     * @param _t this
     * @param dt 帧频间隔
     * @returns 返回true已运行完，false未运行完成
     */
    public tick(_t: ItemEffectBase, dt: number) {
        _t._tm += dt;
        let bo = _t._remain > 0 && _t._tm >= _t._remain;
        let p = bo ? _t._remain : _t._tm;
        p = p / _t._cyTm;
        if (p >= 1) {
            if (_t._loop) p -= Math.floor(p);
            else p = 0.999;
        }
        _t._ani.ratio = p;
        if (bo) {
            if (_t._actList && _t._actList.length > 0) {
                let act = _t._actList.shift();
                _t._remain = act.time;
                _t._loop = act.loop;
                _t._cyTm = act.loopTime;
                _t._tm = 0;
                _t.setAct(act.actName);
                bo = false;
            } else {
                _t._call && _t._call(_t._callThis, _t._callArg);//完成回调
            }
        }
        return bo;
    }

    /**
     * 添加特效完成回调
     * @param callBack 回调函数
     * @param thisObj 回调主体this
     * @param arg 回调函数参数
     */
    public addComplete<T, K>(callBack: (thisObj?: T, arg?: K) => any, thisObj?: T, arg?: K) {
        let _t = this;
        _t._call = callBack;
        _t._callThis = thisObj;
        _t._callArg = arg;
    }

    /**动画组件*/
    public get ani() {
        return this._ani;
    }

    /**特效id*/
    public get eid() {
        return this._eid;
    }

    /**
     * 更新特效时间
     * @param cyTm 循环时间（毫秒）;
     * @param remain 特效时长（毫秒）;<=0为一直显示,>0显示时间;默认:0
     * @param loop 是否循环播放，默认true
     */
    public setTm(cyTm: number, remain: number = 0, loop: boolean = true) {
        this._cyTm = cyTm;
        this._loop = loop;
        this._remain = remain;
        this._tm = 0;
        if (this._ani) {
            this.tick(this, 0);
        }
    }

    /**
     * 设置资源
     * @param url 资源路径
     */
    public setRes(url: string) {
        let ani = this.ani;
        ani && ani.setRes(url);
    }

    /**
     * 设置动作
     * @param actName 动作名称
     */
    public setAct(actName: string) {
        this._tm = 0;
        let ani = this.ani;
        ani && ani.setAct(actName);
    }

    /**
     * 添加步骤
     * @param time 
     * @param actName 
     * @param loopTime 
     * @param loop 
     */
    public addStep(time: number, actName: string, loopTime: number = 1000, loop: boolean = true) {
        let _t = this;
        if (!_t._actList) {
            _t._actList = [];
        }
        _t._actList.push({ time, actName, loopTime, loop });
        return _t;
    }

    /**
     * 清除步骤列表
     */
    public clearStep() {
        this._actList = null;
    }

    /**
     * 检测是否移除特效
     */
    public checkStage() {
        if (DEBUG) {
            let p: any = this;
            let pp = "";
            while (true) {
                if (!p) {
                    console.error("ui特效未移除", pp);
                    break;
                } else if (p == Laya.stage) {
                    break;
                }
                pp += p.constructor.name + "-->";
                p = p.parent || (p.displayObject && p.displayObject.parent);
            }
        }
    }

    public clear() {
        let _t = this;
        _t.removeSelf();
        let ani = _t._ani;
        if (ani) {
            ani.recover();
            _t._ani = null;
        }
        _t.rotation = 0;
        _t.visible = true;
        _t._actList = null;
        delete _t._loop;
        delete _t._remain;
        delete _t._cyTm;
        delete _t._tm;
        delete _t._call;
        delete _t._callArg;
        delete _t._callThis;
    }

    destroy(): void {
        this.clear();
        super.destroy();
    }
}