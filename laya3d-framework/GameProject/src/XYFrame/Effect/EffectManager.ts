import Singleton from "../Base/Singleton";
import Logger from "../Logger/Logger";
import { PoolManager } from "../Pool/PoolManager";
import ItemEffectBase from "./ItemEffectBase";
import ItemMcEffect from "./ItemMcEffect";
import ItemSpineEffect from "./ItemSpineEffect";

const { regClass } = Laya;

/**
 * @ Author: XXL
 * @ Date: 2025-06-12 16:39
 * @ Description: ui上的特效
*/
@regClass()
export default class EffectManager extends Singleton {
    private _map: Record<string, ItemEffectBase> = {};
    private _count = 0;
    private _check: number;

    protected onInit(): void {
        if (DEBUG) {
            this._check = 0;
        }
    }

    /**
     * 帧频调用
     * @param dt 帧频间隔时间
     */
    public update(dt: number) {
        if (this._count <= 0) return;
        let map = this._map;
        for (let k in map) {
            var item = map[k];
            if (item.tick(item, dt)) {
                if (map[k]) {//防止回调中删除
                    this._count--;
                    delete map[k];
                    PoolManager.getInst<PoolManager>().releaseCls(item);
                }
            }
        }
        if (DEBUG) {
            this._check += dt;
            if (this._check >= 10000) {
                this._check = 0;
                for (let k in this._map) {
                    this._map[k].checkStage();
                }
            }
        }
    }


    /**
     * 添加帧特效
     * @param url 特效路径（不包含resources/movie/）
     * @param parent 容器
     * @param x x轴坐标
     * @param y y轴坐标
     * @param loopTm 特效循环时长（毫秒），默认:1000毫秒
     * @param remainTm 持续显示时间（毫秒）;<=0为一直显示,>0显示时间;默认:0
     * @param loop 是否循环播放动画，默认:true
     * @param actName 动作名称，默认:animation
     * @param scaleX 特效水平缩放 默认:1
     * @param scaleY 特效垂直缩放 默认:1
     * @param childIndex 添加到parent的索引，默认：parent的最后个索引
     * @returns 返回特效实例 ItemMcEffect
     */
    public addMc(url: string, parent: Laya.GWidget, x: number, y: number, loopTm = 1000, remainTm = 0, loop = true, actName = "_1", scaleX = 1, scaleY = 1, childIndex?: number) {
        let item = ItemMcEffect.create();
        item.init(item, url, parent, x, y, loopTm, remainTm, loop, actName, scaleX, scaleY, childIndex);
        let _t = this;
        _t._map[item.eid] = item;
        _t._count++;
        return item;
    }

    /**
     * 添加ui上的帧特效
     * @param url 特效路径（不包含resources/movie/effect/ui/）
     * @param parent 容器
     * @param x x轴坐标
     * @param y y轴坐标
     * @param loopTm 特效循环时长（毫秒），默认:1000毫秒
     * @param remainTm 持续显示时间（毫秒）;<=0为一直显示,>0显示时间;默认:0
     * @param loop 是否循环播放动画，默认:true
     * @param actName 动作名称，默认:animation
     * @param scaleX 特效水平缩放 默认:1
     * @param scaleY 特效垂直缩放 默认:1
     * @param childIndex 添加到parent的索引，默认：parent的最后个索引
     * @returns 返回特效实例 ItemMcEffect
     */
    public addMcUI(url: string | number, parent: Laya.GWidget, x: number, y: number, loopTm = 1000, remainTm = 0, loop = true, actName = "_1", scaleX = 1, scaleY = 1, childIndex?: number) {
        return this.addMc("effect/ui/" + url, parent, x, y, loopTm, remainTm, loop, actName, scaleX, scaleY, childIndex);
    }


    /**
     * 添加spine特效
     * @param url 特效路径（不包含resources/spine/）
     * @param parent 容器
     * @param x x轴坐标
     * @param y y轴坐标
     * @param loopTm 特效循环时长（毫秒），默认:1000毫秒
     * @param remainTm 持续显示时间（毫秒）;<=0为一直显示,>0显示时间;默认:0
     * @param loop 是否循环播放动画，默认:true
     * @param actName 动作名称，默认:animation
     * @param scaleX 特效水平缩放 默认:1
     * @param scaleY 特效垂直缩放 默认:1
     * @param childIndex 添加到parent的索引，默认：parent的最后个索引
     * @returns 返回特效实例ItemSpineEffect
     */
    public addSpine(url: string, parent: Laya.GWidget, x: number, y: number, loopTm = 1000, remainTm = 0, loop = true, actName = "animation", scaleX = 1, scaleY = 1, childIndex?: number) {
        let item = ItemSpineEffect.create();
        item.init(item, url, parent, x, y, loopTm, remainTm, loop, actName, scaleX, scaleY, childIndex);
        let _t = this;
        _t._map[item.eid] = item;
        _t._count++;
        return item;
    }

    /**
     * 添加ui上的spine特效
     * @param url 特效路径（不包含resources/spine/effect/ui/）
     * @param parent 容器
     * @param x x轴坐标
     * @param y y轴坐标
     * @param loopTm 特效循环时长（毫秒），默认:1000毫秒
     * @param remainTm 持续显示时间（毫秒）;<=0为一直显示,>0显示时间;默认:0
     * @param loop 是否循环播放动画，默认:true
     * @param actName 动作名称，默认:animation
     * @param scaleX 特效水平缩放 默认:1
     * @param scaleY 特效垂直缩放 默认:1
     * @param childIndex 添加到parent的索引，默认：parent的最后个索引
     * @returns 返回特效实例ItemSpineEffect
     */
    public addSpineUI(url: string | number, parent: Laya.GWidget, x: number, y: number, loopTm = 1000, remainTm = 0, loop = true, actName = "_1", scaleX = 1, scaleY = 1, childIndex?: number) {
        this.addSpine("effect/ui/" + url, parent, x, y, loopTm, remainTm, loop, actName, scaleX, scaleY, childIndex);
    }


    /**
     * 删除对应特效
     * @param eff ItemEffect对象
     */
    public onRemove(eff: ItemEffectBase) {
        this.removeById(eff.eid);
    }

    /**
     * 根据特效id删除特效
     * @param id 特效的id
     */
    public removeById(id: number) {
        let _t = this;
        let item = _t._map[id];
        if (item) {
            _t._count--;
            delete _t._map[id];
            if (DEBUG) {
                if (item.destroyed) {
                    Logger.error("特效已销毁，无法回收");
                    return;
                }
            }
            PoolManager.getInst<PoolManager>().releaseCls(item);
        }
    }

    /**
     * 清理所有特效
     */
    public clear() {
        let _t = this;
        if (_t._count <= 0) return;
        _t._count = 0;
        let map = _t._map;
        for (let k in map) {
            let item = map[k];
            _t._count--;
            delete map[k];
            if (!item.destroyed)
                PoolManager.getInst<PoolManager>().releaseCls(item);
        }
    }

    public destroy() {
        super.destroy();
        this.clear();
        this._map = null;
        this._count = 0;
    }

}