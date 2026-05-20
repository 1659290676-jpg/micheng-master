import { PoolManager } from "../Pool/PoolManager";
import SpinePart from "./SpinePart";

/**
 * @ Author: XXL
 * @ Date: 2025-06-10 11:44
 * @ Description: spine动画集合
*/
export default class SpineMap extends Laya.GWidget implements IDepSprite {
    public constructor() {
        super();
        this.depVal = 0;
        this.mouseEnabled = false;
    }

    public depVal: number;

    /**添加的数量*/
    private _count = 0;

    private _ratio: number = 0;

    /**合集*/
    private _map: Record<string, SpinePart> = {};
    /**位置*/
    private _pos: Record<string, { x: number, y: number }> = {};

    /**骨骼高度*/
    private _ske_h = 0;
    /**骨骼宽度*/
    private _ske_w = 0;

    /**骨骼高度*/
    public get skeH(): number {
        return this._ske_h;
    }

    /**骨骼宽度*/
    public get skeW(): number {
        return this._ske_w;
    }

    /**
     * 获取动画集合
     * @returns 
     */
    public getMap() {
        return this._map;
    }

    /**
     * 添加
     * @param part 
     */
    public add(part: SpinePart) {
        let _t = this;
        _t.remove(part.type);
        _t._count++;
        _t._map[part.type] = part;
        _t.onLoadComplete(_t, part);
        part.setCompCall(_t.onLoadComplete, _t);
    }

    /**
     * 获取
     * @param type 
     * @returns 
     */
    public get(type: number) {
        return this._map[type];
    }

    /**
     * 加载完成
     * @param _t 
     * @param part 
     */
    private onLoadComplete(_t: this, part: SpinePart) {
        let temp = part.getTemplet();
        if (temp) {
            let p = _t._pos[part.type];
            if (p) {
                delete _t._pos[part.type];
                _t.pos(p.x || 0, p.y || 0);
                PoolManager.getInst<PoolManager>().releaseObj(p);
            }
            _t.addChild(part);
            _t._updateSize();
        }
    }

    /**
     * 更新尺寸
     */
    private _updateSize() {
        let map = this._map;
        let w = 0, h = 0;
        let p: SpinePart;
        for (let k in map) {
            p = map[k];
            if (p.width > w) {
                w = p.width;
            }
            if (p.height > h) {
                h = p.height;
            }
        }
        this._ske_w = w;
        this._ske_h = h;
    }

    /**
     * 设置某个部位的位置
     * @param type 类型
     * @param x 水平坐标
     * @param y 垂直坐标
     */
    public setXY(type: number, x?: number, y?: number) {
        const t = this;
        let p = t._map[type];
        if (p) {
            let temp = p.getTemplet();
            if (temp) {
                t.pos(x || 0, y || 0);
            } else {
                if (!x && !y) {
                    delete t._pos[type];
                } else {
                    let o = t._pos[type];
                    if (!o) {
                        o = t._pos[type] = PoolManager.getInst<PoolManager>().getObj();
                    }
                    o.x = x;
                    o.y = y;
                }
            }
        }
    }

    /**
     * 移除
     * @param type 
     */
    public remove(type: number) {
        if (this._map[type]) {
            let _t = this;
            let temp = _t._map[type].getTemplet() != null;
            _t._map[type].recover();
            delete _t._map[type];
            let p = _t._pos[type];
            delete _t._pos[type];
            if (p) {
                PoolManager.getInst<PoolManager>().releaseObj(p);
            }
            if (_t._count > 0) {
                _t._count--;
            }
            if (temp) {
                _t._updateSize();
            }
        }
    }

    public clear() {
        let _t = this;
        for (let k in _t._map) {
            _t._map[k].recover();
            delete _t._map[k];
            var p = this._pos[k];
            delete this._pos[k];
            if (p) {
                PoolManager.getInst<PoolManager>().releaseObj(p);
            }
        }
        _t._ske_h = _t._ske_w = 0;
    }

    /**
     * 显示动作百分比
     */
    public set ratio(val: number) {
        this._ratio = val;
        if (this._count > 0) {
            for (let k in this._map) {
                this._map[k].ratio = val;
            }
        }
    }
    destroy(): void {
        this.clear();
        super.destroy();
    }
}