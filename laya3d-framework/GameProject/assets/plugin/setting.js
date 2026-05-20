let gameInfo = {
    debug:1,
    appId: "0",
    /** 包类型 */
    type: 0,
    /** sdk名称 */
    sdk: "test",
    /** 平台类型 */
    platform: "dinosaur",
    secretKey: "_g15T2VtQj2V.h",
    pf: "local",
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
        5: "ge",
        6: "fr",
        7: "sp"
    },
    langTexts: {
        0: "简体中文",
        1: "繁體中文",
        2: "English",
        3: "한국어",
        4: "日本語",
        5: "Deutsch",
        6: "Français",
        7: "Español"
    },
    /** 当前区域 */
    region: 0,
    /** 当前语言 */
    lang: 0,
    servHttp: "http://192.168.16.123:6221",
    servSocket: { ip: "192.168.16.214", gamePort: 8701, syncPort: 9701, name: "龙冰华" },
}

window.gameInfo = gameInfo;


function queryURLParams(url) {
    let parames = {}; // 定义参数对象
    let reg = /[?&]([^=&#]+)=([^&#])*/g;
    let querys = url.match(reg);
    if (querys) {
        for (let k in querys) {
            var q = querys[k].split("=");
            var key = q[0].substr(1);
            var v = q[1];
            parames[key] ? parames[key] = [].concat(parames[key], v) : parames[key] = v;
        }
    }
    return parames;
}

function checkUrl() {
    let d = queryURLParams(window.location.href);
    if (d.merge) {
        window.resMerge = true;
    }
    if (d.lang) {
        if (gameInfo.langMap[d.lang]) {
            gameInfo.lang = +d.lang;
        }
    }
    if (d.region) {
        if (gameInfo.regionMap[d.region]) {
            gameInfo.region = +d.region;
        }
    }
    if (d.type) {
        gameInfo.type = +d.type || 0;
    }
}
checkUrl();
