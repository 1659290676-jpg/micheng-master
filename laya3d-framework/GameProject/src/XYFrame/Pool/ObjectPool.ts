
/**
 * @ Author: XXL
 * @ Date: 2026-01-30 16:58
 * @ Description: 通用 Object 对象池
*/
export default class ObjectPool<T extends IPool> {
    /** 空闲对象队列：存储可复用的对象 */
    private readonly idle: T[] = [];
    /** 外部传入的原始重置函数 */
    private readonly resetFn: (obj: T) => any;
    /** 创建对象函数：用于创建对象实例 */
    private readonly createFn: (...args: any[]) => T;
    /** 最大空闲容量：超出则丢弃回收的对象 */
    private readonly maxSize: number;

    // 统计属性（可选，方便监控）
    /** 总创建对象数 */
    public createCount: number;
    /** 当前正在使用的对象数 */
    public usingCount: number;
    /** 当前空闲的对象数 */
    public idleCount: number;

    public constructor(createFn: (...args: any[]) => T, resetFn?: (obj: T) => any, options: ObjectPoolOptions = {}) {
        this.createFn = createFn;
        this.resetFn = resetFn;
        this.maxSize = options && options.maxSize || Infinity;
        let _t = this;
        _t.createCount = _t.usingCount = _t.idleCount = 0;
        _t.init(options && options.initCount || 0, ...(options && options.initArgs || []));
    }

    /**
     * 初始化对象池
     * @param count 
     * @param args 
     */
    private init(count: number, ...args: any[]) {
        let _t = this;
        count = Math.min(count, _t.maxSize);
        if (count <= 0) return;
        for (let i = 0; i < count; i++) {
            let obj = _t.createFn(...args);
            _t.idle.push(obj);
            _t.createCount++;
        }
        _t.idleCount = _t.idle.length;
    }

    /**
     * 获取对象实例
     * @param args 创建对象时传入的参数
     * @returns 对象实例
     */
    public get(...args: any[]): T {
        let obj: T;
        let _t = this;
        if (_t.idle.length > 0) {
            obj = _t.idle.shift();
            _t.idleCount = _t.idle.length;
            delete (<any>obj).__pool__;
        } else {
            obj = _t.createFn(...args);
            _t.createCount++;
        }
        _t.usingCount++;
        return obj;
    }

    /**
     * 回收对象（超出最大容量则丢弃）
     * @param obj 对象实例
     * @returns 是否成功归还
     */
    public release(obj: T): boolean {
        if (!obj) return false;
        if ((<any>obj).__pool__) {
            console.warn('对象已处于对象池中，请勿重复归还！');
            return false;
        }
        let _t = this;
        if (DEBUG) {
            if (_t.idle.indexOf(obj) >= 0) {
                console.warn('对象已处于对象池中，请勿重复归还！');
                return false;
            }
        }
        if (obj.clear) {
            obj.clear();
        } else if (_t.resetFn) {
            _t.resetFn(obj);
        }
        (<any>obj).__pool__ = true;
        if (_t.idle.length < _t.maxSize) {
            _t.idle.push(obj);
            _t.idleCount = _t.idle.length;
        } else if( obj.destroy != null) {
            obj.destroy();
        }
        _t.usingCount = Math.max(0, _t.usingCount - 1);
        return true;
    }

    /**
     * 清空对象池
     */
    public clear() {
        let _t = this;
        for (let obj of _t.idle) {
            obj && obj.destroy();
        }
        _t.idle.length = 0;
        _t.idleCount = 0;
    }

}