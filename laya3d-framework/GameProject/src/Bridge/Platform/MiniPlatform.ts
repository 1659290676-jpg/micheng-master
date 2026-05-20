import Logger from "../../XYFrame/Logger/Logger";
import { BridgeManager } from "../BridgeManager";
import { EnumBridgeResult } from "../EnumBridgeResult";
import SDKBase from "../SDK/SDKBase";
import MiniShare from "./MiniShare";
import PlatformBase from "./PlatformBase";

/**
 * @ Author: XXL
 * @ Date: 2026-02-28 14:44
 * @ Description: 小游戏平台
*/
export default class MiniPlatform extends PlatformBase {
    protected scene: string | number;
    protected shareIns: MiniShare;
    /**保存授权状态*/
    private authSetting: Record<string, boolean> = {};
    /**是否已授权*/
    private _is_privacy: boolean;

    /**分享结果参数，进到前台才派发*/
    protected shareRes: { type?: number, tm?: number, img?: number };
    /**小游戏开放页面管理器 */
    protected pageManager: any;

    public constructor(sdk: SDKBase) {
        super(sdk);
        let _t = this;
        let miniApi = BridgeManager.getMini();
        _t.shareIns = new MiniShare();
        _t._is_privacy = !miniApi || !miniApi.requirePrivacyAuthorize;
        _t.init(_t);
    }

    private init(_t: this) {
        let mini = BridgeManager.getMini();
        if (!mini) return;
        //保持常亮
        if (mini.setKeepScreenOn)
            mini.setKeepScreenOn({
                keepScreenOn: true,
                success: (res) => {
                    Logger.log("setKeepScreenOn success", res);
                },
                fail: (res) => {
                    Logger.log("setKeepScreenOn fail", res);
                }
            });
        if (mini.getLaunchOptionsSync) {
            let option = mini.getLaunchOptionsSync();
            if (option && option.scene) _t.scene = option.scene;
        }
        let device = BridgeManager.ins.device;
        if (mini.getSystemInfoSync) {
            let info = mini.getSystemInfoSync();
            if (info) {
                device.brand = info.brand;
                device.model = info.model;
                device.system = info.system;
                device.platform = info.platform;
                device.language = info.language;
                device.screenWidth = info.screenWidth;
                device.screenHeight = info.screenHeight;
                device.statusBarHeight = info.statusBarHeight
                device.wifiEnabled = info.wifiEnabled;
                device.benchmarkLevel = info.benchmarkLevel;
                device.appVersion = info.version;
                device.appName = ((info.appName || info.app || "weixin") + "").toLowerCase();
                if (info.screen && info.screen.width) {
                    device.screenWidth = info.screen.width;
                    device.screenHeight = info.screen.height;

                }
                //小游戏pc端判断有问题
                let pf = info.platform;
                if (pf == "windows" || pf == "devtools") {
                    Laya.Browser.onPC = true;
                    Laya.Browser.onMobile = false;
                }
            }
        }
        if (mini.getWindowInfo) {
            let info = mini.getWindowInfo();
            if (info) {
                device.screenWidth = info.screenWidth;
                device.screenHeight = info.screenHeight;
                if (info.statusBarHeight) {
                    device.statusBarHeight = info.statusBarHeight;
                }
            }
        }
        if (mini.getSystemSetting) {
            let info = mini.getSystemSetting();
            if (info) {
                device.wifiEnabled = info.wifiEnabled;
            }
        }
        if (mini.getDeviceInfo) {
            let info = mini.getDeviceInfo();
            if (info) {
                device.platform = info.platform;
                device.system = info.system;
                device.memory = info.memorySize;
                device.model = info.model;
                device.brand = info.brand;
                device.cpu = info.cpuType;
                device.benchmarkLevel = info.benchmarkLevel;
            }
        }
        if (mini.getAppBaseInfo) {
            let info = mini.getAppBaseInfo();
            if (info) {
                device.language = info.language;
                device.appVersion = info.version;
            }
        }
        if (mini.getLaunchOptionsSync) {
            let info = mini.getLaunchOptionsSync();
            if (info) {
                // GameData.scene = info.scene;
                // GameData.fromQuery = info.query;
                _t.scene = info.scene;
            }
            Logger.warn("LaunchOptions", info);
        }
        if (mini.getMenuButtonBoundingClientRect) {
            let info = mini.getMenuButtonBoundingClientRect();
            if (info) {
                device.menuTop = info.top;
                device.menuLef = info.left;
                device.menuWidth = info.width;
                device.menuHeight = info.height;
            }
        }
        mini.onShow((res) => {
            if (res) {
                if (res.scene)
                    _t.scene = res.scene;
            }
            Laya.timer.callLater(_t, _t._delayShow);
        });
        mini.showShareMenu({ withShareTicket: true });
        mini.onAudioInterruptionEnd(() => {
            Logger.warn("audio stop", Date.now());
            Laya.stage.event("audio_pause", false);
        });
        mini.onAudioInterruptionBegin(() => {
            Logger.warn("audio begin", Date.now());
            Laya.stage.event("audio_pause", true);
        });
        if (mini.onMemoryWarning) {
            mini.onMemoryWarning((res) => {
                //内存紧张
                if (!res || !res.level || res.level > 10) {
                    Laya.stage.event("memory_warning");
                }
            })
        }
        _t.checkCodeUpdate();
    }

    /**
     * 延迟处理onShow派发事件
     */
    private _delayShow() {
        if (Laya.stage.isVisibility) {
            Laya.stage.event(Laya.Event.VISIBILITY_CHANGE);
            let _t = this;
            _t.checkCodeUpdate && _t.checkCodeUpdate();
            //处理分享
            var share = _t.shareRes;
            if (_t.shareRes) {//有分享结果
                Logger.log("share result", share);
                delete _t.shareRes;
                if (share.tm > 0) {
                    let now = Date.now();
                    share.tm = now - share.tm;
                }
                if (share.img) {
                    _t.shareIns.saveCache(share.img);
                }
                Laya.stage.event("msg_share_res", share);
            }
        }
    }

    /**检测小游戏代码版本更新*/
    private checkCodeUpdate(): void {
        let miniSdk = BridgeManager.getMini();
        if (!miniSdk) return;
        if (typeof miniSdk.getUpdateManager === 'function') {
            Logger.log("checkCodeUpdate");
            var updateManager = miniSdk.getUpdateManager();
            updateManager.onCheckForUpdate(function (res: any) {
                // 请求完新版本信息的回调
                if (res.hasUpdate) {
                    Logger.warn("New version update");
                    updateManager.onUpdateReady(function () {
                        miniSdk.showModal({
                            title: '新版本更新提示',
                            content: '新版本已经准备好，请重启应用',
                            showCancel: false,
                            success: function (res) {
                                if (res.confirm) {
                                    // 新的版本已经下载好，调用 applyUpdate 应用新版本并重启
                                    updateManager.applyUpdate();
                                }
                            }
                        });
                    });
                    updateManager.onUpdateFailed(function () {
                        // 新的版本下载失败
                        miniSdk.showModal({
                            title: '新版本更新提示',
                            content: '新版本已经上线, 请您退出微信，重新搜索打开',
                            showCancel: false,
                            success: function (res) {
                                BridgeManager.ins.exit();
                            }
                        });
                    });
                } else {
                    Logger.log("onCheckForUpdate It is already the latest version");
                }
            })
        }
    }

    // /**
    //  * 设置分享数据
    //  * @param data 
    //  */
    // public setShareData(data: { titles: Record<string, string>, imgs: number[][], title2?: Record<string, string> }) {
    //     this.shareIns.setData(data);
    // }

    /**
     * 初始化授权
     */
    public initAuth() {
        let miniSdk = BridgeManager.getMini();
        if (miniSdk) {
            let _t = this;
            //获取授权状态
            miniSdk.getSetting({
                success: (res: any) => {
                    Logger.warn("getSetting success", res);
                    if (res && res.authSetting) {
                        _t.authSetting = res.authSetting;
                        if (_t.authSetting["scope.userInfo"]) {
                            _t.getUserInfo(null, () => {
                                Laya.stage.event("init_auth", 1);
                            });
                            return;
                        }
                    }
                    Laya.stage.event("init_auth", 0);
                },
                fail: (res) => {
                    Laya.stage.event("init_auth", 0);
                }
            })
        } else {
            Laya.stage.event("init_auth", 0);
        }
    }

    // public initSrvEnd() {
    //     let info = GameData.userInfo;
    //     if (info && (info.gm || info.whitelist)) {//白名单或开gm
    //         MiniPlatform.miniSdk.onError(this.onError)
    //     }
    // }

    // private onError(res: { message: string, stack: string }) {
    //     if (res) {
    //         MiniPlatform.miniSdk.showModal({
    //             title: GameData.langMap[1302]/*"错误提示"*/,
    //             content: GameData.langMap[1301]/*"出错啦，请把此信息复制给研发商*/ + "\n" + res.message,
    //             showCancel: false,
    //             confirmText: GameData.langMap[1303]/*"复制"*/,
    //             success: () => {
    //                 BridgeManager.ins.copyText(res.message + "\n" + res.stack);
    //             }
    //         })
    //     }
    // }

    public reload() {
        let sdk = BridgeManager.getMini();
        if (!sdk) return;
        if (sdk.restartMiniProgram) {
            sdk.restartMiniProgram({
                fail: function () {
                    //刷新失败，直接退出小程序
                    sdk.exitMiniProgram();
                }
            });
        } else {
            sdk.exitMiniProgram()
        }
    }

    public exit() {
        let miniSdk = BridgeManager.getMini();
        if (!miniSdk) return;
        miniSdk.exitMiniProgram();
    }

    // public checkCache(version, call: () => any) {
    //     let obj = Laya.LocalStorage.getJSON("gameResVer");
    //     let map = GameData.gameInfo;
    //     if (!obj || obj.cdn != map.cdn) {
    //         Logger.log("cnd不一致，清理缓存");
    //         if (this.adpter)
    //             this.adpter.removeAll();
    //         !obj && (obj = {});
    //         obj.cdn = map.cdn;
    //         Laya.LocalStorage.setJSON("gameResVer", obj)
    //     } else {
    //         Logger.log("版本一致");
    //     }
    //     if (call) call();
    // }

    // /**
    //  * 清理缓存
    //  * @param type 清理类型 0清理文件和数据缓存 1只清理文件缓存 2只清理数据缓存 默认0
    //  */
    // public cleanCache(type?: number) {
    //     if ((!type || type == 1) && this.adpter) {
    //         window.miniSdk.showLoading(<any>{ title: GameData.langMap[1323]/*"缓存空间清理中"*/ });
    //         this.adpter.removeAll();
    //         window.miniSdk.hideLoading();
    //     }
    //     if (!type || type == 2)
    //         Laya.LocalStorage.setJSON("gameResVer", {});
    // }

    // public showClean(type?: number, content?: string, title?: string) {
    //     if (fgui.UIPackage.getByName(EnumUI.PKG)) {
    //         UIMgr.open(EnumUI.CLEAR_CACHE);
    //     } else {
    //         let _t = this;
    //         if (MiniPlatform.miniSdk) {
    //             MiniPlatform.miniSdk.showModal({
    //                 title: title || GameData.langMap[1324]/*'修复提示'*/,
    //                 content: content || (type == 1 ? GameData.langMap[1325]/*'缓存错误，请清理缓存重新登'*/ : GameData.langMap[1326]/*'是否清理缓存重新登录'*/),
    //                 showCancel: type != 1,
    //                 success: function (res) {
    //                     if (res.confirm) {
    //                         _t.cleanCache();
    //                         _t.reload();
    //                     }
    //                 }
    //             })
    //         } else {
    //             _t.reload();
    //         }
    //     }
    // }

    public onCopyText(data: { txt: string; msg?: string; }): void {
        let miniSdk = BridgeManager.getMini();
        if (miniSdk) {
            let _t = this;
            if (_t._is_privacy) {
                _t.copyCall(data.txt, data.msg);
            } else {
                _t.openPrivacyAuth(() => {
                    if (_t._is_privacy) {
                        _t.copyCall(data.txt, data.msg);
                    }
                })
            }
        }
    }

    /**
     * 调用授权
     */
    public openPrivacyAuth(data: any, call?: (code: number) => any) {
        let _t = this;
        let miniSdk = BridgeManager.getMini();
        if (!miniSdk || !miniSdk.requirePrivacyAuthorize) {
            Logger.warn("没有授权接口");
            _t._is_privacy = true;
            call && call(0);
            return;
        }
        if (_t._is_privacy) {
            call && call(0);
            return;
        }
        let sdk: any = _t._sdk;
        if (sdk && sdk["openPrivacyAuth"]) {
            sdk["openPrivacyAuth"](null, (code: number, res: any) => {
                if (code == 0) {
                    _t._is_privacy = true;
                }
                if (call) {
                    call(code);
                }
            });
        }
    }

    private copyCall(str: string, msg?: string) {
        Logger.warn("复制setClipboardData", str);
        let miniSdk = BridgeManager.getMini();
        miniSdk.setClipboardData({
            data: str,
            success: function (res: any) {
                Logger.warn("复制成功", res);
                miniSdk.showToast(<any>{ title: msg || "复制成功", icon: "none" });
            },
            fail: function (res) {
                Logger.warn("复制失败", res);
            }
        })
    }

    /**
     * 分享的参数是否需要编码
     * @returns 
     */
    private IsQueryEncode() {
        return Laya.Browser.onBDMiniGame;
    }

    public share(d: { type: number, data: any }): void {
        let _t = this;
        let info = _t.shareIns.getShare();
        //保存分享，返回游戏提示
        _t.shareRes = { type: d.type, tm: Date.now(), img: info.img };
        Logger.warn("share", _t.shareRes);
        let query = _t.getShareQuery(d.type, info.img, d.data, _t.IsQueryEncode());
        let imageUrl = _t.shareIns.getShareUrl(info.img);
        let sdk: any = _t._sdk;
        if (sdk && sdk.share) {
            sdk.share({
                title: info.title,
                imageUrl: imageUrl,
                query: query
            })
        } else {
            let miniSdk = BridgeManager.getMini();
            if (miniSdk) {
                let Browser = Laya.Browser;
                if (Browser.onWXMiniGame || Browser.onQQMiniGame || Browser.onBLMiniGame) {
                    //微信
                    if (miniSdk.shareAppMessage) {
                        miniSdk.shareAppMessage({
                            title: info.title,
                            imageUrl: imageUrl,
                            query: query,
                            success: function (res) {
                                Logger.warn("分享成功", res);
                            },
                            fail: function (res) {
                                Logger.warn("分享失败", res);
                            }
                        })
                    }
                } else if (Browser.onTTMiniGame) {
                    //头条
                    if (miniSdk.shareAppMessage) {
                        miniSdk.shareAppMessage(<any>{
                            title: info.title2,
                            desc: info.title,
                            imageUrl: imageUrl,
                            query: query,
                            success: function (res: any) {
                                Logger.warn("分享成功", res);
                            },
                            fail: function (res: any) {
                                Logger.warn("分享失败", res);
                            }
                        })
                    }
                } else if (Browser.onAlipayMiniGame) {
                    //阿里
                    if (miniSdk.onShareAppMessage && miniSdk.showSharePanel) {
                        miniSdk.onShareAppMessage = () => {
                            return {
                                title: info.title2,
                                path: query,
                                desc: info.title,
                                scImgUrl: imageUrl,
                                success: function (res: any) {
                                    Logger.warn("分享成功", res);
                                },
                                fail: function (res: any) {
                                    Logger.warn("分享失败", res);
                                }
                            }
                        }
                        miniSdk.showSharePanel({
                            success: function (res) {
                                Logger.warn("调用分享成功", res);
                            },
                            fail: function (res) {
                                Logger.warn("调用分享失败", res);
                            }
                        });
                    }
                } else if (Browser.onBDMiniGame) {
                    if (miniSdk.openShare) {
                        miniSdk.openShare({
                            title: info.title2,
                            content: info.title,
                            imageUrl: imageUrl,
                            query: query,
                            success: function (res) {
                                Logger.warn("分享成功", res);
                            },
                            fail: function (res) {
                                Logger.warn("分享失败", res);
                            }
                        })
                    }
                }
                // else if (Browser.onKSMiniGame) {
                //     if (miniSdk.shareAppMessage) {
                //         miniSdk.shareAppMessage(<any>{
                //             templateId: d.data?.templateId || "",
                //             query: query,
                //             success: function (res: any) {
                //                 Logger.warn("分享成功", res);
                //             },
                //             fail: function (res: any) {
                //                 Logger.warn("分享失败", res);
                //             }
                //         });
                //     }
                // } 
                else {
                    if (miniSdk.shareAppMessage) {
                        miniSdk.shareAppMessage(<any>{
                            title: info.title,
                            imageUrl: imageUrl,
                            query: query,
                            success: function (res: any) {
                                Logger.warn("分享成功", res);
                            },
                            fail: function (res: any) {
                                Logger.warn("分享失败", res);
                            }
                        })
                    }
                }
            }
        }
        //阿里小游戏分享没有返回后台
        if (Laya.Browser.onAlipayMiniGame) {
            Laya.timer.callLater(_t, _t._delayShow);
        }
    }

    /**获取分享参数，分享query字段*/
    private getShareQuery(type: number, img?: number, data?: any, isEncode?: boolean) {
        if (!data) {
            data = {};
        }
        data.share_type = type || 0;
        data.share = 1;
        if (img) {
            data.share_img = img;
        }
        let info = BridgeManager.ins.userInfo;
        if (info && info.user_id) {
            data.share_id = info.user_id + "_" + Date.now();//分享id
            data.share_uid = info.user_id;//角色账号
            // if (info.hid) {
            //     data.share_hid = info.hid;//角色id
            // }
        }
        let str = "";
        for (let k in data) {
            if (str) {
                str += "&";
            }
            str += k + "=" + (isEncode ? encodeURIComponent(data[k]) : data[k]);
        }
        return str;
    }

    // /**右上角转发参数*/
    // private onShareByRight() {
    //     let _t = <MiniPlatform>BridgerManager.ins.platform;
    //     let info = _t.shareIns.getShare();
    //     _t.shareIns.saveCache(info.img);
    //     let query = _t.getShareQuery(0);
    //     return { title: info.title || "", imageUrl: _t.shareIns.getShareUrl(info.img) || "", imageUrlId: "", query: query };
    // }

    public onCustomer() {
        let mini = BridgeManager.getMini();
        if (mini.openCustomerServiceConversation)
            mini.openCustomerServiceConversation({});
    }


    /**
     * 获取设备剩余电量
     * @param call 回调 code=0成功 level:电量值1-100。isCharging:是否正在充电中
     * @returns 
     */
    public getBattery(data: any, call: (data: { code: number, msg?: string, data: { level: number, isCharging?: boolean } }) => any) {
        let miniSdk = BridgeManager.getMini();
        if (miniSdk && miniSdk.getBatteryInfo) {
            miniSdk.getBatteryInfo(<any>{
                success: function (res: any) {
                    Logger.warn("获取电量", res);
                    // call(thisObj, res.level, res.isCharging);
                    // call(0, {})
                    let lev = res.level;
                    let isCharging = res.isCharging;
                    if (isCharging == null) {
                        isCharging = res.charging;
                    }
                    if (lev < 1) {
                        lev *= 100;
                    }
                    call && call({ code: 0, data: { level: lev, isCharging: isCharging } });
                },
                fail: function (r: any) {
                    Logger.error("获取电量失败", r);
                }
            })
        }
    }

    private _startRecordCall?: (res: any) => any;
    private _stopRecordCall?: (res: { videoPath: string }) => any;

    /**
     * 开始录屏
     * @param data start: 开始录屏的回调, stop: 停止录屏的回调, duration: 录屏的时长，单位 s，必须大于 3s，最大值 300s（5 分钟），默认30s。
     */
    public startRecord(data: { start?: (res: any) => any, stop?: (res: { videoPath: string }) => any, duration?: number }) {
        let _t = this;
        let sdk: any = _t._sdk;
        if (sdk && sdk.startRecord) {
            sdk.startRecord(data);
        } else {
            let miniSdk: any = BridgeManager.getMini();
            if (miniSdk && miniSdk.getGameRecorderManager) {
                let mgr = miniSdk.getGameRecorderManager();
                if (mgr) {
                    if (_t._startRecordCall) {
                        mgr.offStart(_t._startRecordCall);
                        _t._startRecordCall = null;
                    }
                    if (_t._stopRecordCall) {
                        mgr.offStop(_t._stopRecordCall);
                        _t._stopRecordCall = null;
                    }
                    mgr.onStart(_t._startRecordCall = data.start);
                    mgr.onStop(_t._stopRecordCall = data.stop);
                    mgr.start({ duration: data.duration || 30 });
                }
            }
        }
        // if (this.sdk && this.sdk.getGameRecorderManager) {
        //     this.sdk.getGameRecorderManager((mgr) => {
        //         if (mgr) {
        //             mgr.start({ duration: duration || 30 });
        //         }
        //     })
        // }
    }
    /**
     * 结束录屏
     */
    public stopRecord() {
        let _t = this;
        let sdk: any = _t._sdk;
        if (sdk && sdk["stopRecord"]) {
            sdk["stopRecord"]();
        } else {
            let miniSdk: any = BridgeManager.getMini();
            if (miniSdk && miniSdk.getGameRecorderManager) {
                let mgr = miniSdk.getGameRecorderManager();
                if (mgr) {
                    mgr.stop();
                }
            }
        }
    };

    /**
     * 分享录制的视频
     * @param videoPath //录屏地址
     */
    public shareToArk(videoPath: string) {
        let _t = this;
        let query = _t.getShareQuery(0, 0, null, _t.IsQueryEncode());
        let sdk: any = _t._sdk;
        if (sdk && sdk["shareToArk"]) {
            sdk["shareToArk"]({ videoPath: videoPath, query: query });
        } else {
            if (Laya.Browser.onTTMiniGame) {
                let miniSdk: any = BridgeManager.getMini();
                if (miniSdk && miniSdk.shareAppMessage) {
                    miniSdk.shareAppMessage(
                        <any>{
                            channel: "video",
                            extra: { videoPath: videoPath },
                            query: query,
                            success: (res: any) => {
                                Logger.warn("share video success ", res);
                            },
                            fail: (res: any) => {
                                Logger.warn("share video faile", res);
                            }
                        }
                    );
                }
            }

        }
    };

    /**客服图标*/
    private contactBtn: {
        destroy(): void;
        show(): void;
        hide(): void;
        onError(callback: Function): void;
    }
    /**
     * 创角客服图标
     * @param x 
     * @param y 
     * @param image
     */
    public creareContactBtn(data: { x: number, y: number, image: string }) {
        if (!Laya.Browser.onTTMiniGame) return;
        let _t = this;
        if (_t.contactBtn) {
            _t.contactBtn.hide();
            _t.contactBtn.destroy();
            _t.contactBtn = null;
        }
        let x = data.x;
        let y = data.y;
        let miniSdk: any = BridgeManager.getMini();
        var sysInfo = miniSdk.getSystemInfoSync();
        x = x / Laya.stage.width * sysInfo.windowWidth;
        let w = 64 / Laya.stage.designHeight * sysInfo.windowWidth;
        y = y / Laya.stage.height * sysInfo.windowHeight;
        let sdk: any = _t._sdk;
        let info = <any>{
            type: "image",
            image: data.image,
            style: {
                left: x,
                top: y,
                width: w,
                height: w,
                borderWidth: 0,
            }
        };

        if (sdk && sdk.createContactButton) {
            sdk.createContactButton(info, (code: number, btn: any) => {
                _t.contactBtn = btn;
                if (btn) {
                    btn.onError(_t.onTapContactErr); // 监听错误
                }
            })
        } else if (miniSdk.createContactButton) {
            _t.contactBtn = miniSdk.createContactButton(info);
            if (_t.contactBtn) {
                _t.contactBtn.show();
                _t.contactBtn.onError(_t.onTapContactErr);
            }
        }
    }

    private onTapContactErr(res: any) {
        Logger.warn(res.errMsg);
        let miniSdk: any = BridgeManager.getMini();
        miniSdk.showModal({
            title: "提示",
            content: "打开客服失败",
            showCancel: true,
        });
    }

    /**
     * 判断是否可以创角桌面图标
     * @returns 
     */
    public isAddShortcut(): boolean {
        let miniSdk: any = BridgeManager.getMini();
        if (miniSdk && miniSdk.addShortcut) {
            let device = BridgeManager.ins.device;
            if (device.appName == "douyin" || device.appName == "douyin_lite") {
                return true;
            }
        }
        return false;
    }

    /**
     * 添加桌面
     * @param data 
     * @param call 
     */
    public addShortcut(data: any, call: (code: number, msg?: string) => any): void {
        let sdk: any = this._sdk;
        if (sdk && sdk.createShortCutButton) {
            sdk.createShortCutButton({}, (res: any) => {
                Logger.warn("addShortcut result", res);
                if (res && res.code == 0) {
                    call && call(EnumBridgeResult.SUCCESS);
                } else {
                    call && call(res.code, res.msg || "未知错误");
                }
            })
        } else {
            call && call(EnumBridgeResult.FAIL, "该小游戏无法添加快捷方式");
        }
    }

    public getShortcutReward(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        if (this._sdk && this._sdk.isMethod("getShortcutReward")) {
            this._sdk.invokeMethod({ method: "getShortcutReward", data: data, call: call });
        } else {
            let bo = false;
            let scene = this.scene + "";
            if (Laya.Browser.onMiniGame) {
                bo = scene == "1023" || scene == "1223";
            } else if (Laya.Browser.onTTMiniGame) {
                bo = scene.indexOf("1020") >= 0;
            }
            call && call({ code: bo ? EnumBridgeResult.SUCCESS : EnumBridgeResult.FAIL });
        }
    }

    public getSiderReward(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        if (this._sdk && this._sdk.isMethod("getSiderReward")) {
            this._sdk.invokeMethod({ method: "getSiderReward", data: data, call: call });
        } else {
            let miniSdk: any = BridgeManager.getMini();
            if (Laya.Browser.onTTMiniGame) {
                miniSdk.checkScene({
                    scene: "sidebar",
                    success: (res: any) => {
                        console.log("check scene success: ", res.isExist);
                        call && call({ code: res && res.isExist ? EnumBridgeResult.SUCCESS : EnumBridgeResult.FAIL });
                    },
                    fail: (res: any) => {
                        console.log("check scene fail: ", res);
                        call && call({ code: EnumBridgeResult.FAIL });
                    }
                });
            }
        }
    }

    public openSider(data: any, call: (data: { code: number; msg?: string; data?: any; }) => any): void {
        if (this._sdk && this._sdk.isMethod("openSider")) {
            this._sdk.invokeMethod({ method: "openSider", data: data, call: call });
        } else {
            let miniSdk: any = BridgeManager.getMini();
            if (Laya.Browser.onTTMiniGame) {
                miniSdk.navigateToScene({
                    scene: "sidebar",
                    success: (res: any) => {
                        console.log("navigate to scene success");
                        // 跳转成功回调逻辑
                        call && call({ code: EnumBridgeResult.SUCCESS });
                    },
                    fail: (res: any) => {
                        console.log("navigate to scene fail: ", res);
                        // 跳转失败回调逻辑
                        call && call({ code: EnumBridgeResult.FAIL });
                    },
                });
                return;
            }
        }
    }

    /**
     * 是否可订阅
     */
    public isSubscribeMsg(): boolean {
        let miniSdk: any = BridgeManager.getMini();
        if (miniSdk && miniSdk.requestSubscribeMessage) {
            return true;
        }
        return false;
    }

    /**
     * 订阅消息
     * @param ids 消息模版id队列
     * @param call 订阅回调 code=0成功 token:空为失败 ids:成功订阅的id
     * 
     */
    public onSubscribeMsg(ids: string[], call: (data: { code: number, msg?: string, data: { token: string, ids?: string[] } }) => any) {
        let sdk: any = this._sdk;
        if (sdk && sdk.onSubscribeMsg) {
            sdk.onSubscribeMsg(ids, call);
        }
    }

    private _ad_tm: number;
    private _is_ad_show: number;
    private _ad_loaded: any;
    private _ad_fail: any;
    private _ad_close: any;
    private _ad_video: RewardedVideoAd;
    /**
     * 激励视频⼴告
     * @param data adUnitId ⼴告单元 id（运营提供）
     * @param call 播放回调 code：0播放结束，1001中途退出，1002播放错误，-1确实必传参数
     * @param startCall 播放开始回调
     */
    public rewardedVideoAd(data: { adUnitId: string, multiton?: boolean }, call: (data: { code: number, msg?: string, data?: any }) => any, startCall?: () => any) {
        if (!data || !data.adUnitId) {
            return;
        }
        let _t = this;
        let now = Date.now();
        if (_t._ad_tm && now - _t._ad_tm < 1000) {
            Logger.warn("查看广告cd中");
            return;
        }
        _t._ad_tm = Date.now();
        let sdk: any = _t._sdk;
        if (sdk && sdk.rewardedVideoAd) {
            sdk.rewardedVideoAd(data, call, startCall);
        } else {
            let miniSdk = BridgeManager.getMini();
            if (_t._is_ad_show && _t._ad_tm - _t._is_ad_show < 10000) {
                let obj = <any>{};
                obj.title = obj.content = "广告正在加载中，请稍后再试";
                miniSdk.showToast && miniSdk.showToast(obj);
                return;
            }
            if (_t._ad_video) {
                _t._ad_video.destroy();
                _t._ad_video = null;
            }
            let Browser = Laya.Browser;
            if (Browser.onWXMiniGame || Browser.onTTMiniGame) {
                //微信小游戏
                if (miniSdk && miniSdk.createRewardedVideoAd) {
                    _t._is_ad_show = _t._ad_tm;
                    let videoAd = _t._ad_video = miniSdk.createRewardedVideoAd({ adUnitId: data.adUnitId, multiton: data.multiton || false });
                    if (_t._ad_close) {
                        videoAd.offClose(_t._ad_close);
                        _t._ad_close = null;
                    }
                    if (_t._ad_fail) {
                        videoAd.offError(_t._ad_fail);
                        _t._ad_fail = null;
                    }
                    if (_t._ad_loaded) {
                        videoAd.offLoad(_t._ad_loaded);
                        _t._ad_loaded = null;
                    }
                    _t._ad_loaded = () => {
                        Logger.warn("广告加载完成");
                    };
                    _t._ad_fail = (res: any) => {
                        _t._is_ad_show = _t._ad_video = null;
                        Logger.warn("广告加载失败", res);
                        call && call({ code: res.errCode || EnumBridgeResult.FAIL, msg: res.errMsg || "广告加载错误" });
                        call = null;
                    };
                    _t._ad_close = (res: { isEnded: boolean }) => {
                        _t._is_ad_show = _t._ad_video = null;
                        Logger.warn("广告关闭", res);
                        if (res && res.isEnded) {
                            call && call({ code: EnumBridgeResult.SUCCESS });
                        } else {
                            call && call({ code: EnumBridgeResult.FAIL, msg: "播放中途退出" });
                        }
                        call = null;
                    };
                    videoAd.onLoad(_t._ad_loaded);
                    videoAd.onError(_t._ad_fail);
                    videoAd.onClose(_t._ad_close);
                    videoAd.load().then(() => {
                        startCall && (startCall(), startCall = null);
                        videoAd.show().catch((err) => {
                            Logger.warn("激励广告显示出错,重新拉起", err);
                            videoAd.load()
                                .then(() => {
                                    videoAd.show().catch((error) => {
                                        Logger.warn("激励广告展示失败", error);
                                        call && call({ code: EnumBridgeResult.FAIL, msg: "激励广告展示失败" });
                                        call = null;
                                    });
                                })
                        })
                    })
                } else {
                    call && call({ code: EnumBridgeResult.FAIL, msg: "激励广告暂不支持" });
                }
            } else {
                call && call({ code: EnumBridgeResult.FAIL, msg: "激励广告暂不支持" });
            }
        }
    }

    private _intersititial_tm: number;
    private _is_intersititial_show: number;
    private _intersititial_ad: InterstitialAd;
    private _intersititial_close: any;
    private _intersititial_fail: any;
    private _intersititial_loaded: any;

    public intersititialAd(data: { adUnitId: string }, call: (data: { code: number, msg?: string, data?: any }) => any, startCall?: () => any) {
        if (!data || !data.adUnitId) {
            return;
        }
        let _t = this;
        let now = Date.now();
        if (_t._intersititial_tm && now - _t._intersititial_tm < 1000) {
            Logger.warn("查看广告cd中");
            return;
        }
        _t._intersititial_tm = Date.now();
        let sdk: any = _t._sdk;
        if (sdk && sdk.intersititialAd) {
            sdk.intersititialAd(data, call, startCall);
        } else {
            let miniSdk = BridgeManager.getMini();
            if (_t._is_intersititial_show && _t._intersititial_tm - _t._is_intersititial_show < 10000) {
                let obj = <any>{};
                obj.title = obj.content = "广告正在加载中，请稍后再试";
                miniSdk.showToast && miniSdk.showToast(obj);
                return;
            }
            if (_t._intersititial_ad) {
                _t._intersititial_ad.destroy();
                _t._intersititial_ad = null;
            }
            let Browser = Laya.Browser;
            if (Browser.onWXMiniGame || Browser.onTTMiniGame) {
                //微信小游戏
                if (miniSdk && miniSdk.createInterstitialAd) {
                    _t._is_intersititial_show = _t._intersititial_tm;
                    let ad = _t._intersititial_ad = miniSdk.createInterstitialAd({ adUnitId: data.adUnitId });
                    if (_t._intersititial_close) {
                        ad.offClose(_t._intersititial_close);
                        _t._intersititial_close = null;
                    }
                    if (_t._intersititial_fail) {
                        ad.offError(_t._intersititial_fail);
                        _t._intersititial_fail = null;
                    }
                    if (_t._intersititial_loaded) {
                        ad.offLoad(_t._intersititial_loaded);
                        _t._intersititial_loaded = null;
                    }
                    _t._intersititial_loaded = () => {
                        Logger.warn("插屏广告加载完成");
                    };
                    _t._intersititial_fail = (res: any) => {
                        _t._is_intersititial_show = _t._intersititial_ad = null;
                        Logger.warn("插屏广告加载失败", res);
                        call && call({ code: res.errCode || EnumBridgeResult.FAIL, msg: res.errMsg || "插屏广告加载错误" });
                        call = null;
                    };
                    _t._intersititial_close = (res: { isEnded: boolean }) => {
                        _t._is_intersititial_show = _t._intersititial_ad = null;
                        Logger.warn("插屏广告关闭", res);
                        call && call({ code: EnumBridgeResult.SUCCESS });
                        call = null;
                    };
                    ad.onLoad(_t._intersititial_loaded);
                    ad.onError(_t._intersititial_fail);
                    ad.onClose(_t._intersititial_close);
                    ad.load().then(() => {
                        startCall && (startCall(), startCall = null);
                        ad.show().catch((err) => {
                            Logger.warn("插屏广告显示出错,重新拉起", err);
                            ad.load()
                                .then(() => {
                                    ad.show().catch((error) => {
                                        Logger.warn("插屏广告展示失败", error);
                                        call && call({ code: EnumBridgeResult.FAIL, msg: "插屏广告展示失败" });
                                        call = null;
                                    });
                                })
                        })
                    })
                } else {
                    call && call({ code: EnumBridgeResult.FAIL, msg: "插屏广告暂不支持" });
                }
            } else {
                call && call({ code: EnumBridgeResult.FAIL, msg: "插屏广告暂不支持" });
            }
        }
    }

    /**
     * 跳转其他小程序
     * @param data appid 小程序appid path 打开的页面路径，可不填
     * @param call 回调 0成功 
     */
    public navigateToMini(data: { appid: string, path?: string }, call?: (data: { code: number, msg?: string, data?: any }) => any) {
        let sdk = BridgeManager.getMini();
        if (sdk) {
            if (sdk.navigateToMiniProgram) {
                sdk.navigateToMiniProgram({
                    appId: data.appid,
                    path: data.path || "",
                    success: function (res) {
                        Logger.warn("跳转其他小程序成功", res);
                        call && call({ code: EnumBridgeResult.SUCCESS });
                    },
                    fail: function (res) {
                        Logger.warn("跳转其他小程序失败", res);
                        call && call({ code: EnumBridgeResult.FAIL });
                    }
                })
                return;
            }
        }
        call && call({ code: EnumBridgeResult.SUCCESS });
    }

    /**
     * 是否可显示游戏圈按钮
     */
    public isClubBtn(): boolean {
        let miniSdk = BridgeManager.getMini();
        if (miniSdk && miniSdk.createGameClubButton) return true;
        return false;
    }
    /**
     * 获取游戏圈数据。
     * @param dataTypeList 需要获取的数据指标的对象数组 type=1:加入该游戏圈时间,3:用户禁言状态,4:当天(自然日)点赞贴子数	,5:当天(自然日)评论贴子数,6:当天(自然日)发表贴子数,7:当天(自然日)发表视频贴子数,8:当天(自然日)赞官方贴子数,9:当天(自然日)评论官方贴子数,10:当天(自然日)发表到本圈子话题的贴子数
     * @param call 
     */
    public getClubData(dataTypeList: [{ type: number, subKey?: string }], call: (data: { code: number, msg?: string, data?: any }) => any) {
        let miniSdk = BridgeManager.getMini();
        if (miniSdk && miniSdk.getGameClubData) {
            miniSdk.getGameClubData({
                dataTypeList: dataTypeList,
                success: (res) => {
                    Logger.warn("获取游戏圈数据", res);
                    call && call({ code: EnumBridgeResult.SUCCESS, data: res });
                },
                fail: (res) => {
                    Logger.warn("获取游戏圈数据失败", res);
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            })
        } else {
            Logger.warn("没有getGameClubData接口");
            call && call({ code: EnumBridgeResult.FAIL });
        }
    }

    /**
     * 创建游戏圈按钮
     * @param data
     * @returns 
     */
    public createClubBtn(data: { x: number, y: number, width: number, height: number, openlink?: string, onTap?: Function }, call: (data: { code: number, msg?: string, data?: any }) => any) {
        if (!data) return;
        let sdk = BridgeManager.getMini();
        let btn: GameClubButton;
        if (sdk && sdk.createGameClubButton) {
            var a = wx.getSystemInfoSync().screenWidth / Laya.stage.width,
                r = data.x * a,
                c = data.y * a,
                l = data.width * a,
                u = data.height * a;
            let style: any = {
                left: r,
                top: c,
                width: l,
                height: u,
                lineHeight: 40,
                backgroundColor: "#00000000",
                color: "#00000000",
                textAlign: "center",
                fontSize: 16,
                borderRadius: 4
            }
            if (data.openlink) {
                btn = sdk.createGameClubButton({
                    type: "text",
                    text: "",
                    style: style,
                    openlink: data.openlink,
                    hasRedDot: false
                })
            } else {
                btn = sdk.createGameClubButton({
                    type: "text",
                    text: "",
                    style: style
                })
            }
            if (btn && data.onTap) {
                btn.onTap(() => {
                    data.onTap();
                })
            }
            call && call({ code: EnumBridgeResult.SUCCESS, data: btn });
        } else {
            call && call({ code: EnumBridgeResult.FAIL });
        }
        console.log("createClubBtn", btn);
        return btn;
    }

    /**
     * 打开设置界面
     * @param withSubscriptions 是否同时获取用户订阅消息的订阅状态，默认不获取。注意：withSubscriptions 只返回用户勾选过订阅面板中的“总是保持以上选择，不再询问”的订阅消息。
     * @param call 回调 0成功
    */
    public openSetting(withSubscriptions?: boolean, call?: (data: { code: number, msg?: string, data?: any }) => any) {
        let miniSdk = BridgeManager.getMini();
        if (miniSdk && miniSdk.openSetting) {
            miniSdk.openSetting({
                withSubscriptions: withSubscriptions || false,
                success: (res) => {
                    Logger.warn("打开设置界面成功", res);
                    call && call({ code: EnumBridgeResult.SUCCESS, data: res });
                },
                fail: (res) => {
                    Logger.warn("打开设置界面失败", res);
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            })
        } else {
            call && call({ code: EnumBridgeResult.FAIL });
        }
    }

    /**
     * 获取平台的用户信息
     * @param data
     * @param call 
     */
    public getUserInfo(data: any, call?: (data: { code: number, msg?: string, data?: UserInfoData }) => any) {
        let _t = this;
        if (_t.authSetting["scope.userInfo"] != null) {
            let miniSdk = BridgeManager.getMini();
            miniSdk.getUserInfo({
                success: (res) => {
                    Logger.warn("getUserInfo", res);
                    if (res) {
                        let userInfo = BridgeManager.ins.userInfo;
                        if (userInfo && res.userInfo) {
                            userInfo.avatarUrl = res.userInfo.avatarUrl;
                            userInfo.nickName = res.userInfo.nickName;
                        }
                        call && call({ code: EnumBridgeResult.SUCCESS, data: res.userInfo });
                    }
                    else
                        call && call({ code: EnumBridgeResult.FAIL });
                },
                fail: (res) => {
                    Logger.warn("获取用户信息失败", res);
                    call && call({ code: EnumBridgeResult.FAIL });
                }
            })
        } else {
            call && call({ code: EnumBridgeResult.FAIL });
        }
    }

    /**
     * 创建用户信息按钮
     * @param x 
     * @param y 
     * @param width 
     * @param height 
     * @returns 
     */
    public createUserInfoButton(data: { x: number, y: number, width: number, height: number }, call?: (data: { code: number, msg?: string, data?: any }) => any) {
        let miniSdk = BridgeManager.getMini();
        var i = miniSdk.getSystemInfoSync().screenWidth / Laya.stage.width,
            a = data.x * i,
            r = data.y * i,
            c = data.width * i,
            l = data.height * i;
        let btn = miniSdk.createUserInfoButton({
            type: "text",
            text: "",
            style: {
                left: a,
                top: r,
                width: c,
                height: l,
                lineHeight: 40,
                backgroundColor: "#00000000",
                color: "#00000000",
                textAlign: "center",
                fontSize: 16,
                borderRadius: 4,
                borderColor: "#00000000",
                borderWidth: 0
            }
        })
        btn.onTap((res) => {
            Logger.warn("createUserInfoButton", res);
            let userInfo = BridgeManager.ins.userInfo;
            if (userInfo && res && res.userInfo) {
                userInfo.avatarUrl = res.userInfo.avatarUrl;
                userInfo.nickName = res.userInfo.nickName;
            }
            call && call({ code: EnumBridgeResult.SUCCESS, data: res });
        })
        console.log("createUserInfoBtn", btn);
        return btn;
    }

    /**
     * 设置录音回调
     */
    public setCallRecordAudio() {
        let miniSdk = BridgeManager.getMini();
        if (miniSdk) {
            let mgr = miniSdk.getRecorderManager();
            mgr.onStart(() => {
                Laya.stage.event("startRecordAudio");
            });
            mgr.onStop((res) => {
                Laya.stage.event("stopRecordAudio", res);
            });
            mgr.onFrameRecorded((res) => {
                Laya.stage.event("frameRecordAudio", res);
            })
        }
    }

    /**
     * 开始录音
     * @param data 录音参数
     * @param call 
     */
    public startRecordAudio(data: { duration?: number, format?: string }, call?: (data: { code: number, msg?: string, data?: any }) => any) {
        this.checkAuth({ scope: "scope.record", again: true }, (bo) => {
            let miniSdk = BridgeManager.getMini();
            if (bo) {
                miniSdk.getRecorderManager().start({
                    duration: data.duration || 3000,
                    format: data.format || "mp3"
                })
            } else {
                miniSdk.showModal({
                    title: "请求授权录音",
                    content: "我们需要您的授权才能进行录音，在右上角设置中可以开启权限"
                })
            }
            call && call({ code: bo ? EnumBridgeResult.SUCCESS : EnumBridgeResult.FAIL });
        });
    }

    /**
     * 停止录音
     * @param call 
     */
    public stopRecordAudio() {
        let miniSdk = BridgeManager.getMini();
        if (miniSdk)
            miniSdk.getRecorderManager().stop();
    }

    /**
     * 获取授权状态
     * @param scope 
     */
    public getAuthSetting(scope: string) {
        return this.authSetting[scope];
    }

    /**
     * 设置授权状态
     * @param obj 
     */
    public setAuthSetting(obj: { scope: string, bo: boolean }) {
        this.authSetting[obj.scope] = obj.bo;
    }

    /**
     * 检测某个权限是否授权，没授权打开授权界面
     * @param scope 
     * @param call
     * @param again 是否再次检测
     */
    public checkAuth(data: { scope: string, again?: boolean }, call: (data: { code: number, msg?: string, data?: any }) => any) {
        if (!data) return;
        if (!data.again && this.authSetting[data.scope]) {
            call && call({ code: EnumBridgeResult.SUCCESS, data: true });
            return;
        }
        let miniSdk = BridgeManager.getMini();
        if (miniSdk) {
            let _t = this;
            miniSdk.getSetting({
                success: (res) => {
                    if (res && res.authSetting && res.authSetting[data.scope]) {
                        call && call({ code: EnumBridgeResult.SUCCESS, data: true });
                    } else {
                        miniSdk.authorize({
                            scope: data.scope,
                            success: (res) => {
                                _t.authSetting[data.scope] = true;
                                Logger.warn("授权成功", res);
                                call && call({ code: EnumBridgeResult.SUCCESS, data: true });
                            },
                            fail: (res) => {
                                Logger.warn("授权失败", res);
                                call && call({ code: EnumBridgeResult.SUCCESS, data: false });
                            }
                        })
                    }
                },
                fail: (res) => {
                    Logger.warn("检测权限失败", res);
                    call && call({ code: EnumBridgeResult.FAIL, data: false });
                }
            })
        } else {
            call && call({ code: EnumBridgeResult.FAIL, data: false });
        }
    }

    /**
     * 授权弹窗
     * @param scope 权限字段 
     * @param call 授权回调 true授权成功 false没授权
     */
    public authorize(scope: string, call: (data: { code: number, msg?: string, data?: any }) => any) {
        let miniSdk = BridgeManager.getMini();
        if (miniSdk) {
            let _t = this;
            miniSdk.authorize({
                scope: scope,
                success: (res) => {
                    _t.authSetting[scope] = true;
                    Logger.warn("授权成功", res);
                    call && call({ code: EnumBridgeResult.SUCCESS, data: true });
                },
                fail: (res) => {
                    Logger.warn("授权失败", res);
                    call && call({ code: EnumBridgeResult.FAIL, data: false });
                }
            })
        } else {
            call && call({ code: EnumBridgeResult.FAIL, data: false });
        }
    }

    /**
     * 向开放数据域发送消息
     * @param msg 
     */
    public postOpenData(msg: {}) {
        let miniSdk = BridgeManager.getMini();
        if (miniSdk && miniSdk.getOpenDataContext) {
            miniSdk.getOpenDataContext().postMessage(msg);
        }
    }

    /**
     * 打开一个网页
     * @param url 
     */
    public openWebView(url: string) {
    }

    /**
     * 打开调试信息
     */
    public openLog(data: any, call?: (data: { code: number, msg?: string, data?: any }) => any) {
        let miniSdk = BridgeManager.getMini();
        if (miniSdk) {
            miniSdk.setEnableDebug({
                enableDebug: true,
                success: (res) => {
                    call && call({ code: EnumBridgeResult.SUCCESS, data: true });
                },
                fail: (res) => {
                    call && call({ code: EnumBridgeResult.FAIL, data: false });
                }
            })
        } else {
            call && call({ code: EnumBridgeResult.FAIL, data: false });
        }
    }

    /**
     * 检测是否从桌面启动
     * @param data 
     * @param call 
     */
    public checkIsInDesktop(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        let scene = this.scene;
        let code = EnumBridgeResult.FAIL;
        if (scene == 1023 || scene == 1223) {
            //微信小游戏
            code = EnumBridgeResult.SUCCESS;
        } else if (scene == 1023) {
            // 支付宝
            code = EnumBridgeResult.SUCCESS;
        } else {
            let sceneStr = scene + "";
            if (sceneStr.endsWith("1020")) {
                //抖音小游戏
                code = EnumBridgeResult.SUCCESS;
            } else if (sceneStr == "retention_apk" || sceneStr == "retention_desk_ios") {
                //快手
                code = EnumBridgeResult.SUCCESS;
            }
        }
        call && call({ code: code });
    }

    /**
     * 检测是否在我的小程序
     * @param data 
     * @param call 
     */
    public checkIsInMyMini(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        let scene = this.scene;
        let code = EnumBridgeResult.FAIL;
        if (scene == 1103 || scene == 1104 || scene == 1257) {
            //微信小游戏
            code = EnumBridgeResult.SUCCESS;
        } else if (scene == 1002) {
            // 支付宝
            code = EnumBridgeResult.SUCCESS;
        } else {
            let sceneStr = scene + "";
            if (sceneStr.endsWith("1036") || sceneStr.endsWith("1012")) {
                //抖音小游戏
                code = EnumBridgeResult.SUCCESS;
            } else if (sceneStr == "sidebar_new" || sceneStr == "sidebar_miniprogram") {
                //快手
                code = EnumBridgeResult.SUCCESS;
            }
        }
        call && call({ code: code });
    }

    /**震动 */
    public vibrate(type: number) {
        let miniSdk = BridgeManager.getMini();
        if (type == 1) {
            if (miniSdk.vibrateLong) {
                miniSdk.vibrateLong(<any>{});
            } else if (miniSdk.vibrateShort) {
                miniSdk.vibrateShort(<any>{
                    type: "light"
                });
            }
        } else {
            if (miniSdk.vibrateShort) {
                miniSdk.vibrateShort(<any>{
                    type: "medium"
                });
            }
        }
    }

    /**显示小游戏朋友圈 */
    public pageShow(openlink: string) {
        let t = this;
        if (t.pageManager) {
            t.pageManager.show();
        } else {
            let mini = BridgeManager.getMini();
            if (!mini) return;
            if (mini.createPageManager) {
                t.pageManager = mini.createPageManager();
                t.pageManager.load({
                    openlink: openlink,
                }).then((res: any) => {
                    // 加载成功，可以在这里处理返回数据
                    Logger.warn("pageManager success", res);
                    t.pageManager.show();
                }).catch((err: any) => {
                    // 加载失败，请查阅 err 给出的错误信息
                    Logger.warn("pageManager fail", err);
                })
            }
        }
    }
}