import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import Game from "../../Game";
import Runtime_Vw_Arena_Reward from "./Runtime_Vw_Arena_Reward";


/**
 * @ Author: 
 * @ Date: 2026/4/14 15:12:56
 * @ Description: 
*/
export default class Vw_Arena_Reward extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "arena/Vw_Arena_Reward";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Arena_Reward;

    public get owner() {
        return this._owner;
    }
    
    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.lbTitle.text = LanguageMgr.getTxt(643)
        owner.lbDes.text = LanguageMgr.getTxt(643)
        owner.lbDes1.text = LanguageMgr.getTxt(632)
        owner.lbDes2.text = LanguageMgr.getTxt(644)
    }

    public onOpen(arg?: any) {
        super.onOpen(arg);
        let t = this;

        let cfg = ConfigData.getStreakRank_106(arg)
        if (!cfg) return
        let reward = cfg.reward
        if (!reward) return
        let arr = ConfigUtils.splitStr(reward, 2)
        t.owner.lbCnt.text = arr.length == 1 ? "x" + arr[0][2] : ""
        t.owner.imgItem.src = Game.Model.arena.getIconbyId(arg)
    }

    public onClose() {
        super.onClose();
        let t = this;
    }
}