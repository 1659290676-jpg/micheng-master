import ItemSpineEffect from "../../Effect/ItemSpineEffect";
import Logger from "../../Logger/Logger";
import { Ease } from "../../Tween/Ease";
import { EaseFunction, TweenTask } from "../../Tween/Tween";
import ArrayUtils from "../../Utils/ArrayUtils";
import { XYFrame } from "../../XYFrame";
import { UILayout } from "../UILayout";

const { regClass } = Laya;

/**
 * @ Author: XXL
 * @ Date: 2026-02-02 17:41
 * @ Description: ui基类
*/
@regClass()
export class UIBase {
    /** 预设体路径 */
    public static prefab: string;
    /** 使用到图集名称列表 */
    public static altas: string[];
    /** 预加载资源列表，在resources目录下的文件 */
    public static preloads: string[];

    /** ui根节点 */
    protected _owner: Laya.Sprite;

    private _isOpen: boolean = false;

    private _layout: UILayout;

    public guideObjMap: { [type: string]: Laya.Sprite };

    /** ui跟节点 */
    public get owner() {
        return this._owner;
    }

    /** 布局组件 */
    public get layout(): UILayout {
        return this._layout;
    }

    /**
     * 初始化主件，不要重装处理，需要处理重装inited接口
     * @param owner 
     */
    public onInit(owner: Laya.Sprite) {
        let _t = this;
        _t._owner = owner;
        _t._layout = _t._owner.getComponent(UILayout);
        _t.inited(_t);
    }

    /**
     * 界面初始化结束调用
     */
    protected inited(_t: this) {
    }

    /**注册需要引导的组件 */
    protected regGuide() { }

    /**
     * 当前UI是否打开中
     */
    public get isOpen() {
        return this._isOpen;
    }

    /** 打开界面 */
    public onOpen(...args: any[]) {
        if (!this._isOpen) {
            this._isOpen = true;
            this.initListener();
            this.regGuide();
        }
    }

    /** 关闭界面 */
    public onClose() {
        let _t = this;
        _t._isOpen = false;
        _t.__releaseMsg();
        _t.__releaseEvent();
        _t.__releaseTimer();
        _t.__releaseEffect();
        _t.__relaseGuideObjs();
        _t.__releaseTweens();
    }

    /**
     * 初始化监听
     */
    protected initListener() {
    }

    public destroy(): void {
        let _t = this;
        _t._isOpen = false;
        _t.__releaseMsg();
        _t.__releaseEvent();
        _t.__releaseTimer();
        _t.__releaseEffect();
        _t.__relaseGuideObjs();
        _t.__releaseTweens();
        if (_t._owner) {
            _t._owner.destroy();
            _t._owner = null;
        }
    }

    /**
     * 重置布局
     */
    public onResize() {
        this._layout && this._layout.onResize();
    }

    /**
     * 打开页面动画结束回调，需要重装处理
     */
    public onOpenTweenEndCall?():any;

    /**
     * 关闭当前界面
     */
    protected closeSelf(e?: any) {
        XYFrame.UIMgr.close(this);
    }

    private __relaseGuideObjs() {
        if (this.guideObjMap) {
            for (let key in this.guideObjMap) {
                delete this.guideObjMap[key];
            }
        }
    }

    //todo-----------------------------------------节点操作 start------------------------------------------------//
    //#region 节点操作
    /**
     * 添加子节点
     * @param child 
     */
    public addChild(child: Laya.Node) {
        this._owner && this._owner.addChild(child);
        return child;
    }

    /**
     * 在指定的索引位置插入子节点。
     * @param child 节点对象。
     * @param index 索引位置。
     * @returns 
     */
    public addChildAt(child: Laya.Node, index: number) {
        this._owner && this._owner.addChildAt(child, index);
        return child;
    }

    /**
     * 删除子节点。
     * @param child 节点对象。
     * @param destroy 是否销毁子节点,若值为true,则销毁子节点,否则不销毁子节点。
     * @returns 
     */
    public removeChild(child: Laya.Node, destroy?: boolean) {
        this._owner && this._owner.removeChild(child, destroy);
        return child;
    }

    /**
     * 根据子节点索引位置,删除对应的子节点对象。
     * @param index 
     * @returns 
     */
    public removeChildAt(index: number, destroy?: boolean) {
        return this._owner && this._owner.removeChildAt(index, destroy);
    }

    /**
     * 删除指定名称的子节点对象。
     * @param name 
     * @param destroy 
     * @returns 
     */
    public removeChildByName(name: string, destroy?: boolean) {
        return this._owner && this._owner.removeChildByName(name, destroy);
    }

    /**
     * 获取子节点。
     * @param name 子节点名称。
     * @returns 
     */
    public getChildByName(name: string) {
        return this._owner && this._owner.getChildByName(name);
    }

    /**
     * 获取子节点。
     * @param path 子节点路径。
     * @returns 
     */
    public getChildByPath(path: string) {
        return this._owner && this._owner.getChildByPath(path);
    }

    /**
     * 获取子节点。
     * @param index 子节点索引。
     * @returns 
     */
    public getChildAt(index: number) {
        return this._owner && this._owner.getChildAt(index);
    }
    //#endregion
    //todo-----------------------------------------节点操作 end------------------------------------------------//


    //todo-----------------------------------------消息监听 start------------------------------------------------//
    //#region 消息监听

    /** 消息监听字典 */
    private _msgMap: Record<string, Function[]>;
    /**
     * 释放消息监听
     */
    private __releaseMsg() {
        let _t = this;
        if (_t._msgMap) {
            let msg = _t._msgMap;
            _t._msgMap = null;
            if (XYFrame.isInit) {
                for (let type in msg) {
                    let list = msg[type];
                    for (let i = 0; i < list.length; i++) {
                        XYFrame.Msg.off(type, <any>list[i], _t);
                    }
                }
                XYFrame.PoolMgr.releaseObj(msg);
            }
        }
    }

    /**
     * 添加保存事件
     * @param type 
     * @param listener 
     */
    private _addMsg(type: number | string, listener: Function) {
        let _t = this;
        _t._msgMap = _t._msgMap || XYFrame.PoolMgr.getObj();
        let list = _t._msgMap[type] || (_t._msgMap[type] = []);
        if (list.indexOf(listener) < 0) {
            list.push(listener);
        }
    }

    /**
     * 添加消息监听，只能调用，不要重装，关闭界面会移除
     * @param type 消息类型
     * @param listener 监听函数
     */
    public onMsg(type: number | string, listener: (ctx: this, ...args: any[]) => any) {
        if (XYFrame.isInit) {
            this._addMsg(type, listener);
            XYFrame.Msg.on(type, listener, this);
        } else if (DEBUG) {
            Logger.warn("XYFrame.Msg.onMsg() 错误：XYFrame未初始化");
        }
    }

    /**
     * 添加一次消息监听，只能调用，不要重装，关闭界面会移除
     * @param type 消息类型
     * @param listener 监听函数
     */
    public onceMsg(type: number | string, listener: (...args: any[]) => any) {
        if (XYFrame.isInit) {
            this._addMsg(type, listener);
            XYFrame.Msg.once(type, listener, this);
        } else if (DEBUG) {
            Logger.warn("XYFrame.Msg.onMsg() 错误：XYFrame未初始化");
        }
    }

    /**
     * 移除消息监听，只能调用，不要重装
     * @param type 监听类型
     * @param listener 监听函数
     */
    public offMsg(type: number | string, listener: (ctx: this, ...args: any[]) => any) {
        if (XYFrame.isInit) {
            let _t = this;
            if (_t._msgMap) {
                ArrayUtils.remove(_t._msgMap[type], listener);
            }
            XYFrame.Msg.off(type, listener, _t);
        } else if (DEBUG) {
            Logger.warn("XYFrame.Msg.offMsg() 错误：XYFrame未初始化");
        }
    }

    //#endregion
    //todo-----------------------------------------消息监听 end------------------------------------------------//

    //todo-----------------------------------------添加时间 start------------------------------------------------//
    //#region 添加时间
    private _is_tm: boolean;

    /**
     * 释放定时器
     */
    private __releaseTimer() {
        let _t = this;
        if (_t._is_tm) {
            XYFrame.Timer.clearAllTimer(_t);
            _t._is_tm = false;
        }
    }

    /**
     * 添加循环定时器
     * @param interval 间隔时间(毫秒)
     * @param listener listener 回调函数
     * @param args 回调参数
     */
    public addLoop(interval: number, listener: (dt: number, ctx: this, ...args: any[]) => any, ...args: any[]) {
        this._is_tm = true;
        return XYFrame.Timer.loop(interval, listener, this, ...args)
    }

    /**
     * 添加延迟定时器
     * @param delay 延迟时间(毫秒)
     * @param listener listener 回调函数
     * @param args 回调参数
     */
    public addDelay(delay: number, listener: (dt: number, ctx: this, ...args: any[]) => any, ...args: any[]) {
        this._is_tm = true;
        return XYFrame.Timer.once(delay, listener, this, ...args);
    }

    /**
     * 移除定时器
     * @param listener 回调函数或定时器id
     */
    public removeTimer(listener: ((dt: number, ctx: this, ...args: any[]) => any) | string) {
        if (typeof listener == "string") {
            XYFrame.Timer.clearById(listener);
        } else {
            XYFrame.Timer.clearTimer(listener, this);
        }
    }
    //#endregion
    //todo-----------------------------------------添加时间 end------------------------------------------------//

    //todo-----------------------------------------Laya事件监听 start------------------------------------------------//
    //#region Laya事件监听
    private _eventMap: Record<string, any[]>;

    private __releaseEvent() {
        let _t = this;
        if (_t._eventMap) {
            for (let type in _t._eventMap) {
                let list = _t._eventMap[type];
                for (let i = 0; i < list.length; i++) {
                    let info = list[i];
                    info && info[0].off(type, this, info[1]);
                }
            }
            _t._eventMap = null;
        }
    }

    /**
     * 添加保存Laya监听
     */
    private __addEvent(target: Laya.Sprite, type: string, listener: (e?: any) => any) {
        let _t = this;
        _t._eventMap = _t._eventMap || XYFrame.PoolMgr.getObj();
        let list = _t._eventMap[type];
        let bo = true;
        if (list) {
            for (let i = 0; i < list.length; i++) {
                let info = list[i];
                if (info[0] == target && info[1] == listener) {
                    bo = false;
                    break;
                }
            }
        }
        if (bo) {
            if (!list) {
                list = _t._eventMap[type] = [];
            }
            list.push([target, listener]);
        }
    }

    /**
     * 增加Laya监听，只能调用，不要重装，关闭界面会移除
     * @param target 
     * @param type 
     * @param listener 
     */
    public onEvent(target: Laya.Sprite, type: string, listener: (e?: any, ...args: any) => any) {
        this.__addEvent(target, type, listener);
        target.on(type, this, listener);
    }

    /**
     * 增加一次性Laya监听，只能调用，不要重装，关闭界面会移除
     * @param target 
     * @param type 
     * @param listener 
     */
    public onceEvent(target: Laya.Sprite, type: string, listener: (e?: any, ...args: any) => any) {
        this.__addEvent(target, type, listener);
        target.once(type, this, listener);
    }

    /**
     * 添加点击Laya监听，只能调用，不要重装，关闭界面会移除
     * @param target 
     * @param listener 
     */
    public onClick(target: Laya.Sprite, listener: (e?: any, ...args: any) => any) {
        this.onEvent(target, Laya.Event.CLICK, listener);
    }

    /**
     * 移除Laya监听，只能调用，不要重装
     * @param target 
     * @param type 
     * @param listener 
     */
    public offEvent(target: Laya.Sprite, type: string, listener: (e?: any, ...args: any) => any) {
        let _t = this;
        if (_t._eventMap) {
            let list = _t._eventMap[type];
            if (list) {
                for (let i = list.length - 1; i >= 0; i--) {
                    let item = list[i];
                    if (item[0] == target && item[1] == listener) {
                        list.splice(i, 1);
                        break;
                    }
                }
            }
        }
        target.off(type, this, listener);
    }
    //#endregion
    //todo-----------------------------------------Laya事件监听 end------------------------------------------------//

    //todo-----------------------------------------特效 start------------------------------------------------//
    //#region 特效

    private _effects: Record<string, ItemSpineEffect>;
    /**
     * 释放特效
     */
    private __releaseEffect() {
        let _t = this;
        if (_t._effects) {
            let obj = _t._effects;
            _t._effects = null;
            for (let name in obj) {
                XYFrame.EffectMgr.removeById(+name);
            }
            XYFrame.PoolMgr.releaseObj(obj);
        }
    }
    /**
     * 添加spine特效，关闭界面会自动移除
     * @param url 特效路径（不包含resources/spine/）
     * @param parent 容器
     * @param x x轴坐标
     * @param y y轴坐标
     * @param loopTm 特效循环时长（毫秒），默认:1000毫秒
     * @param remainTm 持续显示时间（毫秒）;<=0为一直显示,>0显示时间;默认:0
     * @param loop 是否循环播放动画，默认:true
     * @param actName 动作名称，默认:animation
     * @param scaleX 特效水平缩放 默认:1
     * @param scaleY 特效垂直缩放 默认:1
     * @param childIndex 添加到parent的索引，默认：parent的最后个索引
     * @returns 返回特效实例ItemSpineEffect
     */
    public addSpine(url: string, parent: Laya.GWidget, x: number, y: number, loopTm = 1000, remainTm = 0, loop = true, actName = "animation", scaleX = 1, scaleY = 1, childIndex?: number) {
        let item = XYFrame.EffectMgr.addSpine(url, parent, x, y, loopTm, remainTm, loop, actName, scaleX, scaleY, childIndex);
        if (!this._effects) {
            this._effects = XYFrame.PoolMgr.getObj();
        }
        this._effects[item.eid] = item;
        return item;
    }

    /**
     * 获取spine特效
     * @param id 
     * @returns 
     */
    public getSpine(id: number) {
        return this._effects && this._effects[id];
    }

    /**
     * 移除spine特效
     * @param item 
     */
    public removeSpine(item: ItemSpineEffect) {
        this.removeSpineById(item.eid);
    }

    /**
     * 移除spine特效
     * @param id 
     */
    public removeSpineById(id: number) {
        if (this._effects)
            delete this._effects[id];
        XYFrame.EffectMgr.removeById(id);
    }
    //#endregion
    //todo-----------------------------------------特效 end------------------------------------------------//

    //todo-----------------------------------------缓动 start------------------------------------------------//
    //#region 缓动
    private _tweens: number[];
    private __releaseTweens() {
        if (this._tweens) {
            let list = this._tweens;
            this._tweens = null;
            for (let i = 0, len = list.length; i < len; i++) {
                XYFrame.Tween.remove(list[i]);
            }
        }
    }

    private _addTween(tween: TweenTask) {
        if (!this._tweens) {
            this._tweens = [];
        }
        this._tweens.push(tween.id);
    }

    /**
     * 缓动到目标值
     */
    public tweenTo<T>(target: any, props: Record<string, number>, duration: number, ease: EaseFunction = Ease.linear, updateCall?: (progress: number, caller?: T) => any, caller?: T): TweenTask {
        let tween = XYFrame.Tween.to(target, props, duration, ease, updateCall, caller);
        this._addTween(tween);
        return tween;
    }

    /**
     * 从目标值缓动
     */
    public tweenFrom<T>(target: any, props: Record<string, number>, duration: number, ease: EaseFunction = Ease.linear, updateCall?: (progress: number, caller?: T) => any, caller?: T): TweenTask {
        let tween = XYFrame.Tween.from(target, props, duration, ease, updateCall, caller);
        this._addTween(tween);
        return tween;
    }

    /**
     * 贝塞尔曲线缓动
     */
    public tweenBezier<T>(target: any, props: Record<string, number>, controlPoints: Record<string, number[]>, duration: number, ease: EaseFunction = Ease.linear, updateCall?: (progress: number, caller?: T) => any, caller?: T): TweenTask {
        let tween = XYFrame.Tween.bezier(target, props, controlPoints, duration, ease, updateCall, caller);
        this._addTween(tween);
        return tween;
    }

    /**
     * 缓动延迟
     */
    public tweenDelay(target: any, duration: number): TweenTask {
        let tween = XYFrame.Tween.delay(target, duration);
        this._addTween(tween);
        return tween;
    }
    //#endregion
    //todo-----------------------------------------缓动 end------------------------------------------------//
}