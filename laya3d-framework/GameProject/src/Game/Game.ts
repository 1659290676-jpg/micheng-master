import { BridgeManager } from "../Bridge/BridgeManager";
import Logger from "../XYFrame/Logger/Logger";
import { XYFrame } from "../XYFrame/XYFrame";
import { EnumMsg } from "./EnumMsg";
import GameModel from "./GameModel";
import GameUI from "./GameUI";
import GuideMgr from "./Module/Guide/GuideMgr";
import LoginManager from "./Module/Login/LoginManager";
import { StepMgr } from "./Module/Main/StepMgr";
import SceneManager from "./Scene/SceneManager";
import SystemMgr from "./SystemMgr";

const { regClass, property } = Laya;

/**
 * @ Author: XXL
 * @ Date: 2026-03-04 20:48
 * @ Description: 启动游戏
*/
@regClass()
export default class Game extends Laya.Script {

    /** 是否在线模式 */
    public static isOnline = false;

    /** 是否保存缓存，debug模式下才使用 */
    public static isSaveCache = true;

    /**是否已完全进入游戏*/
    public static isEnter: boolean;
    /**链接中并完全进入游戏，断线是为false*/
    public static isNetEnter: boolean;

    /** 桥接管理器 */
    public static readonly Bridge: BridgeManager;
    /** 登录管理器 */
    public static readonly LoginMgr: LoginManager;
    /** model类管理器 */
    public static readonly Model: GameModel;
    /** 场景管理器 */
    public static readonly SceneMgr: SceneManager;
    /** 系统管理器 */
    public static readonly SysMgr: SystemMgr;
    /** 主界面流程管理 */
    public static readonly StepMgr: StepMgr;
    /** 指引 */
    public static readonly GuideMgr: GuideMgr;

    @property({ type: LoginManager })
    public readonly LoginMgr: LoginManager;

    @property({ type: GameModel })
    public readonly Model: GameModel;

    @property({ type: SceneManager })
    public readonly SceneMgr: SceneManager;
    @property({ type: SystemMgr })
    public readonly SysMgr: SystemMgr;

    private getMgrMap() {
        let map: Record<string, any> = {
            Bridge: BridgeManager,
            LoginMgr: LoginManager,
            Model: GameModel,
            SceneMgr: SceneManager,
            SysMgr: SystemMgr,
            StepMgr: StepMgr,
            GuideMgr: GuideMgr,
        };
        return map;
    }

    onAwake(): void {
        this.onInit();

        Game.LoginMgr.build(false);
    }

    /**
     * 初始化
     */
    private onInit() {
        this.initManager();
        GameUI.register();

        Laya.stage.on(Laya.Event.VISIBILITY_CHANGE, Game, Game._onStageVis);
        if (DEBUG) {
            (<any>window).Game = this;
        }
    }

    /**
     * 初始化管理器
     */
    private initManager() {
        //初始化管理器
        let t = this;
        let owner = t.owner;
        let map = t.getMgrMap();
        let _t: any = Game;
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

    private static _timeid: number;
    protected static _onStageVis() {
        Logger.warn("前后台切换");
        XYFrame.pause = !Laya.stage.isVisibility;
        //todo 进入游戏延迟处理，后台直接处理
        if (Laya.stage.isVisibility) {
            if (!Game._timeid) {
                Game._timeid = window.setTimeout(Game.onTimeout, 100);
            }
        } else {
            if (Game._timeid) {
                window.clearTimeout(Game._timeid);
                Game._timeid = null;
            }
            Game.onTimeout();
        }
    }

    protected static onTimeout() {
        Game._timeid = undefined;
        let bo = Laya.stage.isVisibility;
        XYFrame.pause = (!bo);
        if (bo) {
            Logger.warn("退出后台");
        } else {
            Logger.warn("进入后台");
        }
        XYFrame.Msg.emit(EnumMsg.M_GAME_VIS, bo);
    }
}