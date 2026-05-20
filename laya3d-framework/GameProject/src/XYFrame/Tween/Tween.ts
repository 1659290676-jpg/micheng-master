import { PoolManager } from "../Pool/PoolManager";
import { Ease } from "./Ease";

const { regClass } = Laya;

/** 缓动类型 */
export type EaseFunction = (t: number) => number;

/** 缓动对象标记key */
const TWEEN_KEY = "__tween__";

/**
 * @ Author: XXL
 * @ Date: 2026-02-04
 * @ Description: 缓动管理器
 */
@regClass()
export class Tween {
    private static _inst: Tween;

    public static get Inst(): Tween {
        if (!Tween._inst) {
            Tween._inst = new Tween();
        }
        return Tween._inst;
    }
    /**
     * 获取单例
     * @param args 初始化的参数
     * @returns 
     */
    public static getInst() {
        return Tween.Inst;
    }

    /** 是否暂停 */
    private _pause = false;
    /** 是否暂停 */
    public set pause(pause: boolean) {
        this._pause = pause;
    }

    public get pause(): boolean {
        return this._pause;
    }

    private _tweens: Map<number, TweenTask> = new Map();
    private _taskPool: TweenTask[] = [];

    /**
     * 缓动到目标值
     * @param target 目标对象
     * @param props 缓动属性
     * @param duration 缓动时长（毫秒）
     * @param ease 缓动函数
     * @param updateCall 缓动更新回调
     * @param caller 回调调用者
     */
    public to<T>(target: any, props: Record<string, number>, duration: number, ease: EaseFunction = Ease.linear, updateCall?: (progress: number, caller?: T) => any, caller?: T): TweenTask {
        return this.createTask(target).to(props, duration, ease, updateCall, caller);
    }

    /**
     * 从目标值缓动到当前值
     * @param target 缓动对象
     * @param props 缓动属性
     * @ param duration 缓动时长（毫秒）
     * @ param ease 缓动函数
     * @ param updateCall 缓动更新回调
     * @ param caller 回调调用者
     */
    public from<T>(target: any, props: Record<string, number>, duration: number, ease: EaseFunction = Ease.linear, updateCall?: (progress: number, caller?: T) => any, caller?: T): TweenTask {
        return this.createTask(target).to(props, duration, ease, updateCall, caller);
    }

    /**
     * 贝塞尔曲线缓动
     * @param target 目标对象
     * @param props 缓动属性
     * @param controlPoints 控制点
     * @param duration 缓动时长（毫秒）
     * @param ease 缓动函数
     * @param updateCall 缓动更新回调
     * @param caller 回调调用者
     * @returns 
     */
    public bezier<T>(target: any, props: Record<string, number>, controlPoints: Record<string, number[]>, duration: number, ease: EaseFunction = Ease.linear, updateCall?: (progress: number, caller?: T) => any, caller?: T): TweenTask {
        return this.createTask(target).bezier(props, controlPoints, duration, ease, updateCall, caller);
    }

    /**
     * 延迟
     * @param target 目标对象
     * @param delay 延迟时间（毫秒）
     * @returns 
     */
    public delay(target: any, delay: number) {
        return this.createTask(target).delay(delay);
    }

    /**
     * 创建缓动任务
     */
    private createTask(target: any): TweenTask {
        const task = this.getTask();
        task.init(target, this);
        // task.addStep(isFrom ? 'from' : 'to', props, duration, ease);
        this.registerTask(task);
        return task;
    }

    /**
     * 从对象池获取任务
     */
    private getTask(): TweenTask {
        return this._taskPool.pop() || new TweenTask();
    }

    /**
     * 回收任务到对象池
     */
    private recycleTask(task: TweenTask): void {
        task.clear();
        if (this._taskPool.length < 50) {
            this._taskPool.push(task);
        }
    }

    /**
     * 注册任务
     */
    private registerTask(task: TweenTask): void {
        const id = task.id;
        this._tweens.set(id, task);

        // 直接在目标对象上存储任务ID
        const target = task.target;
        if (!target[TWEEN_KEY]) {
            target[TWEEN_KEY] = id;
        } else if (Array.isArray(target[TWEEN_KEY])) {
            // 已是数组，直接添加
            target[TWEEN_KEY].push(id);
        } else {
            // 已有一个任务，转为数组
            target[TWEEN_KEY] = [target[TWEEN_KEY], id];
        }
    }

    /**
     * 移除任务
     * @param task 任务
     */
    private removeTask(task: TweenTask): void {
        if (!task) return;
        const id = task.id;
        this._tweens.delete(id);

        const target = task.target;
        if (target && target[TWEEN_KEY]) {
            if (Array.isArray(target[TWEEN_KEY])) {
                // 多个任务，从数组中移除
                const arr = target[TWEEN_KEY];
                const index = arr.indexOf(id);
                if (index !== -1) {
                    arr.splice(index, 1);
                    if (arr.length === 0) {
                        delete target[TWEEN_KEY];
                    } else if (arr.length === 1) {
                        // 只剩一个，转回字符串
                        target[TWEEN_KEY] = arr[0];
                    }
                }
            } else {
                // 只有一个任务
                if (target[TWEEN_KEY] === id) {
                    delete target[TWEEN_KEY];
                }
            }
        }

        this.recycleTask(task);
    }

    public remove(id: number) {
        this.removeTask(this._tweens.get(id));
    }

    /**
     * 停止目标对象的所有缓动
     */
    public kill(target: any): void {
        if (!target[TWEEN_KEY]) return;

        const tweenKey = target[TWEEN_KEY];
        if (Array.isArray(tweenKey)) {
            // 多个任务
            const ids = tweenKey.slice(); // 复制数组避免遍历时修改
            for (let i = 0; i < ids.length; i++) {
                const task = this._tweens.get(ids[i]);
                if (task) {
                    task.stop();
                }
            }
        } else {
            // 只有一个任务
            const task = this._tweens.get(tweenKey);
            if (task) {
                task.stop();
            }
        }
    }

    /**
     * 清除所有缓动
     */
    public clear(): void {
        this._tweens.forEach(task => task.stop());
        this._tweens.clear();
    }

    /**
     * 更新所有缓动
     */
    public update(deltaTime: number): void {
        if (this._pause || this._tweens.size === 0) return;

        this._tweens.forEach(task => {
            if (task.update(deltaTime)) {
                this.removeTask(task);
            }
        });
    }

    /**
     * 销毁
     */
    public destroy(): void {
        this.clear();
        if (Tween._inst == this) {
            Tween._inst = null;
        }
    }
}

/**
 * 缓动任务
 */
export class TweenTask {
    private static _id: number = 1;
    public id: number;
    public target: any;
    private _manager: Tween;
    private _steps: TweenStep[] = [];
    private _currentIndex: number = 0;
    private _paused: boolean = false;
    private _loop: boolean = false;
    private _onComplete: Function;
    private _completeCaller: any;
    private _completeArgs: any[];

    /**
     * 初始化任务
     */
    public init(target: any, manager: Tween): void {
        this.id = TweenTask._id++;
        this.target = target;
        this._manager = manager;
    }

    /**
     * 清理任务
     */
    public clear(): void {
        // 回收所有步骤
        let _t = this;
        for (let i = 0; i < _t._steps.length; i++) {
            const step = _t._steps[i];
            if (step.startValues) {
                PoolManager.getInst<PoolManager>().releaseObj(step.startValues);
            }
            if (step.originalProps) {
                PoolManager.getInst<PoolManager>().releaseObj(step.originalProps);
            }
            PoolManager.getInst<PoolManager>().releaseObj(step);
        }
        _t._steps.length = 0;
        _t._currentIndex = 0;
        _t._paused = false;
        _t._loop = false;
        _t._onComplete = null;
        _t._completeCaller = null;
        _t._completeArgs = null;
        _t.target = null;
    }

    /**
     * 添加步骤
     */
    public addStep(type: 'to' | 'from' | 'bezier' | 'delay' | 'call', props?: Record<string, number>, duration?: number, ease?: EaseFunction, controlPoints?: Record<string, number[]>, callback?: Function, caller?: any, args?: any[]): void {
        const step: TweenStep = PoolManager.getInst<PoolManager>().getObj();
        step.type = type;
        step.props = props;
        step.elapsed = 0;
        step.duration = duration || 0;
        step.ease = ease || Ease.linear;
        step.controlPoints = controlPoints;
        step.callback = callback;
        step.caller = caller;
        step.args = args;
        step.originalProps = null; // 用于from类型保存原始props
        this._steps.push(step);
    }

    /**
     * 缓动到目标值
     */
    public to<T>(props: Record<string, number>, duration: number, ease: EaseFunction = Ease.linear, updateCall?: (progress: number, caller?: T) => any, caller?: T): TweenTask {
        this.addStep('to', props, duration, ease, null, updateCall, caller);
        return this;
    }

    /**
     * 从目标值缓动
     */
    public from<T>(props: Record<string, number>, duration: number, ease: EaseFunction = Ease.linear, updateCall?: (progress: number, caller?: T) => any, caller?: T): TweenTask {
        this.addStep('from', props, duration, ease, null, updateCall, caller);
        return this;
    }

    /**
     * 贝塞尔曲线缓动
     */
    public bezier<T>(props: Record<string, number>, controlPoints: Record<string, number[]>, duration: number, ease: EaseFunction = Ease.linear, updateCall?: (progress: number, caller?: T) => any, caller?: T): TweenTask {
        this.addStep('bezier', props, duration, ease, controlPoints, updateCall, caller);
        return this;
    }

    /**
     * 延迟
     */
    public delay(duration: number): TweenTask {
        this.addStep('delay', null, duration);
        return this;
    }

    /**
     * 回调
     */
    public call<T>(callback: (caller?: T, ...args: any[]) => any, caller?: T, ...args: any[]): TweenTask {
        this.addStep('call', null, 0, Ease.linear, null, callback, caller, args);
        return this;
    }

    /**
     * 设置完成回调
     */
    public onComplete<T>(callback: (caller?: T, ...args: any[]) => any, caller?: T, ...args: any[]): TweenTask {
        this._onComplete = callback;
        this._completeCaller = caller;
        this._completeArgs = args;
        return this;
    }

    /**
     * 设置循环
     */
    public loop(enable: boolean = true): TweenTask {
        this._loop = enable;
        return this;
    }

    /**
     * 暂停
     */
    public pause(): TweenTask {
        this._paused = true;
        return this;
    }

    /**
     * 恢复
     */
    public resume(): TweenTask {
        this._paused = false;
        return this;
    }

    /**
     * 停止
     */
    public stop(): void {
        this._manager.remove(this.id);
    }

    /**
     * 重置
     */
    public reset(): void {
        this._currentIndex = 0;
        for (let i = 0; i < this._steps.length; i++) {
            const step = this._steps[i];
            step.elapsed = 0;

            // 清空startValues，让下次执行时重新初始化
            if (step.startValues) {
                PoolManager.getInst<PoolManager>().releaseObj(step.startValues);
                step.startValues = null;
            }

            // from类型需要恢复props为原始值
            if (step.type === 'from' && step.originalProps) {
                for (const key in step.originalProps) {
                    step.props[key] = step.originalProps[key];
                }
            }
        }
    }

    /**
     * 更新
     * @returns true表示完成
     */
    public update(deltaTime: number): boolean {
        if (this._paused || this._steps.length === 0) return false;

        const step = this._steps[this._currentIndex];
        if (!step) return true;

        // 初始化起始值
        if (!step.startValues && (step.type === 'to' || step.type === 'from' || step.type === 'bezier')) {
            step.startValues = PoolManager.getInst<PoolManager>().getObj();

            if (step.type === 'from') {
                // from类型：保存原始props，然后交换
                if (!step.originalProps) {
                    step.originalProps = PoolManager.getInst<PoolManager>().getObj();
                    for (const key in step.props) {
                        step.originalProps[key] = step.props[key];
                    }
                }

                // 起始值 = props中的值，目标值 = 当前值
                for (const key in step.props) {
                    step.startValues[key] = step.originalProps[key];
                    step.props[key] = this.target[key] || 0;
                }
            } else {
                // to和bezier类型：起始值 = 当前值
                for (const key in step.props) {
                    step.startValues[key] = this.target[key] || 0;
                }
            }
        }

        step.elapsed += deltaTime;

        // 处理不同类型的步骤
        if (step.type === 'to' || step.type === 'from') {
            this.updateTween(step);
        } else if (step.type === 'bezier') {
            this.updateBezier(step);
        } else if (step.type === 'call') {
            if (step.callback) {
                step.callback(step.caller, ...(step.args || []));
            }
            step.elapsed = step.duration; // 立即完成
        }

        // 检查步骤是否完成
        if (step.elapsed >= step.duration) {
            this._currentIndex++;

            // 检查是否所有步骤完成
            if (this._currentIndex >= this._steps.length) {
                if (this._onComplete) {
                    this._onComplete(this._completeCaller, ...this._completeArgs);
                }

                if (this._loop) {
                    this.reset();
                    return false;
                }
                return true;
            }
        }

        return false;
    }

    /**
     * 更新普通缓动
     */
    private updateTween(step: TweenStep): void {
        const progress = Math.min(step.elapsed / step.duration, 1);
        const eased = step.ease(progress);

        for (const key in step.props) {
            const start = step.startValues[key];
            const end = step.props[key];
            this.target[key] = start + (end - start) * eased;
        }

        if (step.callback) {
            step.callback(progress, step.caller);
        }
    }

    /**
     * 更新贝塞尔曲线缓动
     */
    private updateBezier(step: TweenStep): void {
        const progress = Math.min(step.elapsed / step.duration, 1);
        const eased = step.ease(progress);

        for (const key in step.props) {
            const start = step.startValues[key];
            const end = step.props[key];
            const points = step.controlPoints?.[key];

            if (points && points.length === 2) {
                // 三次贝塞尔曲线
                this.target[key] = Ease.bezier(eased, start, points[0], points[1], end);
            } else {
                // 降级为普通缓动
                this.target[key] = start + (end - start) * eased;
            }
        }

        if (step.callback) {
            step.callback(progress, step.caller);
        }
    }
}

/**
 * 缓动步骤
 */
interface TweenStep {
    /** 步骤类型 */
    type: 'to' | 'from' | 'bezier' | 'delay' | 'call';
    /** 目标属性 */
    props: Record<string, number>;
    /** 持续时间 */
    duration: number;
    /** 缓动函数 */
    ease: EaseFunction;
    /** 已过时间 */
    elapsed: number;
    /** 起始值 */
    startValues: any;
    /** from类型的原始props值（用于循环重置） */
    originalProps: any;
    /** 贝塞尔控制点 */
    controlPoints?: Record<string, number[]>;
    /** 回调函数 */
    callback?: Function;
    /** 回调上下文 */
    caller?: any;
    /** 回调参数 */
    args?: any[];
}
