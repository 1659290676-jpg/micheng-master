import HashObject from "../Define/HashObject";
import { PoolManager } from "../Pool/PoolManager";
import MovieClipData from "./MovieClipData";
import MovieClipFactory from "./MovieClipFactory";
import MovieClipLoader from "./MovieClipLoader";

/**
 * @ Author: XXL
 * @ Date: 2025-06-12 15:59
 * @ Description: 帧动画组件
*/
export default class MovieClip extends Laya.GWidget implements IDepSprite {
    public static create() {
        return PoolManager.getInst<PoolManager>().getCls(MovieClip);
    }

    public depVal: number;

    /**当前对应的资源*/
    private _$url: string;
    /**对应的动作名*/
    private _act: string;
    /**动画工厂*/
    private _factory: MovieClipFactory;
    /**当前动作数据*/
    private _aniData: MovieClipData;
    /**显示和隐藏额外标识*/
    private _vis: boolean = true;
    /**当前动画显示帧数百分比*/
    private _ratio: number = 0;
    /**当前显示帧数*/
    private _curFame: number = -1;
    /**配置中的缩放*/
    private _scale: number = 1;
    /**水平缩放值*/
    private _$scaleX: number = 1;
    /**垂直缩放值*/
    private _$scaleY: number = 1;
    /**动画类型*/
    public type: number | string;
    /**唯一标识*/
    private $_GID = HashObject.getCount();

    /**唯一标识*/
    public get hashCode(): number { return this.$_GID; }

    /**
     * 设置动画
     * @param url 动画资源路径
     * @param actName 动画名称
     */
    public setData(url: string, actName: string) {
        let _t = this;
        if (_t._$url == url && _t._act == actName) return;
        _t._aniData = null;
        _t._act = actName;
        _t._curFame = -1;
        let bo = _t.setRes(url);
        !bo && actName && _t.initAniData(_t);
    }

    /**
     * 设置资源路径
     * @param url 路径，不包含res/2d/和文件后缀名
     * @returns 返回是否有变化
     */
    public setRes(url: string) {
        let _t = this;
        if (_t._$url == url) {
            return false;
        }
        _t._$url && MovieClipLoader.freeMc(_t._$url, _t);
        _t._$url = url;
        _t._factory = null;
        _t.onReset(_t);
        url && MovieClipLoader.setMc(url, _t);
        return true;
    }

    /**
     * 设置动作
     * @param name 动作名
     * @returns 返回是否有变化
     */
    public setAct(name: string) {
        let _t = this;
        if (_t._act == name) {
            return false;
        }
        _t._act = name;
        _t.onReset(_t);
        name && _t.initAniData(_t);
        return true;
    }

    /**
     * 重置数据
     * @param _t this
     */
    private onReset(_t: MovieClip) {
        _t._scale = 1;
        _t._aniData = null;
        _t._curFame = -1;
        _t.texture = null;
        // _t.set_visible(false);
        // _t.set_scaleX(_t._$scaleX || 1);
        // _t.set_scaleY(_t._$scaleY || 1);
        _t.visible = false;
        _t.scale(_t._$scaleX || 1, _t._$scaleY || 1);
    }

    /**
     * 显示百分比
     * @param p 0到<1，百分比
     */
    public set ratio(p: number) {
        let _t = this;
        _t._ratio = p;
        if (!_t._aniData) return;
        p >= 1 && (p = 0.999);
        p < 0 && (p = 0);
        let num = (_t._aniData.numFrames * p) >> 0;
        _t.setFrame(_t, num);
    }

    /**
     * 设置动画工厂实例
     * @param factory 
     */
    public setFactory(factory: MovieClipFactory) {
        let _t = this;
        _t._factory = factory;
        if (factory) {
            _t.initAniData(_t);
        } else {
            // _t.set_visible(false);
            _t.visible = false;
            _t.texture = null;
        }
    }

    /**
     * 增加额外的隐藏和显示接口
     * @param bo true显示，false隐藏
     */
    public setVis(bo: boolean) {
        if (this._vis == bo) return;
        let _t = this;
        _t._vis = bo;
        // _t.set_visible(bo && !!_t.texture);
        _t.visible = _t._vis && !!_t.texture;
    }

    /**
     * 设置水平缩放，禁止直接赋值scaleX。
     * @param val 
     */
    public setScaleX(val: number) {
        let _t = this;
        if (_t._$scaleX == val) return;
        _t._$scaleX = val;
        // _t.set_scaleX(val * _t._scale);
        _t.scaleX = val * _t._scale;
    }

    /**获取水平缩放*/
    public getScaleX() {
        return this._$scaleX;
    }

    /**
     * 设置垂直缩放，禁止直接赋值scaleY。
     * @param val 
     * @returns 
     */
    public setScaleY(val: number) {
        let _t = this;
        if (_t._$scaleY == val) return;
        _t._$scaleY = val;
        // _t.set_scaleY(val * _t._scale);
        _t.scaleY = val * _t._scale;
    }
    /**获取垂直缩放*/
    public getScaleY() {
        return this._$scaleY;
    }

    public clear() {
        let _t = this;
        _t.removeSelf();
        // if (_t.parent) _t.parent.removeChild(_t);
        _t._vis = true;
        _t._ratio = 0;
        _t.alpha = 1;
        _t.depVal = 0;
        _t._$url && MovieClipLoader.freeMc(_t._$url, _t);
        _t._factory = _t._$url = _t._act = _t.type = null;
        _t.zOrder = 0;
        _t._$scaleX = _t._$scaleY = _t._scale = 1;
        _t.rotation = 0;
        _t.x = _t.y = 0;
        _t.onReset(_t);
        _t.scale(1, 1);
        // _t.set_scaleX(1);
        // _t.set_scaleY(1);
    }

    /**
     * 初始化动画数据
     * @param _t this
     */
    private initAniData(_t: MovieClip) {
        if (_t._act && _t._factory) {
            _t._aniData = _t._factory.getData(_t._act);
            if (_t._aniData) {
                let d = _t._aniData.getMcData();
                let scale = _t._scale = d.scale || 1;
                // _t.set_scaleX(scale * _t._$scaleX);
                // _t.set_scaleY(scale * _t._$scaleY);
                _t.scale(scale * _t._$scaleX, scale * _t._$scaleY);
                _t.ratio = _t._ratio;
            }
        }
    }

    /**
     * 显示对应帧数
     * @param _t this
     * @param frame 帧数
     */
    private setFrame(_t: MovieClip, frame: number) {
        if (_t._curFame == frame) return;
        _t._curFame = frame;
        let data = _t._aniData.getKeyFrameData(frame);
        let texture: Laya.Texture = data ? _t._aniData.getTextureByFrame(frame) : null;
        if (texture) {
            _t.texture = texture;
            // _t.$setTexture(texture);
            // _t.pivotX = -data.x;
            // _t.pivotY = -data.y;
            _t.pivot(-data.x, -data.y)
            // _t.$setAnchorOffsetX(-data.x);
            // _t.$setAnchorOffsetY(-data.y);
            // _t.set_visible(_t._vis);
            _t.visible = _t._vis;
        } else {
            _t.texture = null;
            // _t.set_visible(false);
            _t.visible = false;
        }
    }

    
    public recover() {
        PoolManager.getInst<PoolManager>().releaseCls(this);
    }

    destroy(): void {
        this.clear();
        super.destroy();
    }
}