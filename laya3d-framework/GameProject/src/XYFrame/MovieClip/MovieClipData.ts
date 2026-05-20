import MovieClipSheet from "./MovieClipSheet";


/**一帧的数据结构*/
interface IMovieClipOneFrameData {
    /**纹理名称*/
    res: string;
    /**纹理x轴偏移*/
    x: number;
    /**纹理y轴偏移*/
    y: number;
}
/**
 * 帧数据结构
 */
interface IMovieClipFramesData {
    /**缩放*/
    scale: number;
    /**总帧数*/
    frameRate: number;
    /**帧数据*/
    frames: IMovieClipOneFrameData[];
}

/**
 * 动画纹理数据结构
 */
interface IMovieClipTextureData {
    /**纹理在图集中位置*/
    x: number;
    /**纹理在图集中位置*/
    y: number;
    /**纹理在图集宽度*/
    w: number;
    /**纹理在图集高度*/
    h: number;
}

/**
 * @ Author: XXL
 * @ Date: 2025-06-12 16:02
 * @ Description: 帧动画的数据
*/
export default class MovieClipData implements IPool {
    /**Ani数据*/
    private _mcData: IMovieClipFramesData;
    /**纹理数据*/
    private _tData: Record<string | number, IMovieClipTextureData>;
    /**总帧数*/
    public numFrames: number;
    /**帧数据列表*/
    private _frames: IMovieClipOneFrameData[];
    /**纹理集*/
    private _sheet: MovieClipSheet;

    /**
     * 初始化一个动画数据
     * @param mcData 动画数据
     * @param textureData 纹理数据
     * @param sheet 纹理集
     */
    public init(mcData: IMovieClipFramesData, textureData: Record<string | number, IMovieClipTextureData>, sheet: MovieClipSheet) {
        let _t = this;
        _t._mcData = mcData;
        _t._tData = textureData;
        _t._sheet = sheet;
        if (mcData && mcData.frames) {
            _t._frames = mcData.frames;
            _t.numFrames = mcData.frames.length;
        } else {
            _t._frames = null;
            _t.numFrames = 0;
        }
    }

    /**
     * 获取动画的配置数据
     * @returns 返回AniFramesData
     */
    public getMcData() {
        return this._mcData;
    }

    /**
     * 获取对应帧的帧数据
     * @param frame 帧，从0开始
     * @returns 帧数对象AniOneFrameData
     */
    public getKeyFrameData(frame: number): IMovieClipOneFrameData {
        let frames = this._frames;
        if (frames) {
            return frames[frame];
        }
        return null;
    }

    /**
     * 获取对应帧的纹理
     * @param frame 帧数，从0开始
     * @returns egret.Texture对象
     */
    public getTextureByFrame(frame: number): Laya.Texture {
        let _t = this;
        if (_t._sheet && _t._tData) {
            let data = _t.getKeyFrameData(frame);
            if (data && data.res) {
                let tData = _t._tData[data.res];
                if (tData) {
                    let texture = _t._sheet.getTexture(data.res);
                    if (!texture) {
                        texture = _t._sheet.createTexture(data.res, tData.x, tData.y, tData.w, tData.h);
                    }
                    return texture;
                }
            }
        }
        return null;
    }

    /**
     * 清理数据
     */
    public clear() {
        let _t = this;
        _t._mcData = null;
        _t.numFrames = 0;
        _t._frames = null;
        _t._sheet = null;
    }

    destroy() {
        this.clear();
    }
}