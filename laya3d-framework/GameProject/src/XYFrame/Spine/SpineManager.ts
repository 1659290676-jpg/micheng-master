import Singleton from "../Base/Singleton";
import { PoolManager } from "../Pool/PoolManager";
import { ResourceManager } from "../Resource/ResourceManager";

/**保存加载*/
interface ISpineResItem {
    url: string;
    templat: Laya.SpineTemplet;
    count: number;
    calls: ICallBack[];
}

/**
 * @ Author: XXL
 * @ Date: 2025-06-09 21:00
 * @ Description: spine动画管理器
*/
export default class SpineManager extends Singleton {

    /**资源map*/
    private resMap: Record<string, ISpineResItem> = {};

    /**
     * 加载spine资源
     * @param url 路径
     * @param call_back 加载成功回调
     * @param thisObj 回调执行域
     * @param arg 回调参数
     */
    public load<T, K>(url: string, call_back?: (templat: Laya.SpineTemplet, url: string, thisObj?: T, arg?: K) => any, thisObj?: T, arg?: K) {
        if (!url) return;
        let t = this;
        let res = t.resMap[url];
        if (!res) {
            res = t.resMap[url] = PoolManager.getInst<PoolManager>().getObj<ISpineResItem>();
            res.url = url;
            res.count = 0;
            res.calls = [];
        }
        res.count++;
        if (!res.templat) {
            let call = PoolManager.getInst<PoolManager>().getObj<ICallBack>();
            call.method = call_back;
            call.caller = thisObj;
            call.args = arg;
            res.calls.push(call);
            ResourceManager.getInst<ResourceManager>().load(url, t.onLoadComplete, t, Laya.Loader.SPINE);
        } else {
            if (call_back) {
                call_back(res.templat, url, thisObj, arg);
            }
        }
    }

    /**
     * 释放Spine Templet
     * @param url 路径
     */
    public free(url: string, callbakc: (...args: any) => any, caller: any) {
        let t = this;
        let res = t.resMap[url];
        if (res) {
            res.count--;
            if (res.count <= 0) {
                t.resMap[url] = null;
                delete t.resMap[url];
                PoolManager.getInst<PoolManager>().releaseObj(res);
                ResourceManager.getInst<ResourceManager>().destroyRes(url);
            } else if (res.calls.length > 0) {
                for (let i = res.calls.length - 1; i >= 0; i--) {
                    let call = res.calls[i];
                    if (call.method === callbakc || call.caller === caller) {
                        res.calls.splice(i, 1);
                        PoolManager.getInst<PoolManager>().releaseObj(call);
                        break;
                    }
                }
            }
        }
    }

    /**
     * 加载完成
     * @param texture 
     * @param url 
     */
    private onLoadComplete(templat: Laya.SpineTemplet, url: string, t: this) {
        let res = t.resMap[url];
        if (res) {
            res.templat = templat;
            for (let call of res.calls) {
                call.method(templat, url, call.caller, call.args);
                PoolManager.getInst<PoolManager>().releaseObj(call);
            }
            res.calls.length = 0;
        } else {
            ResourceManager.getInst<ResourceManager>().destroyRes(url);
        }
    }


}