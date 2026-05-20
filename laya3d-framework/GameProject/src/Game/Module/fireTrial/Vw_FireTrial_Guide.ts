import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";
import Runtime_Vw_FireTrial_Guide from "./Runtime_Vw_FireTrial_Guide";


/**
 * @ Author: 
 * @ Date: 2026/4/14 15:31:31
 * @ Description: 
*/
export default class Vw_FireTrial_Guide extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "fireTrial/Vw_FireTrial_Guide";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_FireTrial_Guide;

    public get owner() {
        return this._owner;
    }

    /**最大指引步骤 */
    private max: number = 4
    /**当前步骤 */
    private cur: number = 1

    private guideList: any[][] = []
    private guideBox = []

    protected inited(_t: this): void {
        let owner = _t.owner;
        let t = this, v = owner;

        owner.pos1.getChild("txt").text = LanguageMgr.getTxt(765)
        owner.pos3.getChild("txt").text = LanguageMgr.getTxt(766)
        owner.pos5.getChild("txt").text = LanguageMgr.getTxt(767)
        owner.lbDes.text = LanguageMgr.getTxt(768)
        // owner.lbTitle.text = LanguageMgr.getTxt(751)
        owner.lbClose.text = LanguageMgr.getTxt(757)

        t.guideList = [null, null, null, null, [owner.pos1, owner.pos2, owner.pos3, owner.pos4, owner.pos5, owner.lbDes, owner.lbClose]]
        t.guideBox = [null, owner.box1, owner.box2, owner.box3, owner.box4]

    }

    protected initListener(): void {
        this.onClick(this.owner.imgClose, this.onClickClose);
    }

    public onOpen(arg?: any) {
        super.onOpen(arg);
        let t = this, owner = t.owner;
        t.cur = arg

        t.startGuide()
        t.guideStep(arg)
        owner.imgTitle.src = ResPath.getAtlasImgPath(EnumAltas.Language, "Bm_bt_bfdb");
        owner.imgGuide1.src = ResPath.getAtlasImgPath(EnumAltas.Language, "bg_fireTrial_guide1");
        owner.imgGuide2.src = ResPath.getAtlasImgPath(EnumAltas.Language, "bg_fireTrial_guide2");
        owner.imgGuide3.src = ResPath.getAtlasImgPath(EnumAltas.Language, "bg_fireTrial_guide3");
        owner.imgGuide4.src = ResPath.getAtlasImgPath(EnumAltas.Language, "bg_fireTrial4");

    }

    public onClose() {
        super.onClose();
        let t = this;
    }

    private startGuide() {
        let t = this
        t.hideBox()
        for (let i = 0; i < t.guideList.length; i++) {
            let arr = t.guideList[i]
            if (arr) {
                for (let j = 0; j < arr.length; j++) {
                    let item = arr[j]
                    if (item) {
                        XYFrame.Tween.kill(item)
                    }
                }
            }
        }
    }

    private hideBox() {
        let t = this
        for (let i = 0; i <= t.max; i++) {
            let box = t.guideBox[i]
            if (box) {
                box.visible = false
            }
        }
    }

    private guideStep(index: number) {
        let t = this
        t.hideBox()
        let box = t.guideBox[index]
        if (box) {
            box.visible = true
        }
        let arr = t.guideList[index]
        if (arr) {
            for (let i = 0; i < arr.length; i++) {
                let item = arr[i]
                item.alpha = 0
                // XYFrame.Tween.delay(item, i * 300).to({ alpha: 1 }, (i + 1) * 300)
                t.tweenDelay(item, i * 300).to({ alpha: 1 }, (i + 1) * 300)
            }
        }
    }

    private onClickClose() {
        let t = this
        if (t.cur < t.max) {
            t.cur++
            t.guideStep(t.cur)
        } else {
            t.closeSelf()
        }
    }
}