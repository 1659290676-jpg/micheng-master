import ObjectUtils from "../Utils/ObjectUtils";

/**
 * @ Author: XXL
 * @ Date: 2026-03-20 15:51
 * @ Description: 缓存数据类
*/
export default class Vo_CacheData {
    private _map: Record<string | number, any> = {};

    public clear() {
        this._map = {};
    }

    /**
     * 设置字符串缓存数据
     * @param key 
     * @param value 
     */
    public setStr(key: string | number, value: string) {
        this._map[key] = value;
    }

    /**
     * 获取字符串缓存数据
     * @param key 
     * @returns 
     */
    public getStr(key: string | number): string {
        return this._map[key];
    }

    /**
     * 设置布尔缓存数据
     * @param key 
     * @param value 
     */
    public setBool(key: string | number, value: boolean) {
        this._map[key] = value;
    }

    /**
     * 获取布尔缓存数据
     * @param key 
     * @returns 
     */
    public getBool(key: string | number): boolean {
        return this._map[key];
    }

    /**
     * 缓存数据转成可存储数据
     * @param key 
     * @param value 
     */
    public setNum(key: string | number, value: number) {
        this._map[key] = value;
    }

    /**
     * 获取数字缓存数据
     * @param key 
     * @returns 
     */
    public getNum(key: string | number): number {
        return this._map[key];
    }

    /**
     * 缓存数据转成可存储数据
     * @param key 
     * @param value 
     */
    public setVo<T extends ICacheData>(key: string | number, value: T) {
        this._map[key] = value;
    }

    /**
     * 获取缓存数据
     * @param key 
     * @returns 
     */
    public getVo<T extends ICacheData>(key: string | number): T {
        return <T>this._map[key];
    }

    /**
     * 缓存数据转成可存储数据
     * @param key 
     * @param value 
     */
    public setArr(key: string | number, value: any[]) {
        this._map[key] = value;
    }

    /**
     * 获取缓存数据
     * @param key 
     * @returns 
     */
    public getArr<T>(key: string | number): T[] {
        return this._map[key];
    }

    /**
     * 缓存数据转成可存储数据
     * @param key 
     * @param value 
     */
    public setMap<T>(key: string | number, value: T) {
        this._map[key] = value;
    }

    /**
     * 获取缓存数据
     * @param key 
     * @param value 
     */
    public getMap<T>(key: string | number, isCreate?: boolean): T {
        let d = this._map[key];
        if (!d && isCreate) {
            d = this._map[key] = {};
        }
        return d;
    }

    /**
     * 缓存数据转成可存储数据
     * @returns 
     */
    public toStorage() {
        let _t = this;
        if (_t._map) {
            let data: any = {};
            for (let key in _t._map) {
                let v = _t._map[key];
                data[key] = _t.getCacheVal(v);
            }
            return data;
        }
    }

    /**
     * 获取缓存数据
     * @param data
     * @returns 
     */
    protected getCacheVal(data: any) {
        if (!data) return data;
        let type = ObjectUtils.getObjType(data);
        switch (type) {
            case ObjectUtils.ARRAY:
                let arr: any[] = [];
                for (let i = 0, len = data.length; i < len; i++) {
                    arr.push(this.getCacheVal(data[i]));
                }
                return arr;
            case ObjectUtils.OBJECT:
                if (data.toStorage) {
                    return data.toStorage();
                } else {
                    let map: any = {};
                    for (let k in data) {
                        map[k] = this.getCacheVal(data[k]);
                    }
                    return map;
                }
                break;
            case ObjectUtils.STRING:
            case ObjectUtils.NUMBER:
            case ObjectUtils.BOOLEAN:
                return data;
        }
    }
}