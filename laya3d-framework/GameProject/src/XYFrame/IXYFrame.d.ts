/** 是否开发环境 */
declare const DEBUG: boolean;

/**
 * @ Author: XXL
 * @ Date: 2026-03-04 15:21
 * @ Description: 封装回调
*/
interface ICallBack {
    /**
     * 函数执行域
     */
    caller?: any,
    /**
     * 函数
     */
    method?: Function,
    /**
     * 参数
     */
    args?: any
}
