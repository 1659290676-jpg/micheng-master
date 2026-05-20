import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_gm from "../../../DataStock/ConfigData/Ts/Config_gm";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import GmUtils from "./GmUtils";
import Runtime_Item_Gm from "./Runtime_Item_Gm";
import Runtime_Vw_Gm from "./Runtime_Vw_Gm";


/**
 * @ Author: 
 * @ Date: 2026/3/27 16:00:43
 * @ Description: 
*/
export default class Vw_Gm extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "gm/Vw_Gm";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Gm;

    public get owner() {
        return this._owner;
    }

    protected inited(_t: this): void {
        let owner = _t.owner;

        owner.tabList.itemRenderer = _t.tabRenderer;
        owner.tabList.setVirtual();
        owner.tabList.numItems = 4;
        owner.tabList.selectedIndex = 0;

        owner.linkList.itemRenderer = _t.linkRenderer;
        owner.linkList.setVirtual();

        UIUtils.setList(owner.list);

        _t.onRefreshItem();
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onEvent(owner.tabList, Laya.UIEvent.ClickItem, _t.touchTab);
        _t.onClick(owner.btnSearch, _t.touchSearch);

        _t.onEvent(owner.linkList, Laya.UIEvent.ClickItem, _t.touchLink);
        // _t.onEvent(owner.linkList, Laya.Event.DRAG_MOVE, _t.linkDragMove);

        _t.onMsg("GM_SERVER", _t.msgServer);
    }

    public onClose(): void {
        super.onClose();
        let _t = this;
        let owner = _t.owner;
        owner.linkGp.visible = false;
        _t.closeLink();
    }

    private tabRenderer(index: number, item: Laya.GButton) {
        item.text = index == 0 ? "角色" : index == 1 ? "系统" : index == 2 ? "活动" : "其他";
    }

    private touchTab() {
        this.onRefreshItem();
    }

    private touchSearch() {
        this.onRefreshItem();
    }

    /**
     * 接受服务器数据
     * @param _t 
     * @param type 
     * @param arg2 
     * @param index 
     */
    private msgServer(_t: this, type: number, arg2: string, index: number) {
        let index1: number;
        a: for (let k in _t.gmMap) {
            let list = _t.gmMap[k];
            b: for (let i = 0, len = list.length; i < len; i++) {
                let vo = list[i];
                let dlx = Config_gm.getDlxByKey(vo.id);
                let xlx = Config_gm.getXlxByKey(vo.id);
                if (dlx == type && xlx == index) {
                    index1 = Config_gm.getTcByKey(vo.id);
                    break a;
                }
            }
        }
        if (index1 != null) {
            let isChange = false;
            a: for (let k in _t.gmMap) {
                let list = _t.gmMap[k];
                b: for (let i = 0, len = list.length; i < len; i++) {
                    let vo = list[i];
                    let dlx = Config_gm.getDlxByKey(vo.id);
                    let xlx = Config_gm.getXlxByKey(vo.id);
                    if (dlx == type && xlx == index1) {
                        vo.server = arg2;
                        isChange = true;
                    }
                }
            }
            if (isChange) {
                _t.onRefreshItem();
            }
        }
    }

    private gmMap: Record<number, Vo_Gm[]>;
    /** 获取数据 */
    private getDatas(index: number) {
        let _t = this;
        if (!_t.gmMap) {
            _t.gmMap = {};
            let cfg = ConfigData.gm;
            for (let k in cfg) {
                let id = +k;
                let type = (id / 1000) >> 0;
                if (!_t.gmMap[type]) {
                    _t.gmMap[type] = [];
                }
                _t.gmMap[type].push({
                    id: id,
                    linkCall: _t.callLink,
                    linkThis: _t
                });
            }
        }
        return _t.gmMap[index + 1];
    }

    /**
     * 刷新列表
     */
    private onRefreshItem() {
        let _t = this;
        let owner = _t.owner;
        let index = owner.tabList.selectedIndex;
        let list = _t.getDatas(index);
        let source: Vo_Gm[];
        if (list) {
            let text = owner.lbSearch.text.trim();
            if (text) {
                source = [];
                for (let i = 0, len = list.length; i < len; i++) {
                    let v = list[i];
                    let txt = Config_gm.getBtByKey(v.id);
                    if (txt && txt.indexOf(text) >= 0) {
                        source.push(v);
                    }
                }
            } else {
                source = list;
            }
        }
        owner.list.source = source;
    }

    // todo ------------------------------连接----------------------------------
    private linkVo: Vo_Gm;
    private linkItem: Runtime_Item_Gm;
    private linkInput: number;
    private linksData: Vo_GmLink[];
    private linkScroll: boolean;

    private linkRenderer(index: number, item: Laya.GButton) {
        let _t = <any>this;
        let data: Vo_GmLink = _t.source[index];
        item.data = data;
        if (data) {
            item.text = data.text + "#" + (data.id || data.type || 0);
        }
    }

    //#region  连接
    private callLink(_t: this, item: Runtime_Item_Gm, lbInput: Laya.GTextInput) {
        _t.linkVo = item.data;
        _t.linkItem = item;
        _t.linkInput = lbInput.data;
        let owner = _t.owner;
        owner.linkGp.visible = true;
        let pos = Laya.Point.create();
        pos.y = lbInput.height
        lbInput.localToGlobal(pos, false, owner);
        owner.linkGp.pos(pos.x, pos.y);
        pos.recover();

        let data = ConfigData.gm[_t.linkVo.id];
        let lj = _t.linkInput == 1 ? Config_gm.getLj(data) : Config_gm.getLj2(data);
        _t.linksData = GmUtils.getLinks(lbInput.text, data, 30, lj);
        owner.linkList.source = _t.linksData;

        let stage = Laya.stage;
        _t.onEvent(stage, Laya.Event.MOUSE_DOWN, _t.linkMouseDown);
        _t.onEvent(stage, Laya.Event.MOUSE_UP, _t.linkMouseUp);
        _t.onEvent(owner.linkList, Laya.Event.MOUSE_MOVE, _t.linkDragMove);
    }

    /**
     * 选中链接
     * @param item 
     */
    private touchLink(item: Laya.GButton) {
        let _t = this;
        let vo: Vo_GmLink = item.data;
        if (vo && _t.linkItem.data == _t.linkVo) {
            _t.linkItem.callLink(vo, _t.linkInput);
        }
        _t.closeLink();
        _t.linkVo = _t.linkItem = _t.linksData = _t.linkInput = null;
    }

    private closeLink() {
        let _t = this;
        _t.linkScroll = false;
        _t.owner.linkGp.visible = false;
        let stage = Laya.stage;
        _t.offEvent(stage, Laya.Event.MOUSE_DOWN, _t.linkMouseDown);
        _t.offEvent(stage, Laya.Event.MOUSE_UP, _t.linkMouseUp);
    }

    private linkMouseDown(e: Laya.Event) {
        this.linkScroll = false;
    }

    private linkMouseUp(e: Laya.Event) {
        if (!this.linkScroll) {
            this.closeLink();
        }
    }

    private linkDragMove() {
        this.linkScroll = true;
    }
    //#endregion
}