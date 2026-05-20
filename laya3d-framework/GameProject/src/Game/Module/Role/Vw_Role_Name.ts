import LanguageMgr from "../../../DataStock/LanguageMgr";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Game from "../../Game";
import Vw_Msg from "../Tip/Vw_Msg";
import Runtime_Vw_Role_Name from "./Runtime_Vw_Role_Name";
import Vw_Error from "./Vw_Error";
import Vw_Role_Name_Sure from "./Vw_Role_Name_Sure";


/**
 * @ Author: 
 * @ Date: 2026/4/16 09:44:06
 * @ Description: 
*/
export default class Vw_Role_Name extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "role/Vw_Role_Name";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Role_Name;

    public get owner() {
        return this._owner;
    }

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.btn.text = LanguageMgr.getTxt(802);
        owner.input.prompt = LanguageMgr.getTxt(803);
        owner.lbTitle.text = LanguageMgr.getTxt(804);
    }

    protected initListener(): void {
        this.onClick(this.owner.btnClose, this.closeSelf);
        this.onClick(this.owner.btn, this.onT);
    }

    public onOpen(arg?: any) {
        super.onOpen(arg);
        this.owner.input.text = "";
    }

    public onClose() {
        super.onClose();
    }

    protected onT() {
        let t = this;
        let s = t.owner.input.text;
        if (!s) {
            Vw_Msg.setCfgTxt(805);
            return;
        }
        if (Game.isOnline) {
            XYFrame.UIMgr.open(Vw_Role_Name_Sure, s);
        } else {
            Vw_Error.open(3);
        }
    }
}