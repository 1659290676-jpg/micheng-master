import Logger from "../../XYFrame/Logger/Logger";
import HttpUtils from "../../XYFrame/Utils/HttpUtils";
import { Md5Utils } from "../../XYFrame/Utils/Md5Utils";
import { BridgeManager } from "../BridgeManager";
import { EnumBridgeResult } from "../EnumBridgeResult";
import SDKBase from "./SDKBase";

/**
 * @ Author: XXL
 * @ Date: 2026-04-03 10:29
 * @ Description: 3k的tiktok sdk
*/
export default class TiktokSdk extends SDKBase {
    private k3Sdk: any;
    private tiktok: MiniApi;

    public constructor() {
        super();
        this.k3Sdk = (<any>window).GameSDK;
        this.tiktok = (<any>window).TTMinis?.game;
    }

    public init(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        if (this.k3Sdk) {
            this.k3Sdk.activiteSDK("sdk_config.json", (isSuccess: boolean, ret: any) => {
                Logger.log("activiteSDK", isSuccess, JSON.stringify(ret));
                if (isSuccess) {
                    call && call({ code: EnumBridgeResult.SUCCESS });
                } else {
                    call && call({ code: EnumBridgeResult.FAIL, msg: "sdk activite error" });
                }
            });
        } else {
            // msg 使用英文
            call && call({ code: EnumBridgeResult.FAIL, msg: "can not find sdk" });
        }
    }

    public login(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        if (this.k3Sdk) {
            let wind = window as any;
            wind.onLoginSuccess = (ret: any) => {
                Logger.log("sdk login success", ret);
                // 通知后端认证
                const gameInfo = window.gameInfo;
                const timestamp = Date.now() + "";
                const secretKey = gameInfo.secretKey;
                const pf = gameInfo.pf;
                const signStr = timestamp + '_' + gameInfo.platform + '_' + secretKey;
                const sign = Md5Utils.hashStr(signStr).toUpperCase();
                let body:any = {};
                body.appId = gameInfo.miniAppId;
                body.pf = pf;
                body.platform = gameInfo.platform;
                body.code = JSON.stringify(ret);
                HttpUtils.sendRequest(BridgeManager.ins.serverUrl + "/api/openid", body, (ret) => {
                    if (ret && ret.code == 200 && ret.data) {
                        const info: IUserInfo = <any>{};
                        let dd = ret.data;
                        if (dd.code == "1") {
                            dd = dd.data;
                            info.user_id = dd.open_id;
                            info.pf = gameInfo.pf;
                            call && call({ code: EnumBridgeResult.SUCCESS, data: info });
                        } else {
                            call && call({ code: EnumBridgeResult.FAIL, msg: dd.msg || "login error" });
                        }
                    } else {
                        call && call({ code: EnumBridgeResult.FAIL, msg: ret.msg || "login error" });
                    }
                }, () => {
                    call && call({ code: EnumBridgeResult.FAIL, msg: "login error" });
                }, null, "post", "json", ["pf", gameInfo.platform, "time", timestamp, 'sign', sign]);
            };
            wind.onLoginFail = (data: any) => {
                Logger.log("sdk login fail", data);
                call && call({ code: EnumBridgeResult.FAIL, msg: data && (data.msg || data.errMsg) || "login error" });
            };
            wind.onLoginCancel = (data: any) => {
                Logger.log("sdk login cancel", data);
                call && call({ code: EnumBridgeResult.FAIL, msg: data && (data.msg || data.errMsg) || "user cancel login" });
            };
            this.k3Sdk.login();
        }
    }

    public pay(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        if (this.k3Sdk) {
            let wind = window as any;
            wind.onPayResult = (code: string, data: any) => {
                if (code == "1") {
                    call && call({ code: EnumBridgeResult.SUCCESS, msg: data && data.msg || "pay success", data: data });
                } else if (code == "0") {
                    call && call({ code: EnumBridgeResult.FAIL, msg: data && data.msg || "pay fail" });
                } else if (code == "cancel") {
                    call && call({ code: EnumBridgeResult.FAIL, msg: data && data.msg || "user cancel pay" });
                } else {
                    call && call({ code: EnumBridgeResult.FAIL, msg: data && data.msg || "pay error" });
                }
            };

            this.k3Sdk.pay(data);
        }
    }

    /**
     * 添加桌面
     * @param data 
     * @param call 
     */
    public addShortcut(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        if (this.k3Sdk) {
            this.k3Sdk.addShortcut((code: string, data?: any) => {
                if (code == "1") {
                    call && call({ code: EnumBridgeResult.SUCCESS });
                } else {
                    call && call({ code: EnumBridgeResult.FAIL, data: data && data.msg || "add shortcut error" });
                }
            });
        } else if (this.tiktok) {
            (<any>this.tiktok).addShortcut({
                success: () => {
                    call && call({ code: EnumBridgeResult.SUCCESS });
                },
                fail: (error: any) => {
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            })
        }
    }

    /**
     * 是否可领取添加到桌面奖励
     * @param data 
     * @param call 
     */
    public getShortcutReward(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        if (this.k3Sdk) {
            this.k3Sdk.getShortcutMissionReward((code: string, data: any) => {
                if (code == "1" && data && data.canReceiveReward) {
                    call && call({ code: EnumBridgeResult.SUCCESS });
                } else {
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            })
        } else if (this.tiktok) {
            (<any>this.tiktok).getShortcutMissionReward({
                success: (data: any) => {
                    if (data && data.canReceiveReward) {
                        call && call({ code: EnumBridgeResult.SUCCESS });
                    } else {
                        call && call({ code: EnumBridgeResult.FAIL });
                    }
                },
                fail: (error: any) => {
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            })
        }
    }

    /**
     * 是否可领取侧边栏奖励
     * @param data 
     * @param call 
     */
    public getSiderReward(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        if (this.k3Sdk) {
            this.k3Sdk.getEntranceMissionReward((code: string, data: any) => {
                if (code == "1" && data && data.canReceiveReward) {
                    call && call({ code: EnumBridgeResult.SUCCESS });
                } else {
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            })
        } else if (this.tiktok) {
            (<any>this.tiktok).getEntranceMissionReward({
                success: (data: any) => {
                    if (data && data.canReceiveReward) {
                        call && call({ code: EnumBridgeResult.SUCCESS });
                    } else {
                        call && call({ code: EnumBridgeResult.FAIL });
                    }
                },
                fail: (error: any) => {
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            })
        }
    }

    /**
     * 打开侧边栏
     * @param data 
     * @param call 
     */
    public openSider(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        if (this.k3Sdk) {
            this.k3Sdk.startEntranceMission((code: string, data: any) => {
                if (code == "1") {
                    call && call({ code: EnumBridgeResult.SUCCESS });
                } else {
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            })
        } else if (this.tiktok) {
            (<any>this.tiktok).getEntranceMissionReward({
                success: (data: any) => {
                    call && call({ code: EnumBridgeResult.SUCCESS });
                },
                fail: (error: any) => {
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            })
        }
    }

    /**
     * 激励视频⼴告
     * @param data 
     * @param call 
     * @param startCall 
     */
    public rewardedVideoAd(data: { adUnitId: string, multiton?: boolean }, call: (data: { code: number, msg?: string, data?: any }) => any, startCall?: () => any) {
        if (this.k3Sdk) {
            this.k3Sdk.showRewardedVideoAd({ adUnitId: data.adUnitId }, (code: string, d: any) => {
                if (code == "show") {
                    startCall && startCall();
                } else if (code == "1") {
                    if (d && d.isEnd) {
                        call && call({ code: EnumBridgeResult.SUCCESS });
                    } else {
                        call && call({ code: EnumBridgeResult.FAIL, msg: d && d.msg });
                    }
                } else if (code == "cancel") {
                    call && call({ code: EnumBridgeResult.FAIL, msg: d && d.msg });
                } else {
                    call && call({ code: EnumBridgeResult.FAIL, msg: d && d.msg });
                }
            });
        }
    }

    public report(data: { type: number; data: any; }): void {
        let info = data.data;
        if (!info) return;
        if (this.k3Sdk) {
            let statue = 1;
            if (data.type == 1) {
                statue = 2;
            } else if (data.type == 2) {
                statue = 3;
            }
            let d = {
                role_level: info.role_level,
                role_id: info.role_id,
                role_name: info.role_name,
                server_id: info.server_id,
                server_name: info.server_name,
                vip_level: info.vip_level,
                role_tag: "0",
                status: statue + "",
            }
            this.k3Sdk.setRoleData(d);
        }
    }



}