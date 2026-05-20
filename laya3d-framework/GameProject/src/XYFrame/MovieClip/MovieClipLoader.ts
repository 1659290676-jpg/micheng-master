import Logger from "../Logger/Logger";
import { PoolManager } from "../Pool/PoolManager";
import { ResourceManager } from "../Resource/ResourceManager";
import ResPath from "../Resource/ResPath";
import MovieClip from "./MovieClip";
import MovieClipFactory from "./MovieClipFactory";

/**
 * @ Author: XXL
 * @ Date: 2025-06-12 16:09
 * @ Description: 帧动画加载器
*/
export default class MovieClipLoader implements IPool {
    /**缓存的AniLoad，key为动画路径*/
    private static _loadMap: Record<string | number, MovieClipLoader> = {};
    /**
     * 添加动画对应资源
     * @param url 资源路径（不包含res/2d/）
     * @param ani 动画
     */
    public static setMc(url: string, ani: MovieClip) {
        let load = MovieClipLoader._loadMap[url]
        if (!load) {
            load = MovieClipLoader._loadMap[url] = PoolManager.getInst<PoolManager>().getCls(MovieClipLoader);
            load.setVal(url);
        }
        load.addAni(ani);
    }

    /**
     * 释放动画对应资源
     * @param url 资源路径（不包含res/2d/）
     * @param ani 动画
     */
    public static freeMc(url: string, ani: MovieClip) {
        let load = MovieClipLoader._loadMap[url];
        if (load) {
            load.removeAni(ani);
            if (load.count <= 0) {
                delete MovieClipLoader._loadMap[url];
                PoolManager.getInst<PoolManager>().releaseCls(load);
            }
        }
    }

    /**动画的路径*/
    private _val: string;
    /**动画的配置文件*/
    private _data: any;
    /**动画纹理*/
    private _texture: Laya.Texture;
    /**动画工厂*/
    private _factory: MovieClipFactory;
    /**调用的动画*/
    private _map: Record<string | number, MovieClip>;
    /**调用的数量*/
    private _count = 0;

    public setVal(val: string) {
        let _t = this;
        if (_t._val) {
            Logger.error("MovieClipLoader已val已赋值", _t._val, val);
            return;
        }
        _t._val = ResPath.getMoviePath(val);
        ResourceManager.getInst<ResourceManager>().load(_t._val + ResPath.EXT_JSON, _t.onJsonComplete, _t);
        ResourceManager.getInst<ResourceManager>().load(_t._val + ResPath.EXT_PNG, _t.onTextureComplete, _t);
    }

    /**调用的数量*/
    public get count() {
        return this._count;
    }

    /**
     * 添加调用的动画
     * @param ani 调用的动画
     */
    public addAni(ani: MovieClip) {
        let _t = this;
        let map = _t._map || (_t._map = {});
        let code = ani.hashCode;
        if (!map[code]) {
            _t._count++;
        }
        map[code] = ani;
        if (_t._factory) {
            ani.setFactory(_t._factory);
        }
    }

    /**
     * 移除动画调用
     * @param ani 调用的动画
     */
    public removeAni(ani: MovieClip) {
        let _t = this;
        let map = _t._map;
        if (!map) return;
        let code = ani.hashCode;
        if (map[code]) {
            delete map[code];
            _t._count--;
            ani.setFactory(null);
        }
    }

    /**
     * 清理数据
     */
    public clear() {
        let _t = this;
        _t._count = 0;
        let val = _t._val;
        _t._val = _t._texture = _t._data = null;
        let map = _t._map;
        if (map) {
            for (let k in map) {
                map[k].setFactory(null);
                delete map[k];
            }
        }
        let factory = _t._factory;
        if (factory) {
            _t._factory = null;
            PoolManager.getInst<PoolManager>().releaseCls(factory);
        }
        if (val) {
            ResourceManager.getInst<ResourceManager>().destroyRes(val + ResPath.EXT_JSON);
            ResourceManager.getInst<ResourceManager>().destroyRes(val + ResPath.EXT_PNG);
        }
    }

    /**
     * 动画配置文件加载完成
     * @param data json配置
     * @param url 文件路径
     * @param _t this
     */
    private onJsonComplete(data:any, url: string, _t: MovieClipLoader) {
        if (_t._val + ResPath.EXT_JSON == url) {
            _t._data = data;
            _t.onInitFactory(_t);
        }
    }

    /**
     * 动画图片文件加载完成
     * @param data egret.Texture
     * @param url 文件路径
     * @param _t this
     */
    private onTextureComplete(data:any, url: string, _t: MovieClipLoader) {
        if (_t._val + ResPath.EXT_PNG == url) {
            _t._texture = data;
            _t.onInitFactory(_t);
        }
    }

    /**
     * 初始化动画工厂
     * @param _t this
     */
    private onInitFactory(_t: MovieClipLoader) {
        if (_t._texture && _t._data) {
            let factory = _t._factory || (_t._factory = PoolManager.getInst<PoolManager>().getCls(MovieClipFactory));
            factory.init(_t._data, _t._texture);
            let map = _t._map;
            if (map) {
                for (let k in map) {
                    map[k].setFactory(factory);
                }
            }
        }
    }

    destroy() {
        this.clear();
    }
}