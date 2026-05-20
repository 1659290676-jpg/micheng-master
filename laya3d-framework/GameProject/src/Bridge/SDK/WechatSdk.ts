
import Base64Utils from "../../XYFrame/Utils/Base64Utils";
import HttpUtils from "../../XYFrame/Utils/HttpUtils";
import { Md5Utils } from "../../XYFrame/Utils/Md5Utils";
import { BridgeManager } from "../BridgeManager";
import { EnumBridgeResult } from "../EnumBridgeResult";
import SDKBase from "./SDKBase";

/**
 * @ Author: XXL
 * @ Date: 2026-01-06 17:45
 * @ Description: 微信小程序sdk
*/
export default class WechatSdk extends SDKBase {
    public constructor() {
        super();
    }
    public login(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any, time?: number): void {
        let _t = this;
        time = time || 0;
        wx.login(
            {
                success: function (res) {
                    let gameInfo = window.gameInfo;
                    const timestamp = Date.now();
                    const secretKey = gameInfo.secretKey;
                    let pf = gameInfo.platform;
                    const signStr = timestamp + '_' + pf + '_' + secretKey;
                    const sign = Md5Utils.hashStr(signStr).toUpperCase();
                    HttpUtils.sendRequest(BridgeManager.ins.serverUrl + "/api/openid", { appId: gameInfo.miniAppId, code: Base64Utils.encode(res.code), pf: gameInfo.pf, sdk: gameInfo.sdk, platform: gameInfo.platform }, (ret) => {
                        if (ret && ret.code == 200 && ret.data) {
                            let info: IUserInfo = <any>{};
                            info.user_id = ret.data.openId;
                            info.pf = gameInfo.pf;
                            call && call({ code: EnumBridgeResult.SUCCESS, data: info });
                        } else {
                            if (ret) {
                                call && call({ code: EnumBridgeResult.FAIL, msg: ret.msg || "reportServer error" });
                            } else {
                                setTimeout(() => {
                                    _t.login(data, call, time + 1);
                                }, 500);
                            }
                        }
                    }, () => {
                        call && call({ code: EnumBridgeResult.FAIL, msg: "reportServer error" });
                    }, null, "post", "json", ["pf", pf, "time", timestamp.toString(), 'sign', sign]);
                },
                fail: function (res) {
                    if (time >= 3) {
                        call && call({ code: EnumBridgeResult.FAIL, msg: res.errMsg });
                    } else {
                        setTimeout(() => {
                            _t.login(data, call, time + 1);
                        }, 500);
                    }
                }
            }
        );
    }
}