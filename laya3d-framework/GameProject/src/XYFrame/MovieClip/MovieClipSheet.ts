import Logger from "../Logger/Logger";

/**
 * @ Author: XXL
 * @ Date: 2025-06-12 16:05
 * @ Description: 帧动画图集
*/
export default class MovieClipSheet implements IPool {
    /**原图纹理*/
    private _texture: Laya.Texture;
    /**缓存的切图纹理*/
    private _cache: Record<string|number,Laya.Texture>;
    /**
     * 设置原图纹理
     * @param texture 原图纹理
     */
    public setBase(texture: Laya.Texture) {
        let _t = this;
        _t.clear();
        _t._texture = texture;
        _t._cache || (_t._cache = {});
    }

    /**
     * 获取指定名称缓存纹理
     * @param name 纹理名称
     * @returns 返回缓存的egret.Texture
     */
    public getTexture(name: string) {
        return this._cache[name];
    }

    /**清理图集缓存信息*/
    public clear() {
        let _t = this;
        let map = _t._cache;
        if (map) {
            for (let k in map) {
                let t = map[k];
                delete map[k];
                t.bitmap = null;
                t.destroy();
            }
        }
        _t._texture = null;
    }

    /**
     * 指定区域创建一个新的 Texture 对象并缓存它
     * @param name 纹理名称
     * @param x 纹理区域在 bitmapData 上的起始坐标x
     * @param y 纹理区域在 bitmapData 上的起始坐标y
     * @param width 纹理区域在 bitmapData 上的宽度
     * @param height 纹理区域在 bitmapData 上的高度
     * @param offsetX 原始位图的非透明区域 x 起始点
     * @param offsetY 原始位图的非透明区域 y 起始点
     * @param textureWidth 原始位图的高度，若不传入，则使用 bitmapWidth 的值。
     * @param textureHeight 原始位图的宽度，若不传入，则使用 bitmapHeight 的值。
     * @returns 创建的 Texture 对象
     */
    public createTexture(name: string, x: number, y: number, width: number, height: number, offsetX = 0, offsetY = 0, textureWidth?: number, textureHeight?: number): Laya.Texture {
        let _t = this;
        let baseTex = _t._texture;
        if (!baseTex) {
            Logger.error("先设置原图纹理1", name);
            return null;
        }
        let texture = Laya.Texture.create(baseTex, x, y, width, height, offsetX, offsetY);
        _t._cache[name] = texture;
        return texture;
    }

    public destroy() {
        this.clear();
    }
}