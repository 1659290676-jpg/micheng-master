
import { PoolManager } from "../Pool/PoolManager";
import MovieClipData from "./MovieClipData";
import MovieClipSheet from "./MovieClipSheet";

/**
 * @ Author: XXL
 * @ Date: 2025-06-12 16:05
 * @ Description: 帧动画工厂
*/
export default class MovieClipFactory implements IPool {
    /**缓存的动画数据对象*/
    private _cacheMap: Record<string | number, MovieClipData>;
    /**动画配置文件*/
    private _resData: {
        /**纹理数据*/
        res: any,
        /**动画数据*/
        mc: any,
    };
    /**纹理集*/
    private _sheet: MovieClipSheet;

    /**
     * 初始化数据
     * @param data 动画配置文件
     * @param texture 动画纹理
     */
    public init(data: any, texture: Laya.Texture) {
        let _t = this;
        _t.clear();
        _t._resData = data;
        _t._cacheMap || (_t._cacheMap = {});
        let sheet = _t._sheet = PoolManager.getInst<PoolManager>().getCls(MovieClipSheet);
        sheet.setBase(texture);
    }

    /**
     * 获取一个动画数据
     * @param mcName 动画名称
     * @returns 返回MovieClipData对象
     */
    public getData(mcName: string): MovieClipData {
        let _t = this;
        let resData = _t._resData;
        if (resData && _t._sheet) {
            let data = _t._cacheMap[mcName];
            if (!data) {
                let mc = resData.mc;
                if (mc[mcName]) {
                    data = _t._cacheMap[mcName] = PoolManager.getInst<PoolManager>().getCls(MovieClipData);
                    data.init(mc[mcName], resData.res, _t._sheet);
                }
            }
            return data;
        }
        return null;
    }

    /**
     * 清理数据
     */
    public clear() {
        let _t = this;
        _t._resData = null;
        let map = _t._cacheMap;
        if (map) {
            let data: MovieClipData;
            for (let k in map) {
                data = map[k];
                delete map[k];
                if (data) {
                    PoolManager.getInst<PoolManager>().releaseCls(data);
                }
            }
        }
        let sheet = _t._sheet;
        if (sheet) {
            _t._sheet = null;
            PoolManager.getInst<PoolManager>().releaseCls(sheet);
        }
    }

    public destroy() {
        this.clear();
    }

    recover() {
        PoolManager.getInst<PoolManager>().releaseCls(this);
    }
}