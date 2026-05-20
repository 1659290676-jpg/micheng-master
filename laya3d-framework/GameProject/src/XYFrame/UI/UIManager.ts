import Singleton from "../Base/Singleton";
import { GameDesign } from "../Design/GameDesign";
import Logger from "../Logger/Logger";
import ResPath from "../Resource/ResPath";
import { Ease } from "../Tween/Ease";
import ClassUtils from "../Utils/ClassUtils";
import { XYFrame } from "../XYFrame";
import { UIBase } from "./Base/UIBase";
import { EnumUILayer } from "./Layer/EnumUILayer";
import { UILayer } from "./Layer/UILayer";
import { UILayout } from "./UILayout";

const { regClass } = Laya;

/** 注册的ui结构 */
interface IUIMap {
    /** ui ID */
    id: number;
    /** ui类 */
    cls: new () => UIBase;
    /** 层级 */
    layer: number;
    /** 是否模态，显示背景 */
    modal: boolean;
    /** 是否点击模态关闭 */
    click: boolean;
    /** 是否允许多实例 */
    multiple: boolean;
    /** 实例池（复用的实例） */
    pool: UIBase[];
    /** 已打开的实例列表 */
    opened: UIBase[];
    /** 正在打开中的数量 */
    openingCount: number;
}

/**
 * @ Author: XXL
 * @ Date: 2026-01-30 11:28
 * @ Description: ui管理器
*/
@regClass()
export class UIManager extends Singleton {

    /** ui根节点 */
    private root: Laya.GWidget;

    private leftMask: Laya.GWidget;
    private rightMask: Laya.GWidget;

    /** 层级容器 */
    private readonly layerMap: Map<number, Laya.GWidget> = new Map();

    /** ui映射 */
    private readonly uiMap: Map<string, IUIMap> = new Map();
    /** ui ID映射 */
    private readonly idMap: Map<number, IUIMap> = new Map();
    /** 打开的UI映射（key: UI实例的唯一ID） */
    private readonly openMap: Map<number, UIBase> = new Map();
    /** 模态UI列表 */
    private readonly modalList: UIBase[] = [];
    /** UI实例ID计数器 */
    private uiIdCounter: number = 0;
    /** 模态背景（全局共享） */
    private _modalBg: Laya.Sprite;
    /** 当前使用模态背景的UI */
    private _modalUIId: number;

    /** 窗口缩放标志 */
    private _resize_flag = 0;


    protected onInit(owner: Laya.GWidget): void {
        Logger.log("UIManager.onInit", Laya.stage.name);
        let _t = this;
        let root = owner.getChildByName("UIRoot");
        if (root) {
            let childs = root.children;
            for (let i = 0, len = childs.length; i < len; i++) {
                let layer = childs[i].getComponent(UILayer);
                if (layer) {
                    _t.layerMap.set(layer.layer, <any>childs[i]);
                }
            }
            let mask = root.getChildByName("Mask");
            _t.leftMask = mask.getChildByName("Left");
            _t.rightMask = mask.getChildByName("Right");
        }
        _t.root = root;
    }

    /**
     * 获取层级容器
     * @param layer 层级
     * @returns 层级容器
     */
    public getLayer(layer: EnumUILayer) {
        return this.layerMap.get(layer);
    }

    public destroy(): void {
        super.destroy();
        let _t = this;
        // _t.layerMap.forEach((layer) => {
        //     layer.destroy();
        // });
        if (_t._modalBg) {
            _t._modalBg.destroy();
            _t._modalBg = null;
        }
        _t._modalUIId = null;
        _t.layerMap.clear();
        // 清理所有界面
        _t.uiMap.forEach((ui) => {
            for (const u of ui.pool) {
                u.destroy();
            }
            for (const u of ui.opened) {
                u.destroy();
            }
        });
        _t.uiMap.clear();
        _t.idMap.clear();
        _t.openMap.clear();
    }

    /**
     * 屏幕尺寸改变
     */
    public onResize() {
        let _t = this;
        _t._resize_flag++;
        if (_t._modalBg) {
            _t._modalBg.size(Laya.stage.width, Laya.stage.height);
        }
        _t.uiMap.forEach((ui) => {
            if (ui.opened) {
                for (const u of ui.opened) {
                    if (!(<any>u).__is_tween) {
                        (<any>u).__resize__ = _t._resize_flag;
                        u.onResize();
                    }
                }
            }
        });
        let bo = _t.leftMask.visible = GameDesign.leftNotch > 0;
        bo && (_t.leftMask.width = GameDesign.leftNotch);
        bo = _t.rightMask.visible = GameDesign.rightNotch > 0;
        bo && (_t.rightMask.width = GameDesign.rightNotch);
    }

    /**
     * 注册UI类
     * @param id UI id
     * @param cls UI类
     * @param layer 层级 (默认EnumUILayer.Normal)
     * @param modal 是否模态 true:显示背景遮罩 (默认true)
     * @param click 是否点击模态背景关闭 (默认true)
     * @param multiple 是否允许多实例（默认false）
     * @returns UI类型ID
     */
    public register<T extends UIBase>(
        id: number,
        cls: new () => T,
        layer = EnumUILayer.Normal,
        modal = true,
        click = true,
        multiple = false
    ) {
        let _t = this;
        if (id && _t.idMap.get(id)) {
            Logger.error("UI id已注册", id);
            return;
        }
        let name = ClassUtils.getName(cls);

        // 检查是否已注册
        if (_t.uiMap.has(name)) {
            Logger.error("UI已注册", name);
            return;
        }

        // 注册UI信息
        let uiInfo: IUIMap = {
            id: id,
            cls: cls,
            layer: layer,
            modal: modal,
            click: click,
            multiple: multiple,
            pool: [],
            opened: [],
            openingCount: 0
        };

        _t.uiMap.set(name, uiInfo);
        if (id) {
            _t.idMap.set(id, uiInfo);
        }

    }

    /**
     * 创建UI实例（从实例池或新建）
     * @param cls UI类
     * @returns UI实例
     */
    public async createUI<T extends UIBase>(cls: new () => T): Promise<T> {
        let name = ClassUtils.getName(cls);
        let _t = this;

        // 检查是否已注册
        let uiInfo = _t.uiMap.get(name);
        if (!uiInfo) {
            Logger.error("UI未注册", name);
            return null;
        }

        try {
            let uiComponent: T;
            let uiNode: Laya.Sprite;

            // 尝试从实例池获取
            if (uiInfo.pool.length > 0) {
                uiComponent = uiInfo.pool.pop() as T;
                uiNode = uiComponent.owner as Laya.Sprite;
                return uiComponent;
            }


            // 加载图集资源
            let resList: string[] = [];
            let atlasArr = (cls as any).altas;
            if (atlasArr && atlasArr.length > 0) {
                !resList && (resList = []);
                for (let atlasPath of atlasArr) {
                    resList.push(ResPath.getUIAltasPath(atlasPath + ".atlas"));
                }
            }

            // 加载预设资源
            let preloads: string[] = (cls as any).preloads;
            if (preloads && preloads.length > 0) {
                !resList && (resList = []);
                for (let path of preloads) {
                    resList.push(ResPath.getResPath(path));
                }
            }
            if (resList && resList.length > 0)
                await XYFrame.ResMgr.loadGroupAsync(resList);

            // 加载预制体
            let prefabPath = (cls as any).prefab;
            if (prefabPath) {
                // 加载预制体
                let prefab = await XYFrame.ResMgr.loadAsync<any>(ResPath.getUIPrefab(prefabPath + ".lh"));
                if (!prefab) {
                    Logger.error("UI预制体加载失败", prefabPath);
                    return null;
                }
                uiNode = prefab.create() as Laya.Sprite;
            } else {
                uiNode = new Laya.GWidget();
                uiNode.addComponent(UILayout);
            }

            // 实例化UI
            if (!uiNode) {
                Logger.error("UI实例化失败", name);
                return null;
            }

            uiComponent = <any>new uiInfo.cls();
            (<any>uiComponent).__uiId = ++_t.uiIdCounter;
            uiComponent.onInit(uiNode);

            // Logger.log("创建UI实例", name);
            return uiComponent;

        } catch (error) {
            Logger.error("创建UI实例失败", name, error);
            return null;
        }
    }

    /**
     * 打开ui
     * @param uiInfo 
     * @param args 
     * @returns 
     */
    private async _open(uiInfo: IUIMap, ...args: any[]) {
        if (!uiInfo) {
            Logger.error("UI未注册", name);
            return null;
        }

        let _t = this;

        // 获取层级容器
        let layerNode = _t.layerMap.get(uiInfo.layer);
        if (!layerNode) {
            Logger.error("UI层级不存在", uiInfo.layer);
            return null;
        }

        // 如果不允许多实例，检查是否已打开
        if (!uiInfo.multiple && uiInfo.opened.length > 0) {
            let ui = uiInfo.opened[uiInfo.opened.length - 1];
            layerNode.addChild(ui.owner);
            (<any>ui).__open_tm = Laya.timer.currTimer;
            if (uiInfo.modal) {
                _t.updateModal();
            }
            ui.onOpen(...args);
            // return uiInfo.opened[0] as T;
            return ui;
        }

        // 标记正在打开
        uiInfo.openingCount++;

        try {
            // 创建UI实例
            let uiComponent = await _t.createUI(uiInfo.cls);

            // 检查创建是否成功
            if (!uiComponent) {
                uiInfo.openingCount--;
                return null;
            }

            let uiNode = <Laya.Sprite>uiComponent.owner;
            // 判断是否已关闭
            if (uiInfo.openingCount <= uiInfo.opened.length) {
                if (uiInfo.pool.length <= 2) {
                    uiInfo.pool.push(uiComponent);
                } else {
                    uiNode.destroy();
                }
                return null;
            }


            // 分配唯一ID
            let uiId: number = (<any>uiComponent).__uiId;

            // 添加到层级
            layerNode.addChild(uiNode);

            // 保存到打开列表
            uiInfo.opened.push(uiComponent);
            _t.openMap.set(uiId, uiComponent);
            (<any>uiComponent).__open_tm = Laya.timer.currTimer;
            (<any>uiComponent).__layer = uiInfo.layer;

            if (uiInfo.modal) {
                _t.modalList.push(uiComponent);
                _t.updateModal();
            }

            if ((<any>uiComponent).__resize__ != _t._resize_flag) {
                (<any>uiComponent).__resize__ = _t._resize_flag;
                uiComponent.onResize();
            }

            // 调用onOpen
            if (uiComponent.onOpen) {
                uiComponent.onOpen(...args);
            }

            if (uiComponent.layout && uiComponent.layout.tweenType) {
                // 需要缓动
                _t._openTween(uiComponent);
            }

            return uiComponent;

        } catch (error) {
            Logger.error("打开UI失败", name, error);
            return null;
        }
    }

    /**
     * 打开UI
     * @param cls UI类
     * @param args 传递给onOpen的参数
     * @returns UI实例
     */
    public async open<T extends UIBase>(cls: new () => T, ...args: any[]): Promise<T> {
        let name = ClassUtils.getName(cls);
        let _t = this;

        // 检查是否已注册
        let uiInfo = _t.uiMap.get(name);
        if (!uiInfo) {
            Logger.error("打开UI失败，未注册UI name=", name);
            return null;
        }
        return await _t._open(uiInfo, ...args) as T;
    }

    /**
     * 打开UI
     * @param id 注册的UI id
     * @param args 传递给onOpen的参数
     * @returns UI实例
     */
    public async openById(id: number | string, ...args: any[]) {
        let uiInfo = this.idMap.get(+id);
        if (!uiInfo) {
            Logger.error("打开UI失败，未注册UI id=", id);
            return;
        }
        return await this._open(uiInfo, ...args);
    }

    /**
     * 关闭UI实例（通过实例ID）
     * @param uiId UI实例ID
     * @param destroy 是否销毁实例（默认false，放入实例池复用）
     */
    private closeById(uiId: number, destroy: boolean = false): void {
        let _t = this;
        let uiComponent = _t.openMap.get(uiId);

        if (!uiComponent) {
            Logger.warn("UI实例不存在", uiId);
            return;
        }

        let name = ClassUtils.getName(uiComponent.constructor as any);
        let uiInfo = _t.uiMap.get(name);

        if (uiInfo.openingCount > 0) {
            uiInfo.openingCount--;
        }

        let uiNode = uiComponent.owner as Laya.Sprite;

        // 从父节点移除
        if (uiNode && uiNode.parent) {
            uiNode.removeSelf();
        }

        // 从打开映射移除
        _t.openMap.delete(uiId);
        // 从已打开列表移除
        if (uiInfo) {
            let index = uiInfo.opened.indexOf(uiComponent);
            if (index >= 0) {
                uiInfo.opened.splice(index, 1);
            }

            if (uiInfo.modal) {
                let index = _t.modalList.indexOf(uiComponent);
                if (index >= 0) {
                    _t.modalList.splice(index, 1);
                }
                _t.updateModal();
            }
        }

        // 调用onClose
        if (uiComponent.onClose) {
            uiComponent.onClose();
        }
        if ((<any>uiComponent).__is_tween) {
            (<any>uiComponent).__is_tween = false;
            XYFrame.Tween.kill(uiComponent.owner);
        }

        if (uiInfo) {
            // 销毁或放入实例池
            if (destroy || uiInfo.pool.length > 2) {
                if (uiNode) {
                    uiNode.destroy();
                }
                Logger.log("销毁UI实例", name, "ID:", uiId);
            } else {
                uiInfo.pool.push(uiComponent);
                // Logger.log("UI实例放入池", name, "ID:", uiId);
            }
        }
    }

    /**
     * 关闭UI实例（通过UI实例）
     * @param ui UI类或实例
     * @param destroy 是否销毁实例，默认false
     */
    public close<T extends UIBase>(ui: T | (new () => T), destroy: boolean = false): void {
        let uiId = (ui as any).__uiId;
        if (uiId) {
            this.closeById(uiId, destroy);
        } else {
            // 关闭最后一个
            let name = ClassUtils.getName(ui);
            let uiInfo = this.uiMap.get(name);
            if (uiInfo) {
                if (uiInfo.opened && uiInfo.opened.length > 0) {
                    let ui: any = uiInfo.opened[uiInfo.opened.length - 1];
                    this.closeById(ui.__uiId, destroy);
                } else if (uiInfo.openingCount > 0) {
                    uiInfo.openingCount--;
                }
            }
        }
    }

    /**
     * 关闭某个类或实例的所有UI实例
     * @param ui UI类或实例
     * @param destroy 是否销毁实例，默认false
     */
    public closeAll<T extends UIBase>(ui: T | (new () => T), destroy: boolean = false): void {
        let name = ClassUtils.getName(ui);
        let _t = this;
        let uiInfo = _t.uiMap.get(name);

        if (!uiInfo) {
            Logger.warn("UI未注册", name);
            return;
        }

        // 取消所有正在打开的
        uiInfo.openingCount = 0;

        // 关闭所有已打开的实例
        let openedList = [...uiInfo.opened]; // 复制数组，避免遍历时修改
        for (let ui of openedList) {
            let uiId = (ui as any).__uiId;
            if (uiId) {
                _t.closeById(uiId, destroy);
            }
        }

        Logger.log("关闭所有UI实例", name);
    }

    /**
     * 关闭所有UI
     * @param destroy 是否销毁实例
     */
    public closeAllUI(destroy: boolean = false): void {
        let _t = this;
        _t.openMap.forEach((ui) => {
            _t.close(ui, destroy);
        });
    }

    /**
     * 销毁UI类的所有实例（包括实例池）
     * @param ui UI类或实例
     */
    public destroyUI<T extends UIBase>(ui: T | (new () => T)): void {
        let name = ClassUtils.getName(ui);
        let _t = this;
        let uiInfo = _t.uiMap.get(name);

        if (!uiInfo) {
            Logger.warn("UI未注册", name);
            return;
        }

        // 关闭所有已打开的实例
        _t.closeAll(ui, true);

        // 销毁实例池中的所有实例
        for (let ui of uiInfo.pool) {
            if (ui.owner) {
                ui.owner.destroy();
            }
        }
        uiInfo.pool.length = 0;

        Logger.log("销毁UI所有实例", name);
    }

    /**
     * 检查UI类是否有打开的实例
     * @param cls UI类
     */
    public isOpen<T extends UIBase>(cls: new () => T): boolean {
        let name = ClassUtils.getName(cls);
        let uiInfo = this.uiMap.get(name);
        return uiInfo ? uiInfo.opened.length > 0 : false;
    }

    /**
     * 获取UI类的第一个打开实例
     * @param cls UI类
     */
    public get<T extends UIBase>(cls: new () => T): T {
        let name = ClassUtils.getName(cls);
        let uiInfo = this.uiMap.get(name);
        return uiInfo && uiInfo.opened.length > 0 ? uiInfo.opened[0] as T : null;
    }

    /**
     * 获取UI类的所有打开实例
     * @param cls UI类
     */
    public getAll<T extends UIBase>(cls: new () => T): T[] {
        let name = ClassUtils.getName(cls);
        let uiInfo = this.uiMap.get(name);
        return uiInfo ? [...uiInfo.opened] as T[] : [];
    }

    /**
     * 获取UI类已打开的实例数量
     * @param cls UI类
     */
    public getOpenCount<T extends UIBase>(cls: new () => T): number {
        let name = ClassUtils.getName(cls);
        let uiInfo = this.uiMap.get(name);
        return uiInfo ? uiInfo.opened.length : 0;
    }

    /**
     * 打开界面缓动
     * @param ui 
     * @param type 
     */
    private _openTween(ui: UIBase) {
        let _t = this;
        ui.onResize();
        //0:无缓动 1缩小放大 2:y轴往下放大 3:y轴往上放大 4:从顶部水平中心点往下放大 10:从左到右 11:从右到左 12:从上到下 13:从下到上 14透明度0到1
        let layout = ui.layout;
        let isAlpha = layout.tweenAlpha;
        let type = layout.tweenType;
        let owner = ui.owner;
        isAlpha && (owner.alpha = 0.2);
        if (type == 1) {
            (<any>ui).__is_tween = true;
            owner.anchor(0.5, 0.5);
            owner.pos(owner.x + owner.width / 2, owner.y + owner.height / 2);
            owner.scale(0.5, 0.5);
            XYFrame.Tween.to(owner, { scaleX: 1, scaleY: 1, alpha: 1 }, 300, Ease.backOut).call(_t._tweenEnd, _t, ui);
        } else if (type == 2) {
            (ui as any).__is_tween = true;
            owner.anchor(0, 0);
            owner.scale(1, 0.5);
            XYFrame.Tween.to(owner, { scaleY: 1, alpha: 1 }, 300, Ease.backOut).call(_t._tweenEnd, _t, ui);
        } else if (type == 3) {
            (ui as any).__is_tween = true;
            owner.anchor(0, 1);
            owner.scale(1, 0.5);
            XYFrame.Tween.to(owner, { scaleY: 1, alpha: 1 }, 300, Ease.backOut).call(_t._tweenEnd, _t, ui);
        } else if (type == 4) {
            (ui as any).__is_tween = true;
            owner.anchor(0.5, 0.5);
            owner.scale(0.5, 0.5);
            owner.x = owner.x + owner.width / 2;
            XYFrame.Tween.to(owner, { scaleX: 1, scaleY: 1, alpha: 1 }, 300, Ease.backOut).call(_t._tweenEnd, _t, ui);
        } else if (type == 10) {
            (ui as any).__is_tween = true;
            let x = owner.x;
            owner.x += -200;
            XYFrame.Tween.to(owner, { x: x, alpha: 1 }, 300, Ease.backOut).call(_t._tweenEnd, _t, ui);
        } else if (type == 11) {
            (ui as any).__is_tween = true;
            let x = owner.x;
            owner.x += 200;
            XYFrame.Tween.to(owner, { x: x, alpha: 1 }, 300, Ease.backOut).call(_t._tweenEnd, _t, ui);
        } else if (type == 12) {
            (ui as any).__is_tween = true;
            let y = owner.y;
            owner.y += -200;
            XYFrame.Tween.to(owner, { y: y, alpha: 1 }, 300, Ease.backOut).call(_t._tweenEnd, _t, ui);
        } else if (type == 13) {
            (ui as any).__is_tween = true;
            let y = owner.y;
            owner.y += 200;
            XYFrame.Tween.to(owner, { y: y, alpha: 1 }, 300, Ease.backOut).call(_t._tweenEnd, _t, ui);
        } else if (type == 14) {
            (ui as any).__is_tween = true;
            owner.alpha = 0;
            XYFrame.Tween.to(owner, { alpha: 1 }, 300, Ease.backOut).call(_t._tweenEnd, _t, ui);
        }else{
            Logger.warn("不支持打开界面的缓动类型:", type);
            isAlpha && (owner.alpha = 1);
        }

    }

    private _tweenEnd(_t: this, ui: UIBase) {
        (<any>ui).__is_tween = false;
        if (ui.isOpen) {
            ui.owner.anchor(0, 0);
            ui.onResize();
            if (ui.onOpenTweenEndCall) {
                ui.onOpenTweenEndCall();
            }
        }
    }

    /**
     * 更新显示模态背景
     */
    private updateModal() {
        let _t = this;
        let len = _t.modalList.length;
        if (len == 0) {
            _t._hideModalBg();
        } else {
            _t._createModalBg();
            let ui: UIBase;
            if (len > 1) {
                // 需要排序
                let list = [..._t.modalList];
                list.sort((a: any, b: any) => {
                    if (a.__layer != b.__layer) {
                        return a.__layer - b.__layer;
                    } else {
                        return a.__open_tm - b.__open_tm;
                    }
                });
                ui = list[len - 1];
            } else {
                ui = _t.modalList[0];
            }

            if (!ui || !ui.owner.parent) {
                _t._hideModalBg();
                return;
            }
            let layer = _t.layerMap.get((<any>ui).__layer);
            if (!layer) return;
            let index = ui.owner.parent.getChildIndex(ui.owner);
            if (_t._modalBg.parent != layer) {
                layer.addChildAt(_t._modalBg, index);
            } else {
                let index1 = layer.getChildIndex(_t._modalBg);
                if (index > index1) {
                    layer.setChildIndex(_t._modalBg, index - 1);
                } else {
                    layer.setChildIndex(_t._modalBg, index);
                }
            }
            _t._modalUIId = (<any>ui).__uiId;
            _t._modalBg.visible = true;
        }
    }

    private clickModalBg() {
        let _t = this;
        if (_t._modalUIId) {
            let ui = _t.openMap.get(_t._modalUIId);
            if (ui) {
                let name = ClassUtils.getName(ui);
                let uiInfo = _t.uiMap.get(name);
                if (uiInfo.click) {
                    _t.closeById(_t._modalUIId);
                }
            }
        }
    }

    /**
     * 关闭有背景的界面
     * @param exclude 
     */
    public closeBlack(exclude?: string[]) {
        for (let k in this.openMap) {
            var ui = this.openMap.get(+k);
            let uiName = ClassUtils.getName(ui);
            let uiInfo = this.uiMap.get(uiName);
            if (uiInfo && uiInfo.modal) {
                if (!exclude || exclude.indexOf(uiName) == -1) {
                    this.close(ui);
                }
            }
        }
    }

    /**
     * 显示模态背景
     */
    private _createModalBg(): void {
        // 如果模态背景不存在，创建它
        if (!this._modalBg) {
            let _t = this;
            let bg = _t._modalBg = new Laya.Sprite();
            bg.name = "__modal_bg__";
            bg.mouseEnabled = true;
            bg.size(Laya.stage.width, Laya.stage.height);
            bg.graphics.drawRect(0, 0, Laya.stage.width, Laya.stage.height, "#000000", null, null, true);
            bg.alpha = 0.8;
            bg.visible = false;
            bg.on(Laya.Event.CLICK, _t, _t.clickModalBg);
        }
    }

    /**
     * 隐藏模态背景
     */
    private _hideModalBg(): void {
        let _t = this;
        if (_t._modalBg) {
            _t._modalBg.visible = false;
        }
        _t._modalUIId = null;
    }

}