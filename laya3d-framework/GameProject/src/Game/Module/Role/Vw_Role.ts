import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import Vw_Msg from "../Tip/Vw_Msg";
import Runtime_Vw_Role from "./Runtime_Vw_Role";
import Vw_Error from "./Vw_Error";
import Vw_Role_Name from "./Vw_Role_Name";


/**
 * @ Author: 
 * @ Date: 2026/4/16 09:43:54
 * @ Description: 
*/
export default class Vw_Role extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "role/Vw_Role";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Role;

    public get owner() {
        return this._owner;
    }

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.lbTitle.text = LanguageMgr.getTxt(801);
        owner.btn.text = LanguageMgr.getTxt(802);

        UIUtils.setList(owner.list);
    }

    protected initListener(): void {
        let t = this, owner = t.owner;
        t.onClick(owner.btnClose, t.closeSelf);
        t.onClick(owner.btn, t.onT);
        t.onClick(owner.btnName, t.onNameT);
        owner.list.on(Laya.UIEvent.ClickItem, t, t.onSel);

        t.onMsg(EnumMsg.UP_Head, t.upHead);
        t.onMsg(EnumMsg.UP_Name, t.upName);
    }

    public onOpen(arg?: any) {
        super.onOpen(arg);
        let t = this, owner = t.owner;

        t.upName(t);
        t.upHead(t);

        let l: number[] = [];
        let pxMap: Dictionary<number> = {};
        let cfgMap = ConfigData.skin_301;
        for (let k in cfgMap) {
            let c = ConfigData.getSkin_301(k);
            l.push(+k);
            pxMap[k] = c.sort;
        }
        l.sort(function (a, b) {
            return pxMap[a] - pxMap[b];
        });
        owner.list.source = l;
        let index = l.indexOf(Game.Model.hero.vo.headId);
        owner.list.selectedIndex = index;

        if (!Game.Model.hero.isSetName && Game.isOnline) {
            XYFrame.UIMgr.open(Vw_Role_Name);
        }
    }

    public onClose() {
        super.onClose();
        let t = this, owner = t.owner;
        owner.list.off(Laya.UIEvent.ClickItem, t, t.onSel);
        owner.list.source = null;
    }

    protected onT() {
        let t = this, owner = t.owner;
        let id = owner.list.selectedItem;
        let vo = Game.Model.hero.vo;

        if (id && id != vo.headId) {
            if(vo.skin[id]) {
                Game.Model.hero.CG123(id);
            }else {
                Vw_Msg.setCfgTxt(815); // 未激活
            }
        } else {
            t.closeSelf();
        }
    }

    protected onNameT() {
        let t = this;
        if (Game.Model.hero.isSetName) {
            Vw_Msg.setCfgTxt(810);
        } else {
            if(Game.isOnline) {
                XYFrame.UIMgr.open(Vw_Role_Name);
            }else {
                Vw_Error.open(3);
            }
        }
    }

    protected onSel() {
        let t = this;
        let selId = t.owner.list.selectedItem;
        t.upHead(t, selId);
    }

    protected upHead(t: this, id?: number) {
        if (!id) {
            id = Game.Model.hero.vo.headId;
        }
        let cfg = ConfigData.getSkin_301(id), res: string;
        if (cfg.icon) {
            res = ResPath.getAtlasImgPath(EnumAltas.Role, cfg.icon);
        }
        t.owner.imgHead.src = res;

        // 更新底部按钮显示
        let vo = Game.Model.hero.vo;
        if (vo.headId == id) {
            // 
            t.owner.btn.text = LanguageMgr.getTxt(802);
        } else if (!vo.skin[id]) {
            // 未激活
            t.owner.btn.text = LanguageMgr.getTxt(816);
        } else {
            // 保存
            t.owner.btn.text = LanguageMgr.getTxt(802);
        }
    }

    protected upName(t: this) {
        t.owner.lbName.text = Game.Model.hero.vo.name;
    }
}