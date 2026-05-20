import { PoolManager } from "../Pool/PoolManager";
import MovieClip from "./MovieClip";

/**
 * @ Author: XXL
 * @ Date: 2025-06-12 16:12
 * @ Description: 多个帧动画的集合
*/
export default class MovieClipMap extends Laya.GWidget implements IDepSprite {
    public depVal: number;

    /**当前显示动画队列*/
    private _list: MovieClip[] = [];
    /**当前显示动画集合*/
    private _map: Record<number | string, MovieClip> = {};
    /**添加的总数量*/
    private _count = 0;
    /**是否镜像*/
    private _$ghost: boolean = false;
    /**缩放比例*/
    private _$scale: number = 1;

    /**
     * 所有动画集合
     */
    public get aniMap() {
        return this._map;
    }

    /**设置播放百分比*/
    public set ratio(v: number) {
        if (this._count <= 0) return;
        if (v >= 1) {
            v = v - (v >> 0);
        }
        for (let i = 0; i < this._count; i++) {
            this._list[i].ratio = v;
        }
    }

    /**
     * 添加一个动画
     * @param ani 
     */
    public add(ani: MovieClip) {
        let _t = this;
        if (_t != ani.parent) {
            _t._list.push(ani);
            _t._map[ani.type] = ani;
            _t.addChild(ani);
            _t._count++;
        }
    }

    /**
     * 删除某个动画
     * @param ani 
     */
    public remove(ani: MovieClip) {
        let _t = this;
        let index = _t._list.indexOf(ani);
        if (index >= 0) {
            _t._list.splice(index, 1);
            delete _t._map[ani.type];
            ani.recover();
            _t._count--;
        }
    }

    /**
     * 根据类型删除动画
     * @param type 动画类型
     */
    public removeByType(type: number | string) {
        let ani = this._map[type];
        if (ani) {
            this.remove(ani);
        }
    }

    /**
     * 根据类型获取动画
     * @param type 动画类型
     * @returns 
     */
    public getMc(type: number) {
        return this._map[type];
    }

    /**
     * 是否镜像
     */
    public set ghost(v: boolean) {
        let _t = this;
        if (!_t._$ghost == !v) return;
        _t._$ghost = v;
        _t.onScale(_t);
    }

    /**
     * 是否镜像
     */
    public get ghost() {
        return this._$ghost;
    }

    /**
     * 缩放
     */
    public setScale(v: number) {
        let _t = this;
        if (_t._$scale == v) return;
        _t._$scale = v;
        _t.onScale(_t);
    }

    /**
     * 缩放
     */
    public getScale() {
        return this._$scale;
    }

    /**
     * 更新缩放
     * @param _t 
     */
    protected onScale(_t: this) {
        _t.scaleX = (_t._$ghost ? -1 : 1) * _t._$scale;
        _t.scaleY = _t._$scale;
    }

    public clear() {
        let _t = this;
        for (let i = 0, len = _t._list.length; i < len; i++) {
            let p = _t._list[i];
            _t.removeChild(p);
            p.recover();
        }
        _t._list.length = 0;
        for (let k in _t._map) {
            delete _t._map[k];
        }
        _t._count = 0;
        _t._$ghost = false;
        _t._$scale = 1;
        _t.scaleX = _t.scaleY = 1;
        _t.visible = true;
    }


    public recover() {
        this.removeSelf();
        PoolManager.getInst<PoolManager>().releaseCls(this);
    }

    destroy(): void {
        this.clear();
        super.destroy();
    }

    /**
     * 获取一个实例
     * @returns 
     */
    public static create() {
        return PoolManager.getInst<PoolManager>().getCls(MovieClipMap);
    }
}