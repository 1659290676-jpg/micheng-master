import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import Runtime_Item_GmProCmd from "./Runtime_Item_GmProCmd";
import { Runtime_Item_GmProGpBase } from "./Runtime_Item_GmProGp.generated";

const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/3/30 12:36:45
 * @ Description: 
*/
@regClass()
export default class Runtime_Item_GmProGp extends Runtime_Item_GmProGpBase {
    public isRoot: boolean;
    public uiPanel: any;
    public itemVec: any[];
    public index = 0;
    public count = 0;

    onConstruct(): void {
        if (DEBUG) {
            let _t = this;
            _t.itemVec = [];
            _t.btnAdd.onClick(_t, _t.onTouch);
            _t.btnDel.onClick(_t, _t.onTouch);
        }
    }

    private onTouch(e: Laya.Event) {
        if (!DEBUG) return;
        let _t = this;
        let btn = e.target;
        if (btn == _t.btnAdd) {
            _t.uiPanel.addItem(_t.uiPanel, _t);
        } else if (btn == _t.btnDel) {
            _t.uiPanel.delItem(_t.uiPanel, _t);
        }
    }

    /**
     * 获取父级层级名称
     * @returns 
     */
    public getParentFloor() {
        if (!DEBUG) return;
        var t = this;
        var str = "";
        var index = t.uiPanel.index;
        if (index != null) {
            str = index + "-";
        }
        str = t.uiPanel.getParentFloor() + str;
        return str;
    }

    /**
     * 更新位置
     * @param _t 
     * @returns 
     */
    public onPos(_t: this) {
        if (!DEBUG) return;
        let len = _t.itemVec.length;
        let y = 46;
        for (let i = 0; i < len; i++) {
            let item = _t.itemVec[i];
            item.y = y;
            y += item.height;
            if (i < len - 1) {
                y += 6;
            }
        }
        _t.height = y + 40;
    }

    public addItem(_t: this, item: Runtime_Item_GmProGp) {
        if (!DEBUG) return;
        let index = _t.itemVec.indexOf(item);
        if (index != -1) {
            let item1 = Runtime_Item_GmProGp.create();
            _t.addChildAt(item1, _t.numChildren - 2);
            _t.itemVec.splice(index + 1, 0, item1);
            _t.count++;
            item.showData(item.data, _t, _t.count);
            _t.onPos(_t);
            if (!_t.isRoot && _t.uiPanel) {
                _t.uiPanel.onPos(_t.uiPanel);
            }
        }
    }

    public delItem(_t: this, item: Runtime_Item_GmProGp) {
        if (!DEBUG) return;
        let index = _t.itemVec.indexOf(item);
        if (index != -1) {
            item.dispose();
            _t.itemVec.splice(index, 1);
            _t.onPos(_t);
            if (!_t.isRoot && _t.uiPanel) {
                _t.uiPanel.onPos(_t.uiPanel);
            }
        }
    }

    /**
     * 显示数据
     * @param data 
     * @param uiPanel 
     * @param index 
     */
    public showData(info: any[], uiPanel: any, index: number = 0) {
        if (!DEBUG) return;
        if (!info) return;
        let _t = this;
        _t.data = info;
        _t.uiPanel = uiPanel;
        _t.index = index;
        let str = _t.getParentFloor();
        str += index + "层";
        _t.lbTitle.color = _t.lbEnd.color = _t.index % 2 == 0 ? "#00CC00" : "#FF0000";
        _t.lbTitle.text = "第" + str;
        _t.lbEnd.text = "第" + str + "结束";
        _t.count = 0;
        let type: number;
        for (let i = 0; i < info.length; i++) {
            let data = info[i];
            type = 0;
            if (typeof data == "string") {
                var item: any = Runtime_Item_GmProCmd.create();
            } else {
                item = Runtime_Item_GmProGp.create();
                type = 1;
                _t.count++;
            }
            if (_t.itemVec.length > 0) {
                let last = _t.itemVec[_t.itemVec.length - 1];
                item.y = last.y + last.height + 6;
            } else {
                item.y = 46;
            }
            _t.itemVec.push(item);
            _t.addChildAt(item, _t.numChildren - 2);
            item.showData(data, _t, _t.count);
            if (type == 1) {
                item.onPos(_t);
            }
        }
        _t.onPos(_t);
    }

    public getData(bytes: BaseBytes) {
        if (!DEBUG) return;
        let _t = this;
        let data = _t.data;
        if (!data) return;
        let list = _t.itemVec;
        let len1 = list.length;
        let count = 0;
        for (let i = 0, len = data.length; i < len; i++) {
            let info = data[i];
            let item = list[count];
            if (typeof info == "string") {
                item.getData(bytes);
                count++;
            } else {
                let c = 0;
                for (let j = count; j < len1; j++) {
                    item = list[j];
                    if (item instanceof Runtime_Item_GmProGp) {
                        if (item.data == info) {
                            c += 1;
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                bytes.writeInt(c);
                for (let j = 0; j < c; j++) {
                    item = list[count];
                    item.getData(bytes);
                    count++;
                }
            }
        }
    }

    public clear() {
        if (!DEBUG) return;
        let _t = this;
        for (let i = 0; i < _t.itemVec.length; i++) {
            let item = _t.itemVec[i];
            item.dispose();
        }
        _t.itemVec.length = 0;
        _t.count = 0;
    }

    public dispose() {
        if (!DEBUG) return;
        let _t = this;
        _t.removeSelf();
        _t.clear();
        Runtime_Item_GmProGp.POOL.push(_t);
    }

    public static POOL: Runtime_Item_GmProGp[] = [];
    public static tempUrl: string;
    public static create() {
        if (DEBUG) {
            return Runtime_Item_GmProGp.POOL.length ? Runtime_Item_GmProGp.POOL.shift() : UIUtils.createByUrl(Runtime_Item_GmProGp.tempUrl, Runtime_Item_GmProGp);
        }
    }

}
