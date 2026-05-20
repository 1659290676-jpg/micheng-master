/**
 * 取消一个先前通过调用 requestAnimationFrame 方法添加到计划中的动画帧请求
 */
declare function cancelAnimationFrame(requestID: number): void;

/**
 * 在下次进行重绘时执行。
 */
declare function requestAnimationFrame(callback: () => void): number;

/**
 * 可取消由 setTimeout() 方法设置的定时器。
 */
declare function clearTimeout(timeoutID: number): void;

/**
 * 可取消由 setInterval() 方法设置的定时器。
 */
declare function clearInterval(intervalID: number): void;

/**
 * 设定一个定时器，在定时到期以后执行注册的回调函数
 */
declare function setTimeout(callback: () => void, delay: number, rest: any): number;

/**
 * 设定一个定时器，按照指定的周期（以毫秒计）来执行注册的回调函数
 */
declare function setInterval(callback: () => void, delay: number, rest: any): number;

/**
     * banner 广告组件。banner 广告组件是一个原生组件，层级比上屏 Canvas 高，会覆盖在上屏 Canvas 上。banner 广告组件默认是隐藏的，需要调用 BannerAd.show() 将其显示。banner 广告会根据开发者设置的宽度进行等比缩放，缩放后的尺寸将通过 BannerAd.onResize() 事件中提供。
     */
interface BannerAd {
    /**
     * banner 广告组件的样式。style 上的属性的值仅为开发者设置的值，banner 广告会根据开发者设置的宽度进行等比缩放，缩放后的真实尺寸需要通过 BannerAd.onResize() 事件获得。
     */
    style: {
        /** banner 广告组件的左上角横坐标*/
        left: number,
        /** banner 广告组件的左上角纵坐标*/
        top: number,
        /** banner 广告组件的宽度。最小 300，最大至 屏幕宽度（屏幕宽度可以通过 wx.getSystemInfoSync() 获取）。*/
        width: number,
        /** banner 广告组件的高度*/
        height: number,
        /** banner 广告组件经过缩放后真实的宽度*/
        realWidth: number,
        /** banner 广告组件经过缩放后真实的高度*/
        realHeight: number
    };

    /** 显示 banner 广告。*/
    show(): Promise<any>;
    /** 隐藏 banner 广告*/
    hide(): void;
    /** 销毁 banner 广告*/
    destroy(): void;
    /** 监听 banner 广告尺寸变化事件*/
    onResize(callback: (res: { width: number, height: number }) => void): void;
    /** 取消监听 banner 广告尺寸变化事件*/
    offResize(callback: () => void): void;
    /** 监听 banner 广告加载事件*/
    onLoad(callback: () => void): void;
    /** 取消监听 banner 广告加载事件*/
    offLoad(callback: () => void): void;
    /** 监听 banner 广告错误事件*/
    onError(callback: (res: { errMsg: string, errCode: 1000 | 1001 | 1002 | 1003 | 1004 | 1005 | 1006 | 1007 | 1008 }) => void): void;
    /** 取消监听 banner 广告错误事件*/
    offError(callback: () => void): void;
}

/**
 * 激励视频广告组件。激励视频广告组件是一个原生组件，并且是一个全局单例。层级比上屏 Canvas 高，会覆盖在上屏 Canvas 上。激励视频 广告组件默认是隐藏的，需要调用 RewardedVideoAd.show() 将其显示。
 */
interface RewardedVideoAd {
    /** 隐藏激励视频广告*/
    load(): Promise<any>;
    /** 显示激励视频广告。激励视频广告将从屏幕下方推入。*/
    show(): Promise<any>;
    /** 销毁 banner 广告*/
    destroy(): void;
    /** 监听 banner 广告尺寸变化事件*/
    onResize(callback: (res: { width: number, height: number }) => void): void;
    /** 取消监听 banner 广告尺寸变化事件*/
    offResize(callback: () => void): void;
    /** 监听激励视频广告加载事件*/
    onLoad(callback: () => void): void;
    /** 取消监听激励视频广告加载事件*/
    offLoad(callback: () => void): void;
    /** 监听激励视频错误事件*/
    onError(callback: (res: { errMsg: string, errCode: 1000 | 1001 | 1002 | 1003 | 1004 | 1005 | 1006 | 1007 | 1008 }) => void): void;
    /** 取消监听激励视频错误事件*/
    offError(callback: () => void): void;
    /** 监听用户点击 关闭广告 按钮的事件*/
    onClose(callback: (res: { isEnded: boolean }) => void);
    /** 取消监听用户点击 关闭广告 按钮的事件*/
    offClose(callback: () => void);
}

/**插屏广告组件。插屏广告组件是由客户端原生的图片、文本、视频控件组成的，层级最高，会覆盖在普通组件上。 */
interface InterstitialAd {
    /**加载插屏广告 */
    load(): Promise<any>;
    /** 销毁插屏广告*/
    destroy(): void;
    /** 显示插屏广告。*/
    show(): Promise<any>;
    /** 监听插屏广告加载事件*/
    onLoad(callback: () => void): void;
    /** 取消监听插屏广告加载事件*/
    offLoad(callback: () => void): void;
    /** 监听插屏广告错误事件*/
    onError(callback: (res: { errMsg: string, errCode: 1000 | 1001 | 1002 | 1003 | 1004 | 1005 | 1006 | 1007 | 1008 }) => void): void;
    /** 取消监听插屏广告错误事件*/
    offError(callback: () => void): void;
    /** 监听插屏广告关闭事件*/
    onClose(callback: () => void): void;
    /** 取消监听插屏广告事件*/
    offClose(callback: () => void);
}

/**小游戏的接口*/
declare class MiniApi {
    /**
     * 创建一个画布对象。首次调用创建的是显示在屏幕上的画布，之后调用创建的都是离屏画布。
     */
    createCanvas(): Canvas;
    /**
     * 只有开放数据域能调用，获取主域和开放数据域共享的 sharedCanvas
     */
    getSharedCanvas(): Canvas;
    /**
     * 创建一个图片对象
     */
    createImage(): Image;
    /**
     * 获取一行文本的行高
     */
    getTextLineHeight(object: { fontStyle: string, fontWeight: string, fontSize: number, fontFamily: string, text: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): number;
    /**
     * 加载自定义字体文件
     */
    loadFont(path: string): string;
    /**
     * 可以修改渲染帧率。默认渲染帧率为 60 帧每秒。修改后，requestAnimationFrame 的回调频率会发生改变。
     */
    setPreferredFramesPerSecond(fps: number): void;
    /**
     * 重启当前小程序 基础库 2.22.1 开始支持
     */
    restartMiniProgram(object?: { path?: string, success?: Function, fail?: Function, complete?: Function }): void;
    /**
     * 打开另一个小程序 基础库 2.2.0 开始支持
     * @param object appId:要打开的小程序appId
     */
    navigateToMiniProgram(object?: { appId?: string, path?: string, extraData?, envVersion?: string, shortLink?: string, noRelaunchIfPathUnchanged?: string, success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    /**
     * 退出当前小游戏
     */
    exitMiniProgram(object?: { success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    /**
     * 返回小程序启动参数
     */
    getLaunchOptionsSync(): LaunchOption;
    /**获取菜单按钮（右上角胶囊按钮）的布局位置信息。坐标信息以屏幕左上角为原点*/
    getMenuButtonBoundingClientRect(): { width: number, height: number, top: number, right: number, bottom: number, left: number };
    /**
     * 监听小游戏隐藏到后台事件。锁屏、按 HOME 键退到桌面、显示在聊天顶部等操作会触发此事件。
     */
    onHide(callback: () => void): void;
    /**
     * 取消监听小游戏隐藏到后台事件。锁屏、按 HOME 键退到桌面、显示在聊天顶部等操作会触发此事件。
     */
    offHide(callback: () => void): void;
    /**
     * 监听小游戏回到前台的事件
     */
    onShow(callback: (res?: { scene: number, query: Object, shareTicket: string, referrerInfo: { appId: string, extraData: Object } }) => void): void;
    /**
     * 取消监听小游戏回到前台的事件
     */
    offShow(callback: () => void): void;
    /**
     * 获取系统信息
     */
    getSystemInfo(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * wx.getSystemInfo 的同步版本
     */
    getSystemInfoSync(): SystemInfo;
    /**获取窗口信息 2.25.3支持*/
    getWindowInfo(): WindowInfo;
    /**获取设备设置 2.25.3支持*/
    getSystemSetting(): SystemSetting;
    /**获取设备基础信息 2.25.3支持*/
    getDeviceInfo(): MiniDeviceInfo;
    /**获取微信APP基础信息 2.25.3支持*/
    getAppBaseInfo(): AppBaseInfo;
    /**
     * 监听音频中断结束，在收到 onAudioInterruptionBegin 事件之后，小程序内所有音频会暂停，收到此事件之后才可再次播放成功
     */
    onAudioInterruptionEnd(callback: () => void): void;
    /**
     * 取消监听音频中断结束，在收到 onAudioInterruptionBegin 事件之后，小程序内所有音频会暂停，收到此事件之后才可再次播放成功
     */
    offAudioInterruptionEnd(callback: () => void): void;
    /**
     * 监听音频因为受到系统占用而被中断开始，以下场景会触发此事件：闹钟、电话、FaceTime 通话、微信语音聊天、微信视频聊天。此事件触发后，小程序内所有音频会暂停。
     */
    onAudioInterruptionBegin(callback: () => void): void;
    /**
     * 取消监听音频因为受到系统占用而被中断开始，以下场景会触发此事件：闹钟、电话、FaceTime 通话、微信语音聊天、微信视频聊天。此事件触发后，小程序内所有音频会暂停。
     */
    offAudioInterruptionBegin(callback: () => void): void;
    /**
     * 监听内存不足告警事件。
     * 当 iOS/Android 向小程序进程发出内存警告时，触发该事件。触发该事件不意味小程序被杀，大部分情况下仅仅是告警，开发者可在收到通知后回收一些不必要资源避免进一步加剧内存紧张
     * @param callback 
     */
    onMemoryWarning(callback: (res?: { level: number }) => void): void;
    /**
     * 移除内存不足告警事件的监听函数
     * @param callback 
     */
    offMemoryWarning(callback: () => void): void;
    /**
     * 监听全局错误事件
     */
    onError(callback: (res?: { message: string, stack: string }) => void): void;
    /**
     * 取消监听全局错误事件
     */
    offError(callback: (res?: { message: string, stack: string }) => void): void;
    /**
     * 监听开始触摸事件
     */
    onTouchStart(callback: () => void): void;
    /**
     * 取消监听开始触摸事件
     */
    offTouchStart(callback: () => void): void;
    /**
     * 监听触点移动事件
     */
    onTouchMove(callback: () => void): void;
    /**
     * 取消监听触点移动事件
     */
    offTouchMove(callback: () => void): void;
    /**
     * 监听触摸结束事件
     */
    onTouchEnd(callback: () => void): void;
    /**
     * 取消监听触摸结束事件
     */
    offTouchEnd(callback: () => void): void;
    /**
     * 监听触点失效事件
     */
    onTouchCancel(callback: () => void): void;
    /**
     * 取消监听触点失效事件
     */
    offTouchCancel(callback: () => void): void;
    /**
     * 鼠标滚轮事件的监听函数
     * @param callback 
     */
    onWheel(callback: (res) => void);
    /**
     * 移除鼠标滚轮事件的监听函数
     * @param callback 
     */
    offWheel(callback: () => void);
    /**
     * 监听加速度数据，频率：5次/秒，接口调用后会自动开始监听，可使用 wx.stopAccelerometer 停止监听。
     */
    onAccelerometerChange(callback: () => void): void;
    startAccelerometer(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    stopAccelerometer(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 获取设备电量
     */
    getBatteryInfo(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * wx.getBatteryInfo 的同步版本
     */
    getBatteryInfoSync(): string;
    getClipboardData(object: { success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    setClipboardData(object: { data: string, success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    /**
     * 监听罗盘数据，频率：5 次/秒，接口调用后会自动开始监听，可使用 wx.stopCompass 停止监听。
     */
    onCompassChange(callback: () => void): void;
    startCompass(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    stopCompass(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 获取网络类型
     */
    getNetworkType(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    onNetworkStatusChange(callback: () => void): void;
    getScreenBrightness(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    setKeepScreenOn(object: { keepScreenOn: boolean, success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    setScreenBrightness(object: { value: number, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    vibrateShort(object: { type?: string, success: (res: any) => void, fail: (res: any) => void, complete?: (res: any) => void }): void;
    vibrateLong(object: { success: (res: any) => void, fail: (res: any) => void, complete?: (res: any) => void }): void;
    /**
     * 获取全局唯一的文件管理器
     */
    getFileSystemManager(): FileSystemManager;
    /**
     * 获取当前的地理位置、速度。当用户离开小程序后，此接口无法调用；当用户点击“显示在聊天顶部”时，此接口可继续调用。
     */
    getLocation(object: { type: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 下载文件资源到本地，客户端直接发起一个 HTTP GET 请求，返回文件的本地文件路径。
     */
    downloadFile(object: { url: string, header: Object, filePath: string, fail: (res: any) => void, complete: (res: any) => void }): DownloadTask;
    /**
     * 发起网络请求。
     */
    request(object: { url: string, data: string | Object, header: Object, method: string, dataType: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): RequestTask;
    /**
     * 创建一个 WebSocket 连接。最多同时存在 2 个 WebSocket 连接。
     */
    connectSocket(object: { url: string, header: Object, method: string, protocols: any[], success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): SocketTask;
    /**
     * 关闭 WeSocket 连接
     */
    closeSocket(object: { code: number, reason: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 监听WebSocket 连接打开事件
     */
    onSocketOpen(callback: () => void): void;
    /**
     * 监听WebSocket 连接关闭事件
     */
    onSocketClose(callback: () => void): void;
    /**
     * 监听WebSocket 接受到服务器的消息事件
     */
    onSocketMessage(callback: () => void): void;
    /**
     * 监听WebSocket 错误事件
     */
    onSocketError(callback: () => void): void;
    /**
     * 通过 WebSocket 连接发送数据，需要先 wx.connectSocket，并在 wx.onSocketOpen 回调之后才能发送。
     */
    sendSocketMessage(object: { data: any[], success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 将本地资源上传到开发者服务器，客户端发起一个 HTTPS POST 请求，其中 content-type 为 multipart/form-data 。
     */
    uploadFile(object: { url: string, filePath: string, name: string, header: Object, formData: Object, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): UploadTask;
    /**
     * 通过 wx.login 接口获得的用户登录态拥有一定的时效性。用户越久未使用小程序，用户登录态越有可能失效。反之如果用户一直在使用小程序，则用户登录态一直保持有效。具体时效逻辑由微信维护，对开发者透明。开发者只需要调用 wx.checkSession 接口检测当前用户登录态是否有效。登录态过期后开发者可以再调用 wx.login 获取新的用户登录态。
     */
    checkSession(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 调用接口获取登录凭证（code）进而换取用户登录态信息，包括用户的唯一标识（openid） 及本次登录的 会话密钥（session_key）等。用户数据的加解密通讯需要依赖会话密钥完成。
     */
    login(object: { success: (res: any) => void, fail: (res: any) => void, complete?: (res: any) => void }): void;
    authorize(object: { scope: string, success: (res: any) => void, fail: (res: any) => void, complete?: (res: any) => void }): void;
    /** 创建用户信息按钮*/
    createUserInfoButton(object: {
        type: "text" | "image";
        text?: string;
        image?: string;
        style: {
            left: number;
            top: number;
            width: number;
            height: number;
            color?: string;
            backgroundColor?: string;
            borderColor?: string;
            borderWidth?: number;
            borderRadius?: number;
            textAlign?: "left" | "center" | "right";
            fontSize?: number;
            lineHeight?: number;
        };
        withCredentials?: boolean;
        lang?: "en" | "zh_CN" | "zh_TW";
    }): UserInfoButton;
    /**
     * 在无须用户授权的情况下，批量获取用户信息。该接口只在开放数据域下可用
     */
    getUserInfo(object: {
        withCredentials?: boolean;
        lang?: string;
        success?: (res: {
            /**用户信息对象，不包含 openid 等敏感信息*/
            userInfo: UserInfoData;
            /**不包括敏感信息的原始数据字符串，用于计算签名*/
            rawData: string;
            signature: string;
            encryptedData: string;
            iv: string;
            cloudID: string;
        }) => void;
        fail?: (res?: any) => void;
        complete?: (res?: any) => void;
    }): void;
    getSetting(object: { success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    openSetting(object: { withSubscriptions?: boolean, success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    getWeRunData(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 拉取当前用户所有同玩好友的托管数据。该接口只可在开放数据域下使用
     */
    getFriendCloudStorage(object: { keyList: any[], success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 在小游戏是通过群分享卡片打开的情况下，可以通过调用该接口获取群同玩成员的游戏数据。该接口只可在开放数据域下使用。
     */
    getGroupCloudStorage(object: { shareTicket: string, keyList: any[], success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 获取当前用户托管数据当中对应 key 的数据。该接口只可在开放数据域下使用
     */
    getUserCloudStorage(object: { keyList: any[], success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 删除用户托管数据当中对应 key 的数据。
     */
    removeUserCloudStorage(object: { keyList: any[], success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 对用户托管数据进行写数据操作，允许同时写多组 KV 数据。
     */
    setUserCloudStorage(object: { KVDataList: any[], success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 获取开放数据域
     */
    getOpenDataContext(): OpenDataContext;
    /**
     * 监听主域发送的消息
     */
    onMessage(callback: (data: any) => void): void;
    getShareInfo(object: { shareTicket: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    hideShareMenu(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 监听用户点击右上角菜单的“转发”按钮时触发的事件
     */
    onShareAppMessage(callback: () => void): void;
    /**
     * 取消监听用户点击右上角菜单的“转发”按钮时触发的事件
     */
    offShareAppMessage(callback: () => void): void;
    showShareMenu(object: { withShareTicket?: boolean, menus?: string[], success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    /**
     * 主动拉起转发，进入选择通讯录界面。
     */
    shareAppMessage(object: { title?: string, imageUrl?: string, query?: string, success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    updateShareMenu(object: { withShareTicket?: boolean, isUpdatableMessage?: boolean, activityId?: string, toDoActivityId?: string, templateInfo?: { parameterList: { name: string, value: string }[] }, isPrivateMessage?: boolean, success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    /**
     * 百度分享
     * @param object 
     */
    openShare(object: { title?: string, content?:string, imageUrl?: string, query?: string, success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    /**
     * 阿里分享
     * @param object 
     */
    showSharePanel(object: { success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    setEnableDebug(object: { enableDebug: boolean, success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    /**
     * 清理本地数据缓存
     */
    clearStorage(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * wx.clearStorage 的同步版本
     */
    clearStorageSync(): void;
    /**
     * 从本地缓存中异步获取指定 key 的内容
     */
    getStorage(object: { key: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 异步获取当前storage的相关信息
     */
    getStorageInfo(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * wx.getStorage 的同步版本
     */
    getStorageSync(key: string): Object | string;
    /**
     * wx.getStorageInfo 的同步版本
     */
    getStorageInfoSync(): Object;
    /**
     * 从本地缓存中移除指定 key
     */
    removeStorage(object: { key: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * wx.removeStorage 的同步版本
     */
    removeStorageSync(key: string): void;
    /**
     * 将数据存储在本地缓存中指定的 key 中，会覆盖掉原来该 key 对应的内容。
     */
    setStorage(object: { key: string, data: Object | string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * wx.setStorage 的同步版本
     */
    setStorageSync(key: string, data: Object | string): void;
    /**
     * 隐藏消息提示框
     */
    hideToast(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    hideLoading(object?: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 显示模态对话框
     */
    showModal(object: { title?: string, content?: string, showCancel?: boolean, cancelText?: string, cancelColor?: string, confirmText?: string, confirmColor?: string, success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    /**
     * 显示消息提示框
     */
    showToast(object: { title: Object, icon: Object, image: Object, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    showLoading(object: { title: string, mask?: boolean, success?: (res: any) => void, fail?: (res: any) => void, complete?: (res: any) => void }): void;
    /**
     * 参数
     */
    showActionSheet(object: { itemList: any[], itemColor: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 隐藏键盘
     */
    hideKeyboard(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 监听键盘输入事件
     */
    onKeyboardInput(callback: () => void): void;
    /**
     * 取消监听键盘输入事件
     */
    offKeyboardInput(callback: () => void): void;
    /**
     * 监听用户点击键盘 Confirm 按钮时的事件
     */
    onKeyboardConfirm(callback: () => void): void;
    /**
     * 取消监听用户点击键盘 Confirm 按钮时的事件
     */
    offKeyboardConfirm(callback: () => void): void;
    /**
     * 监听监听键盘收起的事件
     */
    onKeyboardComplete(callback: () => void): void;
    /**
     * 取消监听监听键盘收起的事件
     */
    offKeyboardComplete(callback: () => void): void;
    /**
     * 显示键盘
     */
    showKeyboard(object: { defaultValue: string, maxLength: number, multiple: boolean, confirmHold: boolean, confirmType: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 动态设置通过右上角按钮拉起的菜单的样式。
     */
    setMenuStyle(object: { style: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 当在配置中设置 showStatusBarStyle 时，屏幕顶部会显示状态栏。此接口可以修改状态栏的样式。
     */
    setStatusBarStyle(object: { style: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 监听窗口尺寸变化事件
     */
    onWindowResize(callback: () => void): void;
    /**
     * 取消监听窗口尺寸变化事件
     */
    offWindowResize(callback: () => void): void;
    /**
     * 返回值
     */
    getUpdateManager(): UpdateManager;
    /**
     * 创建一个 Worker 线程，目前限制最多只能创建一个 Worker，创建下一个 Worker 前请调用 Worker.terminate
     */
    createWorker(): Worker;
    /**
     * 创建一个 InnerAudioContext 实例
     */
    createInnerAudioContext(): InnerAudioContext;
    getRecorderManager(): RecorderManager;
    /**
     * 从本地相册选择图片或使用相机拍照。
     */
    chooseImage(object: { count: number }): void;
    /**
     * 预览图片
     */
    previewImage(object: { current: string, urls: any[], success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    saveImageToPhotosAlbum(object: { filePath: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 创建视频
     */
    createVideo(object: { x: number, y: number, width: number, height: number, src: string, poster: number, initialTime: number, playbackRate: number, live: number, objectFit: number, controls: number, autoplay: number, loop: number, muted: number }): Video;
    /**
     * 获取性能管理器
     */
    getPerformance(): Performance;
    /**
     * 加快触发 JavaScrpitCore Garbage Collection（垃圾回收），GC 时机是由 JavaScrpitCore 来控制的，并不能保证调用后马上触发 GC。
     */
    triggerGC(): void;
    /**
     * 发起米大师支付
     */
    requestMidasPayment(object: { mode: string, env: number, offerId: string, currencyType: string, platform: string, buyQuantity: number, zoneId: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;

    /** 进入客服会话。要求在用户发生过至少一次 touch 事件后才能调用。后台接入方式与小程序一致，详见 客服消息接入*/
    openCustomerServiceConversation(object: {
        sessionFrom?: string,
        showMessageCard?: boolean,
        sendMessageTitle?: string,
        sendMessagePath?: string,
        sendMessageImg?: string,
        success?: (res?: any) => void,
        fail?: (res?: any) => void,
        complete?: (res?: any) => void
    }): void;

    /**
     * 模拟隐私接口调用，并触发隐私弹窗逻辑
     * 基础库 2.32.3 开始支持
     * @param object 
     */
    requirePrivacyAuthorize(object: { success?: (res?: any) => void, fail?: (res?: any) => void, complete?: (res?: any) => void }): void;
    /**
     * 获取游戏圈数据
     * @param object 
     */
    getGameClubData(object: { dataTypeList: [{ type: number, subKey?: string }], success?: (res?: any) => void, fail?: (res?: any) => void, complete?: (res?: any) => void }): void;
    /**
     * 创建游戏圈按钮。游戏圈按钮被点击后会跳转到小游戏的游戏圈
     * @param object 
     */
    createGameClubButton(object: GameClubData): GameClubButton;
    
    /**小游戏开放页面管理器，用于启动微信内置的各种小游戏活动、功能页面。具体OPENLINK值由不同的能力渠道获得。 */
    createPageManager(): void;

    /**
     * 创建激励视频广告组件。请通过 wx.getSystemInfoSync() 返回对象的 SDKVersion 判断基础库版本号 >= 2.0.4 后再使用该 API。同时，开发者工具上暂不支持调试该 API，请直接在真机上进行调试。
     */
    createRewardedVideoAd(res: { adUnitId: string, multiton?: boolean }): RewardedVideoAd;

    /**
     * 插屏⼴告
     * @param data adUnitId ⼴告单元 id（运营提供）
     */
    createInterstitialAd(data: { adUnitId: string }): InterstitialAd;

    /**
     * 创建 banner 广告组件。请通过 wx.getSystemInfoSync() 返回对象的 SDKVersion 判断基础库版本号 >= 2.0.4 后再使用该 API。同时，开发者工具上暂不支持调试该 API，请直接在真机上进行调试。
     */
    createBannerAd(res: {
        adUnitId: string, style: {
            left: number,
            top: number,
            width: number,
            height: number
        }
    }): BannerAd;
}

declare interface Canvas {
    /**
     * 获取画布对象的绘图上下文
     */
    getContext(contextType: string, contextAttributes: { antialias: boolean, preserveDrawingBuffer: boolean, antialiasSamples: number }): RenderingContext;
    /**
     * 将当前 Canvas 保存为一个临时文件，并生成相应的临时文件路径。
     */
    toTempFilePath(object: { x: number, y: number, width: number, height: number, destWidth: number, destHeight: number, fileType: string, quality: number, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): string;
    /**
     * 把画布上的绘制内容以一个 data URI 的格式返回
     */
    toDataURL(): string;
    /**
     * Canvas.toTempFilePath 的同步版本
     */
    toTempFilePathSync(object: { x: number, y: number, width: number, height: number, destWidth: number, destHeight: number, fileType: string, quality: number }): void;
}

declare interface FileSystemManager {
    /**
     * 判断文件/目录是否存在
     */
    access(object: { path: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * FileSystemManager.access 的同步版本
     */
    accessSync(path: string): void;
    /**
     * 复制文件
     */
    copyFile(object: { srcPath: string, destPath: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * FileSystemManager.copyFile 的同步版本
     */
    copyFileSync(srcPath: string, destPath: string): void;
    /**
     * 获取该小程序下的 本地临时文件 或 本地缓存文件 信息
     */
    getFileInfo(object: { filePath: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 获取该小程序下已保存的本地缓存文件列表
     */
    getSavedFileList(object: { success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 创建目录
     */
    mkdir(object: { dirPath: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * FileSystemManager.mkdir 的同步版本
     */
    mkdirSync(dirPath: string): void;
    /**
     * 删除该小程序下已保存的本地缓存文件
     */
    removeSavedFile(object: { filePath: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 读取本地文件内容
     */
    readFile(object: { filePath: string, encoding: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 重命名文件，可以把文件从 oldPath 移动到 newPath
     */
    rename(object: { oldPath: string, newPath: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 删除目录
     */
    rmdir(object: { dirPath: Object, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 读取目录内文件列表
     */
    readdir(object: { dirPath: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * FileSystemManager.readdir 的同步版本
     */
    readdirSync(dirPath: string): string[];
    /**
     * FileSystemManager.rename 的同步版本
     */
    renameSync(oldPath: string, newPath: string): void;
    /**
     * FileSystemManager.rmdir 的同步版本
     */
    rmdirSync(dirPath: {}): void;
    /**
     * FileSystemManager.readFile 的同步版本
     */
    readFileSync(filePath: string, encoding: string): string[];
    /**
     * 保存临时文件到本地。此接口会移动临时文件，因此调用成功后，tempFilePath 将不可用。
     */
    saveFile(object: { tempFilePath: string, filePath: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 获取文件 Stats 对象
     */
    stat(object: { path: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): Stats;
    /**
     * FileSystemManager.saveFile 的同步版本
     */
    saveFileSync(tempFilePath: string, filePath: string): number;
    /**
     * FileSystemManager.stat 的同步版本
     */
    statSync(path: string): Stats;
    /**
     * 删除文件
     */
    unlink(object: { filePath: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 解压文件
     */
    unzip(object: { zipFilePath: string, targetPath: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * FileSystemManager.unlink 的同步版本
     */
    unlinkSync(filePath: string): void;
    /**
     * 写文件
     */
    writeFile(object: { filePath: string, data: any[], encoding: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * FileSystemManager.writeFile 的同步版本
     */
    writeFileSync(filePath: string, data: string | ArrayBuffer, encoding: string): void;
}

declare interface Stats {
    /**
     * 判断当前文件是否一个目录
     */
    isDirectory(): boolean;
    /**
     * 判断当前文件是否一个普通文件
     */
    isFile(): boolean;
}

declare interface DownloadTask {
    abort(): void;
    onProgressUpdate(callback: () => void): void;
}

declare interface RequestTask {
    abort(): void;
}

declare interface SocketTask {
    /**
     * 关闭 WebSocket 连接
     */
    close(object: { code: number, reason: string, success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
    /**
     * 监听WebSocket 连接打开事件
     */
    onOpen(callback: () => void): void;
    /**
     * 监听WebSocket 连接关闭事件
     */
    onClose(callback: () => void): void;
    /**
     * 监听WebSocket 错误事件
     */
    onError(callback: () => void): void;
    /**
     * 监听WebSocket 接受到服务器的消息事件
     */
    onMessage(callback: () => void): void;
    /**
     * 通过 WebSocket 连接发送数据
     */
    send(object: { data: any[], success: (res: any) => void, fail: (res: any) => void, complete: (res: any) => void }): void;
}

declare interface UploadTask {
    abort(): void;
    onProgressUpdate(callback: () => void): void;
}

declare interface OpenDataContext {
    /**
     * 向开放数据域发送消息
     */
    postMessage(message: {}): void;
}

declare interface UpdateManager {
    /**
     * 应用更新包并重启
     */
    applyUpdate(): void;
    /**
     * 监听检查更新结果回调
     */
    onCheckForUpdate(callback: (any) => void): void;
    /**
     * 监听更新包下载成功回调
     */
    onUpdateReady(callback: () => void): void;
    /**
     * 监听更新包下载失败回调
     */
    onUpdateFailed(callback: () => void): void;
}

declare interface Worker {
    /**
     * 监听接收主线程/Worker 线程向当前线程发送的消息
     */
    onMessage(callback: () => void): void;
    /**
     * 向主线程/Worker 线程发送的消息。
     */
    postMessage(message: {}): void;
    /**
     * 结束当前 worker 线程，仅限在主线程 worker 对象上调用。
     */
    terminate(): void;
}

declare interface InnerAudioContext {
    autoplay: boolean;
    loop: boolean;
    src: string;
    volume: number;
    /**
     * 销毁当前实例
     */
    destroy(): void;
    /**
     * 取消监听音频进入可以播放状态的事件
     */
    offCanplay(callback: () => void): void;
    /**
     * 监听音频暂停事件
     */
    onPause(callback: () => void): void;
    /**
     * 监听音频停止事件
     */
    onStop(callback: () => void): void;
    /**
     * 取消监听音频停止事件
     */
    offStop(callback: () => void): void;
    /**
     * 监听音频自然播放至结束的事件
     */
    onEnded(callback: () => void): void;
    /**
     * 取消监听音频自然播放至结束的事件
     */
    offEnded(callback: () => void): void;
    /**
     * 监听音频播放进度更新事件
     */
    onTimeUpdate(callback: () => void): void;
    /**
     * 监听音频播放事件
     */
    onPlay(callback: () => void): void;
    /**
     * 监听音频播放错误事件
     */
    onError(callback: () => void): void;
    /**
     * 取消监听音频暂停事件
     */
    offPause(callback: () => void): void;
    /**
     * 监听音频加载中事件，当音频因为数据不足，需要停下来加载时会触发
     */
    onWaiting(callback: () => void): void;
    /**
     * 取消监听音频加载中事件，当音频因为数据不足，需要停下来加载时会触发
     */
    offWaiting(callback: () => void): void;
    /**
     * 监听音频进行跳转操作的事件
     */
    onSeeking(callback: () => void): void;
    /**
     * 取消监听音频进行跳转操作的事件
     */
    offSeeking(callback: () => void): void;
    /**
     * 监听音频完成跳转操作的事件
     */
    onSeeked(callback: () => void): void;
    /**
     * 取消监听音频完成跳转操作的事件
     */
    offSeeked(callback: () => void): void;
    /**
     * 取消监听音频播放事件
     */
    offPlay(callback: () => void): void;
    /**
     * 取消监听音频播放进度更新事件
     */
    offTimeUpdate(callback: () => void): void;
    /**
     * 监听音频进入可以播放状态的事件
     */
    onCanplay(callback: () => void): void;
    /**
     * 取消监听音频播放错误事件
     */
    offError(callback: () => void): void;
    /**
     * 停止。停止后的音频再播放会从头开始播放。
     */
    pause(): void;
    /**
     * 播放
     */
    play(): void;

    stop(): void;

    /**
     * 跳转到指定位置，单位 s
     */
    seek(position: number): void;
}

declare interface RecorderManager {
    /**
     * 监听录音暂停事件
     */
    onPause(callback: () => void): void;
    /**
     * 监听录音结束事件
     */
    onStop(callback: (res: { tempFilePath: string, duration: number, fileSize: number }) => void): void;
    /**
     * 监听已录制完指定帧大小的文件事件。如果设置了 frameSize，则会回调此事件。
     */
    onFrameRecorded(callback: (res: { frameBuffer: ArrayBuffer, isLastFrame: boolean }) => void): void;
    /**
     * 监听录音错误事件
     */
    onError(callback: () => void): void;
    /**
     * 监听录音开始事件
     */
    onStart(callback: () => void): void;
    /**
     * 暂停录音
     */
    pause(): void;
    /**
     * 继续录音
     */
    resume(): void;
    /**
     * 停止录音
     */
    stop(): void;
    /**
     * 开始录音
     */
    start(object: { duration?: number, sampleRate?: number, numberOfChannels?: number, encodeBitRate?: number, format?: string, frameSize?: number }): void;
}

declare interface Video {
    /**
     * 视频退出全屏
     */
    exitFullScreen(): Promise<Object>;
    /**
     * 取消监听视频暂停事件
     */
    offPause(callback: () => void): void;
    /**
     * 监听视频播放到末尾事件
     */
    onEnded(callback: () => void): void;
    /**
     * 取消监听视频播放到末尾事件
     */
    offEnded(callback: () => void): void;
    /**
     * 监听视频播放进度更新事件
     */
    onTimeUpdate(callback: () => void): void;
    /**
     * 取消监听视频播放进度更新事件
     */
    offTimeUpdate(callback: () => void): void;
    /**
     * 监听视频错误事件
     */
    onError(callback: () => void): void;
    /**
     * 取消监听视频错误事件
     */
    offError(callback: () => void): void;
    /**
     * 监听视频播放事件
     */
    onPlay(callback: () => void): void;
    /**
     * 监听视频暂停事件
     */
    onPause(callback: () => void): void;
    /**
     * 取消监听视频缓冲事件
     */
    offWaiting(callback: () => void): void;
    /**
     * 监听视频缓冲事件
     */
    onWaiting(callback: () => void): void;
    /**
     * 取消监听视频播放事件
     */
    offPlay(callback: () => void): void;
    /**
     * 暂停视频
     */
    pause(): Promise<Object>;
    /**
     * 播放视频
     */
    play(): Promise<Object>;
    /**
     * 视频全屏
     */
    requestFullScreen(): Promise<Object>;
    /**
     * 视频跳转
     */
    seek(time: number): Promise<Object>;
    /**
     * 停止视频
     */
    stop(): Promise<Object>;
    /**
     * 销毁
     */
    destroy();
}

declare interface Performance {
    /**
     * 可以获取当前时间以微秒为单位的时间戳
     */
    now(): number;
}


declare interface Image {
    /**
     * 图片的 URL
     */
    src: string;
    /**
    * 图片的真实宽度
    */
    width: number;
    /**
    * 图片的真实高度
    */
    height: number;
    /**
     * 图片的加载完成
     */
    onload: () => void;
}

declare class LaunchOption {
    /** 场景值*/
    scene: number;
    /** 启动参数*/
    query: Object;
    /** 当前小游戏是否被显示在聊天顶部*/
    isSticky: boolean;
    /** shareTicket*/
    shareTicket: string;
}

declare class WindowInfo {
    /** 设备像素比*/
    pixelRatio: number;
    /** 屏幕宽度*/
    screenWidth: number;
    /** 屏幕高度*/
    screenHeight: number;
    /** 窗口宽度*/
    windowWidth: number;
    /** 窗口高度*/
    windowHeight: number;
    /** 窗口的缩放比*/
    windowScale: number;
    /** 状态栏的高度，单位px*/
    statusBarHeight: number;
    /** 在竖屏正方向下的安全区域。部分机型没有安全区域概念，也不会返回 safeArea 字段，开发者需自行兼容*/
    safeArea: {
        /**安全区域左上角横坐标*/
        left: number;
        /**安全区域右下角横坐标*/
        right: number;
        /**安全区域左上角纵坐标*/
        top: number;
        /**安全区域右下角纵坐标*/
        bottom: number;
        /**安全区域的宽度，单位逻辑像素*/
        width: number;
        /**安全区域的高度，单位逻辑像素*/
        height: number;
    }
    /** 窗口上边缘的y值*/
    screenTop: number;
}

/**设备设置*/
declare class SystemSetting {
    /**蓝牙的系统开关*/
    bluetoothEnabled: boolean;
    /**地理位置的系统开关*/
    locationEnabled: boolean;
    /**Wi-Fi 的系统开关*/
    wifiEnabled: boolean;
    /**设备方向（注意：IOS客户端横屏游戏获取deviceOrientation可能不准，建议以屏幕宽高为准）portrait:竖屏 landscape:横屏*/
    deviceOrientation: string;
}

/**设备基础信息*/
declare class MiniDeviceInfo {
    /**应用（微信APP）二进制接口类型（仅 Android 支持）*/
    abi: string;
    /**设备二进制接口类型（仅 Android 支持）	2.25.1*/
    deviceAbi: string;
    /**设备性能等级（仅 Android 支持）。取值为：-2 或 0（该设备无法运行小游戏），-1（性能未知），>= 1（设备性能值，该值越高，设备性能越好，目前最高不到50）*/
    benchmarkLevel: number;
    /**设备品牌	*/
    brand: string;
    /**设备型号。新机型刚推出一段时间会显示unknown，微信会尽快进行适配。*/
    model: string;
    /**操作系统及版本*/
    system: string;
    /**客户端平台*/
    platform: string;
    /**设备 CPU 型号（仅 Android 支持）（Tips: GPU 型号可通过 WebGLRenderingContext.getExtension('WEBGL_debug_renderer_info') 来获取）	2.29.0*/
    cpuType: string;
    /**设备内存大小，单位为 MB*/
    memorySize: string;
}

/**微信APP基础信息*/
declare class AppBaseInfo {
    /**客户端基础库版本*/
    SDKVersion: string;
    /**是否已打开调试。可通过右上角菜单或 wx.setEnableDebug 打开调试。*/
    enableDebug: boolean;
    /**当前小程序运行的宿主环境*/
    host: {
        /**宿主 app（第三方App） 对应的 appId （当小程序运行在第三方App环境时才返回）*/
        appId: string;
    };
    /**微信设置的语言*/
    language: string;
    /**微信版本号*/
    version: string;
    /**系统当前主题，取值为`light`或`dark`，全局配置`"darkmode":true`时才能获取，否则为 undefined （不支持小游戏） dark:深色主题 light:浅色主题*/
    theme: string;
    /**微信字体大小缩放比例*/
    fontSizeScaleFactor: number;
    /**微信字体大小，单位px	2.23.4*/
    fontSizeSetting: number;
}

declare class SystemInfo {
    /** 手机品牌*/
    brand: string;
    /** 手机型号*/
    model: string;
    /**	设备像素比 */
    pixelRatio: number;
    /** 屏幕宽度*/
    screenWidth: number;
    /** 屏幕高度*/
    screenHeight: number;
    /**状态栏的高度，单位px*/
    statusBarHeight: number;
    /** 可使用窗口宽度*/
    windowWidth: number;
    /** 可使用窗口高度*/
    windowHeight: number;
    /** 微信设置的语言*/
    language: string;
    /** 微信版本号*/
    version: string;
    /**app名称（头条）*/
    appName: string;
    /**app名称（支付宝）*/
    app: string;
    /** 操作系统版本*/
    system: string;
    /** 客户端平台*/
    platform: string
    /** 用户字体大小设置。以“我-设置 - 通用 - 字体大小”中的设置为准，单位 px。*/
    fontSizeSetting: number;
    /** 客户端基础库版本*/
    SDKVersion: string;
    /** 性能等级*/
    benchmarkLevel: number;
    /** 电量，范围 1 - 100*/
    battery: number;
    /** wifi 信号强度，范围 0 - 4 */
    wifiSignal: number;
    /**Wi-Fi 的系统开关*/
    wifiEnabled: boolean;
    /**支付宝中屏幕宽度和高度。*/
    screen: {
        /**宽度*/
        width: number;
        /**高度*/
        height: number;
    }
}

declare class Stats {
    /**
     * 文件的类型和存取的权限，对应 POSIX stat.st_mode
     */
    mode: string;
    /**
     * 文件大小，单位：B，对应 POSIX stat.st_size
     */
    size: number;
    /**
     * 文件最近一次被存取或被执行的时间，UNIX 时间戳，对应 POSIX stat.st_atime
     */
    lastAccessedTime: number;
    /**
    * 文件最后一次被修改的时间，UNIX 时间戳，对应 POSIX stat.st_mtime
    */
    lastModifiedTime: number;
}

/**游戏圈按钮数据*/
declare class GameClubData {
    /**按钮的类型。*/
    type: "image" | "text"
    /**游戏圈按钮的图标，仅当 type 参数为 image 时有效*/
    icon?: "green" | "white" | "dark" | "light";
    /**按钮上的文本*/
    text?: string;
    /**按钮的背景图片*/
    image?: string;
    /**按钮的样式*/
    style: {
        /**左上角横坐标*/
        left: number,
        /**左上角纵坐标*/
        top: number,
        /**宽度*/
        width: number,
        /**高度*/
        height: number,
        /**	背景颜色*/
        backgroundColor?: string,
        /**边框颜色*/
        borderColor?: string,
        /**边框宽度*/
        borderWidth?: number,
        /**边框圆角*/
        borderRadius?: number,
        /**文本的颜色。格式为 6 位 16 进制数。*/
        color?: string,
        /**文本的水平居中方式*/
        textAlign?: "left" | "center" | "right",
        /**字号*/
        fontSize?: number,
        /**文本的行高*/
        lineHeight?: number;
    }
    /**设置后可以跳到对应的活动页面，具体进入mp设置-游戏设置-开始管理-游戏圈管理-由帖子的"游戏内跳转ID"生成	*/
    openlink?: string;
    /**当传递了openlink值时，此字段生效，决定创建的按钮是否需要拥有红点，默认为true	*/
    hasRedDot?: boolean;
}

/**游戏圈按钮。游戏圈按钮被点击后会跳转到小游戏的游戏圈*/
declare class GameClubButton {
    /**按钮的类型。*/
    type: "image" | "text"
    /**游戏圈按钮的图标，仅当 type 参数为 image 时有效*/
    icon: "green" | "white" | "dark" | "light";
    /**按钮的样式*/
    style: {
        /**左上角横坐标*/
        left: number,
        /**左上角纵坐标*/
        top: number,
        /**宽度*/
        width: number,
        /**高度*/
        height: number,
        /**	背景颜色*/
        backgroundColor: string,
        /**边框颜色*/
        borderColor: string,
        /**边框宽度*/
        borderWidth: number,
        /**边框圆角*/
        borderRadius: number,
        /**文本的颜色。格式为 6 位 16 进制数。*/
        color: string,
        /**文本的水平居中方式*/
        textAlign: "left" | "center" | "right",
        /**字号*/
        fontSize: number,
        /**文本的行高*/
        lineHeight: number;
    }
    /**显示游戏圈按钮*/
    show();
    /**隐藏游戏圈按钮*/
    hide();
    /**销毁游戏圈按钮*/
    destroy();
    /**监听游戏圈按钮的点击事件*/
    onTap(listener: Function);
    /**移除游戏圈按钮的点击事件的监听函数*/
    offTap(listener: Function)

}

/**
 * 用户信息
 */
interface UserInfoData {
    /** 用户昵称*/
    nickName: string;
    /** 用户头像图片的 URL。URL 最后一个数值代表正方形头像大小（有 0、46、64、96、132 数值可选，0 代表 640x640 的正方形头像，46 表示 46x46 的正方形头像，剩余数值以此类推。默认132），用户没有头像时该项为空。若用户更换头像，原有头像 URL 将失效。*/
    avatarUrl: string;
    /** 用户性别*/
    gender: 0 | 1 | 2;
    /** 用户所在国家*/
    country: string;
    /** 用户所在省份*/
    province: string;
    /** 用户所在城市*/
    city: string;
    /** 显示 country，province，city 所用的语言*/
    language: "en" | "zh_CN" | "zh_TW";
}

/**
 * 用户信息按钮
 */
declare class UserInfoButton {
    /**按钮的类型*/
    type: "text" | "image";
    /**按钮上的文本，仅当 type 为 text 时有效*/
    text: string;
    /**按钮的背景图片，仅当 type 为 image 时有效*/
    image: string;
    /**按钮的样式*/
    style: {
        /**左上角横坐标*/
        left: number,
        /**左上角纵坐标*/
        top: number,
        /**宽度*/
        width: number,
        /**高度*/
        height: number,
        /**背景颜色*/
        backgroundColor: string,
        /**边框颜色*/
        borderColor: string,
        /**边框宽度*/
        borderWidth: number,
        /**边框圆角*/
        borderRadius: number,
        /**文本的颜色。格式为 6 位 16 进制数。*/
        color: string,
        /**文本的水平居中方式*/
        textAlign: "left" | "center" | "right",
        /**字号*/
        fontSize: number,
        /**文本的行高*/
        lineHeight: number,
    };
    /**显示用户信息按钮*/
    show();
    /**隐藏用户信息按钮。*/
    hide();
    /**销毁用户信息按钮*/
    destroy();
    /** 监听用户信息按钮的点击事件*/
    onTap(
        callback: (res: {
            /**成功是 getUserInfo:ok*/
            errMsg: string;
            userInfo: UserInfoData;
            rawData: string;
            signature: string;
            encryptedData: string;
            iv: string;
        }) => void
    );

    /** 取消监听用户信息按钮的点击事件*/
    offTap(callback: () => void);
}

declare const wx: MiniApi;
declare const tt: MiniApi;