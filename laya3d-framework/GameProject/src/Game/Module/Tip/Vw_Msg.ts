import ConfigUtils from "../../../DataStock/ConfigUtils";
import Vo_GoodBase from "../../../DataStock/GameData/Vo_GoodBase";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import { Ease } from "../../../XYFrame/Tween/Ease";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import ArrayUtils from "../../../XYFrame/Utils/ArrayUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";

type VoMsg = {
    type: number,
    str?: string,
    gtype?: number,
    gid?: number,
    num?: number,
    pkg?: string,
    font?: string
    sign?: string
}

interface I_Item_Msg extends Laya.Sprite {
    lx: number;
    st: number;
    tm: number;
    defY?: number;
    onAdd(parent: Laya.Sprite): any;
    onRemove(): any;
}

/**
 * @ Author: XXL
 * @ Date: 2026-03-26 15:51
 * @ Description: 提示
*/
export default class Vw_Msg extends UIBase {

    private static _wait: VoMsg[] = [];
    /**
     * 提示
     * @param msg 
     */
    public static setText(msg: string) {
        if (!msg) return;
        Vw_Msg.addData(1, msg);
        if (!XYFrame.UIMgr.isOpen(Vw_Msg)) {
            XYFrame.UIMgr.open(Vw_Msg);
        }
    }

    /**
     * 提示抽字表中的内容
     * @param id 
     * @param arg 
     */
    public static setCfgTxt(id: number | string, ...arg: any) {
        if (id) {
            let txt = LanguageMgr.getTxt(id, ...arg);
            Vw_Msg.setText(txt);
        }
    }

    /**
     * 物品获得提示
     * @param type 物品类型
     * @param id 物品id
     * @param num 物品数量
     * @param sign 提示增加的后缀，默认""
     * @returns 
     */
    public static setItem(type: number, id: number, num: number, sign: string = "") {
        Vw_Msg.addData(2, { type: type, id: id, num: num, sign: sign });
        if (!XYFrame.UIMgr.isOpen(Vw_Msg)) {
            XYFrame.UIMgr.open(Vw_Msg);
        }
    }

    /**
     * 物品获得提示
     * @param list 物品列表 [[物品类型,物品id,数量],[物品类型,物品id,数量]]
     * @param sign 提示增加的后缀，默认""
     * @returns 
     */
    public static setItems(list: number[][], sign: string = "") {
        if (!list) return;
        let len = list.length;
        if (len <= 0) return;
        for (let i = 0; i < len; i++) {
            var info = list[i]
            Vw_Msg.addData(2, { type: info[0], id: info[1], num: info[2], sign: sign });
        }
       if (!XYFrame.UIMgr.isOpen(Vw_Msg)) {
            XYFrame.UIMgr.open(Vw_Msg);
        }
    }

    /**
     * 物品获得提示
     * @param list 格子数据vo列表
     * @param sign 提示增加的后缀，默认""
     * @returns 
     */
    public static setItemVos(list: Vo_GoodBase[], sign: string = "") {
        if (!list) return;
        let len = list.length;
        if (len <= 0) return;
        for (let i = 0; i < len; i++) {
            var info = list[i]
            Vw_Msg.addData(2, { type: info.type, id: info.id, num: info.count, sign: sign });
        }
        if (!XYFrame.UIMgr.isOpen(Vw_Msg)) {
            XYFrame.UIMgr.open(Vw_Msg);
        }
    }



    /**
     * 添加条件
     * @param type 
     * @param data 
     */
    private static addData(type: number, arg: any) {
        let list = Vw_Msg._wait;
        let obj: VoMsg;
        if (list.length > 10) {
            obj = list.shift();
        } else {
            obj = XYFrame.PoolMgr.getObj();
        }
        obj.type = type;
        if (type == 1) {
            obj.str = arg;
        } else if (type == 2) {
            let d: { type: number, id: number, num: number, sign: string } = arg;
            obj.gtype = d.type;
            obj.gid = d.id;
            obj.num = d.num;
            obj.sign = d.sign;
        } else if (type == 3) {
            obj.str = arg;
        }
        list.push(obj);
    }

    protected inited(_t: this): void {
        // let layout = _t.layout;
        // layout.y = 

    }


    /**
     * 显示下条
     * @param _t 
     */
    private showNext(_t: this) {
        if (Vw_Msg._wait.length > 0) {
            let d = Vw_Msg._wait.shift();
            let item: I_Item_Msg;
            if (d.type == 1) {
                item = XYFrame.PoolMgr.getCls(Item_Msg);
                (<Item_Msg>item).setText(d.str);
            } else if (d.type == 2) {
                item = XYFrame.PoolMgr.getCls(Item_BagMsg);
                (<Item_BagMsg>item).setData(d);
            }
            if (item) {
                item.anchor(0.5, 0.5);
                item.st = 0;
                item.tm = 0;
                if (item.lx == 2) {
                    item.y = item.defY = 0;
                    item.scale(1, 1);
                } else if (item.lx == 1) {
                    item.y = 0;
                    item.scale(0.1, 0.1);
                }
                item.x = 0;
                item.alpha = 1;
                item.onAdd(_t.owner);
                _t._list.push(item);
            }
        }
    }

    private _tm = 0;
    private _list: I_Item_Msg[] = [];

    private tick(dt: number, _t: this) {
        _t._tm += dt;
        if (_t._tm >= 100) {
            _t._tm = 0;
            _t.showNext(_t);
        }
        let isClean, item: I_Item_Msg;
        let r: number, s: number;
        let lxIdxMap: Record<string, number> = XYFrame.PoolMgr.getObj();
        let n: number, ey: number, dist: number, _y: number;
        let speed = dt / 33 * 5;
        let endY: number;
        for (let i = _t._list.length; i >= 0; i--) {
            item = _t._list[i];
            if (!item) {
                isClean = true;
                continue;
            }
            if (item.lx in lxIdxMap) {
                n = lxIdxMap[item.lx] + 1;
                lxIdxMap[item.lx] = n;
            } else {
                n = lxIdxMap[item.lx] = 0;
            }
            if (item.lx == 2) {
                endY = item.defY - 100;
                //结束位置
                ey = endY - n * 102;
                n++;
                dist = (2 + (2000 - item.tm) / 1000 * speed) >> 0;
                _y = item.y;
                if (_y - dist > ey) {
                    item.y = _y - dist;
                } else {
                    item.y = ey;
                }
                item.tm += dt;
                if (item.st == 0) {
                    if (item.tm >= 1000) item.st = 1;
                } else if (item.st == 1) {
                    if (item.tm >= 1500) item.st = 2;
                } else {
                    item.alpha = (item.alpha - 0.066);
                    if (item.tm >= 2000) {
                        _t._list[i] = null;
                        isClean = true;
                        item.onRemove();
                    }
                }
            }
            else {
                item.tm += dt;
                if (item.st == 0) {
                    if (item.tm >= 200) item.st = 1;
                    r = item.tm / 200;
                    if (r > 1) r = 1;
                    s = Ease.backOut(r) * 0.9;
                    item.scale(s, s);
                } else if (item.st == 1) {
                    if (item.tm >= 1000) item.st = 2;
                } else {
                    r = item.tm - 1000;
                    if (r > 200) r = 200;
                    s = 1 - r / 200;
                    item.scale(s, s);
                    if (item.tm >= 1200) {
                        _t._list[i] = null;
                        isClean = true;
                        item.onRemove();
                    }
                }
            }

        }
        if (isClean) {
            ArrayUtils.cleanNull(_t._list);
        }
        if (_t._list.length <= 0 && Vw_Msg._wait.length <= 0) {
            _t.closeSelf();
        }
        XYFrame.PoolMgr.releaseObj(lxIdxMap);
    }

    public onOpen(arg?: any): void {
        super.onOpen(arg);
        let _t = this;
        _t._tm = 0;
        XYFrame.Timer.loop(10, _t.tick, _t);
    }

    public onClose(): void {
        super.onClose();
        let _t = this;
        XYFrame.Timer.clearTimer(_t.tick, _t);
    }
}

/**
 * 单个提示
 */
class Item_Msg extends Laya.Sprite implements I_Item_Msg {
    public lx: number = 1;
    public st: number;
    public tm: number;
    public lb: Laya.GTextField;
    public constructor() {
        super();
        let _t = this;
        let lb = _t.lb = new Laya.GTextField();
        lb.html = true;
        lb.color = "#F1efe1";
        lb.stroke = 3;
        lb.strokeColor = "#351915";
        lb.autoSize = true;
        lb.y = 16;
        lb.fontSize = 36;
        _t.addChild(lb);
        _t.size(568, 76);
    }

    /**
     * 设置文本
     * @param text 
     */
    public setText(text: string) {
        let _t = this;
        _t.lb.text = text;
        _t.lb.x = (_t.width - _t.lb.textWidth) / 2;
    }

    public onAdd(parent: Laya.Sprite) {
        parent.addChild(this);
    }

    public onRemove() {
        let _t = this;
        _t.removeSelf();
        _t.lb.text = "";
        XYFrame.PoolMgr.releaseCls(_t);
    }
}

/**物品 获得提示 */
class Item_BagMsg extends Item_Msg {
    public lx = 2;
    public lbms: Laya.GTextField;
    public img: Laya.GLoader;
    public constructor() {
        super();
        let t = this;
        let lbms = t.lbms = new Laya.GTextField();
        lbms.html = true;
        lbms.color = "#F1efe1";
        lbms.stroke = 2;
        lbms.strokeColor = "#351915";
        lbms.autoSize = true;
        lbms.y = 16;
        lbms.fontSize = 36;
        lbms.text = LanguageMgr.getTxt(41);
        t.addChild(lbms);

        let img = t.img = new Laya.GLoader();
        img.size(60, 60);
        img.fitMode = Laya.LoaderFitMode.Contain;
        img.y = 8;
        t.addChild(img);
    }

    public setData(vo: VoMsg) {
        let t = this;
        let type = vo.gtype, id = vo.gid, num = vo.num, sign = vo.sign;
        t.img.src = ConfigUtils.getItemIconPath(type, id);

        let lb = t.lb;
        lb.text = ConfigUtils.getGoodName(type, id, true, null, "*" + num) + (sign ? sign : "");
        let x = (t.width - t.lbms.width - 1 - t.img.width - 1 - t.lb.width) >> 1;
        t.lbms.x = x;
        t.img.x = t.lbms.x + t.lbms.width + 1;
        t.lb.x = t.img.x + t.img.width + 1;
    }

    public onRemove(): void {
        super.onRemove();
        let t = this;
    }
}