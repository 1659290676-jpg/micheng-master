/**
 * @ Author: XXL
 * @ Date: 2026-03-06 09:36
 * @ Description: 缓存数据结构
*/
interface ICacheData {

    /**
     * !根据缓存数据设置数据，注意如果之前版本已缓存，就不能修改之前的结构
     * @param data 缓存数据
     */
    setByStorage(data: any);

    /** 
     * !获取缓存数据，注意如果之前版本已缓存，就不能修改之前的结构
     */
    toStorage(): any;
}