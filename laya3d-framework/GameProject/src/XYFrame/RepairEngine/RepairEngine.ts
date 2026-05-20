import { XYFrame } from "../XYFrame";
import AtlasLoader from "./AtlasLoader";
import RepairHierarchyParser from "./RepairHierarchyParser";

/**
 * @ Author: XXL
 * @ Date: 2026-03-20 17:29
 * @ Description: 修复引擎
*/
export default class RepairEngine {

    private static poolMap: Record<string, any[]> = {};
    public static repair() {
        let atlas = AtlasLoader;
        // let node_destory = Laya.Node.prototype.destroy;
        // Laya.Node.prototype.destroy = function (destroyChild: boolean = true) {
        //     node_destory.call(this, destroyChild);
        // }

        // let sprite3d_destory = Laya.Sprite3D.prototype.destroy;
        // Laya.Sprite3D.prototype.destroy = function (destroyChild: boolean = true) {
        //     if (this._destroyed)
        //         return;
        //     let tf = this._transform;
        //     sprite3d_destory.call(this, destroyChild);
        //     RepairEngine.putPool("Sprite3D", this);
        //     RepairEngine.resetTF3D(tf);
        //     RepairEngine.putPool("tf", tf);
        // }

        let GList = Laya.GList;
        Object.defineProperty(GList.prototype, "source", {
            get: function () {
                return this._source;
            },
            set: function (v) {
                this._source = v;
                let num = v ? v.length : 0;
                this.numItems = num;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(GList.prototype, "selectedItem", {
            get: function () {
                return this._source[this.selectedIndex];
            },
            enumerable: true,
            configurable: true
        });
        (<any>GList).prototype.refresh = function () {
            let n = this.numItems;
            this.numItems = n;
        };
        (<any>GList).prototype.returnToPool = function (obj: any) {
            if (obj.clear) {
                obj.clear();
            }
            this._pool.recover(obj);
        };

        (Laya.GButton.prototype as any)._click = function (evt: any) {
            var _a;
            if (this._sound) {
                //Laya.SoundManager.playSound(this._sound).volume = this._soundVolumeScale;
                if (this.sound != "-1") {
                    XYFrame.AudioMgr.playUI(this._sound, false);
                }
            } else {
                XYFrame.AudioMgr.playClick();
            }

            let ss = (_a = this.parent) === null || _a === void 0 ? void 0 : _a.selection;
            if (ss && ss.mode != Laya.SelectionMode.None) {
                ss.handleClick(this, evt);
                if (this._mode != Laya.ButtonMode.Common)
                    return;
            }
            if (this._mode == Laya.ButtonMode.Check) {
                if (this._changeStateOnClick) {
                    this.selected = !this._selected;
                    this.event(Laya.Event.CHANGED);
                }
            }
            else if (this._mode == Laya.ButtonMode.Radio) {
                if (this._changeStateOnClick && !this._selected) {
                    this.selected = true;
                    this.event(Laya.Event.CHANGED);
                }
            }
            else {
                if (this._selectedController)
                    this._selectedController.selectedIndex = this._selectedPage;
            }
        };


        RepairHierarchyParser.repair();
    }

    /**
     * 初始化缓存池
     * @returns 
     */
    public static initPool() {
        let pool: Laya.Sprite3D[] = RepairEngine.poolMap["Sprite3D"];
        if (pool) return;
        pool = RepairEngine.poolMap["Sprite3D"] = [];
        for (let i = 0; i < 3000; i++) {
            let sprite = new Laya.Sprite3D();
            pool.push(sprite);
        }
    }

    public static getPool(name: string, cls: any) {
        let pool = RepairEngine.poolMap[name];
        if (pool && pool.length > 0) {
            let sp = pool.pop();
            sp.__in_pool_ = false;
            return sp;
        }
        return new cls();
    }

    public static putPool(name: string, obj: any, destroyChild = true) {
        if (!obj) return;
        if (obj.__in_pool_) return;
        obj.__in_pool_ = true;
        let pool = RepairEngine.poolMap[name];
        if (!pool) {
            pool = RepairEngine.poolMap[name] = [];
        }
        pool.push(obj);
    }

    private static getTF(owner: any) {
        let pool = RepairEngine.poolMap["tf"];
        if (pool && pool.length) {
            let tf = pool.pop();
            tf._owner = owner;
            tf._initProperty();
            return tf;
        }
        return Laya.Laya3DRender.Render3DModuleDataFactory.createTransform(owner);
    }

    /**
     * 重置节点属性
     * @param node 
     */
    private static resetNode(node: any) {
        if (!node) {
            return;
        }
        node._url = null;
        node.tag = null;
        node.name = "";
        node._bits = 0x1;
        node._reactiveBits = 0x10;
        node._hideFlags = 0;
        node._children = [];
        node._$children = node._children;
        node._$container = node;
        node._destroyed = false;
        node._initialize();
    }

    private static resetTF3D(tf: any) {
        if (!tf) {
            return;
        }
        tf._localPosition.setValue(0, 0, 0);
        tf._localRotation.setValue(0, 0, 0, 1);
        tf._localScale.setValue(1, 1, 1);
        tf._localRotationEuler.setValue(0, 0, 0);
        tf._localMatrix.identity();
        tf._position.setValue(0, 0, 0);
        tf._rotation.setValue(0, 0, 0, 1);
        tf._scale.setValue(1, 1, 1);
        tf._rotationEuler.setValue(0, 0, 0);
        tf._worldMatrix.identity();
        tf._isDefaultMatrix = false;
        tf._faceInvert = false;
        tf._frontFaceValue = 1;
        tf._transformFlag = 0;
        tf._children = [];
        tf._parent = null;
        tf._owner = null;
        if (tf._nativeObj) {
            tf._nativeObj = null;
        }

        if (tf._rtSyncFlag != null) {
            tf._rtSyncFlag = 0;
        }

    }

    public static resetSprite3D(node: any) {
        if (!node) {
            return;
        }
        RepairEngine.resetNode(node);
        node._isStatic = 1;
        node._layer = 0;
        node._isRenderNode = 0;
        if (!node._transform)
            node._transform = RepairEngine.getTF(node);
    }
}