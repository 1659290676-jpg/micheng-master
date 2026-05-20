import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import GuideHand from "../Guide/GuideHand";
import GuideMgr, { GuideTargetOriginParent } from "../Guide/GuideMgr";
import Runtime_Vw_GuideLayer from "./Runtime_Vw_GuideLayer";


/**
 * @ Author: 
 * @ Date: 2026/4/14 10:02:06
 * @ Description: 
*/
export default class Vw_GuideLayer extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "main/Vw_GuideLayer";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_GuideLayer;

    public get owner() {
        return this._owner;
    }

    private guideContainer: Laya.Sprite;

    private _hitArea: Laya.HitArea;
    /**在遮罩上挖出一个孔 */
    public interactionArea: Laya.Sprite;

    protected inited(_t: this): void {
        let owner = _t.owner;

        let t = this, v = owner;
        owner.bg.alpha = 0.9;

        t.guideContainer = new Laya.Sprite();
        t.guideContainer.cacheAs = "bitmap";

        v.addChildAt(t.guideContainer, 0);
        t.guideContainer.addChild(owner.bg);

        //绘制一个圆形区域，利用叠加模式，从遮罩区域抠出可交互区
        t.interactionArea = new Laya.Sprite();
        //设置叠加模式
        //@ts-ignore
        // t.interactionArea.blendMode = Laya.BlendMode.destinationOut;//"destination-out";
        //@ts-ignore
        t.interactionArea.blendMode = "destination-out";
        t.guideContainer.addChild(this.interactionArea);

        t._hitArea = new Laya.HitArea();
        t._hitArea.hit.drawRect(0, 0, 10, 10, "#000000");
        t.guideContainer.hitArea = t._hitArea;

        t.guideContainer.on(Laya.Event.CLICK, t, t.onClickGuideContainer);
        v.mouseThrough = true;
    }

    get hitArea(): Laya.HitArea {
        return this.guideContainer.hitArea as Laya.HitArea;
    }

    private onClickGuideContainer(): void {
        console.log("Vw_GuideLayer.onClickGuideContainer()");
    }

    public onOpen(arg?: { rect: { x: number, y: number, w: number, h?: number }, handDir: number, des: string, target: Laya.Sprite }): void {
        super.onOpen(arg);
        let t = this, owner = t.owner;
        let rect = arg.rect;
        let handDir = arg.handDir;
        let des = arg.des;
        let target = arg.target;
        if (target) {
            let originParent: GuideTargetOriginParent = GuideMgr.getInst<GuideMgr>().getTargetOriginParent(target);
            if (originParent) {
                let p = Laya.Point.TEMP;
                p.setTo(originParent.pos.x, originParent.pos.y);
                p = originParent.parent.localToGlobal(p);
                p = owner.localToGlobal(p);
                owner.addChild(target);
                target.pos(p.x, p.y);
            }
        }
        GuideHand.ins.onGuide(t.owner, { handDir: handDir || 1, maskRect: rect });
        if (des) {
            owner.bgDesc.visible = true;
            owner.txtDesc.text = des;
            Laya.timer.callLater(t, t.upDesPos, [rect, handDir]);
        } else {
            owner.bgDesc.visible = false;
        }
        // if (rect.h) {
        //     t.setRectPos(rect.x, rect.y, rect.w, rect.h);
        // } else {
        //     t.setCirclePos(rect.x, rect.y, rect.w);
        // }
    }

    public onClose(): void {
        super.onClose();
        let t = this;
        t.owner.bgDesc.visible = false;
        t.owner.txtDesc.text = "";
    }

    public onResize(): void {
        super.onResize();
        let t = this;
        let w = Laya.stage.width;
        let h = Laya.stage.height;
        t.owner.bg.size(w, h);
        t.owner.size(w, h);
        t.hitArea.hit.clear();
        t.hitArea.hit.drawRect(0, 0, w, h, "#000000");
    }

    /**
     * 
     * @param rect 
     * @param handDir 指引箭头的位置  1 在组件的上面  2 在组件的右边  3 在组件的下面  4 在组件的左边
     * @returns 
     */
    private upDesPos(rect: { x: number, y: number, w: number, h?: number }, handDir: number) {
        let t = this, owner = t.owner;
        if (!t.isOpen) {
            return;
        }
        let spaceY = 25;
        let dx = t.owner.width - owner.bgDesc.width >> 1;
        let dy = rect.y - owner.bgDesc.height - spaceY;
        if (handDir == 1) {  // 描述要在箭头的上面
            // 145为箭头的高度
            dy = rect.y - owner.bgDesc.height - spaceY * 2 - 145;
            if (dy < 0) {
                dy = rect.y + rect.h + spaceY;
            }
        } else if (handDir == 3) { // 描述要在箭头的下面
            dy = rect.y + rect.h + spaceY * 2 + 145;
            if (dy + owner.bgDesc.height > Laya.stage.height) {
                dy = rect.y - owner.bgDesc.height - spaceY;
            }
        } else {
            // 更新指引位置
            if (owner.bgDesc.height + spaceY > rect.y) {
                // 指引文本在指引底部
                dy = rect.y + rect.h + spaceY;
            }

        }
        owner.bgDesc.pos(dx, dy);
    }

    setRectPos(posX: number, posY: number, width: number, height: number): void {
        let t = this;
        t.hitArea.unHit.clear();
        t.hitArea.unHit.drawRect(posX, posY, width, height, "#000000");
        this.interactionArea.graphics.clear();
        this.interactionArea.graphics.drawRect(posX, posY, width, height, "#000000");
    }

    setCirclePos(posX: number, posY: number, radius: number): void {
        let t = this;
        t.hitArea.unHit.clear();
        t.hitArea.unHit.drawCircle(posX, posY, radius, "#000000");
        this.interactionArea.graphics.clear();
        this.interactionArea.graphics.drawCircle(posX, posY, radius, "#000000");
    }
}