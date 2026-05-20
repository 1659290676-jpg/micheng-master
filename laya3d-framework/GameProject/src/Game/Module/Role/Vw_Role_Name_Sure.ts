import LanguageMgr from "../../../DataStock/LanguageMgr";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import Runtime_Vw_Role_Name_Sure from "./Runtime_Vw_Role_Name_Sure";
import Vw_Error from "./Vw_Error";
import Vw_Role_Name from "./Vw_Role_Name";


/**
 * @ Author: 
 * @ Date: 2026/4/16 09:44:14
 * @ Description: 
*/
export default class Vw_Role_Name_Sure extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "role/Vw_Role_Name_Sure";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Role_Name_Sure;

    public get owner() {
        return this._owner;
    }

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.btn0.text = LanguageMgr.getTxt(808);
        owner.btn1.text = LanguageMgr.getTxt(809);
        owner.lbTitle.text = LanguageMgr.getTxt(806);
        owner.lb1.text = LanguageMgr.getTxt(807);
    }

    protected initListener(): void {
        let t = this, owner = t.owner;
        t.onClick(owner.btn0, t.closeSelf);
        t.onClick(owner.btn1, t.onT);
        t.onClick(owner.btnClose, t.onCloseT);
        t.onMsg(EnumMsg.UP_Name, t.upName);
    }

    public onOpen(arg?: any) {
        super.onOpen(arg);
        let t = this;
        t.owner.lbName.text = arg;

    }

    public onClose() {
        super.onClose();
        let t = this;
    }

    protected upName(t: this) {
        t.onCloseT();
    }

    protected onT() {
        let t = this;
        if (Game.isOnline) {
            Game.Model.hero.CG121(t.owner.lbName.text, 0);
        } else {
            Vw_Error.open(2);
        }
    }

    protected onCloseT() {
        let t = this;
        t.closeSelf();
        XYFrame.UIMgr.close(Vw_Role_Name);
    }
}