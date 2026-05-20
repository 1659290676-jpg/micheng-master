import Logger from "../XYFrame/Logger/Logger";
import { SocketMgr } from "../XYFrame/Network/SocketMgr";
import { UIBase } from "../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../XYFrame/XYFrame";
import Game from "./Game";
import Model_Advert from "./Module/Advert/Model_Advert";
import Model_Arena from "./Module/Arena/Model_Arena";
import Model_Bag from "./Module/Bag/Model_Bag";
import Model_FireTrial from "./Module/fireTrial/Model_FireTrial";
import Model_Global from "./Module/Global/Model_Global";
import Model_GM from "./Module/Gm/Model_GM";
import Model_Hero from "./Module/Hero/Model_Hero";
import Model_Setting from "./Module/Setting/Model_Setting";
import Model_Recharge from "./Module/Recharge/Model_Recharge";
import Model_Store from "./Module/Shop/Model_Store";
import Model_WarOrder from "./Module/WarOrder/Model_WarOrder";
import Model_Stage from "./Module/Stage/Model_Stage";
import BaseModel from "../XYFrame/Network/BaseModel";
import Model_Stamina from "./Module/Stage/Model_Stamina";

const { regClass } = Laya;

/**
 * @ Author: XXL
 * @ Date: 2026-03-05 19:44
 * @ Description: model管理
*/
@regClass()
export default class GameModel {
    /**所有model*/
    private allModel: Record<string, BaseModel> = {};

    /** 角色 */
    public readonly hero: Model_Hero;
    /** 背包 */
    public readonly bag: Model_Bag;
    /** gm */
    public readonly gm: Model_GM;
    /** 设置 */
    public readonly setting: Model_Setting;
    /** global */
    public readonly global: Model_Global;
    /**充值 */
    public readonly recharge: Model_Recharge;
    /**战令 */
    public readonly warOrder: Model_WarOrder;
    /*广告*/
    public readonly advert: Model_Advert;
    /*竞技场*/
    public readonly arena: Model_Arena;
    /*火焰试炼*/
    public readonly fireTrial: Model_FireTrial;
    /*商店*/
    public readonly shop: Model_Store;
    /** 关卡 */
    public readonly stage: Model_Stage;
    /** 体力 */
    public readonly stamina: Model_Stamina;

    public onInit() {
        let _t = this;
        _t.register("hero", Model_Hero);
        _t.register("bag", Model_Bag);
        _t.register("gm", Model_GM);
        _t.register("setting", Model_Setting);
        _t.register("global", Model_Global);
        _t.register("recharge", Model_Recharge);
        _t.register("warOrder", Model_WarOrder);
        _t.register("advert", Model_Advert);
        _t.register("arena", Model_Arena);
        _t.register("fireTrial", Model_FireTrial);
        _t.register("shop", Model_Store);
        _t.register("stage", Model_Stage);
        _t.register("stamina", Model_Stamina);
    }

    /**
     * 清空所有model
     */
    public clear(): void {
        for (let k in this.allModel) {
            this.allModel[k].clear();
        }
        this.allModel = {};
    }

    /**
     * 销毁所有model
     */
    public destroy(): void {
        for (let k in this.allModel) {
            this.allModel[k].destroy();
        }
        this.allModel = null;
    }

    /**
     * 注册model
     * @param name 
     * @param cls 
     */
    private register<T extends keyof GameModel>(name: T, cls: new (socket: SocketMgr) => GameModel[T]) {
        if (DEBUG) {
            if (this.allModel[name] || this[name]) {
                Logger.error(`------重复注册model:${name}------`);
            }
        }
        let model: any = new cls(XYFrame.SocketMgr);
        this[name] = model;
        this.allModel[name] = model;
    }

    /**
     * 进入服务器前初始化数据，连接socket前
     */
    public initBeforeEnter() {
        let map = this.allModel;
        for (let k in map) {
            if (map[k].initBeforeEnter)
                map[k].initBeforeEnter();
        }
    }

    private _initAfterEnter: boolean;

    /**
     * 完全进入游戏初始化
     */
    public initAfterEnter() {
        Game.SysMgr.init();
        let map = this.allModel;
        for (let k in map) {
            if (map[k].initAfterEnter)
                map[k].initAfterEnter();
        }
        this._initAfterEnter = true;
    }

    /**
     * 清理每个model中的数据
     */
    public clearData() {
        let map = this.allModel;
        for (let k in map) {
            if (map[k].clearData)
                map[k].clearData();
        }
    }

    /**
     * 读取本地数据
     */
    public initCache() {
        let map = this.allModel;
        for (let k in map) {
            if (map[k].initCache)
                map[k].initCache();
        }
        for (let k in map) {
            if (map[k].initCacheEnd)
                map[k].initCacheEnd();
        }
    }

    /**
     * 获取离线数据
     * @returns 
     */
    public getOfflineCache(isReconnect?: boolean) {
        let map = this.allModel;
        let data: any;
        for (let k in map) {
            let model = map[k];
            let key = model.getStorageKey();
            if (key && model.getOfflineData) {
                let d = model.getOfflineData(isReconnect);
                if (d) {
                    if (!data) data = {};
                    data[key] = d;
                }
            }
        }
        if (data) {
            let result: any = {};
            result.heroId = this.hero.vo.id;
            result.clientMirror = data;
            return result;
        }
        return null;
    }

    /**处理0点 */
    public dealZero() {
        let map = this.allModel;
        for (let k in map) {
            if (map[k].onZero && typeof map[k].onZero == "function") {
                map[k].onZero();
            }
        }
    }

    /**
     * 掉线清理数据
     */
    public offLine() {
        // this.cleanOpen();
        let map = this.allModel;
        for (let k in map) {
            if (map[k].onOfflineHandle) {
                map[k].onOfflineHandle();
            }
        }
    }

    /**清理进入游戏后处理的打开界面或回调逻辑*/
    public cleanOpen() {
        let _t = this;
        if (_t.queueUI) {
            delete _t.queueUI;
            delete _t.lastCls;
        }
        if (_t._tm_id) {
            XYFrame.Timer.clearById(_t._tm_id);
            _t._tm_id = null;
        }
    }

    /**
     * 清理数据
     * @param cls
     */
    public closeByObj(cls: new () => UIBase | UIBase) {
        let list = this.queueUI;
        if (list) {
            let len = list.length;
            if (len > 0) {
                for (let i = 0; i < len; i++) {
                    let info = list[i];
                    if (info.cls == cls) {
                        //存在
                        list.splice(i, 1);
                        return;
                    }
                }
            }
        }
        XYFrame.UIMgr.close(cls);
    }

    /**等待处理的数据*/
    protected queueUI: Struct_EnterOpen[];

    /**
     * 协议中打开界面调用，完全进入游戏才会打开
     * @param cls 打开的界面类或实例
     * @param data 打开界面参数
     * @param order 打开顺序 从小到大
     * @returns
     */
    public openByObj(cls: new () => UIBase | UIBase, data?: any, order?: number) {
        let lev = order != null ? order : Laya.timer.currTimer;
        let list = this.queueUI;
        if (list) {
            let len = list.length;
            if (len > 0) {
                for (let i = 0; i < len; i++) {
                    let info = list[i];
                    if (info.cls == cls) {
                        //存在
                        info.data = data;
                        return;
                    }
                }
            }
        }
        let info: Struct_EnterOpen = { type: 0, cls: cls, data: data, order: lev };
        this.addOpen(this, info);
    }

    /**
     * 协议中需要登录完成回调
     * @param call
     * @param thisObj
     * @param data
     * @param checkId 检测检测界面是否打开，未打开才运行下条
     * @param checkCls 检测检测界面是否打开，未打开才运行下条
     * @param order 打开顺序 从小到大
     * @returns
     */
    public openCall<T, K>(call: (thisObj?: T, data?: K) => any, thisObj?: T, data?: K, checkId?: number, checkCls?: new () => UIBase | UIBase, order?: number) {
        let lev = order != null ? order : Laya.timer.currTimer;
        let list = this.queueUI;
        if (list) {
            let len = list.length;
            if (len > 0) {
                for (let i = 0; i < len; i++) {
                    let info = list[i];
                    if (info.fun == call && info.thisObj == thisObj) {
                        //存在
                        info.data = data;
                        return;
                    }
                }
            }
        }
        let info: Struct_EnterOpen = { type: 1, fun: call, thisObj: thisObj, data: data, id: checkId, cls: checkCls, order: lev };
        this.addOpen(this, info);
    }

    /**进入游戏打开或回调添加列表*/
    private addOpen(_t: this, info: Struct_EnterOpen) {
        let list = _t.queueUI;
        let len = 0;
        if (list) {
            len = list.length;
        } else {
            list = _t.queueUI = [];
        }
        if (len > 0) {
            let bo = true;
            for (let i = 0; i < len; i++) {
                let d = list[i];
                if (d.order > info.order) {
                    bo = false;
                    list.splice(i, 0, info);
                    break;
                }
            }
            if (bo) {
                list.push(info);
            }
        } else {
            list.push(info);
        }
        if (_t._initAfterEnter) {
            !_t._tm_id && (_t._tm_id = XYFrame.Timer.loop(800, _t.onDelayOpen, _t));
            _t.onDelayOpen(0, _t);
        }
    }
    private _tm_id: string;
    /**检测上个关闭的界面*/
    private lastCls: new () => UIBase | UIBase;

    private onDelayOpen(dt: number, _t: this) {
        // if (!Game.isNetEnter || Game.GuideMgr.is_mask) return false;
        // if (!Game.isNetEnter) return false;
        if (_t.lastCls && XYFrame.UIMgr.isOpen(_t.lastCls)) return false;
        _t.lastCls = null;
        let list = _t.queueUI;
        if (list.length == 0) {
            if (_t._tm_id) {
                XYFrame.Timer.clearById(_t._tm_id);
                _t._tm_id = undefined;
            }
            return false;
        }
        let info = list.shift();
        _t.lastCls = info.cls;
        if (info.type == 0) {
            if (info.cls) XYFrame.UIMgr.open(info.cls, info.data);
        } else if (info.type == 1) {
            info.fun(info.thisObj, info.data);
        }
        return true;
    }
}

/**进入游戏按顺序打开界面或回调*/
type Struct_EnterOpen = {
    /**0是打开界面 1回调*/
    type: number;
    /**顺序，值越小越排前*/
    order: number;
    /**打开界面id，或检测界面id*/
    id?: number;
    /**界面类*/
    cls?: new () => UIBase | UIBase;
    /**打开界面参数，或回调参数*/
    data?: any;
    /**回调函数*/
    fun?: Function;
    /**回调主体*/
    thisObj?: any;
};