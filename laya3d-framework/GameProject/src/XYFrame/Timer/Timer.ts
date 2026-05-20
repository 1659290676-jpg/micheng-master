import { PoolManager } from "../Pool/PoolManager";
import ArrayUtils from "../Utils/ArrayUtils";

const { regClass, property } = Laya;

/**
 * 定时器信息
 */
interface ITimerInfo {
    /** 定时器id */
    id: string;
    /** 回调函数 */
    callback: Function;
    /** 回调上下文 */
    caller: any;
    /** 回调参数 */
    args: any[];
    /** 是否循环 */
    loop: boolean;
    /** 延迟/间隔时间（毫秒） */
    delay: number;
    /** 已经过时间（毫秒） */
    elapsed: number;
}

/**
 * @ Author: XXL
 * @ Date: 2026-02-04
 * @ Description: 定时器管理器
 */
@regClass()
export class Timer {
    /** 定时器列表 */
    private readonly timers: ITimerInfo[] = [];
    /** 定时器map */
    private readonly timerMap: Map<string, ITimerInfo> = new Map();

    /**
     * 延迟执行（一次）
     * @param delay 延迟时间（毫秒）
     * @param callback 回调函数
     * @param caller 回调执行域
     * @param args 回调参数
     * @return 定时器id (id是根据执行域与回调函数生成：调用Laya.Utils.getGID)
     */
    public once<T>(delay: number, callback: (dt: number, caller?: T, ...args: any[]) => any, caller?: T, ...args: any[]) {
        return this._add(false, delay, callback, caller, args);
    }

    /**
     * 循环执行
     * @param interval 间隔时间（毫秒）
     * @param callback 回调函数
     * @param caller 回调执行域
     * @param args 回调参数
     * @return 定时器id (id是根据执行域与回调函数生成：调用Laya.Utils.getGID)
     */
    public loop<T>(interval: number, callback: (dt: number, caller?: T, ...args: any[]) => any, caller?: T, ...args: any[]) {
        return this._add(true, interval, callback, caller, args);
    }

    /**
     * 添加监听
     * @param loop 是否循环
     * @param time 间隔时间（毫秒）
     * @param callback 回调函数
     * @param caller 回调执行域
     * @param args 回调参数
     * @returns 
     */
    private _add<T>(loop: boolean, time: number, callback: (dt: number, caller?: T, ...args: any[]) => any, caller?: T, args?: any[]) {
        // 先清除相同的定时器
        this.clearTimer(callback, caller);

        let id = Laya.Utils.getGID(caller, callback);

        let obj: ITimerInfo = PoolManager.getInst<PoolManager>().getObj();
        obj.id = id;
        obj.callback = callback;
        obj.caller = caller;
        obj.args = args;
        obj.loop = loop;
        obj.delay = time;
        obj.elapsed = 0;


        this.timerMap.set(id, obj);

        this.timers.push(obj);
        return id;
    }

    /**
     * 清除定时器
     * @param callback 回调函数
     * @param caller 回调上下文
     */
    public clearTimer<T>(callback: (dt: number, caller?: T, ...args: any[]) => any, caller?: T) {
        let id = Laya.Utils.getGID(caller, callback);
        return this.clearById(id);
    }

    /**
     * 根据定时器id清理
     * @param id 定时器id
     * @returns 
     */
    public clearById(id: string) {
        let timer = this.timerMap.get(id);
        if (timer) {
            this.timerMap.delete(id);
            let index = this.timers.indexOf(timer);
            if (index != -1)
                this.timers[index] = null;
            PoolManager.getInst<PoolManager>().releaseObj(timer);
            return true;
        }
        return false;
    }

    /**
     * 清除指定执行域的所有定时器
     * @param caller 回调执行域
     */
    public clearAllTimer(caller: any): void {
        let timers = this.timers;
        let timerMap = this.timerMap;
        for (let i = timers.length - 1; i >= 0; i--) {
            let timer = timers[i];
            if (timer) {
                if (timer.caller === caller) {
                    timers[i] = null;
                    timerMap.delete(Laya.Utils.getGID(timer.caller, timer.callback));
                    PoolManager.getInst<PoolManager>().releaseObj(timer);
                }
            }
        }
    }

    /**
     * 获取定时器数量
     */
    public getCount(): number {
        return this.timers.length;
    }

    /**
     * 更新定时器（每帧调用）
     * @param deltaTime 帧间隔时间（毫秒）
     */
    public update(deltaTime: number): void {
        if (this.timers.length === 0) {
            return;
        }

        let timers = this.timers;
        let isClean = false;
        // 更新所有定时器
        for (let i = 0, len = timers.length; i < len; i++) {
            let timer = timers[i];
            if (timer) {
                timer.elapsed += deltaTime;
                // 检查是否到达触发时间
                if (timer.elapsed >= timer.delay) {
                    // 如果是循环定时器，重置时间
                    let caller = timer.caller;
                    let callback = timer.callback;
                    let args = timer.args;
                    let elapsed = timer.elapsed;
                    if (timer.loop) {
                        timer.elapsed = 0;
                    } else {
                        // 一次性定时器，标记为待移除
                        isClean = true;
                        timers[i] = null;
                        this.timerMap.delete(timer.id);
                        PoolManager.getInst<PoolManager>().releaseObj(timer);
                    }
                    // 执行回调
                    if (args.length > 0) {
                        callback(elapsed, caller, ...args);
                    } else {
                        callback(elapsed, caller);
                    }
                }
            } else {
                isClean = true;
            }
        }
        isClean && ArrayUtils.cleanNull(timers);
    }

    /**
     * 清除所有定时器
     */
    public clearAllTimers(): void {
        this.timers.length = 0;
    }
}
