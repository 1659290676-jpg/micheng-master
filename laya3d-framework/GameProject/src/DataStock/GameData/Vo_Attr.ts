import ConfigUtils from "../ConfigUtils";

/**
 * @ Author: XXL
 * @ Date: 2023-10-19 15:16
 * @ Description: 属性
*/
export default class Vo_Attr {
    /**公共使用的实例*/
    public static readonly vo = new Vo_Attr();
    /**公共使用的实例*/
    public static readonly vo1 = new Vo_Attr();


    /**保持的属性*/
    public readonly map: Record<number | string, number> = {};

    /**
     * 获取某个属性值
     * @param key 
     * @returns 
     */
    public getVal(key: number | string) {
        return this.map[key] || 0;
    }

    /**
     * 设置某个属性的值
     * @param key 属性类型
     * @param val 属性值
     */
    public setVal(key: number | string, val: number) {
        this.map[key] = +val;
    }

    /**
     * 添加单个属性
     * @param key 属性类型
     * @param val 属性值
     */
    public addVal(key: number | string, val: number) {
        this.map[key] = this.getVal(key) + (val || 0);
        return this;
    }

    /**
     * 添加属性
     * @param list 二维属性数组
     * @param mul 增加倍数，默认1
     */
    public addByList(list: (number | string)[][], mul = 1) {
        if (!list) return this;
        let info: (number | string)[];
        for (let i = 0, len = list.length; i < len; i++) {
            info = list[i];
            this.addVal(info[0], Math.floor(+info[1] * (mul * 1000) / 1000));
        }
        return this;
    }

    /**
     * 添加属性
     * @param map 属性map
     * @param mul 增加倍数，默认1
     */
    public addByMap(map: Dictionary<string | number>, mul = 1) {
        if (!map) return this;
        for (let k in map) {
            this.addVal(k, Math.floor(+map[k] * (mul * 1000) / 1000));
        }
        return this;
    }

    /**
     * 添加属性
     * @param str 属性字符串，两重
     * @param mul 增加倍数，默认1
     */
    public addByStr(str: string, mul = 1) {
        if (str && str != "0") {
            let list = ConfigUtils.splitStr(str, 2);
            this.addByList(list, mul);
        }
        return this;
    }

    /**
     * 设置所有属性乘以倍数
     * @param mul 
     */
    public setMul(mul: number) {
        if (mul != 1)
            for (let k in this.map) {
                this.setVal(k, Math.floor(+this.map[k] * (mul * 1000) / 1000));
            }
        return this;
    }

    /**
     * 设置某个属性乘以倍数
     * @param type 
     * @param mul 
     */
    public setOneMul(type: number | string, mul: number) {
        let val = this.map[type];
        if (val) {
            this.map[type] = Math.floor(val * (mul * 1000) / 1000);
        }
    }

    /**
     * 属性减少 
     * @param key 属性类型
     * @param val 属性值
     */
    public reduceVal(key: string | number, val: number) {
        let v = this.getVal(key);
        if (v > val) v -= val;
        else v = 0;
        this.setVal(key, v);
        return this;
    }
    /**
     * 减少属性
     * @param str   属性字符串，二维数组
     * @param mul   倍数，默认1
     */
    public reduceByStr(str: string, mul = 1) {
        if (str && str != "0") {
            let list = ConfigUtils.splitStr(str, 2);
            this.reduceByList(list, mul);
        }
        return this;
    }
    /**
     * 减少属性
     * @param list 属性列表
     * @param mul 倍数，默认1
     * @param range 取走的范围，1下限，2四舍五入，3上限，默认1
     */
    public reduceByList(list: (number | string)[][], mul = 1, range = 1) {
        if (!list) return this;
        let v: number;
        let fun = range == 2 ? Math.round : range == 3 ? Math.ceil : Math.floor;
        for (let i = 0, len = list.length; i < len; i++) {
            v = fun(+list[i][1] * (mul * 1000) / 1000);
            this.reduceVal(list[i][0], v);
        }
        return this;
    }

    /**
     * 减少属性
     * @param map 属性map
     * @param mul 倍数，默认1
     * @param range 取走的范围，1下限，2四舍五入，3上限，默认1
     */
    public reduceByMap(map: Dictionary<string | number>, mul = 1, range = 1) {
        if (!map) return this;
        let v: number;
        let fun = range == 2 ? Math.round : range == 3 ? Math.ceil : Math.floor;
        for (let k in map) {
            this.reduceVal(k, fun(+map[k] * (mul * 1000) / 1000));
        }
        return this;
    }

    /**
     * 清理属性
     */
    public clear() {
        let map = this.map;
        for (let k in map) {
            delete map[k];
        }
        return this;
    }
    /**保留属性类型，属性值置为0 */
    public setZero() {
        let map = this.map;
        for (let k in map) {
            map[k] = 0;
        }
        return this;
    }

}