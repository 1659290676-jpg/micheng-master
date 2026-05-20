import Config_daoju_102 from "../../../DataStock/ConfigData/Ts/Config_daoju_102";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import EnumKey from "../../../DataStock/GameData/EnumKey";
import Singleton from "../../../XYFrame/Base/Singleton";
import { Ease } from "../../../XYFrame/Tween/Ease";
import { EnumUILayer } from "../../../XYFrame/UI/Layer/EnumUILayer";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Vw_ItemDescTip from "../Common/Vw_ItemDescTip";

export default class ItemTipsMgr extends Singleton {
    private root: Laya.Sprite;

    protected onInit(): void {
        let t = this;
        t.root = new Laya.Sprite();
        t.root.mouseThrough = true;
    }

    onOpen() {

    }

    onClose() {
        let t = this;
        let root = t.root;
        let numChildren = root.numChildren;
        if (numChildren > 0) {
            for (let i = numChildren - 1; i >= 0; i--) {
                let child = root.getChildAt(i);
                if (child instanceof Item_ItemFloat) {
                    child.dispose();
                } else if (child instanceof Laya.GImage) {
                    child.removeSelf();
                    XYFrame.PoolMgr.freeImg(child);
                } else {
                    child.destroy();
                }
            }
        }
    }

    dispose() {
        let t = this;
        t.root.removeSelf();
        t.onClose();
    }

    static showReward(jlArr: number[][], target: Laya.Sprite) {
        let t: ItemTipsMgr = ItemTipsMgr.getInst();
        let root = t.root;
        if (!root.parent) {
            let layer = XYFrame.UIMgr.getLayer(EnumUILayer.Tips);
            layer.addChild(root);
            t.onOpen();
        }
        let p = Laya.Point.create().setTo(0, 0);
        p = target.localToGlobal(p);
        let x = p.x + target.width / 2, y = p.y;
        let itemW = 115, itemH = 100;
        if (jlArr.length >= 2) x -= itemW / 2;
        p.recover();
        let itemX: number, itemY: number, row: number, col: number;
        for (let i = 0; i < jlArr.length; i++) {
            row = Math.floor(i / 2);
            col = i % 2;
            itemX = x + col * itemW;
            itemY = y - row * itemH;

            let jl = jlArr[i];
            let itemType = jl[0];
            let id = jl[1];
            let num = jl[2];
            let item = XYFrame.PoolMgr.getCls(Item_ItemFloat);
            item.pos(itemX, itemY);
            item.setData(itemType, id, num);
            t.root.addChild(item);
            item.visible = false;

            XYFrame.Tween.delay(item, 100 * i).call((thisObj, item2) => {
                item2.visible = true;
                item.alpha = 1;
            }, t, item).to({ y: itemY - 180, alpha: 0.1 }, 1000, Ease.quadIn).call((thisObj, item2: Item_ItemFloat) => {
                item2.dispose(false);
                if (t.root.numChildren == 0) {
                    t.dispose();
                }
            }, t, item);
        }
    }

    /**
     * 显示物品描述
     * @param target 
     * @param item 
     */
    static showItemDescTip(target: Laya.GWidget, item: number[]) {
        Vw_ItemDescTip.show(target, item);
    }

    /**显示描述 */
    static showDescTip(target: Laya.GWidget, desc: string) {
        Vw_ItemDescTip.showDesc(target, desc);
    }

    /**
     * 
     * @param target 目标
     * @param num 数量
     * @param dir 方向 1:从左到右 2:从右到左
     */
    static showItemFlyAni(target: Laya.GWidget, { num = 8, w = 120, h = 135, dis = -10, dir = 1, src = null, callback = null, caller = null, args = null, endCallBack = null }: { num?: number, src: string, dis?: number, w?: number, h?: number, dir?: number, callback?: (thisObj?: any, ...args: any) => any, caller?: any, args?: any, endCallBack?: (thisObj?: any, ...args: any) => any } = <any>{}) {
        let t: ItemTipsMgr = ItemTipsMgr.getInst();
        let root = t.root;
        if (!root.parent) {
            let layer = XYFrame.UIMgr.getLayer(EnumUILayer.Tips);
            layer.addChild(root);
            t.onOpen();
        }

        let p = Laya.Point.create().setTo(0, 0);
        p = target.localToGlobal(p);
        let fromX = p.x, fromY = p.y + target.height / 2;
        let toX0 = fromX, toY0 = fromY;
        let toX = p.x + target.width / 2, toY = p.y + target.height / 2;
        let ctrlX: number, ctrlY: number;
        p.recover();
        if (dir == 1) {
            fromX = fromX - w - dis;
            ctrlX = fromX + (toX - fromX) / 2;
            ctrlY = fromY - 150;
            toX0 = fromX - 6;
            toY0 = fromY + 3;
        } else if (dir == 2) {
            fromX = fromX + target.width + dis;
            ctrlX = fromX - Math.abs(toX - fromX) / 2;
            ctrlY = fromY - 150;
            toX0 = fromX + 6;
            toY0 = fromY + 3;
        }
        let tarScale1 = 1.25;
        let tarScale2 = 1.12;

        let flyOne = function (src: string, callback: (thisObj?: any, ...args: any) => any, caller: any, idx = 0): Promise<any> {
            let promise = new Promise((resolve) => {
                let img: Laya.GImage = XYFrame.PoolMgr.getImg();
                img.anchor(0.5, 0.5);
                img.size(w, h);
                img.src = src;
                img.pos(fromX, fromY);
                root.addChild(img);
                XYFrame.Tween.delay(img, 200 * (idx + 1)).call((thisObj, img) => {
                    img.scale(1.3, 1.3);
                }, null, img).to({ x: toX0, y: toY0 }, 100).bezier({ x: toX, y: toY, scaleX: 1, scaleY: 1 }, { x: [ctrlX, toX], y: [ctrlY, toY] }, 800, Ease.linear).call((thisObj, callBack, img,) => {
                    if (img.parent) {
                        img.removeSelf();
                        XYFrame.PoolMgr.freeImg(img);
                    }
                    if (callBack) {
                        callBack(caller, args);
                    }
                    if (!target.destroyed) {
                        XYFrame.Tween.to(target, { scaleX: tarScale1, scaleY: tarScale1 }, 50).to({ scaleX: tarScale2, scaleY: tarScale2 }, 50);
                    }
                    if (t.root.numChildren == 0) {
                        t.dispose();
                    }
                    resolve(true);
                }, caller, callback, img);
            });
            return promise;
        }

        let startFlyItems = function (): Promise<any>[] {
            let promiseList = [];
            if (num == 1) {
                promiseList.push(flyOne(src, callback, caller));
            } else if (num >= 2) {
                for (let i = 0; i < num; i++) {
                    promiseList.push(flyOne(src, callback, caller, i));
                }
            }
            return promiseList;
        }

        XYFrame.Tween.to(target, { scaleX: tarScale1, scaleY: tarScale1 }, 100, null);
        XYFrame.Timer.once(100, () => {
            let promiseList = startFlyItems();
            Promise.all(promiseList).then((d) => {
                if (target.destroyed) {
                    if (endCallBack) {
                        endCallBack(caller, args);
                    }
                } else {
                    XYFrame.Tween.delay(target, 100).to({ scaleX: 1, scaleY: 1 }, 100).call(() => {
                        if (endCallBack) {
                            endCallBack(caller, args);
                        }
                    }, caller);
                }
            });
        }, t);
    }
}

class Item_ItemFloat extends Laya.GWidget {

    private m_img: Laya.GImage;
    private m_txt: Laya.GTextField;

    constructor() {
        super();
        this.uiInit();
    }

    uiInit() {
        let t = this;
        t.name = "Item_ItemFloat";
        t.size(115, 100);
        t.anchor(0.5, 0.5);
        t.mouseEnabled = false;
        t.m_img = new Laya.GImage();
        t.m_img.size(115, 100);
        t.addChild(t.m_img);

        let txt = t.m_txt = new Laya.GTextField();
        txt.fontSize = 40;
        txt.autoSize = true;
        txt.color = "#fcf8fe";
        txt.stroke = 3;
        txt.strokeColor = "#2c2014";
        txt.y = 70;
        t.addChild(txt);
    }

    clear() {
        let t = this;
        t.m_img.src = null;
        t.m_txt.text = "";
    }

    dispose(freeTween: boolean = true) {
        let t = this;
        t.removeSelf();
        if (freeTween) {
            XYFrame.Tween.kill(t);
        }
        if (!t["__pool__"]) {
            XYFrame.PoolMgr.releaseCls(t);
        }
    }

    setData(itemType: number, id: number, num: number) {
        let t = this;
        t.clear();
        t.m_img.src = ConfigUtils.getItemIconPath(itemType, id);
        let textNum = "" + num;
        if (itemType == EnumKey.ITEM) {
            let cfg = ConfigUtils.getGoodCfg(itemType, id) as Config_daoju_102;
            if (cfg && (cfg.l == 4 || cfg.l == 5)) {
                if (num == 1) {
                    textNum = "";
                } else {
                    textNum = "x" + textNum;
                }
            } else {
                textNum = "x" + textNum;
            }
        }
        t.m_txt.text = textNum;
        t.m_txt.x = (t.width - t.m_txt.textWidth) / 2;
    }
}