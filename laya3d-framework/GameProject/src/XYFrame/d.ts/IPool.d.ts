/**
 * @ Author: XXL
 * @ Date: 2026-01-30 16:56
 * @ Description: 对象池解开
*/
interface IPool extends IDestory {
    /** 回收对象 */
    recover?();
}

/**
 * 对象池配置项
 */
interface ObjectPoolOptions {
    /** 最大空闲容量，默认无限制（Infinity） */
    maxSize?: number;
    /** 初始化对象数量 */
    initCount?: number;
    /** 初始化对象参数 */
    initArgs?: any[];
}