import Game from "../../Game/Game";
import Logger from "../../XYFrame/Logger/Logger";
import { EnumBridgeResult } from "../EnumBridgeResult";
import PlatformBase from "./PlatformBase";

/**
 * navive的原生接口
 */
export interface NativeMarket {

    /**
     * 注册一些接口，原生回调
     * @param data 
     * @returns 
     */
    initRegister: (data: Record<string, Function>) => void;

    /**
     * 初始化sdk
     * @param data 
     * @param call 
     * @returns 
     */
    initSdk: (data: any, call: (data: { code: number, msg?: string, data?: any }) => any) => any;

    /**
     * 登录
     * @param data 
     * @param call 
     * @returns 
     */
    loginSdk: (data: any, call: (data: { code: number, msg?: string, data?: any }) => any) => any;

    /**
     * 登出
     * @param call 
     * @returns 
     */
    logout: () => any;

    exit: () => any;

    reload: () => any;

    reLogin: () => any;

    /**
     * 震动
     * @param type 震动类型 0短震动 1长震动
     */
    vibrate: (data: { type: number }) => any;

    /**
     * 调用原生方法
     * @param data 
     * @param call 
     * @returns 
     */
    invokeMethod: (data: { method: string, data?: any }, call?: (data: { code: number, msg?: string, data?: any }) => any) => any;
};

/**
 * @ Author: XXL
 * @ Date: 2026-02-28 15:34
 * @ Description: 原生平台
*/
export default class NativePlatform extends PlatformBase {
    private market: NativeMarket;
    public constructor(sdk: any) {
        super(sdk);
        let _t = this;
        _t.market = (window as any).conchMarket;
        if (_t.market) {
            _t.market.initRegister({ "keepAlive": _t.keepAlive.bind(_t) });
        }
    }

    public keepAlive() {
        Logger.log("---- native keepAlive ----");
        Game.Model.hero.sendHeartbeat();
    }

    public exit() {
        if (this.market && this.market.exit) {
            this.market.exit();
        }
    }

    public reload() {
        if (this.market && this.market.reload) {
            this.market.reload();
        }
    }

    public reLogin() {
        if (this.market && this.market.reLogin) {
            this.market.reLogin();
        }
    }

    public vibrate(type: number) {
        if (this.market) {
            this.market.invokeMethod({ method: "vibrate", data: { type: type } });
        }
    }


    public onCopyText(data: { txt: string; msg?: string; }): void {
        if (this.market) {
            this.market.invokeMethod({ method: "setClipboardData", data: data.txt });
        }
    }

    public getBattery(data: any, call: (data: { code: number, msg?: string, data?: { level: number, isCharging?: boolean } }) => any) {
        if (this.market) {
            this.market.invokeMethod({ method: "getBattery", data: data }, (d: any) => {
                if (d) {
                    d = JSON.parse(d);
                    call && call({ code: EnumBridgeResult.SUCCESS, data: d });
                } else {
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            });
        }
    }

    public onCustomer(): void {
        if (this.market) {
            this.market.invokeMethod({ method: "openCustomer" });
        }
    }

    /**
     * 打开隐私设置
     */
    public openPrivacy(type:number): void {
        if (this.market) {
            this.market.invokeMethod({ method: "openPrivacy", data: { type: type || 1 } });
        }
    }

    /**
     * 打开个人中心
     */
    public openCenter(): void {
        if (this.market) {
            this.market.invokeMethod({ method: "openCenter" });
        }
    }
}