import Game from "../../Game/Game";
import Logger from "../../XYFrame/Logger/Logger";
import HttpUtils from "../../XYFrame/Utils/HttpUtils";
import { Md5Utils } from "../../XYFrame/Utils/Md5Utils";
import { BridgeManager } from "../BridgeManager";
import { EnumBridgeResult } from "../EnumBridgeResult";
import NativeSdk from "./NativeSdk";

export default class TapPlusNativeSdk extends NativeSdk {

    private _curtomerList: number[];

    public init(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        if (this.market) {
            let _t = this;
            _t.market.initSdk({}, (data: { code: number; msg?: string; data?: any; }) => {
                if (data && data.code == EnumBridgeResult.SUCCESS) {
                    if (data.data)
                        _t._curtomerList = data.data.customer;
                }
                call && call(data);
            });
        } else {
            super.init(data, call);
        }
    }

    public login(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        let _t = this;
        if (_t.market) {
            _t.market.loginSdk(data, (ret) => {
                Logger.warn("---- native login ----", JSON.stringify(ret));
                if (ret && ret.code == EnumBridgeResult.SUCCESS && ret.data) {
                    const d = ret.data;
                    const gameInfo = window.gameInfo;
                    const timestamp = Date.now() + "";
                    const secretKey = gameInfo.secretKey;
                    const signStr = timestamp + '_' + gameInfo.platform + '_' + secretKey;
                    const sign = Md5Utils.hashStr(signStr).toUpperCase();
                    HttpUtils.sendRequest(BridgeManager.ins.serverUrl + "/api/openid", { appId: gameInfo.miniAppId, code: d, cate_id: gameInfo.extData && gameInfo.extData.cate_id || 0, sdk: gameInfo.sdk, pf: gameInfo.pf, platform: gameInfo.platform }, (ret) => {
                        if (ret && ret.code == 200 && ret.data) {
                            const info: IUserInfo = <any>{};
                            let dd = ret.data;
                            if (dd.code == "1" && dd.data) {
                                dd = dd.data;
                                info.user_id = dd.open_id;
                                info.pf = gameInfo.pf;
                                if (_t.market) {
                                    _t.market.invokeMethod({ method: "checkUser", data: dd });
                                }
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
                } else {
                    call && call({ code: ret.code || EnumBridgeResult.FAIL, msg: ret && ret.msg || "login error" });
                }
            });
        }
    }

    public rewardedVideoAd(data: { adUnitId: string; multiton?: boolean; data?: any; }, call: (data: { code: number; msg?: string; data?: any; }) => any, startCall?: () => any): void {
        let role: any = {};
        let voHero = Game.Model.hero.vo;
        role.role_level = (voHero.stage_lev || 1) + "";
        role.role_id = voHero.id;
        role.role_name = voHero.name || "undefined";
        role.server_id = voHero.srvId || 1;
        role.server_name = Game.Bridge.info.servSocket.name || "undefined";
        role.ext = "";
        data.data = role;
        super.rewardedVideoAd(data, call, startCall);
    }

    public intersititialAd(data: { adUnitId: string; data?: any; }, call: (data: { code: number; msg?: string; data?: any; }) => any, startCall?: () => any): void {
        let role: any = {};
        let voHero = Game.Model.hero.vo;
        role.role_level = (voHero.stage_lev || 1) + "";
        role.role_id = voHero.id;
        role.role_name = voHero.name || "undefined";
        role.server_id = voHero.srvId || 1;
        role.server_name = Game.Bridge.info.servSocket.name || "undefined";
        role.ext = "";
        data.data = role;
        super.intersititialAd(data, call, startCall);
    }

    public isCustomer(type: number) {
        if (this._curtomerList) {
            return this._curtomerList.indexOf(type) > -1;
        }
        return false;
    }

}