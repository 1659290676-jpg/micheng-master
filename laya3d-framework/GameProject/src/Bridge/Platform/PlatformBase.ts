// import Vw_Msg from "../../Game/Module/Tip/Vw_Msg";
import { EnumBridgeResult } from "../EnumBridgeResult";
import SDKBase from "../SDK/SDKBase";

/**
 * @ Author: XXL
 * @ Date: 2026-02-28 14:17
 * @ Description: 描述
*/
export default class PlatformBase {
    protected _sdk: SDKBase;

    public constructor(sdk: SDKBase) {
        this._sdk = sdk;
    }

    /**
     * 关闭登录背景
     */
    public closeLoginBg() {
        if ((<any>window).closeLoginBg)
            (<any>window).closeLoginBg();
    }

    /**
     * 显示加载动画
     * @param text 
     */
    public showLoading(text: string) {
        if ((<any>window).showLoading) {
            (<any>window).showLoading(text);
        }
    }

    /**
     * 隐藏加载动画
     */
    public hideLoading() {
        if ((<any>window).hideLoading)
            (<any>window).hideLoading();
    }

    /**
     * 初始化sdk
     */
    public initSdk(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        if (this._sdk) {
            this._sdk.init(data, call);
        }
    }
    /**
     * 平台登录
     * @returns 
    */
    public login(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        if (this._sdk) {
            this._sdk.login(data, call);
        }
    }

    public logout(call: (data: { code: number, msg?: string, data?: any }) => any) {
        if (this._sdk) {
            this._sdk.logout(call);
        }
    }

    /**初始化授权*/
    public initAuth(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        if (this._sdk) {
            this._sdk.auth(data, call);
        }
    };

    /**
     * 充值
     * @param data 充值数据
     */
    public pay(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        if (this._sdk) {
            this._sdk.pay(data, call);
        }
    }

    /**
     * 调用sdk方法
     * @param obj method:方法名 data:参数 call:回调,code=0成功,否则失败,-1接口不存在
     */
    public invokeSdkMethod(obj: {
        method: string,
        data?: any,
        call?: (data: { code: number, msg?: string, data?: any }) => any
        other?: any
    }) {
        let sdk: any = this._sdk;
        if (sdk && sdk[obj.method]) {
            return sdk[obj.method](obj.data, obj.call, obj.other);
        } else {
            console.warn("undefined SDK method: " + obj.method);
            if (DEBUG) {
                obj.call && obj.call({ code: EnumBridgeResult.SUCCESS });
            } else {
                obj.call && obj.call({ code: -1 });
            }
        }
    }

    /**
     * 复制文本到剪切板
     * @param data txt:复制文本 msg:成功提示,默认"复制成功"
     */
    public onCopyText(data: { txt: string, msg?: string }) {
        if (!data) return;
        if (window.navigator && navigator.clipboard) {
            navigator.clipboard.writeText(data.txt);
        } else {
            let ele = document.createElement("input");
            ele.setAttribute('readonly', 'readonly');
            ele.value = data.txt;
            document.body.appendChild(ele);
            ele.select();
            ele.setSelectionRange(0, ele.value.length);
            document.execCommand('Copy');
            document.body.removeChild(ele);
        }
        // window["Vw_Msg"] && Vw_Msg.setText(data.msg || GameData.langMap[1327]/*"复制成功"*/);
        // Vw_Msg.setText("复制成功");
    }

    /**
     * 检查缓存
     */
    public checkCache(version: number | string, call: () => any) {
        // let obj = Laya.LocalStorage.getJSON("gameResVer");
        // if (!obj || obj.version != version) {
        //     Logger.log("缓存版本号不一致");
        //     !obj && (obj = {});
        //     let bo = false;
        //     obj.version = version;
        //     Laya.LocalStorage.setJSON("gameResVer", obj);
        //     if (bo) {
        //         Logger.log("需清理缓存");
        //         LocalForage.clear(call);
        //     } else {
        //         call && call();
        //     }
        // } else {
        //     Logger.log("版本一致");
        //     call && call();
        // }
        call && call();
    }

    // /**
    //  * 清理缓存
    //  * @param type 清理类型 0清理文件和数据缓存 1只清理文件缓存 2只清理数据缓存 默认0
    //  */
    // public cleanCache(type?: number) {
    //     if ((!type || type == 1))
    //         LocalForage.clear();
    //     if (!type || type == 2)
    //         Laya.LocalStorage.setJSON("gameResVer", {});
    // }

    // /**
    //  * 提示清理缓存
    //  * @param type 提示类型 默认清理缓存并重登 1缓存有问题
    //  * @param content 提示内容
    //  * @param title 提示标题
    //  */
    // public showClean(type?: number, content?: string, title?: string) {
    //     let _t = this;
    //     if (fgui.UIPackage.getByName(EnumUI.PKG)) {
    //         UIMgr.open(EnumUI.CLEAR_CACHE);
    //     } else if (window["showModal"]) {
    //         window["showModal"]({
    //             title: "",
    //             content: type == 1 ? GameData.langMap[1325]/*"缓存错误，请清理缓存重新登"*/ : GameData.langMap[1326]/*"是否清理缓存重新登录"*/,
    //             showCancel: type != 1,
    //             success: function (res) {
    //                 if (res && res.confirm) {
    //                     _t.cleanCache();
    //                     _t.reload();
    //                 }
    //             }
    //         });
    //     } else {
    //         _t.cleanCache();
    //         _t.reload();
    //     }
    //     // Vw_Tips.show(content || (type == 1 ? GameData.langMap[1325]/*"缓存错误，请清理缓存重新登"*/ : GameData.langMap[1326]/*"是否清理缓存重新登录"*/), type == 1 ? Vw_Tips.TYPE_RIGHT : Vw_Tips.TYPE_ALL, this, () => {
    //     //     LocalForage.clear(function () {
    //     //         _t.reload();
    //     //     })
    //     // }, null, title || GameData.langMap[1324]/*"修复提示"*/, null, null, type != 1);
    // }

    /**
     * 退出
     */
    public exit() {
        this.reload();
    }

    /**刷新*/
    public reload() {
        window.location.reload();
    }

    /**重新登录*/
    public reLogin() {
        this.reload();
    }

    /**
     * 检测字符
     * @param str 需要检查的字符串
     * @param call code=0成功,否则失败 res错误提示,成功字符串
     */
    public checkMsg(str: string, call: (data: { code: number, msg?: string, data?: any }) => any) {
        this._sdk && this._sdk.checkMsg(str, call);
    }
    /**
     * 上报
     * @param type 0创角 1角色登录 2角色升级
     * @param data 
     */
    public report(data: { type: number, data: any }) {
        this._sdk && this._sdk.report(data);
    }

    /**
     * 分享
     * @param type 分享类型
     * @param data 分享数据
     */
    public share(data: { type: number, data?: any }) {
        if (this._sdk && this._sdk.isMethod("share")) {
            // this._sdk["share"](type, data);
            this._sdk.invokeMethod({ method: "share", data });
        } else if (DEBUG) {
            Laya.stage.event("msg_share_res", data);
        }
    };

    /**
     * 打开客服
     */
    public onCustomer() { };

    /**
     * 获取设备剩余电量
     * @param call 回调 code=0成功 level:电量值1-100。isCharging:是否正在充电中
     * @returns 
     */
    public getBattery(data: any, call: (data: { code: number, msg?: string, data?: { level: number, isCharging?: boolean } }) => any) {
        if (window.navigator && (<any>navigator).getBattery) {
            (<any>navigator).getBattery().then(function (battery: any) {
                console.warn("电量结果", battery);
                if (battery)
                    call && call({ code: EnumBridgeResult.SUCCESS, data: { level: battery.level * 100, isCharging: battery.charging } });
            })
        } else {
            call && call({ code: 0, data: { level: 100 } });
        }
    }

    /**
     * 判断是否可以创角桌面图标
     * @returns 
     */
    public isAddShortcut(): boolean {
        if (DEBUG) return true;
        return false;
    }

    /**
     * 可以将小游戏快捷方式添加到手机桌面上
     * @param success 成功回调
     * @param fail 失败回调，参数失败原因
     */
    public addShortcut(data: any, call: (code: number, msg?: string) => any) {
        if (DEBUG) {
            call && call(0);
        }
    }

    /**
     * 是否可领取添加到桌面奖励
     * @param data 
     * @param call code:0 成功，其他失败
     */
    public getShortcutReward(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        if (this._sdk && this._sdk.isMethod("getShortcutReward")) {
            this._sdk.invokeMethod({ method: "getShortcutReward", data: data, call: call });
        } else {
            if (DEBUG) {
                call && call({ code: EnumBridgeResult.SUCCESS });
            }
        }
    }

    /**
     * 是否可领取侧边栏奖励
     * @param data 
     * @param call code:0 成功，其他失败
     */
    public getSiderReward(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        if (this._sdk && this._sdk.isMethod("getSiderReward")) {
            this._sdk.invokeMethod({ method: "getSiderReward", data: data, call: call });
        } else {
            if (DEBUG) {
                call && call({ code: EnumBridgeResult.SUCCESS });
            }
        }
    }

    /**
     * 打开侧边栏
     * @param data 
     * @param call code:0 成功，其他失败
     */
    public openSider(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        if (this._sdk && this._sdk.isMethod("openSider")) {
            this._sdk.invokeMethod({ method: "openSider", data: data, call: call });
        } else {
            if (DEBUG) {
                call && call({ code: EnumBridgeResult.SUCCESS });
            }
        }
    }

    /**
     * 是否可订阅
     */
    public isSubscribeMsg(): boolean {
        if (DEBUG) return true;
        return false;
    }

    /**
     * 订阅消息
     * @param ids 消息模版id队列
     * @param call 订阅回调 code=0成功 token:空为失败 ids:成功订阅的id
     * 
     */
    public onSubscribeMsg(ids: string[], call: (data: { code: number, msg?: string, data: { token: string, ids?: string[] } }) => any) {
        if (this._sdk && this._sdk.isMethod("onSubscribeMsg")) {
            this._sdk.invokeMethod({ method: "onSubscribeMsg", data: ids, call: <any>call });
        } else if (DEBUG) {
            call && call({ code: EnumBridgeResult.SUCCESS, data: { token: "1", ids: ids } });
        }
    }

    /**
     * 激励视频⼴告
     * @param data adUnitId ⼴告单元 id（运营提供）
     * @param call 播放回调 code：0播放结束，1001中途退出，1002播放错误，-1确实必传参数
     * @param startCall 播放开始回调
     */
    public rewardedVideoAd(data: { adUnitId: string, multiton?: boolean, data?:any }, call: (data: { code: number, msg?: string, data?: any }) => any, startCall?: () => any) {
        if (this._sdk && this._sdk.isMethod("rewardedVideoAd")) {
            this._sdk.invokeMethod({ method: "rewardedVideoAd", data: data, call: call, other: startCall });
        } else {
            if (startCall) startCall();
            call && call({ code: DEBUG ? EnumBridgeResult.SUCCESS : -1 });
        }
    }

    /**
     * 插屏⼴告
     * @param data adUnitId ⼴告单元 id（运营提供）
     * @param call 播放回调 code：0播放结束，1001中途退出，1002播放错误，-1确实必传参数
     * @param startCall 播放开始回调
     */
    public intersititialAd(data: { adUnitId: string, data?:any }, call: (data: { code: number, msg?: string, data?: any }) => any, startCall?: () => any) {
        if (this._sdk && this._sdk.isMethod("intersititialAd")) {
            this._sdk.invokeMethod({ method: "intersititialAd", data: data, call: call, other: startCall });
        } else {
            if (startCall) startCall();
            call && call({ code: DEBUG ? EnumBridgeResult.SUCCESS : -1 });
        }
    }

    /**
     * 打开一个网页
     * @param url 
     */
    public openWebView(url: string) {
        window.open(url);
    }

    /**
     * 打开调试信息
     */
    public openLog(call?: (data: { code: number, msg?: string, data?: any }) => any) {
        if ((<any>window).showLogger) {
            (<any>window).showLogger((ret: any) => {
                call && call({ code: ret ? EnumBridgeResult.SUCCESS : EnumBridgeResult.FAIL });
            });
        } else {
            call && call({ code: EnumBridgeResult.FAIL });
        }
    }

    /**
     * 震动
     * @param type 震动类型 0短震动 1长震动
     */
    public vibrate(type: number) {
        if (this._sdk && this._sdk.isMethod("vibrate")) {
            this._sdk.invokeMethod({ method: "vibrate", data: type });
        }
    }

}