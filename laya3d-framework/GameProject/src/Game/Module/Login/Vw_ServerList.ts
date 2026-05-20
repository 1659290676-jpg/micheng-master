import { BridgeManager } from "../../../Bridge/BridgeManager";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Runtime_Vw_ServerList from "./Runtime_Vw_ServerList";


/**
 * @ Author: 
 * @ Date: 2026/4/27 14:24:34
 * @ Description: 
*/
export default class Vw_ServerList extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "login/Vw_ServerList";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_ServerList;

    public get owner() {
        return this._owner;
    }

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.list.setVirtual();
        owner.list.itemRenderer = _t.itemRenderer.bind(_t);
    }
    
    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onEvent(owner.list, Laya.UIEvent.ClickItem, _t.onItemClick);
    }

    public onOpen(...args: any[]): void {
        super.onOpen();
        let list = BridgeManager.ins.serverList;
        if(!list) {
            list = [];
            if(BridgeManager.ins.info.servSocket) {
                list.push(BridgeManager.ins.info.servSocket);
            }
        }
        this.owner.list.source = list;
    }

    public onClose(): void {
        super.onClose();
        this.owner.list.source = null;
    }

    private itemRenderer(index: number, item: Laya.GButton) {
        let data = this.owner.list.source[index];
        item.data = data;
        item.title = data.name;
    }

    private onItemClick(item: Laya.GButton) {
        let data = item.data;
        if (data) {
            BridgeManager.ins.info.servSocket = data;
        }
        this.closeSelf();
        XYFrame.Msg.emit(EnumMsg.SRV_DATA_UPDATE);
    }
}