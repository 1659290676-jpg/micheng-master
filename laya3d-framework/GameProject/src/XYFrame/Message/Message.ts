import { PoolManager } from "../Pool/PoolManager";
import ArrayUtils from "../Utils/ArrayUtils";

const { regClass, property } = Laya;

type ListenerTuple = {
    listener: Function,
    ctx: unknown,
    once: boolean
}

/**
 * @ Author: XXL
 * @ Date: 2026-01-30 15:21
 * @ Description: 事件监听
*/
@regClass()
export default class Message implements IDestory {
    /** 事件列表 */
    private readonly _events: Record<number | string, ListenerTuple[]>;
    /** 是否需要清理 */
    private _needClear: boolean;
    private readonly _clearList: (string | number)[];

    /** 是否延迟清理中 */
    private isLate: boolean;

    public constructor() {
        this._events = {};
        this._clearList = [];
    }

    private onLateUpdate(): void {
        this.isLate = false;
        if (this._needClear && this._events) {
            let _t = this;
            _t._needClear = false;
            let list = _t._clearList;
            for (let k of list) {
                let l = _t._events[k];
                if (l) {
                    ArrayUtils.cleanNull(l);
                    if (l.length === 0) {
                        delete _t._events[k];
                        // _t._events.delete(k);
                    }
                }
            }
            list.length = 0;
        }
    }

    /**
     * 监听检查延迟清理
     */
    private checkLate() {
        if (!this.isLate) {
            this.isLate = true;
            Laya.timer.callLater(this, this.onLateUpdate);
        }
    }

    /**
     * 获取监听
     * @param type 事件类型
     * @param listener 监听函数
     * @param ctx 函数执行域
     * @returns 
     */
    private _getListener(type: number | string, listener: Function, ctx?: unknown) {
        let _t = this;
        let listeners = _t._events[type];
        if (!listeners) return;
        for (let i = 0, len = listeners.length; i < len; i++) {
            let item = listeners[i];
            if (item && item.listener == listener && item.ctx == ctx) return item;
        }
    }

    /**
     * 添加监听
     * @param type 事件类型
     * @param listener 监听函数
     * @param ctx 函数执行域
     * @param once 是否只执行一次
     */
    private _on(type: number | string, listener: Function, ctx?: unknown, once?: boolean) {
        let _t = this;
        let item = _t._getListener(type, listener, ctx);
        if (item) {
            item.once = once;
        } else {
            let listeners = _t._events[type];
            if (!listeners) {
                listeners = [];
                _t._events[type] = listeners;
            }
            item = PoolManager.getInst<PoolManager>().getObj();
            item.listener = listener;
            item.ctx = ctx;
            item.once = once;
            listeners.push(item);
        }
    }

    /**
     * 添加监听
     * @param type 事件类型
     * @param listener 监听函数
     * @param ctx 函数执行域
     */
    public on<T>(type: number | string, listener: (ctx?: T, ...args: any[]) => any, ctx?: T) {
        this._on(type, listener, ctx, false);
        return this;
    }

    /**
     * 添加监听一次
     * @param type 事件类型
     * @param listener 监听函数
     * @param ctx 函数执行域
     */
    public once<T>(type: number | string, listener: (ctx?: T, ...args: any[]) => any, ctx?: T) {
        this._on(type, listener, ctx, true);
        return this;
    }

    /**
     * 移除监听
     * @param type 
     * @param listener 
     * @param ctx 
     */
    public off<T>(type: number | string, listener: (ctx?: T, ...args: any[]) => any, ctx?: T) {
        let _t = this;
        let listeners = _t._events[type];
        if (listeners) {
            let isClean = false;
            for (let i = listeners.length - 1; i >= 0; i--) {
                let item = listeners[i];
                if (item && item.listener == listener && item.ctx == ctx) {
                    listeners[i] = null;
                    PoolManager.getInst<PoolManager>().releaseObj(item);
                    isClean = true;
                    break;
                }
            }
            if (isClean) {
                _t._needClear = true;
                if (_t._clearList.indexOf(type) == -1) {
                    _t._clearList.push(type);
                }
                _t.checkLate();
                // ArrayUtils.cleanNull(listeners);
                // if (listeners.length == 0) _t.events.delete(type);
            }
        }
        return this;
    }

    /**
     * 触发事件
     * @param type 事件类型
     * @param args 参数
     */
    public emit(type: number | string, ...args: any[]) {
        let listeners = this._events[type];
        if (listeners) {
            let bo = false;
            for (let i = 0, len = listeners.length; i < len; i++) {
                let item = listeners[i];
                if (item) {
                    let ctx = item.ctx;
                    let listener = item.listener;
                    if (item.once) {
                        listeners[i] = null;
                        this._needClear = true;
                        if (!bo) {
                            bo = true;
                            if (this._clearList.indexOf(type) == -1) {
                                this._clearList.push(type);
                            }
                        }
                        PoolManager.getInst<PoolManager>().releaseObj(item);
                    }
                    if (args.length > 0) {
                        listener(ctx, ...args);
                    } else {
                        listener(ctx);
                    }
                }
            }
            bo && this.checkLate();
        }
    }

    /**
     * 判断事件是否存在监听器
     * @param type 事件类型
     * @param listener 监听函数
     * @param ctx 函数执行域
     * @returns 
     */
    public has<T>(type: number | string, listener: (ctx?: T, ...args: any[]) => any, ctx?: T) {
        return !!this._getListener(type, listener, ctx);
    }


    destroy() {
        let _t = <any>this;
        _t.events = null;
        _t._clearList = null;
        this._needClear = false;
    }

    clear() {
        (<any>this)._events = {};
        this._clearList.length = 0;
        this._needClear = false;
    }
}