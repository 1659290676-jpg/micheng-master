import Logger from "../Logger/Logger";
import Base64Utils from "../Utils/Base64Utils";

const { regClass } = Laya;

/**
 * @ Author: XXL
 * @ Date: 2026-03-05 20:08
 * @ Description: 缓存数据
*/
@regClass()
export default class StorageMgr {
    /** 缓存的数据 */
    private _map: Record<string, any>;
    /** 缓存model的数据 */
    private _modelMap: Record<string, any>;
    private _key: string;

    /**
     * 初始化
     * @param id 当前账号
     */
    public init(id: number | string) {
        let _t = this;
        _t._modelMap = {};
        _t._key = `${id}_cache`;
        let str = Laya.LocalStorage.getItem(_t._key);
        if (str) {
            try {
                _t._map = JSON.parse(Base64Utils.decode(str));
                if (typeof _t._map != "object") {
                    _t._map = {};
                }
            } catch (e) {
                _t._map = {};
            }
        } else {
            _t._map = {};
        }

    }

    /**
     * 获取缓存的数据
     * @param key 
     */
    public getVal<T>(key: number | string): T {
        if (DEBUG) {
            if (!this._map) {
                Logger.error('缓存未初始化，无法获取数据');
                return null;
            }
        }
        return this._map[key];
    }

    /**
     * 设置保存缓存的数据
     * @param key 
     * @param value 
     */
    public setVal(key: number | string, value: any) {
        this._save(key, value);
    }

    /**
     * 获取保存model的缓存数据
     * @param key 
     * @returns 
     */
    public getModelVal<T>(key: number | string): T {
        if (DEBUG) {
            if (!this._modelMap) {
                Logger.error('缓存未初始化，无法获取数据');
                return null;
            }
        }
        let map = this._modelMap;
        if (map[key] === undefined) {
            let str = Laya.LocalStorage.getItem(`${this._key}_model_${key}`);
            if (str) {
                try {
                    map[key] = JSON.parse(Base64Utils.decode(str)) || null;
                } catch (e) {
                    map[key] = null;
                }
            } else {
                map[key] = null;
            }
        }
        return map[key];
    }

    /**
     * 保存model缓存数据
     * @param key 数据key
     * @param value 保存的数据
     * @returns 
     */
    public setModelVal(key: number | string, value: any) {
        let _t = this;
        if (DEBUG) {
            if (!_t._modelMap) {
                Logger.error('缓存未初始化，无法保存', key);
                return;
            }
        }
        if (_t._modelMap[key] != value) {
            _t._modelMap[key] = value;
            Laya.LocalStorage.setItem(`${_t._key}_model_${key}`, Base64Utils.encode(JSON.stringify(value)));
        }
    }

    /**
     * 缓存数据
     * @param key 
     * @param value 
     * @returns 
     */
    private _save(key: number | string, value: any) {
        let _t = this;
        if (DEBUG) {
            if (!_t._map) {
                Logger.error('缓存未初始化，无法保存', key);
                return;
            }
        }
        if (_t._map[key] != value) {
            _t._map[key] = value;
            Laya.LocalStorage.setItem(`${_t._key}`, Base64Utils.encode(JSON.stringify(_t._map)));
        }
    }

}