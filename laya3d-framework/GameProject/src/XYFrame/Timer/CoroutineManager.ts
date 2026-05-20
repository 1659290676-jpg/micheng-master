import Singleton from "../Base/Singleton";

const { regClass } = Laya;

/** 静默取消标识（无报错、无全局异常） */
const CANCEL_SYMBOL = Symbol('Cancel');

/** 任务类型 */
const enum TaskType { Time, Frame }

/** 极简任务结构 */
interface Task {
    type: TaskType;
    resolve: () => void;
    reject: (symbol: symbol) => void;
    value: number;
}

/**
 * 协程管理器
 */
@regClass()
export default class CoroutineManager extends Singleton {
    private _tasks: Task[] = [];

    /**
     * 帧驱动
     * @param deltaTime 帧间隔毫秒
     */
    public update(deltaTime: number): void {
        if (this._tasks.length === 0) return;
        const tasks = this._tasks;
        let writeIdx = 0; // 存活任务写入索引（原地覆盖）
        // 双索引遍历：readIdx读，writeIdx写
        for (let readIdx = 0; readIdx < tasks.length; readIdx++) {
            const task = tasks[readIdx];
            let isDone = false;

            // 时间任务：扣减剩余时间
            if (task.type === TaskType.Time) {
                task.value -= deltaTime;
                isDone = task.value <= 0;
            }
            // 帧任务：扣减剩余帧数
            else {
                task.value -= 1;
                isDone = task.value <= 0;
            }

            if (isDone) {
                task.resolve(); // 任务完成：直接resolve
            } else {
                tasks[writeIdx++] = task; // 存活任务：原地写入，不创建新数组
            }
        }
        tasks.length = writeIdx;
    }

    /**
     * 等待秒数（直接await）
     * @param seconds 秒数
     * @returns 
     */
    public waitForSeconds(seconds: number): Promise<void> {
        if (seconds <= 0) return Promise.resolve();
        return new Promise((resolve, reject) => {
            this._tasks.push({ type: TaskType.Time, resolve, reject, value: seconds * 1000 });
        });
    }

    /**
     * 等待帧数（直接await）
     * @param frames 帧数
    */
    public waitForFrames(frames: number): Promise<void> {
        if (frames <= 0) return Promise.resolve();
        return new Promise((resolve, reject) => {
            this._tasks.push({ type: TaskType.Frame, resolve, reject, value: frames });
        });
    }

    /** 取消所有任务（调用reject，无报错、无内存泄漏） */
    public clear(): void {
        const tasks = this._tasks;
        for (let i = 0; i < tasks.length; i++) tasks[i].reject(CANCEL_SYMBOL);
        tasks.length = 0;
    }

    public destroy(): void {
        this.clear();
        this._tasks = null;
    }
}