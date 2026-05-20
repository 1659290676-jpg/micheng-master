import Singleton from "../XYFrame/Base/Singleton";
import Logger from "../XYFrame/Logger/Logger";
import HttpUtils from "../XYFrame/Utils/HttpUtils";
import { Md5Utils } from "../XYFrame/Utils/Md5Utils";
import { EnumBridgeResult } from "./EnumBridgeResult";
import DebugPlatform from "./Platform/DebugPlatform";
import MiniPlatform from "./Platform/MiniPlatform";
import NativePlatform from "./Platform/NativePlatform";
import PlatformBase from "./Platform/PlatformBase";
import WebPlatform from "./Platform/WebPlatform";
import SDKBase from "./SDK/SDKBase";
import TapPlusNativeSdk from "./SDK/TapPlusNativeSdk";
import TestSdk from "./SDK/TestSdk";
import TiktokSdk from "./SDK/TiktokSdk";
import WechatSdk from "./SDK/WechatSdk";

const { regClass, property } = Laya;
/**
 * @ Author: XXL
 * @ Date: 2026-02-28 14:16
 * @ Description: 桥接管理
*/
@regClass()
export class BridgeManager extends Singleton {

    /**
     * 获取小程序实例
     * @returns 
     */
    public static getMini(): MiniApi {
        let win: any = window;
        if (!win.miniApi) {
            win.miniApi = win["wx"] || win["tt"] || win["my"] || win["bl"] || win["qq"] || win["ks"] || win["hbs"] || win["swan"] || win["mt"];
        }
        return win.miniApi;
    }

    private static _isMini: boolean;
    /**
     * 是否是小游戏
     */
    public static get isMini() {
        if (BridgeManager._isMini == null) {
            let browser = Laya.Browser;
            BridgeManager._isMini = browser.onWXMiniGame || browser.onAlipayMiniGame || browser.onTTMiniGame
                || browser.onBLMiniGame || browser.onBDMiniGame || browser.onHWMiniGame || browser.onKGMiniGame
                || browser.onQGMiniGame || browser.onQQMiniGame || browser.onTBMiniGame || browser.onVVMiniGame;
        }
        return BridgeManager._isMini;
    }

    /**
     * 获取单例
    */
    public static get ins(): BridgeManager {
        return BridgeManager.getInst<BridgeManager>();
    }

    /**
     * 平台
     */
    private _platform: PlatformBase;

    /** 用户信息 */
    private _userInfo: IUserInfo;
    /** 设备信息 */
    public readonly device: DeviceInfo = <any>{ appName: "unknown", platform: "" };

    /** 游戏信息 */
    public readonly info: IGameConfig = <any>{};

    public serverList: IServerInfo[];

    /** 是否初始了sdk */
    public isInitSdk = false;

    /**
     * 获取SDK类
     * @returns 
     */
    private getSdkCls() {
        let name = gameInfo.sdk;
        if (name == "debug") {
            return SDKBase;
        } else if (name == "test") {
            return TestSdk;
        } else if (name == "wechat" || name == "douyin") {
            return WechatSdk;
        } else if (name == "tiktok") {
            return TiktokSdk;
        } else if (name == "seasAndroid") {
            return TapPlusNativeSdk;
        } else {
            console.warn("未配置sdk: " + name);
            return SDKBase;
        }
    }

    /**
     * 初始化
     */
    protected onInit() {
        let _t = this;
        (<any>_t).info = window.gameInfo || {};
        let platform = _t._platform;
        if (platform) return;
        let sdkCls = _t.getSdkCls();
        if (!sdkCls) {
            console.error("未配置sdk: " + gameInfo.sdk);
        }
        let sdk = new sdkCls();
        if (DEBUG) {
            platform = new DebugPlatform(sdk);
        } else {
            if (Laya.Browser.onLayaRuntime) {
                platform = new NativePlatform(sdk);
            } else if (BridgeManager.isMini) {
                platform = new MiniPlatform(sdk);
            } else {
                platform = new WebPlatform(sdk);
            }
        }
        _t._platform = platform;

    }

    /**
     * 获取平台
     */
    public get platform(): PlatformBase {
        return this._platform;
    }

    /**
     * 获取用户信息
     */
    public get userInfo() {
        return this._userInfo;
    }

    /** 包类型 */
    public get type() {
        return this.info.type || 0;
    }

    /**
     * 获取设备
     * @returns 
     */
    public getOs() {
        return Laya.Browser.onPC ? "windows" : Laya.Browser.onAndroid ? "android" : (Laya.Browser.onIOS || Laya.Browser.onIPad || Laya.Browser.onIPhone) ? "ios" : "unknown";
    }

    /** 获取版本号 */
    public getVer() {
        return (window as any).gameVer || "v1.0.0";
    }


    //#region 调用平台接口 开始
    // !---------------------------------调用平台接口--------------------------------------//

    /**
     * 显示闪屏
     */
    public showShlash() {
        this.invokeMethod({ method: "showShlash" });
    }

    /**
     * 隐藏闪屏
    */
    public hideShlash() {
        this.invokeMethod({ method: "hideShlash" });
    }

    /**
     * 显示加载动画
     * @param text 
     */
    public showLoading(text: string) {
        this._platform && this._platform.showLoading(text);
    }

    /**
     * 隐藏加载动画
     */
    public hideLoading() {
        this._platform && this._platform.hideLoading();
    }

    /**
     * 初始化sdk
     */
    public sdkInit(data?: any) {
        let _t = this;
        // 如果是离线的状态需要清理用户信息
        if (_t._userInfo && _t._userInfo.offline) {
            _t._userInfo = null;
        }
        _t._platform && _t._platform.initSdk(data, _t.initSdkCall.bind(_t));
    }

    /**
     * 登录
     */
    public sdkLogin(data?: any) {
        let _t = this;
        _t._platform && _t._platform.login(data, _t.loginSdkCall.bind(_t));
    }

    /**
     * 登出
     */
    public sdkLogout() {
        let _t = this;
        _t._platform && _t._platform.logout(_t.logoutCall.bind(_t));
    }

    /**
     * 授权
     * @param data 
     */
    public sdkAuth(data?: any) {
        let _t = this;
        _t._platform && _t._platform.initAuth(data, _t.authCall.bind(_t));
    }

    /**
     * 支付
     * @param data 订单信息
     * @param call 回调 code:0成功,否则失败 msg:失败信息
     */
    public sdkPay(data: any, call: (ret: { code: number, msg?: string, data?: any }) => any) {
        let _t = this;
        _t._platform && _t._platform.pay(data, call);
    }

    /**
     * 上报
     * @param type 0创号 1登录 2升级 3完成新手指引 4浏览商城页面 5浏览活动页面
     * @param data 上报数据
     */
    public sdkReport(type: number, data: any) {
        let _t = this;
        _t._platform && _t._platform.report({ type: type, data: data });
    }

    /**
     * 重新加载
     */
    public reload() {
        let _t = this;
        _t._platform && _t._platform.reload();
    }

    /**
     * 退出
     */
    public exit() {
        let _t = this;
        _t._platform && _t._platform.exit();
    }

    // /**
    //  * 清理缓存
    //  * @param type 清理类型 0清理文件和数据缓存 1只清理文件缓存 2只清理数据缓存 默认0
    //  */
    // public cleanCache(type: number) {
    //     let _t = this;
    //     _t._platform && _t._platform.cleanCache();
    // }

    // /**
    //  * 提示清理缓存
    //  * @param type 提示类型 默认清理缓存并重登 1缓存有问题
    //  * @param content 提示内容
    //  * @param title 提示标题
    //  */
    // public showClean(type?: number, content?: string, title?: string) {
    //     this._platform && this._platform.showClean(type, content, title);
    // }

    /**
     * 复制文本
     * @param str 拷贝内容
     * @param msg 提示内容 默认"复制成功"
     */
    public copyText(str: string, msg?: string) {
        this._platform && this._platform.onCopyText({ txt: str, msg: msg });
    }

    /**
     * 检查缓存
     * @param version 资源版本
     * @param call 清理完成回调
     */
    public checkCache(version: number | string, call: () => any) {
        this._platform && this._platform.checkCache(version, call);
    }

    /**
     * 激励视频⼴告
     * @param data adUnitId ⼴告单元 id（运营提供）
     * @param call 播放回调 code：0播放结束，1001中途退出，1002播放错误，-1确实必传参数
     * @param startCall 播放开始回调
     */
    public rewardedVideoAd(data: { adUnitId: string, multiton?: boolean, data?:any }, call: (data: { code: number, msg?: string, data?: any }) => any, startCall?: () => any) {
        if (this._platform) {
            this._platform.rewardedVideoAd(data, call, startCall);
        }
    }

    /**
     * 震动
     * @param type 震动类型 0短震动 1长震动
     */
    public vibrate(type: 0 | 1) {
        this._platform && this._platform.vibrate(type);
    }

    /**
     * 调用平台方法
     * @param obj method:方法名 data:参数  call:回调,code=0成功,否则失败 other:调用函数其他参数列表
     * @returns 
     */
    public invokeMethod(obj: { method: string, data?: any, call?: (ret: { code: number, msg?: string, data?: any }) => any, other?: any }) {
        let pf: any = this._platform;
        if (pf && pf[obj.method]) {
            return pf[obj.method](obj.data, obj.call, obj.other);
        } else {
            console.warn("Undefined platform method: " + obj.method);
            if (DEBUG) {
                obj.call && obj.call({ code: EnumBridgeResult.SUCCESS });
            } else {
                obj.call && obj.call({ code: EnumBridgeResult.FAIL, msg: "platform method not found" });
            }
        }
    }

    /**
     * 调用sdk方法
     * @param obj method:方法名 data:参数 call:回调,code=0成功,否则失败
     */
    public invokeSdkMethod(obj: {
        method: string,
        data?: any,
        call?: (ret: { code: number, msg?: string, data?: any }) => any,
        other?: any
    }) {
        return this._platform && this._platform.invokeSdkMethod(obj);
    }

    // !---------------------------------调用平台接口--------------------------------------//
    //#endregion 调用平台接口 结束


    //#region 平台回调 开始
    // !---------------------------------平台回调--------------------------------------//
    /**
     * 初始化SDK回调
     * @param data code=0成功,1失败  data:数据
     */
    private initSdkCall(data: { code: number, msg?: string, data?: any }) {
        if (data && data.code == EnumBridgeResult.SUCCESS) {
            Laya.stage.event("sdk_age_msg");
            Laya.stage.event("login_init_sdk");
        } else {
            // 初始化失败，获取缓存数据
            let str = Laya.LocalStorage.getItem("userInfo");
            if (str) {
                try {
                    let info: IUserInfo = JSON.parse(str);
                    if (info.user_id) {
                        info.offline = true;
                        this._userInfo = info;
                        Laya.stage.event("sdk_age_msg");
                        Laya.stage.event("login_init_sdk");
                        return;
                    }
                } catch (e) {
                    Logger.error("获取缓存用户信息失败", e);
                }
            }
            Laya.stage.event("login_init_sdk", "SDK初始化失败");
        }
    }

    private setUserInfo(info: any) {
        if (info) {
            if (!info.os) info.os = this.getOs();
            this._userInfo = info;
            // 初始化缓存
            let d = { ...info };
            d.offline = false;
            Laya.LocalStorage.setItem("userInfo", JSON.stringify(d));
            if (BridgeManager.ins.info.debug) {
                info.gm = true;
                info.whitelist = 1;
            }
        }
    }

    /**
     * 登录回调
     * @param data code=0成功,1失败  data:数据
     */
    private loginSdkCall(data: { code: number, msg?: string, data?: any }) {
        if (data && data.code == EnumBridgeResult.SUCCESS) {
            let info = data.data;
            if (info) {
                this.setUserInfo(info);
                Laya.stage.event("login_user");
            } else {
                Laya.stage.event("login_user", "请求用户信息失败");
            }
        } else {
            // 需要判断是否有缓存的数据
            let str = Laya.LocalStorage.getItem("userInfo");
            if (str) {
                try {
                    let info: IUserInfo = JSON.parse(str);
                    if (info.user_id) {
                        info.offline = true;
                        this._userInfo = info;
                        Laya.stage.event("login_user");
                        return;
                    }
                } catch (e) {
                    Logger.error("获取缓存用户信息失败", e);
                }
            }
            Laya.stage.event("login_user", data.msg || "请求用户信息失败");
        }
    }

    /**
     * 登出回调
     * @param data code=0成功,1失败  data:数据
     */
    public logoutCall(data: { code: number, msg?: string, data?: any }) {
        if (data && data.code == EnumBridgeResult.SUCCESS) {
            Laya.stage.event("login_out");
        } else {
            Laya.stage.event("login_out", 1);
        }
    }

    /**
     * 授权回调
     * @param data code=0成功,1失败  data:数据
     */
    private authCall(data: { code: number, msg?: string, data?: any }) {
        if (data && data.code == EnumBridgeResult.SUCCESS) {
            Laya.stage.event("init_auth", 1);
        } else {
            Laya.stage.event("init_auth", 0);
        }
    }

    // !---------------------------------平台回调--------------------------------------//
    //#endregion 平台回调 结束

    //#region 调用服务器接口

    public get serverUrl() {
        const info = this.info;
        if (info.servHttp) {
            // if (info.servPort) {
            //     return info.servHttp + ":" + info.servPort;
            // }
            return info.servHttp;
        }
        return "";
    }
    /**
     * 后台登录接口，获取欺负器信息
     * @param data 
     * @param call 
     */
    public serverLoginApi(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        const gameInfo = this.info;
        const timestamp = Date.now() + "";
        const secretKey = gameInfo.secretKey;
        const signStr = timestamp + '_' + gameInfo.platform + '_' + secretKey;
        const sign = Md5Utils.hashStr(signStr).toUpperCase();
        HttpUtils.sendRequest(this.serverUrl + "/api/login", { appId: gameInfo.appId, pf: gameInfo.pf, platform: gameInfo.platform, device: this.device.dev_uid, openId: this.userInfo.user_id, sdk: gameInfo.sdk }, (ret) => {
            if (ret && ret.code == 200 && ret.data) {
                let d = ret.data;
                BridgeManager.ins.serverList = d;
                let one = d[0];
                let serverInfo: IServerInfo = { ...one };
                serverInfo.state = 1;
                Laya.LocalStorage.setJSON("server_info", serverInfo);
                serverInfo.state = one.state;
                gameInfo.servSocket = serverInfo;
                call && call({ code: EnumBridgeResult.SUCCESS, data: d });
            } else {
                call && call({ code: EnumBridgeResult.FAIL, msg: ret && ret.msg || "login error" });
            }
        }, () => {
            let data = Laya.LocalStorage.getJSON("server_info");
            if (data) {
                gameInfo.servSocket = data;
                call && call({ code: EnumBridgeResult.SUCCESS, data: data });
                return;
            }
            call && call({ code: EnumBridgeResult.FAIL, msg: "login error" });
        }, null, "post", "json", ["pf", gameInfo.platform, "time", timestamp, 'sign', sign]);
    }

    /**
     * 同步游戏数据给服务器
     */
    public syncGameDataToServer(data: any) {
        const gameInfo = this.info;
        if (gameInfo && gameInfo.servSocket && gameInfo.servSocket.syncPort) {
            let url = (DEBUG ? "http://" : "https://") + gameInfo.servSocket.ip + ":" + gameInfo.servSocket.syncPort;
            const timestamp = Date.now() + "";
            const secretKey = gameInfo.secretKey;
            const signStr = timestamp + '_' + gameInfo.platform + '_' + secretKey;
            const sign = Md5Utils.hashStr(signStr).toUpperCase();
            HttpUtils.sendRequest(url + "/api/offline/sync", data, null, null, null, "post", "json", ["pf", gameInfo.platform, "time", timestamp, 'sign', sign]);
        }
    }
    //#endregion
}