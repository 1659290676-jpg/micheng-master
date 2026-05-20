const { regClass, property } = Laya;
/**
 * @ Author: XXL
 * @ Date: 2026-01-30 14:49
 * @ Description: 游戏分辨率计算设置
*/
@regClass()
export class GameDesign {
    /** 显示宽度 */
    private static _showWidth: number = 0;
    /** 显示高度 */
    private static _showHeight: number = 0;
    /** 左侧安全宽度 */
    private static _leftNotch: number = 0;
    /** 右侧安全宽度 */
    private static _rightNotch: number = 0;
    /** 顶部安全高度 */
    private static _topNotch: number = 0;
    /** 底部安全高度 */
    private static _btmNotch: number = 0;

    /**
     * 显示宽度
     */
    public static get showWidth(): number {
        return this._showWidth;
    }

    /**
     * 显示高度
     */
    public static get showHeight(): number {
        return this._showHeight;
    }

    /**
     * 左侧安全宽度
     */
    public static get leftNotch(): number {
        return this._leftNotch;
    }

    /**
     * 右侧安全宽度
     */
    public static get rightNotch(): number {
        return this._rightNotch;
    }

    /**
     * 顶部安全高度
     */
    public static get topNotch(): number {
        return this._topNotch;
    }
    /**
     * 底部安全高度
     */
    public static get btmNotch(): number {
        return this._btmNotch;
    }

    /**
     * 计算分辨率
     */
    public static calcSize() {
        let _t = GameDesign;
        let stage = Laya.stage;
        let width = stage.width;
        let height = stage.height;
        let designWidth = stage.designWidth;
        let designHeight = stage.designHeight;
        _t._showHeight = height;
        _t._topNotch = _t._btmNotch = 0;
        if (designWidth < width) {
            let r = 0.5625;//9:16
            let w = designHeight * r;
            if (w > width) {
                w = width;
            }
            _t._showWidth = w;
            let offset = (width - w) >> 1;
            _t._leftNotch = offset;
            _t._rightNotch = width - _t._showWidth - offset;
        } else {
            _t._leftNotch = _t._rightNotch = 0;
            _t._showWidth = width;
            if (height > designHeight) {
                _t._topNotch = Math.min((height - designHeight), 65);
                _t._btmNotch = Math.min(height - designHeight - _t._topNotch, 24);
            }
        }

    }
}