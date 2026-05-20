import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";
import { EnumMsg } from "../../EnumMsg";
import OfflineMgr from "../Offline/OfflineMgr";
import Runtime_Vw_Error from "./Runtime_Vw_Error";


/**
 * @ Author: 
 * @ Date: 2026/4/16 09:43:32
 * @ Description: 
*/
export default class Vw_Error extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "role/Vw_Error";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Error;

    public get owner() {
        return this._owner;
    }

    /**1昵称错误2网络链接断了 */
    protected type: number;

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.btn.text = LanguageMgr.getTxt(809);
    }

    protected initListener(): void {
        let t = this, owner = t.owner;
        t.onClick(owner.btnClose, t.onT);
        t.onClick(owner.btn, t.onT);
    }

    public onOpen(arg?: any) {
        super.onOpen(arg);
        let t = this;
        t.type = arg;
        t.update();
        XYFrame.Msg.emit(EnumMsg.Open_Error, true);
    }

    public onClose() {
        super.onClose();
        XYFrame.Msg.emit(EnumMsg.Open_Error, false);
    }

    protected onT() {
        let t = this;
        let type = t.type;
        if (type == 1 || type == 3) {
            t.closeSelf();
        } else if (type == 2) {
            OfflineMgr.onClick();
        }
    }

    protected update() {
        let t = this, owner = t.owner;
        /**1昵称错误2网络链接断了 */
        let type = t.type;
        let tid0 = 0, tid1 = 0, res = ""
        if (type == 1) {
            tid0 = 811;
            tid1 = 812;
            res = "Bm_gth";
        } else if (type == 2 || type == 3) {
            tid0 = 813;
            tid1 = 814;
            res = "Bm_wwl";
        }
        owner.lbTitle.text = LanguageMgr.getTxt(tid0);
        owner.lbMs.text = LanguageMgr.getTxt(tid1);
        owner.img.src = ResPath.getAtlasImgPath(EnumAltas.Role, res);
    }

    /**
     * * 1昵称错误
     * * 2网络链接断了,点确认重登
     * * 3网络链接断了,点确认关闭界面
     **/
    public static open(type: number) {
        XYFrame.UIMgr.open(Vw_Error, type);
    }
}