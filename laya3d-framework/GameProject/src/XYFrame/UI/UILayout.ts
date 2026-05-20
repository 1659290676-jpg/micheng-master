import { GameDesign } from "../Design/GameDesign";

const { regClass, property } = Laya;

/**
 * 水平布局方式
 */
export const enum HorizontalLayout {
    /**居中，基于舞台或父容器*/
    Center = 0,
    /**靠左，基于舞台或父容器*/
    Left = 1,
    /**靠右，基于舞台或父容器*/
    Right = 2,
    /**靠左，基于显示范围*/
    Left_Show = 3,
    /**靠右，基于显示范围*/
    Right_Show = 4
}

/**
 * 垂直布局方式
 */
export const enum VerticalLayout {
    /**居中，基于舞台或父容器*/
    Middle = 0,
    /**靠上，基于舞台或父容器*/
    Top = 1,
    /**靠下，基于舞台或父容器*/
    Bottom = 2,
    /**居中，基于刘海*/
    Middle_Notch = 3,
    /**靠上，基于刘海*/
    Top_Notch = 4,
    /**靠下，基于下方刘海*/
    Bottom_Notch = 5

}

/**
 * @ Author: XXL
 * @ Date: 2026-01-30 11:35
 * @ Description: UI的布局组件，是相对于父容器
*/
@regClass()
export class UILayout extends Laya.Script {

    declare owner: Laya.Sprite;

    /** 
     * 打开界面动画类型，0:无缓动 1中心缩小放大 2:y轴往下放大 3:y轴往上放大 4:从顶部水平中心点往下放大 10:从左到右 11:从右到左 12:从上到下 13:从下到上 14透明度0到1
     */
    @property({
        type: Number, tips: "打开界面动画类型",
        enumSource: [
            { name: "无", value: 0 },
            { name: "缩小放大", value: 1 },
            { name: "y轴往下放大", value: 2 },
            { name: "y轴往上放大", value: 3 },
            { name: "从顶部水平中心点往下放大", value: 4 },
            { name: "从左到右", value: 10 },
            { name: "从右到左", value: 11 },
            { name: "从上到下", value: 12 },
            { name: "从下到上", value: 13 },
            { name: "透明度0到1", value: 14 },
        ]
    })
    public tweenType: number;
    /** 打开界面是否渐显透明度 */
    @property({
        type: Boolean, tips: "缓动时是否渐显透明度"
    })
    public tweenAlpha:boolean;

    /** 尺寸类型 */
    @property({
        type: Number, tips: "尺寸匹配类型",
        enumSource: [
            { name: "无", value: 0 },
            { name: "适配父容器", value: 1 },
            { name: "适配显示范围", value: 2 },
            { name: "适配显示范围，不包含上下刘海", value: 3 },
            { name: "适配显示范围，不包含下刘海", value: 4 },
            { name: "适配显示范围，不包含上刘海", value: 5 },
            { name: "适配父容器宽度", value: 6 },
            { name: "适配父容器高度", value: 7 },
            { name: "适配显示范围宽度", value: 8 },
            { name: "适配显示范围高度", value: 9 },
        ]
    })
    public sizeType: number;

    /**水平布局*/
    @property({
        catalogCaption: "UILayout：UI的布局组件",
        type: Number, tips: "水平布局",
        enumSource: [
            { name: "居中，基于父容器", value: HorizontalLayout.Center },
            { name: "靠左，基于父容器", value: HorizontalLayout.Left },
            { name: "靠右，基于父容器", value: HorizontalLayout.Right },
            { name: "靠左，基于显示范围", value: HorizontalLayout.Left_Show },
            { name: "靠右，基于显示范围", value: HorizontalLayout.Right_Show }
        ]
    })
    public horizontal: number = 0;
    /**垂直布局*/
    @property({
        type: Number, tips: "垂直布局",
        enumSource: [
            { name: "居中，基于父容器", value: VerticalLayout.Middle },
            { name: "靠上，基于父容器", value: VerticalLayout.Top },
            { name: "靠下，基于父容器", value: VerticalLayout.Bottom },
            { name: "居中，基于刘海", value: VerticalLayout.Middle_Notch },
            { name: "靠上，基于刘海", value: VerticalLayout.Top_Notch },
            { name: "靠下，基于下方刘海", value: VerticalLayout.Bottom_Notch }
        ]
    })
    public vertical: number = 0;

    /**X轴偏移量*/
    @property({
        type: Number, tips: "X轴偏移量"
    })
    public x: number = 0;
    /**Y轴偏移量*/
    @property({
        type: Number, tips: "Y轴偏移量"
    })
    public y: number = 0;

    /** 匹配的宽度 */
    @property({
        type: Number, tips: "匹配的宽度，<=0 则使用组件实际宽度"
    })
    public width: number = 0;
    /** 匹配的高度 */
    @property({
        type: Number, tips: "匹配的高度，<=0 则使用组件实际高度"
    })
    public height: number = 0;

    onReset(): void {
        let _t = this;
        _t.sizeType = 0;
        _t.horizontal = 0;
        _t.vertical = 0;
        _t.x = _t.y = _t.width = _t.height = 0;
    }

    onEnable(): void {
        this.onResize();
    }

    /**
     * 响应尺寸变化
     * @returns 
     */
    public onResize() {
        let _t = this;
        if (!_t.owner.parent) return;
        let owner = _t.owner;
        let parent = owner.parent;
        if (!parent) return;
        let x = 0, y = 0;
        let pw = parent.width || 0;
        let ph = parent.height || 0;
        switch (_t.sizeType) {
            case 1:
                owner.size(parent.width, parent.height);
                break;
            case 2:
                owner.size(GameDesign.showWidth, GameDesign.showHeight);
                break;
            case 3:
                owner.size(GameDesign.showWidth, GameDesign.showHeight - GameDesign.btmNotch - GameDesign.topNotch);
                break;
            case 4:
                owner.size(GameDesign.showWidth, GameDesign.showHeight - GameDesign.btmNotch);
                break;
            case 5:
                owner.size(GameDesign.showWidth, GameDesign.showHeight - GameDesign.topNotch);
                break;
            case 6:
                owner.width = pw;
                break;
            case 7:
                owner.height = ph;
                break;
            case 8:
                owner.width = GameDesign.showWidth;
                break;
            case 9:
                owner.height = GameDesign.showHeight;
                break;
        }
        let w = (_t.width > 0 && _t.width) || owner.width || 0;
        let h = (_t.height > 0 && _t.height) || owner.height || 0;
        switch (_t.horizontal) {
            case HorizontalLayout.Center:
                x = ((pw - w) >> 1) + _t.x;
                break;
            case HorizontalLayout.Left:
                x = _t.x;
                break;
            case HorizontalLayout.Right:
                x = pw - w - _t.x;
                break;
            case HorizontalLayout.Left_Show:
                x = GameDesign.leftNotch + _t.x;
                break;
            case HorizontalLayout.Right_Show:
                x = pw - w - GameDesign.rightNotch - _t.x;
                break;
        }
        switch (_t.vertical) {
            case VerticalLayout.Middle:
                y = ((ph - h) >> 1) + _t.y;
                break;
            case VerticalLayout.Top:
                y = _t.y;
                break;
            case VerticalLayout.Bottom:
                y = ph - h - _t.y;
                break;
            case VerticalLayout.Middle_Notch:
                y = ((ph - GameDesign.topNotch - GameDesign.btmNotch - h) >> 1) + GameDesign.topNotch + _t.y;
                break;
            case VerticalLayout.Top_Notch:
                y = GameDesign.topNotch + _t.y;
                break;
            case VerticalLayout.Bottom_Notch:
                y = ph - h - GameDesign.btmNotch - _t.y;
                break;
        }
        owner.pos(x, y);
    }
}