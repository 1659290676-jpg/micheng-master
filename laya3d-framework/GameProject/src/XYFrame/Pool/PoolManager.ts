import Singleton from "../Base/Singleton";
import ClassUtils from "../Utils/ClassUtils";
import UIUtils from "../Utils/UIUtils";
import ObjectPool from "./ObjectPool";

const { regClass, property } = Laya;
/**
 * @ Author: XXL
 * @ Date: 2026-01-30 17:16
 * @ Description: 对象池管理器
*/
@regClass()
export class PoolManager extends Singleton {
    /**
     * 对象池集合
     */
    private readonly _pools: Map<string, ObjectPool<any>> = new Map();

    /**
     * 类实例缓存的对象池
     */
    private readonly _clsMap: Map<string, IPool[]> = new Map();

    protected onInit(): void {
        let _t = this;
        _t.register("object",
            () => {
                return <any>{};
            },
            (obj) => {
                for (let k in obj) {
                    delete obj[k];
                }
            },
            { maxSize: 600, initCount: 600 });
    }

    /**
     * 注册对象池
     * @param key 对象池key
     * @param createFn 创建对象函数
     * @param resetFn 重置对象函数
     * @param options 配置项
     */
    public register<T extends IPool>(key: string, createFn: (...args: any[]) => T, resetFn: (obj: T) => any, options?: ObjectPoolOptions) {
        let _t = this;
        if (_t._pools.has(key)) {
            return _t._pools.get(key);
        }
        _t._pools.set(key, new ObjectPool(createFn, resetFn, options));
    }

    public clear(): void {
        super.clear();
        let _t = this;
        _t._pools.forEach(pool => {
            pool.clear();
        });
        _t._pools.clear();
        _t._clsMap.forEach(list => {
            for (let info of list) {
                info.destroy && info.destroy();
            }
        });

    }

    public destroy(): void {
        this.clear();
        super.destroy();
    }

    /**
     * 获取Object实例
     * @param key 对象池key
     * @param args 创建对象时传入的参数
     * @returns 对象实例
     */
    public getObj<T>(): T {
        return <T>this._pools.get("object").get();
    }

    /**
     * 释放Object实例
     * @param obj 对象实例
     * @returns 是否成功释放
     */
    public releaseObj(obj: Record<string | number, any>): boolean {
        return this._pools.get("object").release(obj);
    }

    /**
     * 批量释放对象实例
     * @param objs 对象实例列表
     */
    public releaseObjs(objs: Record<string | number, any>[]) {
        for (let obj of objs) {
            if (obj)
                this.releaseObj(obj);
        }
        objs.length = 0;
    }

    /**
     * 获取一个类的实例
     * @param cls 类
     * @param args 初始化参数
     */
    public getCls<T extends IPool>(cls: new () => T): T {
        let name = ClassUtils.getName(cls);
        let list = this._clsMap.get(name);
        if (list && list.length > 0) {
            let obj: any = list.shift();
            obj.__pool__ = false;
            return obj;
        }
        return new cls();
    }

    /**
     * 释放一个类对象
     * @param obj 对象
     * @returns true 表示成功释放
     */
    public releaseCls<T extends IPool>(obj: T): boolean {
        return this._releaseCls(ClassUtils.getName(obj), obj);
    }

    /**
     * 获取预制体实例
     * @param prefabPath 预制体路径
     * @param cls 类
     */
    public getPrefabInst<T extends IPool>(prefabPath: string, cls: new () => T): T {
        let key = prefabPath + "_" + ClassUtils.getName(cls);
        let list = this._clsMap.get(key);
        if (list && list.length > 0) {
            let obj: any = list.shift();
            obj.__pool__ = false;
            return obj;
        }
        return <any>UIUtils.createByUrl(prefabPath, <any>cls);
    }

    /**
     * 释放预制体实例
     * @param obj 
     * @returns 
     */
    public releasePrefabInst<T extends Laya.GWidget>(obj: T): boolean {
        let key = obj.url + "_" + ClassUtils.getName(obj);
        obj.removeSelf();
        return this._releaseCls(key, obj);
    }

    private _releaseCls(name: string, obj: any) {
        if (!obj) return;
        if ((<any>obj).__pool__) {
            console.warn('对象已处于对象池中，请勿重复归还！');
            return false;
        }
        let list = this._clsMap.get(name);
        if (!list) {
            list = [];
            this._clsMap.set(name, list);
        }
        (<any>obj).__pool__ = true;
        obj.clear && obj.clear();
        list.push(obj);
        return true;
    }

    public getImg() {
        return Laya.Pool.getItemByClass("Laya.GImage", Laya.GImage);
    }

    public freeImg(img: Laya.GImage) {
        img.visible = true;
        img.autoSize = false;
        img.x = 0;
        img.y = 0;
        img.skewY = 0;
        img.alpha = 1;
        img.rotation = 0;
        img.scale(1, 1);
        img.anchor(0, 0);
        img.src = null;
        img.data = null;
        img.blendMode = null;
        img.removeSelf();
        Laya.Pool.recover("Laya.GImage", img);
    }
}