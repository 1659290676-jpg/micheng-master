/**
 * @ Author: XXL
 * @ Date: 2026-03-05 20:52
 * @ Description: 物品的数据的接口
*/
interface IGood extends ICacheData, IPool {
    /** 物品类型 */
    type: number;
    /** 物品id */
    id: number;
    /** 数量 */
    count: number;

}