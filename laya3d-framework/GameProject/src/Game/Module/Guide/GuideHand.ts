import ResPath from "../../../XYFrame/Resource/ResPath";
import { Ease } from "../../../XYFrame/Tween/Ease";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";

export default class GuideHand extends Laya.GWidget {
    private m_hand: Laya.GImage;

    private mx: number;
    private my: number;

    private static _ins: GuideHand;
    /**实例新手指引中使用*/
    public static get ins() {
        return GuideHand._ins || (GuideHand._ins = new GuideHand());
    }

    public constructor() {
        super();
        let _t = this;
        _t.mouseEnabled = false;
        _t.zOrder = 99999;
        _t.name = "GuideHand";
        _t.initUI();
    }

    private initUI() {
        let hand = this.m_hand = new Laya.GImage();
        hand.anchor(1, 0.5);
        hand.src = ResPath.getAtlasImgPath(EnumAltas.Common, "Icon_Guide");
        this.addChild(hand);
    }

    public setTarget(ui: Laya.Sprite, handDir: number = 1) {
        let t = this;
        if (ui && !ui.destroyed) {
            ui.addChild(t);
            t.onGuide(ui, { handDir: handDir, maskRect: { x: 0, y: 0, w: ui.width, h: ui.height } });
        }
    }

    private clearTween(_t: this) {
        XYFrame.Tween.kill(_t.m_hand);
    }

    /**
     * 
     * @param ui 
     * @param handDir 1 上， 2 右， 3 下，4 左
     * @param param1 
     */
    public onGuide(ui: Laya.Sprite, { handDir = 1, maskRect = null }: { handDir?: number, maskRect?: { x: number, y: number, w: number, h?: number } } = <any>{}) {
        let t = this;
        let spaceX = 10;
        let spaceY = 10;
        let dis = 20;
        t.clearTween(t);
        t.mx = t.my = 0;
        let x = ui.x, y = ui.y, tarW = ui.width, tarH = ui.height;
        if (maskRect) {
            x = maskRect.x;
            y = maskRect.y;
            tarW = maskRect.w;
            tarH = maskRect.h || tarH;
        }

        if (handDir == 4) {     // 左边
            x = x - spaceX;
            y = y + tarH / 2;
            t.m_hand.rotation = 0;
            t.mx = - dis;
        } else if (handDir == 2) { // 右边
            x = x + tarW + spaceX;
            y = y + tarH / 2;
            t.m_hand.rotation = 180;
            t.mx = dis;
        } else if (handDir == 1) {  // 上边
            x = x + tarW / 2;
            y = y - spaceY;
            t.m_hand.rotation = 90;
            t.my = - dis;
        } else if (handDir == 3) { // 下边
            x = x + tarW / 2;
            y = y + tarH + spaceY;
            t.m_hand.rotation = -90;
            t.my = dis;
        }
        t.setLeftTop(x, y);
        ui.addChild(t);
        t.startHandTween(t);
    }

    public onClose() {
        let _t = this;
        _t.removeSelf();
        _t.clearTween(_t);
    }

    private startHandTween(t: this) {
        t.clearTween(t);
        t.m_hand.pos(0, 0);
        XYFrame.Tween.to(t.m_hand, { x: t.mx, y: t.my }, 500, Ease.linear)
            .to({ x: 0, y: 0 }, 500, Ease.linear).loop(true);
    }
}