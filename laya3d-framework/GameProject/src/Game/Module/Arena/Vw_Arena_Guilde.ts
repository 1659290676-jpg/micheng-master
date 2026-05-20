import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";
import Runtime_Vw_Arena_Guilde from "./Runtime_Vw_Arena_Guilde";


/**
 * @ Author: 
 * @ Date: 2026/4/14 15:12:18
 * @ Description: 
*/
export default class Vw_Arena_Guilde extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "arena/Vw_Arena_Guilde";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Arena_Guilde;

    public get owner() {
        return this._owner;
    }

    private tweenList: Laya.GImage[]
    
    protected inited(_t: this): void {
        let owner = _t.owner;

        owner.img1.getChild("txt").text = LanguageMgr.getTxt(640)
        owner.img3.getChild("txt").text = LanguageMgr.getTxt(641)
        owner.img5.getChild("txt").text = LanguageMgr.getTxt(642)

        _t.tweenList = [owner.img1, owner.img2, owner.img3, owner.img4, owner.img5]
        owner.lbDes.text = LanguageMgr.getTxt(638)
        owner.lbTitle.text = LanguageMgr.getTxt(639)
    }

    public onOpen(arg?: any) {
        super.onOpen(arg);
        let t = this, owner = t.owner;
        t.playAni()
        owner.imgTitle.src = ResPath.getAtlasImgPath(EnumAltas.Language, "Bm_bt_mlsdc");
    }

    public onClose() {
        super.onClose();
        let t = this;
        // for (let i = 0; i < t.tweenList.length; i++) {
        //     XYFrame.Tween.kill(t.tweenList[i])
        // }
    }

    private playAni() {
        let t = this;
        for (let i = 0; i < t.tweenList.length; i++) {
            let img = t.tweenList[i];
            img.alpha = 0;
        }
        for (let i = 0; i < t.tweenList.length; i++) {
            let img = t.tweenList[i];
            // XYFrame.Tween.delay(img, i * 300).to({ alpha: 1 }, (i + 1) * 300)
            t.tweenDelay(img, i * 300).to({ alpha: 1 }, (i + 1) * 300);
        }
    }
}