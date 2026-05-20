/**
 * 配置信息
 */
declare interface IGameConfig {
    /**包id*/
    appId: string;
    /**sdk名称*/
    sdk: string;
    /**包类型*/
    type: number;
    /**地区，加载不同地区表*/
    region: number;
    /**语言包类型*/
    lang: number;
    /**地区包类型对应后缀*/
    regionMap: Record<string, string>;
    /**语言包类型对应后缀*/
    langMap: Record<string, string>;
    /**语言包文本对应后缀*/
    langTexts: Record<string, string>;
    /** 渠道id */
    channel_id: number;
    /** 加密密钥 */
    secretKey: string;
    /** 平台类型 local、pixelTest、pixelBanshu、pixel */
    platform: string;
    /** 渠道名 */
    pf: string;
    /** cdn地址 */
    cdn: string;
    /** 后台域名 */
    servHttp: string;
    /**正式服务器 */
    servSocket: IServerInfo,
    /** 渠道的额外配置 */
    extData: {
        /** 游戏组ID */
        cate_id: number;
        /** 游戏ID */
        game_id: number;
        /** 游戏包ID */
        package_id: number;
        /** 渠道id */
        channel_id: number;
        /** 融合配置id */
        deploy_id: number;
    };
    /** 是否是调试模式 */
    debug: boolean;
    /** 小游戏的appid */
    miniAppId: string;
}

/**
 * 用户信息
 */
declare interface IUserInfo {
    /**用户帐号*/
    user_id: string;
    /**平台标识*/
    pf: string;
    /**是否白名单*/
    whitelist?: number;
    /**是否显示gm*/
    gm?: boolean;
    /**平台的呢称*/
    nickName?: string;
    /**玩家的头像*/
    avatarUrl?: string;
    /** 年龄，0未实名 */
    age?: number;
    /** 是否离线，未初始化登录sdk */
    offline?: boolean;
}

/**
 * 设备信息
 */
interface DeviceInfo {
    /**设备品牌*/
    brand: string;
    /**设备型号。新机型刚推出一段时间会显示unknown*/
    model: string;
    /**设备生产商*/
    manufacturer: string;
    /**操作系统及版本*/
    system: string;
    /**操作系统类型 ios android windows mac*/
    platform: string;
    /**屏幕宽度，单位px*/
    screenWidth: number;
    /**屏幕高度，单位px*/
    screenHeight: number;
    /**状态栏的高度，单位px*/
    statusBarHeight: number;
    /**右上角胶囊按钮上方位置，单位px*/
    menuTop: number;
    /**右上角胶囊按钮左边位置，单位px*/
    menuLef: number;
    /**右上角胶囊按钮宽度，单位px*/
    menuWidth: number;
    /**右上角胶囊按钮高度，单位px*/
    menuHeight: number;
    /**语言*/
    language: string;
    /**app的版本号*/
    appVersion: string;
    /**对应的app名
     * * 微信：weixin
     * * 抖音：douyin
     * * 抖音极速版：douyin_lite
     * * 抖音火山版：live_stream
     * * 火山极速版：live_stream_lite
     * * 头条：toutiao
     * * 头条极速版：news_article_lite
     * * 西瓜：xigua
     * * 皮皮虾：ppx
     * * 摸摸鱼：momoyu
     * * 番茄畅听：novel_fm
     * * 番茄小说：novelapp
     * * 未知：unknown
    */
    appName: string;
    /**wi-fi开关*/
    wifiEnabled: boolean;
    /**设备码，客户端自动生成保存*/
    dev_uid: string;
    /**设备内存大小，单位为 MB*/
    memory: string;
    /**设备 CPU 型号*/
    cpu: string;
    /**设备性能等级（仅 Android 支持）。取值为：-2 或 0（该设备无法运行小游戏），-1（性能未知），>=1（设备性能值，该值越高，设备性能越好，目前最高不到50）*/
    benchmarkLevel: number;
    /**网络状态，wifi,2g,3g,4g,5g,unknown,none */
    network_type: string;
}

/**
 * 服务器信息
 */
interface IServerInfo {
    /** 服务器IP */
    ip: string;
    /** 服务器名称 */
    name: string;
    /** 游戏端口 */
    gamePort: number;
    /** 区服ID */
    zoneId: number;
    /** 状态 */
    state: number;
    /** 同步端口 */
    syncPort: number;
}

/**
 * 游戏配置信息
 */
declare const gameInfo: IGameConfig;

declare interface Window {
    /** 游戏配置 */
    gameInfo: IGameConfig;
    /** 获取用户信息 */
    getUserInfo(): IUserInfo;
    /** 小游戏的Api */
    miniApi: MiniApi;

    /** 登录流程使用到的语言包 */
    langStrMap: Record<number, string>;
    /** 设置语言包 */
    setLangType(lang: number): void;
}