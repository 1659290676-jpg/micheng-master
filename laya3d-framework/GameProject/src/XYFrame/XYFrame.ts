import { EnumMsg } from "../Game/EnumMsg";
import AudioMananger from "./Audio/AudioManager";
import { GameDesign } from "./Design/GameDesign";
import EffectManager from "./Effect/EffectManager";
import Logger from "./Logger/Logger";
import Message from "./Message/Message";
import { SocketMgr } from "./Network/SocketMgr";
import { PoolManager } from "./Pool/PoolManager";
import RepairEngine from "./RepairEngine/RepairEngine";
import { ResourceManager } from "./Resource/ResourceManager";
import StorageMgr from "./Storage/StorageMgr";
import CoroutineManager from "./Timer/CoroutineManager";
import { Timer } from "./Timer/Timer";
import { Tween } from "./Tween/Tween";
import { UIManager } from "./UI/UIManager";

const { regClass, property } = Laya;

/**
 * XYFrame
 * @Author XXL
 * @Description 框架入口
 */
@regClass()
export class XYFrame extends Laya.Script {

    private static _isInit: boolean;
    /**
     * 是否已初始化
     */
    public static get isInit(): boolean {
        return XYFrame._isInit;
    }

    /**是否暂停*/
    private static _pause = false;

    /** 池管理器 */
    public static readonly PoolMgr: PoolManager;
    /** 消息管理器 */
    public static readonly Msg: Message;
    /** 音频管理器 */
    public static readonly AudioMgr: AudioMananger;
    /** 资源管理器 */
    public static readonly ResMgr: ResourceManager;
    /** UI管理器 */
    public static readonly UIMgr: UIManager;
    /** Socket管理器 */
    public static readonly SocketMgr: SocketMgr;
    /** 定时器 */
    public static readonly Timer: Timer;
    /** 缓动管理器 */
    public static readonly Tween: Tween;
    /** 存储管理器 */
    public static readonly StorageMgr: StorageMgr;
    /** 协程管理器 */
    public static readonly CoroutineMgr: CoroutineManager;
    /** 特效管理器 */
    public static readonly EffectMgr: EffectManager;

    @property({ type: PoolManager })
    public readonly PoolMgr: PoolManager;
    @property({ type: Message })
    public readonly Msg: Message;
    @property({ type: AudioMananger })
    public readonly Timer: Timer;
    @property({ type: SocketMgr })
    public readonly SocketMgr: SocketMgr;
    @property({ type: ResourceManager })
    public readonly ResMgr: ResourceManager;
    @property({ type: AudioMananger })
    public readonly AudioMgr: AudioMananger;
    @property({ type: UIManager })
    public readonly UIMgr: UIManager;
    @property({ type: Tween })
    public readonly Tween: Tween;
    @property({ type: StorageMgr })
    public readonly StorageMgr: StorageMgr;
    @property({ type: CoroutineManager })
    public readonly CoroutineMgr: CoroutineManager;
    @property({ type: EffectManager })
    public readonly EffectMgr: EffectManager;

    /**
     * 设置是否暂停
     * @param pause 是否暂停
     */
    public static set pause(pause: boolean) {
        if (XYFrame._pause == pause) return;
        XYFrame._pause = pause;
        XYFrame.Msg.emit(Laya.Event.PAUSED);
    }

    /**
     * 获取是否暂停
     * @returns 是否暂停
     */
    public static get pause(): boolean {
        return XYFrame._pause;
    }

    public constructor() {
        super();
        Logger.log("XYFrame.constructor");
        RepairEngine.initPool();
    }

    private getMgrMap() {
        let map: Record<string, any> = {
            AudioMgr: AudioMananger,
            ResMgr: ResourceManager,
            PoolMgr: PoolManager,
            UIMgr: UIManager,
            Msg: Message,
            SocketMgr: SocketMgr,
            Timer: Timer,
            Tween: Tween,
            StorageMgr: StorageMgr,
            CoroutineMgr: CoroutineManager,
            EffectMgr: EffectManager
        };
        return map;
    }

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        Logger.log("XYFrame.onStart");
        let _t = this;
        _t.initManager();
        _t.onResize();
        Laya.stage.on(Laya.Event.RESIZE, _t, _t.onResize)
        XYFrame._isInit = true;
    }

    /**
     * 初始化管理器
     */
    private initManager() {
        //初始化管理器
        let t = this;
        let owner = t.owner;
        let map = t.getMgrMap();
        let _t: any = XYFrame;
        for (let key in map) {
            let cls = map[key];
            let obj: any
            if (cls.getInst) {
                obj = cls.getInst(owner);
            } else {
                obj = new cls();
                if (obj.onInit) {
                    obj.onInit();
                }
            }
            _t[key] = (<any>t)[key] = obj;
        }
    }

    private onResize() {
        GameDesign.calcSize();
        this.UIMgr.onResize();
        this.Msg.emit(EnumMsg.RESIZE);
    }

    destroy(): void {
        super.destroy();
        let t = this;
        let map = t.getMgrMap();
        let _t: any = XYFrame;
        for (let key in map) {
            let obj = _t[key];
            obj && obj.destroy();
            _t[key] = (<any>t)[key] = null;
        }
        XYFrame._isInit = false;
    }

    //手动调用节点销毁时执行
    //onDestroy(): void {}

    onUpdate(): void {
        let delta = Laya.timer.delta;
        this.Timer.update(delta);
        this.Tween.update(delta);
        this.CoroutineMgr.update(delta);
        this.EffectMgr.update(delta);
    }

    private _check_tm = 0;
    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    onLateUpdate(): void {
        this._check_tm += Laya.timer.delta;
        if (this._check_tm >= 10000) {
            this._check_tm = 0;
            this.ResMgr.checkDestroy(Laya.timer.currTimer);
        }
    }

    //鼠标点击后执行。与交互相关的还有onMouseDown等十多个函数，具体请参阅文档。
    //onMouseClick(): void {}
}

RepairEngine.repair();