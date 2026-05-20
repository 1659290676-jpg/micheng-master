import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import ObjectCompressor from "../../../XYFrame/Network/ObjectCompressor";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Vw_Msg from "../Tip/Vw_Msg";
import Runtime_Item_GmProCmd from "./Runtime_Item_GmProCmd";
import Runtime_Item_GmProGp from "./Runtime_Item_GmProGp";
import Runtime_Vw_GmProtocol from "./Runtime_Vw_GmProtocol";

/**
 * @ Author: 
 * @ Date: 2026/3/30 11:49:50
 * @ Description: 
*/
export default class Vw_GmProtocol extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "gm/Vw_GmProtocol";
    public static readonly preloads: string[] = ["ui/prefab/gm/Item_GmProCmd.lh"];
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_GmProtocol;

    public get owner() {
        return this._owner;
    }

    private gmData: Record<string | number, ProtocolData>;
    private curVo: ProtocolData;

    protected inited(_t: this): void {
        if (DEBUG) {
            let owner = _t.owner;
            Runtime_Item_GmProGp.tempUrl = owner.itemGp.url;
            Runtime_Item_GmProCmd.tempUrl = owner.proCmd.url;
            owner.proCmd.dispose();
            owner.proCmd = null;
            owner.searchList.setVirtual();
            owner.searchList.itemRenderer = _t.searchRenderer;
            XYFrame.ResMgr.load(ResPath.getCfgPath("protocol.txt"), _t.onLoaded, _t, Laya.Loader.BUFFER);
        }
    }

    private onLoaded(asset: any, url: string, _t: this) {
        if (!DEBUG) return;
        if (asset) {
            _t.gmData = <any>ObjectCompressor.decompress(asset.data);
        }
    }

    protected initListener(): void {
        if (DEBUG) {
            let _t = this;
            let owner = _t.owner;
            _t.onClick(owner.btnAdd, _t.onTouch);
            _t.onClick(owner.btnSend, _t.onTouch);
            _t.onClick(owner.btnSend, _t.onTouch);
            _t.onEvent(owner.lbCmd, Laya.Event.INPUT, _t.onInputCmd);
            _t.onEvent(owner.lbCmd, Laya.Event.FOCUS, _t.onInputCmd);
            _t.onEvent(owner.searchList, Laya.UIEvent.ClickItem, _t.clickSearch);

        }
    }

    public onClose(): void {
        if (!DEBUG) return;
        super.onClose();
        let _t = this;
        let owner = _t.owner;
        owner.search.visible = false;
    }

    protected onTouch(e: Laya.Event) {
        if (!DEBUG) return;
        let btn = e.target;
        let _t = this;
        let owner = _t.owner;
        if (btn == owner.btnAdd) {
            _t.initData(_t);
        } else if (btn == owner.btnClear) {
            _t.onClear(_t);
        } else if (btn == owner.btnSend) {
            _t.onSend(_t);
        }
        owner.search.visible = false;
    }

    private searchRenderer(index: number, item: Laya.GButton) {
        let _t: any = this;
        let source = _t.source;
        let data: ProtocolData = source[index];
        item.data = data;
        if (data) {
            item.text = data.code + "#" + data.codeDetail;
        }
    }
    private clickSearch(item: Laya.GWidget) {
        let t = this;
        let data: ProtocolData = item.data;
        if (data) {
            t.curVo = data;
            t.owner.lbCmd.text = data.code + "#" + data.codeDetail;
            t.initData(t);
        }
        t.owner.search.visible = false;
    }

    private onInputCmd() {
        let t = this;
        if (!t.gmData) return;
        let text = t.owner.lbCmd.text;
        let source: ProtocolData[] = [];
        for (let k in t.gmData) {
            var v = t.gmData[k];
            if ((k + "#" + v.codeDetail + "#" + v.sysDesc).indexOf(text) != -1) {
                source.push(v);
                if (source.length >= 100) break;
            }
        }
        t.owner.searchList.source = source;
        t.owner.search.visible = true;
    }

    public cmdList: any[];

    public initData(_t: this) {
        if (!DEBUG) return;
        if (!_t.gmData) {
            Vw_Msg.setText("加载协议数据未成功");
            return;
        }
        if (!_t.curVo) {
            return;
        }
        var info = _t.curVo;
        var content: string = info.content;
        _t.owner.lbDes.text = content + "\n" + info.codeDetail + "\n" + info.detailDesc;

        _t.content = content.replace(/-/g, "");
        _t.cmdList = _t.parse(_t);
        _t.initView(_t);
    }

    public initView(_t: this) {
        if (!DEBUG) return;
        _t.onClear(_t);
        _t.owner.itemGp.showData(_t.cmdList, _t);
    }

    protected content: string;
    protected parse(_t: this): any[] {
        if (!DEBUG) return;
        var list: any[] = [];
        if (_t.content.length <= 0) {
            return list;
        }
        while (_t.content.length > 0) {
            var s = _t.content[0];
            _t.content = _t.content.substring(1);
            if (s == "[") {
                list.push(_t.parse(_t));
            } else if (s == "]") {
                return list;
            } else {
                list.push(s);
            }
        }
        return list;
    }

    protected onClear(_t: this) {
        if (!DEBUG) return;
        _t.owner.container.scroller.setPosY(0);
        _t.owner.itemGp.clear();
    }

    protected onSend(_t: this) {
        if (!DEBUG) return;
        if (!_t.curVo) return;
        let owner = _t.owner;
        var cmd = _t.curVo.code;
        if (cmd <= 0) {
            return;
        }
        var count = parseInt(owner.lbCount.text);
        var bytes = _t.getBytes(_t);
        owner.itemGp.getData(bytes);
        var byte: BaseBytes;
        for (var i = 0; i < count; i++) {
            if (cmd % 2 == 1) {
                XYFrame.SocketMgr.sendCmd(cmd, bytes);
            } else {
                ;
                if (!byte) {
                    byte = new BaseBytes(null, true);
                }
                byte.clear();
                bytes.pos = 0;
                bytes.readBytes(byte, 0);
                byte.pos = 0;
                XYFrame.SocketMgr.simulateRecive(cmd, byte);
            }
        }
        _t.closeSelf();
    }

    private bytes: BaseBytes;
    public getBytes(_t: this) {
        if (!DEBUG) return;
        if (!_t.bytes) {
            _t.bytes = new BaseBytes(null, true);
        } else {
            _t.bytes.clear();
        }
        return _t.bytes;
    }

    addItem(_t: this, item: Runtime_Item_GmProGp) {
        if (!DEBUG) return;
        _t.initView(_t);
    }

    delItem(_t: this, item: Runtime_Item_GmProGp) {
        if (!DEBUG) return;
        let owner = _t.owner;
        owner.itemGp.clear();
        owner.itemGp.onPos(owner.itemGp);
    }

    getParentFloor() {
        return "";
    }
}