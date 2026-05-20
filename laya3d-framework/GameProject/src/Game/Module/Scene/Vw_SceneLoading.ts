import LanguageMgr from "../../../DataStock/LanguageMgr";
import { GameDesign } from "../../../XYFrame/Design/GameDesign";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import Runtime_Vw_SceneLoading from "./Runtime_Vw_SceneLoading";


/**
 * @ Author: 
 * @ Date: 2026/4/17 10:42:41
 * @ Description: 
*/
export default class Vw_SceneLoading extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "scene/Vw_SceneLoading";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_SceneLoading;

    public get owner() {
        return this._owner;
    }


    public onResize(): void {
        super.onResize();
        let owner = this.owner;
        let x = owner.x;
        let y = owner.y;
        let width = Laya.stage.width;
        let height = Laya.stage.height;
        owner.black.pos(-x, -y);
        owner.black.size(width, height);
        let scale = Math.max(GameDesign.showWidth / Laya.stage.designWidth, GameDesign.showHeight / Laya.stage.designHeight);
        owner.bg.scale(scale, scale);
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.addSpine("effect/fx_KL_Loading", owner, owner.width / 2, owner.height / 2, 3000);
    }


}