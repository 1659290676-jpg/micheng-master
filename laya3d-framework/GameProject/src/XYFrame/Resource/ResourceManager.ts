import Singleton from "../Base/Singleton";
import Logger from "../Logger/Logger";
import { PoolManager } from "../Pool/PoolManager";
import ResPath from "./ResPath";

const { regClass, property } = Laya;

/**
 * @ Author: XXL
 * @ Date: 2025-07-03 19:40
 * @ Description: 加载状态
 */
enum LoadingStatue {
    /**未加载*/
    UNLOADED,
    /**等待加载*/
    WAITING,
    /**加载中*/
    LOADING,
    /**重试加载*/
    RETRY,
    /**加载完成*/
    LOADED,
    /**加载失败*/
    FAILED,
}

interface IRes {
    /**资源路径*/
    path: string;
    /**资源类型*/
    type: string;
    /**资源等级，等级越高，加载优先级越高*/
    level: number;
    /**资源数据*/
    asset: any;
    /**加载状态*/
    status: LoadingStatue;
    /**回调列表*/
    callbacks: ICallBack[];
    /**是否释放*/
    isRecycle: boolean;
    /**释放时间*/
    time: number;
    /**重试次数*/
    tryNum: number;
}

/**
 * @ Author: XXL
 * @ Date: 2026-01-28 11:24
 * @ Description: 资源管理器
*/
@regClass()
export class ResourceManager extends Singleton {
    /**资源列表*/
    private _resMap: Map<string, IRes>;

    /**等待加载的资源*/
    private _wait_load: IRes[] = [];
    /**重试加载的资源*/
    private _retry_load: IRes[] = [];
    /**回收列表*/
    private _recycle_list: string[] = [];
    /**增加的加载数量*/
    private _loading_count = 0;
    /**最大加载数量*/
    private Max_Loading = 6;

    /**重试延迟*/
    private retryDelay = 2000;
    /**重试次数*/
    private retryNum = 3;

    /**回收时间*/
    private recycleTime = 60000;

    /**是否暂停加载*/
    private _pause = false;

    public constructor() {
        super();
        let _t = this;
        _t._resMap = new Map();
        Laya.loader.retryDelay = _t.retryDelay;
        Laya.loader.retryNum = 0;
        Laya.loader.maxLoader = this.Max_Loading;

        if (DEBUG) {
            _t.setRecycleTime(10000);
        }
    }

    /**
     * 设置回收时间
     * @param time 回收时间，单位毫秒
     */
    public setRecycleTime(time: number) {
        this.recycleTime = time;
    }

    /**
     * 设置是否暂停加载
     * @param pause 
     */
    public setPause(pause: boolean) {
        this._pause = pause;
    }

    /**
     * 获取引擎的资源
     * @param url 文件的路径
     */
    public getLayaRes(url: string) {
        return Laya.Loader.loadedMap[Laya.URL.formatURL(url)];
    }

    /**
     * 加载资源
     * @param url 资源路径
     * @param callBack 回调
     * @param thisObj 回调对象
     * @param type 资源类型
     */
    public load<T>(url: string, callBack?: (asset: any, url: string, thisObj?: T, ...args: any[]) => any, thisObj?: T, type?: string, ...args: any[]) {
        let _t = this;
        // let abs_url = ResPath.getResPath(url);
        let abs_url = url;
        let res = _t._resMap.get(abs_url);
        let is_push = false;
        if (res) {
            res.isRecycle = false;
            if (_t.unRecycle(abs_url) && (res.status == LoadingStatue.UNLOADED || res.status == LoadingStatue.WAITING || res.status == LoadingStatue.RETRY)) {
                is_push = true;
            }
            if (res.status == LoadingStatue.LOADED || res.status == LoadingStatue.FAILED) {
                callBack && callBack(res.asset, url, thisObj, ...args);
                return;
            }
        } else {
            is_push = true;
            res = PoolManager.getInst<PoolManager>().getObj<IRes>();
            res.path = url;
            res.type = type;
            res.level = _t.getLevel(abs_url);
            res.status = LoadingStatue.UNLOADED;
            res.callbacks = [];
            res.tryNum = 0;
            _t._resMap.set(abs_url, res);
        }
        if (callBack) {
            let callback = PoolManager.getInst<PoolManager>().getObj<ICallBack>();
            callback.method = callBack;
            callback.caller = thisObj;
            callback.args = args;
            res.callbacks.push(callback);
        }
        if (is_push) {
            _t.pushWaitLoad(res);
        }
        _t.check_load(_t);
    }

    /**
     * 异步加载资源
     * @param url 资源路径
     * @param type 资源类型
     * @returns 
     */
    public loadAsync<T>(url: string, type?: string): Promise<T> {
        let _t = this;
        return new Promise((resolve, reject) => {
            _t.load(url, (asset, url, thisObj) => {
                resolve(asset);
            }, _t, type);
        });
    }

    /**
     * 加载资源组
     * @param urls 资源路径列表
     * @param callBack 回调
     * @param thisObj 回调对象
     */
    public loadGroup<T>(urls: string[], callBack: (assets: any, urls: string[], thisObj?: T) => any, thisObj?: T) {
        let _t = this;
        let len = urls.length;
        let index = 0;
        let assets: any = {}
        for (let i = 0; i < len; i++) {
            _t.load(urls[i], (asset, url, thisObj) => {
                assets[url] = asset;
                index++;
                if (index == len) {
                    callBack && callBack(assets, urls, thisObj);
                }
            }, thisObj);
        }
    }

    /**
     * 异步加载资源组
     * @param urls 资源路径列表
     * @returns 
     */
    public loadGroupAsync(urls: string[]): Promise<any> {
        let _t = this;
        return new Promise((resolve, reject) => {
            _t.loadGroup(urls, (assets, urls, thisObj) => {
                resolve(assets);
            }, _t);
        });
    }

    /**
     * 销毁资源
     * @param abs_url 资源路径，包含res/
     * @param is_now 是否立即销毁
     */
    public destroyAbs(abs_url: string, is_now?: boolean): void {
        let _t = this;
        let res = _t._resMap.get(abs_url);
        if (!res) {
            Laya.loader.clearRes(abs_url);
            return;
        }
        let index = _t._recycle_list.indexOf(abs_url);
        if (index != -1) {
            return;
        }
        index = _t._wait_load.indexOf(res);
        if (index != -1) {
            _t._wait_load.splice(index, 1);
        }
        index = _t._retry_load.indexOf(res);
        if (index != -1) {
            _t._retry_load.splice(index, 1);
        }
        res.isRecycle = true;
        if (res.callbacks) {
            PoolManager.getInst<PoolManager>().releaseObjs(res.callbacks);
            res.callbacks.length = 0;
        }
        if (is_now) {
            res.time = Laya.timer.currTimer - _t.recycleTime;
            _t._recycle_list.unshift(abs_url);
        } else {
            res.time = Laya.timer.currTimer + _t.recycleTime;
            _t._recycle_list.push(abs_url);
        }
    }

    /**
     * 销毁资源
     * @param url 资源路径
     * @param is_now 是否立即销毁
     */
    public destroyRes(url: string, is_now?: boolean): void {
        // this.destroyAbs(ResPath.getResPath(url), is_now);
        this.destroyAbs(url, is_now);
    }

    /**
     * 检查销毁
     * @param now 当前时间
     * @param is_all 是否全部销毁
     */
    public checkDestroy(now: number, is_all?: boolean) {
        let list = this._recycle_list;
        let len = list.length;
        if (is_all) {
            if (len > 300) len = 300;
        } else {
            if (len > 30) len = 30;
        }
        let abs_url: string, res: IRes;
        let map = this._resMap;
        for (let i = 0; i < len; i++) {
            abs_url = list[0];
            res = map.get(abs_url);
            if (res) {
                if (res.time > now) { break; }
                map.delete(abs_url);
                list.shift();
                if (DEBUG) {
                    Logger.warn("销毁资源：" + res.path);
                }
                // 是否引用量
                if(res.asset && res.asset._removeReference) {
                    res.asset._removeReference();
                }
                if (res.type == Laya.Loader.IMAGE || res.type == Laya.Loader.TEXTURE2D) {
                    if (res.asset && res.asset._bitmap) {
                        res.asset._bitmap = null;
                    }
                }
                Laya.Loader.clearRes(abs_url);
                if (res.status == LoadingStatue.LOADING) {
                    //取消加载
                    Laya.loader.cancelLoadByUrl(abs_url);
                }
                res.asset = null;
            } else {
                list.shift();
            }
        }
    }

    /**
     * 重置加载进程，重新加载
     */
    public reload() {
        let _t = this;
        _t._loading_count = 0;
        _t._is_later = false;
        _t.check_load(_t);
    }

    /**
     * 是否重试中
     */
    private _is_retry: boolean;
    private _check_retry() {
        if (this._is_retry) {
            return;
        }
        this._is_retry = true;
        Laya.timer.loop(1000, this, this._load_retry);
    }

    /**
     * 加载重试
     */
    private _load_retry() {
        let _t = this;
        if (_t._retry_load.length == 0) {
            _t._is_retry = false;
            Laya.timer.clear(_t, _t._load_retry);
            return;
        }
        let list = _t._retry_load;
        let len = list.length;
        let index = 0;
        let now = Laya.timer.currTimer;
        while (index < len) {
            let res = list[0];
            if (res.time <= now) {
                list.shift();
                _t.pushWaitLoad(res);
                index++;
            } else {
                break;
            }
        }
        _t.check_load(_t);
    }

    /**是否延迟加载中*/
    private _is_later: boolean;
    /**
     * 检查加载
     * @param _t 
     */
    private check_load(_t: this) {
        if (_t._is_later || _t._loading_count >= _t.Max_Loading || _t._wait_load.length == 0) {
            return;
        }
        _t._is_later = true;
        Laya.timer.callLater(_t, _t._load_threads);
    }

    /**
     * 加载线程
     */
    private _load_threads() {
        this._is_later = false;
        while (!this._loading()) {
            break;
        }
    }


    /**
     * 加载下一个
     */
    private _load_next() {
        if (this._loading_count > 0) {
            this._loading_count--;
        }
        this._loading();
    }

    /**
     * 加载
     */
    private _loading() {
        if (this._pause) return false;
        let _t = this;
        if (_t._loading_count >= _t.Max_Loading || _t._wait_load.length == 0) return false;
        let res = _t._wait_load.shift();
        _t._loading_count++;
        res.status = LoadingStatue.LOADING;
        res.tryNum++;
        // let abs_url = ResPath.getResPath(res.path);
        let abs_url = res.path;
        Laya.loader.load(abs_url, Laya.Handler.create(_t, _t.onLoadComplete, [_t, abs_url]), null, res.type);
        return true;
    }


    /**
     * 加载完成
     * @param _t 
     * @param abs_url 
     * @param asset 资源
     */
    private onLoadComplete(_t: this, abs_url: string, asset: any) {
        let res = _t._resMap.get(abs_url);
        if (res) {
            res.status = LoadingStatue.LOADED;
            res.asset = asset;
            if (asset && asset._addReference) {
                // 防止自动释放
                asset._addReference();
            }
            if (asset == null && res.tryNum < _t.retryNum) {
                Laya.loader.clearRes(abs_url);
                res.status = LoadingStatue.RETRY;
                if (_t._loading_count > 0) {
                    _t._loading_count--;
                }
                res.time = Laya.timer.currTimer + _t.retryDelay - 33;
                _t._load_next();
                //释放就不需要重新加入重试队列
                if (!res.isRecycle) {
                    _t._retry_load.push(res);
                    _t._check_retry();
                }
            } else {
                let callbacks = res.callbacks;
                for (let i = 0, len = callbacks.length; i < len; i++) {
                    let callback = callbacks[i];
                    if (callback.method) {
                        callback.method(res.asset, res.path, callback.caller, ...callback.args);
                    }
                }
                PoolManager.getInst<PoolManager>().releaseObjs(callbacks);
                res.callbacks.length = 0;
                _t._load_next();
            }
        } else {
            //没有找到资源
            Laya.loader.clearRes(abs_url);
            _t._load_next();
        }
    }

    /**
     * 添加到加载队列
     * @param res 
     * @returns 
     */
    private pushWaitLoad(res: IRes) {
        res.status = LoadingStatue.WAITING;
        let list = this._wait_load;
        let end_index = list.length - 1;
        if (end_index < 0) {
            list.push(res);
            return;
        }
        let start_index = 0;
        let res2 = list[end_index];
        if (res2.level >= res.level) {//比最后个资源等级低
            list.push(res);
        } else if (start_index == end_index) { // 只有一个资源
            list.unshift(res);
        } else {
            res2 = list[start_index];
            if (res2.level < res.level) {
                list.unshift(res);
            } else {
                //对半查找
                let index = start_index;
                while (end_index > start_index + 1) {
                    index = (start_index + end_index) >> 1;
                    res2 = list[index];
                    if (res2.level > res.level) {
                        start_index = index;
                    } else {
                        end_index = index;
                    }
                }
                list.splice(end_index, 0, res);
            }
        }
    }

    /**
     * 取消回收
     * @param abs_url 资源路径
     * @returns 是否取消成功
     */
    private unRecycle(abs_url: string) {
        let index = this._recycle_list.indexOf(abs_url);
        if (index != -1) {
            this._recycle_list.splice(index, 1);
            return true
        }
        return false;
    }

    /**
     * 获取资源等级
     * @param url 资源路径
     * @returns 资源等级
     */
    private getLevel(url: string) {
        if (url.indexOf(ResPath.RES_CFG_DIR) != -1) {
            return 100;
        }
        if (url.indexOf(ResPath.RES_UI) != -1) {
            return 90;
        }
        if (url.indexOf(ResPath.RES_UI) != -1) {
            return 80;
        }
        if (url.indexOf(ResPath.RES_IMG_DIR) != -1) {
            return 60;
        }
        if (url.indexOf(ResPath.RES_MOVIE_DIR) != -1) {
            return 30;
        }
        if (url.indexOf(ResPath.RES_SPINE_DIR) != -1) {
            return 20;
        }
        return 10;
    }
}