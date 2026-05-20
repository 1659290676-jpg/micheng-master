import LanguageMgr from "../../../DataStock/LanguageMgr";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import Runtime_Vw_RewardAlert from "./Runtime_Vw_RewardAlert";


/**
 * @ Author: 
 * @ Date: 2026/4/14 11:08:30
 * @ Description: 
*/
export default class Vw_RewardAlert extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "common/Vw_RewardAlert";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_RewardAlert;

    public get owner() {
        return this._owner;
    }
    
    protected inited(_t: this): void {
        let owner = _t.owner;

        owner.lbDes.text = LanguageMgr.getTxt(643)
        owner.lbDes1.text = LanguageMgr.getTxt(632)
        owner.lbDes2.text = LanguageMgr.getTxt(638)

        UIUtils.setList(owner.list, false);
    }

    public onOpen(arg?: { list: number[][] }) {
        super.onOpen(arg);

        let t = this
        t.owner.list.source = arg && arg.list || [];
    }

    public onClose() {
        super.onClose();
        let t = this
        // t.removeCloseListen(t.btnClose)
        // t.removeCloseListen(t.btn)
        t.owner.list.source = null
    }
}