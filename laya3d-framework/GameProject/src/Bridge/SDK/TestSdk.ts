import { EnumBridgeResult } from "../EnumBridgeResult";
import SDKBase from "./SDKBase";

/**
 * @ Author: XXL
 * @ Date: 2026-02-28 15:34
 * @ Description: 测试SDK
*/
export default class TestSdk extends SDKBase {
    public login(data: any, call: (data: { code: number, msg?: string, data?: any }) => any): void {
        let info: IUserInfo;
        if (window.getUserInfo) info = window.getUserInfo();
        if (!info) {
            info = { user_id: "test", pf: "test", whitelist: 1, gm: true };
        }
        let userId = Laya.LocalStorage.getItem("lastAccount");
        if (userId) info.user_id = userId;
        call && call({ code: EnumBridgeResult.SUCCESS, data: info });
    }

    /**
     * 激励视频⼴告
     * @param data adUnitId ⼴告单元 id（运营提供）
     * @param call 播放回调 code：0播放结束，1001中途退出，1002播放错误，-1确实必传参数
     */
    public rewardedVideoAd(data: { adUnitId: string, multiton?: boolean }, call: (data: { code: number, msg?: string, data?: any }) => any, startCall: (data: { code: number, msg?: string, data?: any }) => any) {
        startCall && startCall({ code: EnumBridgeResult.SUCCESS });
        call && call({ code: EnumBridgeResult.SUCCESS });
    }
}