import { BridgeManager } from "../../../Bridge/BridgeManager";
import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import Logger from "../../../XYFrame/Logger/Logger";
import { EnumSocket } from "../../../XYFrame/Network/EnumSocket";
import ObjectCompressor from "../../../XYFrame/Network/ObjectCompressor";
import { SocketEvent } from "../../../XYFrame/Network/SocketClient";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import NpcUnit from "../../Scene/Unit/NpcUnit";
import Vw_GmBtn from "../Gm/Vw_GmBtn";
import Vw_Main from "../Main/Vw_Main";
import OfflineMgr from "../Offline/OfflineMgr";
import Vw_Login from "./Vw_Login";

const { regClass } = Laya;

interface StepData {
    /**回调函数*/
    call: Function;
    /**检查函数*/
    check?: Function;
    /**运行完回调*/
    end_call?: Function;
    /**进度*/
    pro?: number;
    /**进度说明*/
    msg?: string;
    /**绑定所需数据*/
    data?: any;
    /**临时保存数据*/
    temp_data?: any;
}

/**
 * @ Author: XXL
 * @ Date: 2026-03-05 11:35
 * @ Description: 登录管理
*/
@regClass()
export default class LoginManager {
    /**
     * 创建登录步骤
     */
    public build(bo = true) {
        // 先关闭所有界面
        if (Laya.Browser.onLayaRuntime) {
            Laya.Config.defaultFont = "layabox";
        }
        XYFrame.UIMgr.closeAllUI();
        if (bo) {
            XYFrame.SocketMgr.disconnectAll();
            Game.Model.clear();
        }
        let gameInfo = BridgeManager.ins.info;
        let lang = Laya.LocalStorage.getItem('lang');
        if (lang) {
            gameInfo.lang = +lang;
        }
        Logger.level = DEBUG || gameInfo.debug ? 0 : 3;
        LanguageMgr.initLng(gameInfo.region, gameInfo.lang, gameInfo.regionMap, gameInfo.langMap);
        let langMap = window.langStrMap;
        let _t = this;
        let list: StepData[] = [];
        Game.isEnter = Game.isNetEnter = Game.isOnline = false;
        list.push({ call: _t._onStepLoginOpen });
        list.push({ call: _t._onStepSdkInit, pro: 2, msg: langMap[0]/**"SDK初始化"*/ });
        list.push({ call: _t._onStepPlatformLogin, pro: 5, msg: langMap[1]/**"获取用户信息"*/ });
        list.push({ call: _t._onStepLocal, pro: 8, msg: langMap[2]/**"游戏加载中"*/ });
        list.push({ call: _t._onStepLoadFont, pro: 12, msg: langMap[2]/**"游戏加载中"*/ });
        list.push({ call: _t._onStepLang, pro: 16, msg: langMap[2]/**"游戏加载中"*/ });
        list.push({ call: _t._onStepAuth, pro: 20, msg: langMap[1]/**"获取用户信息"*/ });
        list.push({ call: _t._onStepLoadCfg, pro: 25, msg: langMap[3]/**"游戏资源加载中"*/ });
        list.push({ call: _t._onStepLoadServerCfg, pro: 30, msg: langMap[4]/**"请求游戏信息"*/ });
        list.push({ call: _t._onStepPfLoginEnd, pro: 35 })
        list.push({ call: _t._onStepInitBefore });
        list.push({ call: _t._onStepNetSrv, pro: 40, msg: langMap[5]/**"链接服务器"*/ });
        list.push({ call: _t._onStepReportOfflineCache });
        list.push({ call: _t._onStepCheckRole, end_call: _t._onStepRoleEnd, pro: 44, msg: langMap[4]/**"请求游戏信息"*/ });
        list.push({ call: _t._onStepLoadAtlas, pro: 55, msg: langMap[3]/**"游戏资源加载中"*/, data: [EnumAltas.Common, EnumAltas.Main, EnumAltas.Item, EnumAltas.Stage] });
        list.push({ call: _t._onStepLoadRes, pro: 90, msg: langMap[3]/**"游戏资源加载中"*/ })
        list.push({ call: _t._onStepSrvReady, pro: 92, msg: langMap[6]/**"初始化数据"*/ });
        list.push({ call: _t._onStepInitAfter, pro: 94 });
        list.push({ call: _t._onStepInitPool, pro: 96 });
        list.push({ call: _t._onStepInitUI, pro: 98 });
        // list.push({ call: _t._onStepInitScene, pro: 95, msg: "初始化场景" });
        list.push({ call: _t._onStepWait, pro: 100, data: 200 });
        list.push({ call: _t._onStepEnd });

        _t.onSetSteps(_t, list, _t.TYPE_NORMAL);
    }

    /**
     * 重新登录
     */
    public buildRelogin() {
        let _t = this;
        if (Game.isEnter) {
            Game.isOnline = false;
            let langMap = window.langStrMap;
            let list: StepData[] = [];
            // list.push({ call: _t._onStepLoginOpen });
            list.push({ call: _t._onStepNetSrv, data: true, pro: 45, msg: langMap[5]/**"链接服务器"*/ });
            list.push({ call: _t._onStepReportOfflineCache, data: true });
            list.push({ call: _t._onStepCheckRole, data: true, end_call: _t._onStepRoleEnd, pro: 50, msg: langMap[4]/**"请求游戏信息"*/ });
            list.push({ call: _t._onStepSrvReady, pro: 92, msg: langMap[6]/**"初始化数据"*/ });
            list.push({ call: _t._onStepInitAfter, data: true, pro: 94 });
            list.push({ call: _t._onStepInitUI, data: true, pro: 98 });
            list.push({ call: _t._onStepWait, pro: 100, data: 200 });
            list.push({ call: _t._onStepEnd });
            _t.onSetSteps(_t, list, _t.TYPE_RELOGIN);
        } else {
            _t.build();
        }
    }

    /**登录类型 普通登录中*/
    public readonly TYPE_NORMAL = 0;
    /**登录类型 断线重连*/
    public readonly TYPE_RELOGIN = 1;

    private _tm_id: string;
    /**登录id*/
    private _id = 0;
    /**登录类型 0登录游戏 1断线重连 10跳场景 20登录跨服*/
    private _type: number;
    private _lock: number;
    private _delay: number;
    private _timeout: number; //超时时间
    private _tmoutCall: Function;//超时回调
    private _steps: StepData[];//所有步骤
    private _index: number;//当前步骤下标
    /**当前步骤*/
    private _curStep: StepData;


    /**
     * 登录类型 0正常登录 1断线重连
     * @returns
     */
    public get type() {
        return this._type;
    }

    /**
     * 是否在登录过程中
     */
    public isLogin() {
        return this._steps ? true : false;
    }

    private onLock() {
        this._lock++;
    }

    private unLock() {
        if (this._lock > 0) {
            this._lock--;
        }
    }

    /**帧频更新*/
    private onTm(dt: number, _t: this) {
        if (_t._timeout > 0) {
            _t._timeout -= dt;
            if (_t._timeout <= 0) {
                //超时
                if (_t._tmoutCall) {
                    _t._tmoutCall(_t);
                    _t._tmoutCall = null;
                } else {
                    //_t.onHandlerTimeOut(_t);
                }
                return;
            }
        }
        if (_t._lock) return;
        if (_t._delay > 0) {
            _t._delay -= dt;
            if (_t._delay > 0) return;
        }
        if (_t._curStep) {
            if (_t._curStep.end_call) {
                _t._curStep.end_call(_t);
            }
            _t._curStep = null;
        }
        if (_t._steps) {
            let data = (_t._curStep = _t._steps[_t._index++]);
            if (data) {
                Logger.log("-----登录步骤--: " + _t._index + "," + data.pro + "," + data.msg || "");
                _t.updateDes(data.msg, data.pro);
                data.call(_t, data);
                return;
            }
        }
        _t.clear();
    }

    /**清理登录
     * @param opreate 操作类型 1一些操作失败 10外部调用
     */
    public clear(opreate?: number) {
        let _t = this;
        if (_t._steps) {
            if (_t._curStep) {
                if (_t._curStep.end_call) {
                    _t._curStep.end_call(_t);
                }
                _t._curStep = null;
            }
            _t._steps = null;
            _t._lock = _t._delay = _t._index = 0;
            _t._timeout = _t._tmoutCall = null;

            if (_t._tm_id) XYFrame.Timer.clearById(_t._tm_id);
            _t._tm_id = null;

            _t._type = null;
        }

        let socket = XYFrame.SocketMgr.getSocket(EnumSocket.DEFAULT);
        if (socket) {
            socket.off(SocketEvent.CONNECTED, _t.__onNetSuccess, _t);
            socket.off(SocketEvent.ERROR, _t.__onNetError, _t);
            socket.off(SocketEvent.NETWORK_CLOSED, _t.__onNetClose, _t);
        }
        XYFrame.Msg.off(EnumMsg.SRV_SEND_OFFLINE, _t.__onReceiveClose, _t);
    }

    /**
     * 更新描述
     * @param msg 
     * @param pro 
     */
    private updateDes(msg: string, pro: number, isEnd?: boolean) {
        XYFrame.Msg.emit(EnumMsg.LOGIN_DES, msg, pro, isEnd)
    }

    /**
     * 失败登录页信息
     * @param msg 
     * @param pro 
     */
    private errorDes(msg: string, pro?: number) {
        this.updateDes(msg, pro, true);
    }

    /**
     * 设置登录步骤
     * @param _t
     * @param list
     */
    private onSetSteps(_t: this, list: StepData[], type: number) {
        if (type == _t.TYPE_NORMAL) {
            Game.SceneMgr.onExit(true);
        }
        _t.clear();
        _t._id++;
        _t._type = type;
        _t._steps = list;
        _t._index = _t._lock = _t._delay = 0;
        if (!_t._tm_id) {
            _t._tm_id = XYFrame.Timer.loop(33, _t.onTm, _t);
        }
        _t.onTm(0, _t);
    }


    //todo 登录步骤

    /**
     * 延迟
     * @param _t 
     * @param data 
     */
    private _onStepWait(_t: this, data: StepData) {
        if (data.data) {
            _t._delay = +data.data || 0;
        }
    }

    /**
     * 显示登录界面
     * @param t 
     * @param data 
     */
    protected _onStepLoginOpen(t: this, data: StepData) {
        t.onLock();
        let id = t._id;
        Game.SceneMgr.onExit(true);
        XYFrame.UIMgr.closeAllUI();
        XYFrame.Msg.once(EnumMsg.LOGIN_UI_OPENED, (_t) => {
            if (_t._id == id) {
                BridgeManager.ins.hideShlash();
                _t.unLock();
            }
        }, t);
        XYFrame.UIMgr.open(Vw_Login);
    }

    /**
     * 加载本地化配置
     * @param _t 
     */
    private _onStepLocal(_t: this) {
        if (LanguageMgr.lngType) {
            _t.onLock();
            let id = _t._id;
            let url = LanguageMgr.localDir + "record.txt";
            XYFrame.ResMgr.load(url, (d, u: string, t) => {
                if (d) {
                    let cfg = <any>ObjectCompressor.decompress(d.data);
                    LanguageMgr.setLocal(cfg);
                }
                if (id == t._id) {
                    t.unLock();
                }
                XYFrame.ResMgr.destroyRes(u, true);
            }, _t, Laya.Loader.BUFFER);
        }
    }

    /**
     * 加载字体
     * @param t 
     * @param data 
     * @returns 
     */
    protected _onStepLoadFont(t: this, data: StepData) {
        if (Laya.Browser.onLayaRuntime) {
            return;
        }
        t.onLock();
        const url = ResPath.getResPath("font/font.ttf");
        let id = t._id;
        XYFrame.ResMgr.load(url, (res: any) => {
            if (res) {
                if (res.family)
                    Laya.Config.defaultFont = res.family;
                else if (res.fontName)
                    Laya.Config.defaultFont = res.fontName;

            } else {
                Logger.log("获取字体失败")
            }
            if (t._id == id)
                t.unLock();
        }, null, Laya.Loader.TTF);
    }

    /**
     * 加载语言包
     * @param _t 
     */
    private _onStepLang(_t: this) {
        _t.onLock();
        let id = _t._id;
        let url = ResPath.getCfgPath(LanguageMgr.getRegionFile("lng") + ResPath.EXT_TXT);
        XYFrame.ResMgr.load(url, (d: Laya.TextResource, u: string, t) => {
            if (d && d.data) {
                let cfg = <any>ObjectCompressor.decompress(d.data);
                if (cfg) {
                    LanguageMgr.setLngMap(cfg);
                }
            }
            if (id == t._id) {
                t.unLock();
            }
            XYFrame.ResMgr.destroyRes(u, true);
        }, _t, Laya.Loader.BUFFER);
    }

    /**
     * 登录初始化
     * @param _t
     * @param data
     */
    private _onStepSdkInit(_t: this, data: any) {
        _t.onLock();
        let id = _t._id;
        Laya.stage.once("login_init_sdk", _t, (msg: string) => {
            if (_t._id == id) {
                if (msg) {
                    _t.errorDes(msg || "初始化失败，请重新登录");
                } else {
                    _t.unLock();
                }
            }
        });
        BridgeManager.ins.sdkInit();
    }

    /**
     * 平台登录
     * @param _t
     * @param data
     */
    private _onStepPlatformLogin(_t: this, data: any) {
        _t.onLock();
        let id = _t._id;
        Laya.stage.once("login_user", _t, (status: any) => {
            if (_t._id == id) {
                if (status == 1) {
                    _t.errorDes("SDK登录失败");
                } else if (status) {
                    _t.errorDes(status);
                } else {
                    _t.unLock();
                }
            }
        });
        BridgeManager.ins.sdkLogin();
    }

    /**
     * 初始化授权
     * @param _t 
     * @param data 
     */
    private _onStepAuth(_t: this, data: any) {
        _t.onLock();
        let id = _t._id;
        Laya.stage.once("init_auth", _t, () => {
            if (_t._id == id) {
                _t.unLock();
            }
        });
        BridgeManager.ins.sdkAuth();
    }

    /**
     * 平台登录完成
     * @param _t 
     */
    private _onStepPfLoginEnd(_t: this) {
        _t.onLock();
        let id = _t._id;
        XYFrame.Msg.once(EnumMsg.LOGIN_USER_END, (t) => {
            if (t._id == id) {
                XYFrame.StorageMgr.init(BridgeManager.ins.userInfo.user_id);
                _t.unLock();
            }
        }, _t);
        XYFrame.Msg.emit(EnumMsg.LOGIN_PF_LOGIN_END);
    }

    /**
     * 获取区服信息
     * @param t 
     * @param data 
     */
    protected _onStepLoadServerCfg(t: this, data: StepData) {
        if (Game.Bridge.userInfo.offline) {
            // sdk是离线，需要判断是否可离线完
            if (!Game.Model.hero.isOfflinePlay) {
                t.errorDes(window.langStrMap[17]/** 请检查网络连接后重试 */);
                t.clear();
                return;
            }
        }
        t.onLock();
        let id = t._id;

        // 请求登录解开
        const serverUrl = BridgeManager.ins.serverUrl;
        if (serverUrl) {
            BridgeManager.ins.serverLoginApi(null, (data: { code: number, msg?: string, data?: any }) => {
                if (t._id == id) {
                    t.unLock();
                }
            })
        } else {
            if (BridgeManager.ins.info.servSocket) {
                t.unLock();
            } else {
                t.errorDes(window.langStrMap[7]/** 服务器配置错误 */);
                t.clear();
            }
        }
    }

    /**
    * 连接socket前初始化model数据
    * @param _t 
    * @param data 
    */
    private _onStepInitBefore(_t: this) {
        Game.Model.initCache();
        Game.Model.initBeforeEnter();
        if (DEBUG || BridgeManager.ins.userInfo.gm) {
            XYFrame.UIMgr.open(Vw_GmBtn);
        }
    }

    /**
     * 玩家进入游戏后初始化
     * @param _t 
     */
    private _onStepInitAfter(_t: this) {
        Game.Model.initAfterEnter();
    }

    /** 初始化对象池 */
    private _onStepInitPool(_t: this) {
        for (let i = 0; i < 2000; i++) {
            let npc = new NpcUnit();
            npc.recover();
        }
    }

    /**
    * 加载表文件
    * @param _t
    * @param data
    */
    private _onStepLoadCfg(t: this, data: StepData) {
        t.onLock();
        let id = t._id;
        let url = ResPath.getCfgPath(LanguageMgr.getRegionFile("config") + ResPath.EXT_TXT);
        XYFrame.ResMgr.load(url, (data: Laya.TextResource, u: string, t: this) => {
            XYFrame.ResMgr.destroyRes(u, true);
            if (t._id != id) return;
            if (data && data.data) {
                let d = data.data;
                let cfg = <any>ObjectCompressor.decompress(d);
                let cd = ConfigData as any
                for (let k in cfg) {
                    cd["encode_" + k] = cfg[k];
                    delete cd["decode_" + k];
                    Object.defineProperty(ConfigData, k, {
                        get: function () {
                            let en = cd["encode_" + k];
                            if (en) {
                                cd["decode_" + k] = ObjectCompressor.decompress(en);
                                delete cd["encode_" + k];
                            }
                            return cd["decode_" + k];
                        },
                        enumerable: true,
                        configurable: true
                    });
                }
                t.unLock();
            }
        }, t, Laya.Loader.BUFFER);
    }

    /**
     * 链接服务器
     * @param _t
     */
    private _onStepNetSrv(_t: this, data: StepData) {
        if (data.data) {
            if (DEBUG || BridgeManager.ins.userInfo.gm) {
                XYFrame.UIMgr.open(Vw_GmBtn);
            }
        }
        if (!BridgeManager.ins.info.servSocket) {
            return;
        }
        _t.__dealIsOffline(false);
        XYFrame.SocketMgr.getHandler().setEnableLog(DEBUG || !!BridgeManager.ins.userInfo.whitelist);
        _t.onLock();
        let info = BridgeManager.ins.info.servSocket;
        if (info) {
            let url = "";
            // 检测是否是ip地址，还是域名，域名使用wss，ip使用ws，使用正则
            const regIp = /^(\d{1,3}\.){3}\d{1,3}$/;
            if (regIp.test(info.ip)) {
                url = "ws://" + info.ip;
            } else {
                url = "wss://" + info.ip;
            }
            if (info.gamePort != null) {
                url += ":" + info.gamePort;
            }
            let socket = XYFrame.SocketMgr.getSocket(EnumSocket.DEFAULT, { url: url });
            socket.on(SocketEvent.CONNECTED, _t.__onNetSuccess, _t);
            socket.on(SocketEvent.ERROR, _t.__onNetError, _t);
            socket.connect();
        } else {
            if (Game.Model.hero.isOfflinePlay) {
                _t.__dealIsOffline(true);
                _t.unLock();
            } else {
                Logger.error("没有服务器信息");
                _t.errorDes(window.langStrMap[7]/** 没有服务器信息 */);
                _t.clear();
            }
        }
    }

    /**
     * 处理是否离线玩
     */
    private __dealIsOffline(bo: boolean) {
        Game.isOnline = !bo;
    }

    /**
     * 链接服务器成功
     * @param _t
     */
    private __onNetSuccess(_t: this) {
        let socket = XYFrame.SocketMgr.getSocket(EnumSocket.DEFAULT);
        socket.off(SocketEvent.CONNECTED, _t.__onNetSuccess, _t);
        socket.off(SocketEvent.ERROR, _t.__onNetError, _t);
        socket.on(SocketEvent.NETWORK_CLOSED, _t.__onNetClose, _t);
        XYFrame.Msg.once(EnumMsg.SRV_SEND_OFFLINE, _t.__onReceiveClose, _t);
        _t.unLock();
    }

    /**
     * 链接服务器失败
     * @param _t
     */
    private __onNetError(_t: this) {
        let socket = XYFrame.SocketMgr.getSocket(EnumSocket.DEFAULT);
        socket.off(Laya.Event.OPEN, _t.__onNetSuccess, _t);
        socket.off(Laya.Event.ERROR, _t.__onNetError, _t);
        if (Game.Model.hero.isOfflinePlay) {
            _t.__dealIsOffline(true);
            _t.unLock();
        } else {
            _t.errorDes(window.langStrMap[8]/** 链接服务器错误 */);
            _t.clear();
            if (Game.isEnter) {
                OfflineMgr.handle();
            }
        }
    }

    /**
     * 区服断开
     * @param _t
     */
    private __onNetClose(_t: this) {
        if (Game.Model.hero.isOfflinePlay) {
            _t.__dealIsOffline(true);
            _t.unLock();
        } else {
            _t.errorDes(window.langStrMap[9]/** 链接已断开，请重新登录 */);
            _t.clear();
            if (Game.isEnter) {
                OfflineMgr.handle();
            }
        }
    }

    /**
     * 收到断开连接
     * @param _t
     */
    private __onReceiveClose(_t: this) {
        Game.Model.offLine();
        if (Game.Model.hero.isOfflinePlay) {
            _t.__dealIsOffline(true);
            _t.unLock();
        } else {
            if (!_t._type) _t.errorDes(OfflineMgr.getMsg());
            else OfflineMgr.handle();
            _t.clear();
        }
    }

    /**
     * 上报离线缓存数据
     * @param _t 
     * @param data 
     */
    private _onStepReportOfflineCache(_t: this, data: StepData) {
        if (Game.isOnline && Game.Model.hero.isOfflinePlay) {
            let info = Game.Model.getOfflineCache(!!data.data);
            if (info) {
                Game.Bridge.syncGameDataToServer(info);
            }
        }
    }

    /**
     * 检测是否已创建角色
     * @param _t
     */
    private _onStepCheckRole(_t: this, data: StepData) {
        // 离线不需要检测
        if (!Game.isOnline) {
            return;
        }
        _t.onLock();
        XYFrame.Msg.once(EnumMsg.IS_CREATED_ROLE, _t.__createRoleMsg, _t);
        XYFrame.Msg.once(EnumMsg.CREATE_ROLE_FAIL, _t.__createResMg, _t);
        Game.Model.hero.sendLogin(data.data);
    }

    /**
     * 创角步骤完成，移除监听
     * @param _t
     */
    private _onStepRoleEnd(_t: this) {
        XYFrame.Msg.off(EnumMsg.IS_CREATED_ROLE, _t.__createRoleMsg, _t);
        XYFrame.Msg.off(EnumMsg.CREATE_ROLE_FAIL, _t.__createResMg, _t);
    }

    /**
     * 创角结果
     * @param _t
     * @param val
     */
    private __createRoleMsg(_t: this) {
        _t.unLock();
    }

    /**
     * 创角角色结果
     * @param _t 
     * @param val 0失败1成功2名字重复3非法名字
     */
    private __createResMg(_t: this, val: number) {
        if (val == -2 || val == -3) {
        } else {
            _t.errorDes(window.langStrMap[16]/** 创角失败，请重新登录 */);
            _t.clear();
        }
    }

    /**
     * 加载图集
     * @param t 
     * @param data 
     */
    protected _onStepLoadAtlas(t: this, data: StepData) {
        t.onLock();
        const altasl: string[] = data.data;
        let index = 0;
        let id = t._id;
        for (let i = 0, len = altasl.length; i < len; i++) {
            let n = altasl[i];
            XYFrame.ResMgr.load(ResPath.getUIAltasPath(n) + ResPath.EXT_ATLAS, (atlas: Laya.AtlasResource) => {
                index++;
                if (index == len) {
                    if (id == t._id)
                        t.unLock();
                }
            });
        }
    }

    /**
     * 加载资源
     * @param _t 
     * @param data 
     */
    protected async _onStepLoadRes(_t: this, data: StepData) {
        _t.onLock();
        let id = _t._id;
        await Game.SceneMgr.factory.initAsset();
        await Laya.loader.load(ResPath.getScenePath(`level/niuyue${ResPath.EXT_PREFAB}`));
        let info: any = await XYFrame.ResMgr.loadAsync(ResPath.getCfgPath("stagePos.json"));
        if (info && info.data) {
            Game.Model.stage.posMap = info.data;
        }
        XYFrame.ResMgr.destroyRes(ResPath.getCfgPath("stagePos.json"));
        if (id == _t._id)
            _t.unLock();
    }

    /**
    * 检测服务器数据是否准备完成
    * @param _t
    */
    private _onStepSrvReady(_t: this, data: StepData) {
        if (Game.isOnline) {
            _t.onLock();
            let id = _t._id;
            let readyFun = function (t: LoginManager) {
                if (t._id == id) {
                    t.unLock();

                }
            };
            XYFrame.Msg.once(EnumMsg.SRV_READY, readyFun, _t);
            Game.Model.hero.CG103();
        }
    }

    /**
     * 初始化ui
     * @param t 
     * @param data 
     */
    protected _onStepInitUI(t: this, data: StepData) {
        if (!data.data) {
            let id = t._id;
            t.onLock();

            XYFrame.UIMgr.open(Vw_Main).then(() => {
                if (id == t._id) {
                    t.unLock();
                }
            })
        }
    }

    // protected _onStepInitScene(t: this, data: StepData) {
    //     let id = t._id;
    //     t.onLock();
    //     XYFrame.Msg.once(EnumMsg.SCENE_ENTER, (t) => {
    //         if (t._id == id) {
    //             t.unLock();
    //         }
    //     }, t);
    //     Game.SceneMgr.onEnter(1);
    // }

    /**
     * 登录结束
     * @param t 
     * @param data 
     */
    protected _onStepEnd(t: this, data: StepData) {
        Game.isEnter = true;
        if (Game.isOnline)
            Game.isNetEnter = true;
        XYFrame.UIMgr.close(Vw_Login);
        XYFrame.Msg.emit(EnumMsg.LOGIN_STEP_FINISH);
        Game.Model.hero.report(1);
    }

}