let gameInfo = {
	/** 是否调试 */
    debug: 0,
	/** 资源目录 */
    resRoot: "",
	/** 小游戏appId */
    miniAppId: "",
    appId: 1,
	channel_id: 0,
    secretKey: "_g15T2VtQj2V.h",
	/** 平台名 */
    platform: "local",
    /** 渠道名 */
    pf: "local",
    /** sdk名称 */
    sdk: "native",
    /** 平台的一些额外配置参数 */
    extData: {},
    /** 区域类型配置 */
    regionMap: {
        0: "0",
        1: "1",
        2: "2",
        3: "3",
        4: "4",
        5: "5",
        6: "6",
        7: "7"
    },
    /** 语言类型配置 */
    langMap: {
        0: "zhcn",
        1: "zhtw",
        2: "en",
        3: "ko",
        4: "ja",
        // 5: "rus",
        // 6: "vie",
        // 7: "th",
		8: "ge",
        9: "fr",
        10: "sp"
    },
    /** 当前区域 */
    region: 0,
    /** 当前语言 */
    lang: 0,
    // servHttp: "https://minigame-pixel-cn-banshu.3kxyz.com:6002",
    servHttp: "http://192.168.16.214:6211",
    servSocket: { ip: "192.168.16.214", port: 8601 },

    /**各语言登录文本 */
    loginTxtMap: {
        0: {
            1: "开始登录",
            2: "游戏加载中",
            3: "SDK初始化",
            4: "获取用户信息",
            5: "链接服务器",
            6: "请求游戏信息",
            7: "游戏资源加载中",
            8: "初始化数据",
            9: "进入游戏",
            10: "初始化失败，请重新登录",
            11: "SDK登录失败",
            12: "服务器数据加载失败",
            13: "链接服务器失败，请重新登录",
            14: "链接已断开，请重新登录",
            15: "创角失败，请重新登录"
        },
        2: {
            1: "Start Login",
            2: "Game Loading",
            3: "SDK Initializing",
            4: "Fetching User Info",
            5: "Connecting to Server",
            6: "Requesting Game Info",
            7: "Loading Game Resources",
            8: "Initializing Data",
            9: "Entering Game",
            10: "Initialization Failed, Please Login Again",
            11: "SDK Login Failed",
            12: "Failed to Load Server Data",
            13: "Failed to Connect to Server, Please Login Again",
            14: "Connection Lost, Please Login Again",
            15: "Failed to Create Character, Please Login Again"
        }
    },
}

window.gameInfo = gameInfo;