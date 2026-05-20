let gameInfo = {
	debug: 0,
    miniAppId: "",
    /** 渠道名 */
    pf: "wechat",
    /** sdk名称 */
    sdk: "wechat",
    appId:"",
    channel_id: 0,
    gameId: 101,
    /** 平台名 */
    platform: "pixel",
    /** 平台的一些额外配置参数 */
    extData: {},
    secretKey: '_g15T2VtQj2V.h',
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
        5: "rus",
        6: "vie",
        7: "th"
    },
    /** 当前区域 */
    region: 0,
    /** 当前语言 */
    lang: 0,
    servHttp: "http://192.168.16.123:6221",
    servSocket: { ip: "192.168.16.214", gamePort: 8601, syncPort: 9601, name: "龙测试" },

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
    getLoginText(id) {
        let t = this;
        let lang = t.lang;
        let txtMap = t.loginTxtMap[lang];
        if (txtMap) {
            return txtMap[id] || "";
        }
        return "";
    }
}


window.gameInfo = gameInfo;