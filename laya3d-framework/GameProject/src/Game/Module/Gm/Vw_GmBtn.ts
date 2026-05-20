import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Game from "../../Game";
import Runtime_Vw_GmBtn from "./Runtime_Vw_GmBtn";
import Vw_Gm from "./Vw_Gm";
import Vw_GmProtocol from "./Vw_GmProtocol";


/**
 * @ Author: 
 * @ Date: 2026/3/27 10:02:04
 * @ Description: 
*/
export default class Vw_GmBtn extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "gm/Vw_GmBtn";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_GmBtn;

    public get owner() {
        return this._owner;
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        owner.draggable = true;
        _t.onClick(owner.btn, _t.touchShow);

        let btns: Laya.GButton[];
        let removes: Laya.GButton[];
        if (DEBUG) {
            removes = [];
            btns = [owner.btnGm, owner.btnProtocol, _t.owner.btnLock];
        } else {
            btns = [owner.btnGm];
            removes = [owner.btnProtocol];
        }
        for (let i = 0; i < btns.length; i++) {
            _t.onClick(btns[i], _t.touchBtn);
        }
        for (let i = 0; i < removes.length; i++) {
            removes[i].removeSelf();
        }
    }

    private touchShow() {
        let owner = this.owner;
        owner.btnGp.visible = !owner.btnGp.visible;
        owner.btn.text = owner.btnGp.visible ? "收起" : "显示";
    }

    private touchBtn(e: Laya.Event) {
        let btn = e.target;
        let owner = this.owner;
        if (btn == owner.btnGm) {
            XYFrame.UIMgr.open(Vw_Gm);
        } else {
            if (DEBUG) {
                if (btn == owner.btnProtocol) {
                    XYFrame.UIMgr.open(Vw_GmProtocol);
                } else if (btn == owner.btnLock) {
                    Game.SceneMgr.noLock = !Game.SceneMgr.noLock;
                    btn.text = Game.SceneMgr.noLock ? "跟随" : "不跟";
                }
            }
        }
    }

}