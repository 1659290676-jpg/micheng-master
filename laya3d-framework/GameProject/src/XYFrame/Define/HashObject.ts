/**
* @Author: XXL
* @Date: 2022-07-29 17:47
* @Description: hash对象
*/
export default class HashObject {
    private static _count: number = 0;
    private $_GID: number;
    public constructor() {
        this.$_GID = HashObject.getCount();
    }

    /**组件的的hashCode唯一标识*/
    public get hashCode() {
        return this.$_GID;
    }

    /**获取一个唯一的计数*/
    public static getCount() {
        return HashObject._count++;
    }

    /**
     * 获取组件的的hashCode唯一标识
     * @param obj 
     */
    public static getHash(obj: any): number {
        return obj.$_GID || (obj.$_GID = HashObject.getCount());
    }

    /**
     * 获取组件的的hashCode唯一标识，不存在返回null
     * @param obj 
     * @returns 
     */
    public static getHash1(obj: any): number {
        return obj.$_GID;
    }

}