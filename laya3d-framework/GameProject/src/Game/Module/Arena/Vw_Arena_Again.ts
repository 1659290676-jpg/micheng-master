import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import Game from "../../Game";
import Runtime_Vw_Arena_Again from "./Runtime_Vw_Arena_Again";


/**
 * @ Author: 
 * @ Date: 2026/4/14 15:11:16
 * @ Description: 
*/
export default class Vw_Arena_Again extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "arena/Vw_Arena_Again";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Arena_Again;

    public get owner() {
        return this._owner;
    }

    protected inited(_t: this): void {
        let owner = _t.owner;

        owner.lbDes.text = LanguageMgr.getTxt(636)
        owner.lbTitle.text = LanguageMgr.getTxt(639)
        owner.btnOK.getChild("txt").text = LanguageMgr.getTxt(637)

    }

    protected initListener(): void {
        let _t = this, owner = _t.owner;
        _t.onClick(owner.btnClose, _t.closeSelf);
        _t.onClick(owner.btnOK, _t.closeSelf);
        
    }

     public onOpen(arg?: any) {
        super.onOpen(arg);
        let t = this;

        // Frame.ImgMgr.loadImg("bg_arena_open.png", t.bg);
        t.owner.bg.src = ResPath.getImgPath("arena/bg_arena_open.png");
    }

    public onClose() {
        super.onClose();
        let t = this;
        Game.StepMgr.triggerStep()
        // Frame.ImgMgr.free(t.bg);
        t.owner.bg.src = null;
    }
}