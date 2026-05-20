import Logger from "../../XYFrame/Logger/Logger";
import { BridgeManager } from "../BridgeManager";
import { EnumBridgeResult } from "../EnumBridgeResult";
import { NativeMarket } from "../Platform/NativePlatform";
import SDKBase from "./SDKBase";

/**
 * @ Author: XXL
 * @ Date: 2026-03-31 14:57
 * @ Description: 原生平台SDK
*/
export default class NativeSdk extends SDKBase {

    protected market: NativeMarket;

    public constructor() {
        super();
        let _t = this;
        _t.market = (window as any).conchMarket;
        if (_t.market) {
            _t.market.initRegister({ "logout": _t.logoutCall.bind(_t) });
            _t.market.initRegister({ "switchAccount": _t.switchAccountCall.bind(_t) });
            _t.market.initRegister({ "deviceInfo": _t.deviceInfoCall.bind(_t) });
        }
    }

    public login(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        let _t = this;
        if (_t.market) {
            _t.market.loginSdk(data, (ret) => {
                Logger.warn("---- native login ----", JSON.stringify(ret));
                if (ret && ret.code == EnumBridgeResult.SUCCESS && ret.data) {
                    let info: IUserInfo = <any>{};
                    let d = ret.data;
                    info.user_id = d.uid;
                    info.pf = d.pf || gameInfo.pf;
                    if (d.whitelist) {
                        info.whitelist = d.whitelist;
                        info.gm = true;
                    }
                    call && call({ code: EnumBridgeResult.SUCCESS, data: info });
                } else {
                    call && call({ code: ret.code || EnumBridgeResult.FAIL, msg: ret.msg });
                }
            });
        }
    }

    /**
     * 激励视频广告
     * @param data 
     * @param call 
     * @param startCall 
     */
    public rewardedVideoAd(data: { adUnitId: string, multiton?: boolean, data?: any }, call: (data: { code: number, msg?: string, data?: any }) => any, startCall?: () => any) {
        if (this.market) {
            this.market.invokeMethod({ method: "rewardedVideoAd", data: data }, (d: any) => {
                Logger.log("---- native rewardedVideoAd ----", JSON.stringify(d));
                if (d) {
                    d = JSON.parse(d);
                    if (d.code == 1) {
                        startCall && startCall();
                    } else {
                        call && call({ code: d.code, data: d });
                    }
                } else {
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            });
        }
    }

    /**
     * 插屏广告
     * @param data 
     * @param call 
     * @param startCall 
     */
    public intersititialAd(data: { adUnitId: string, data?: any }, call: (data: { code: number, msg?: string, data?: any }) => any, startCall?: () => any) {
        if (this.market) {
            this.market.invokeMethod({ method: "intersititialAd", data: data }, (d: any) => {
                Logger.log("---- native intersititialAd ----", JSON.stringify(d));
                if (d) {
                    d = JSON.parse(d);
                    if (d.code == 1) {
                        startCall && startCall();
                    } else {
                        call && call({ code: d.code, data: d });
                    }
                } else {
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            });
        }
    }

    public report(data: { type: number; data: any; }): void {
        if (this.market) {
            this.market.invokeMethod({ method: "report", data: data });
        }
    }

    public pay(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        if (this.market) {
            this.market.invokeMethod({ method: "pay", data: data }, (d: any) => {
                if (d) {
                    d = JSON.parse(d);
                    call && call({ code: EnumBridgeResult.SUCCESS, data: d });
                } else {
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            });
        }
    }

    public openPrivacy(data: any) {
        if (this.market) {
            this.market.invokeMethod({ method: "openPrivacy", data: data });
        }
    }

    public onCustomer() {
        if (this.market) {
            this.market.invokeMethod({ method: "onCustomer" });
        }
    }

    public openCenter() {
        if (this.market) {
            this.market.invokeMethod({ method: "openCenter" });
        }
    }

    /**
     * 登出回调
     */
    protected logoutCall() {
        BridgeManager.ins.logoutCall({ code: EnumBridgeResult.SUCCESS });
    }

    /**
     * 切换账号回调
     */
    protected switchAccountCall(data: { code: number, msg?: string, data?: any }) {
        BridgeManager.ins.logoutCall({ code: EnumBridgeResult.SUCCESS });
    }

    /**
     * 设备信息回调
     */
    protected deviceInfoCall(data: any) {
        Logger.warn("---- native deviceInfo ----", JSON.stringify(data));
        // 设备信息
        if (data) {
            data = JSON.parse(data);
            let device = BridgeManager.ins.device;
            device.brand = data.deviceBrand;
            device.model = data.deviceModel;
            device.manufacturer = data.deviceManufacturer;
            device.system = data.systemVersion;
            device.platform = Laya.Browser.platformName;
            device.dev_uid = data.deviceUid;
            device.cpu = data.deviceCpuArch;
            device.network_type = data.networkType;
            device.memory = data.memorySize;
        }
    }

    /**
     * 是否显示客服按钮
     * @param type 1登录页 2选服页 3设置页
     * @returns 
     */
    public isCustomer(type: number) {
        return true;
    }

    /**
     * 是否显示隐私设置按钮
     * @param type
     * @returns 
     */
    public isPrivacy(data: any) {
        return true;
    }

    /**
     * 是否显示个人中心按钮
     * @param type
     * @returns 
     */
    public isCenter(data: any) {
        return true;
    }

}