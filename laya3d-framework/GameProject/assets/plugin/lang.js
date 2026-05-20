// 未进入游戏登录时使用到
const chnMap = {
    // 0-199 登录流程使用
    0: "SDK初始化",
    1: "获取用户信息",
    2: "游戏加载中",
    3: "游戏资源加载中",
    4: "请求游戏信息",
    5: "链接服务器",
    6: "初始化数据",
    7: "服务器配置错误",
    8: "链接服务器错误",
    9: "链接已断开，请重新登录",
    10: "服务器断开连接！",
    11: "你的账号在另一个地方登录，你已被迫下线。\n若非本人操作，账号可能被盗！",
    12: "您的帐号已被封",
    13: "服务器维护中，请稍后",
    14: "连接服务器失败，请重新登录",
    15: "登录超时，请重新登录",
    16: "创角失败，请重新登录",
    17: "请检查网络连接后重试",
    18: "重新登录",
}

// 繁体中文
const chntwMap = {
    0: "SDK初始化",
    1: "获取用戶信息",
    2: "遊戲加載中",
    3: "遊戲資源加載中",
    4: "請求遊戲信息",
    5: "鏈接伺服器",
    6: "初始化數據",
    7: "伺服器配置錯誤",
    8: "鏈接伺服器錯誤",
    9: "鏈接已斷開，請重新登錄",
    10: "伺服器斷開連接！",
    11: "你的帳號在另一個地方登錄，你已被迫下線。\n若非本人操作，帳號可能被盜！",
    12: "您的帳號已被封",
    13: "伺服器維護中，請稍後",
    14: "連接伺服器失敗，請重新登錄",
    15: "登錄超時，請重新登錄",
    16: "創角失敗，請重新登錄",
    17: "請檢查網絡連接後重試",
    18: "重新登錄",
}

const enMap = {
    // 0-199 登录流程使用
    0: "SDK init",
    1: "Get user info",
    2: "Game loading",
    3: "Game resource loading",
    4: "Request game info",
    5: "Link server",
    6: "Initialize data",
    7: "Server config error",
    8: "Link server error",
    9: "Link server closed, please login again",
    10: "Server disconnected, please login again",
    11: "Your account has been logged in on another device, you have been forced to log out. \nIf it is not your operation, the account may be stolen!",
    12: "Your account has been sealed",
    13: "Server maintenance, please try again later",
    14: "Connection failed, please login again",
    15: "Login timeout, please login again",
    16: "Create role failed, please login again",
    17: "Please check the network connection and try again",
    18: "Re-login",
}

// 韩语
const koMap = {
    0: "SDK 초기화",
    1: "사용자 정보 가져오기",
    2: "게임 로딩",
    3: "게임 리소스 로딩",
    4: "게임 정보 요청",
    5: "서버 연결",
    6: "데이터 초기화",
    7: "서버 설정 오류",
    8: "서버 연결 오류",
    9: "서버 연결이 끊어졌습니다. 다시 로그인해주세요.",
    10: "서버가 연결되었습니다.",
    11: "당신의 계정이 다른 장치에서 로그인되었습니다. \n계정이 도용될 수 있습니다.",
    12: "당신의 계정이 차단되었습니다.",
    13: "서버 점검 중입니다. 잠시 후 다시 시도해주세요.",
    14: "서버 연결 실패. 다시 로그인해주세요.",
    15: "로그인 시간 초과. 다시 로그인해주세요.",
    16: "캐릭터 생성 실패. 다시 로그인해주세요.",
    17: "네트워크 연결을 확인해주세요.",
    18: "다시 로그인",
}

// 日语
const jaMap = {
    0: "SDK初期化",
    1: "ユーザー情報の取得",
    2: "ゲーム読み込み中",
    3: "ゲームリソース読み込み中",
    4: "ゲーム情報のリクエスト",
    5: "サーバー接続",
    6: "データ初期化",
    7: "サーバー設定エラー",
    8: "サーバー接続エラー",
    9: "接続が切断されました。再度ログインしてください。",
    10: "サーバーが切断されました！",
    11: "あなたのアカウントは他の場所でログインされました。強制的にログアウトされました。\n身に覚えがない場合、アカウントが盗まれている可能性があります！",
    12: "あなたのアカウントは凍結されました",
    13: "サーバーはメンテナンス中です。しばらくお待ちください。",
    14: "サーバーへの接続に失敗しました。再度ログインしてください。",
    15: "ログインタイムアウト。再度ログインしてください。",
    16: "キャラクター作成に失敗しました。再度ログインしてください。",
    17: "ネットワーク接続を確認して、再試行してください。",
    18: "再ログイン",
}

// 德语
const geMap = {
    0: "SDK Initialisierung",
    1: "Benutzerinformationen abrufen",
    2: "Spiel laden",
    3: "Spielressourcen laden",
    4: "Spielinformationen anfordern",
    5: "Server verbinden",
    6: "Daten initialisieren",
    7: "Serverkonfiguration fehlerhaft",
    8: "Serververbindung fehlerhaft",
    9: "Serververbindung getrennt, bitte erneut anmelden",
    10: "Server getrennt, bitte erneut anmelden",
    11: "Ihr Konto wurde auf einem anderen Gerät angemeldet. Sie wurden erzwungen, abgemeldet. \nWenn Sie nicht selbst handeln, kann Ihr Konto gestohlen worden sein!",
    12: "Ihr Konto wurde gesperrt",
    13: "Serverwartung, bitte versuchen Sie es später erneut",
    14: "Serververbindung fehlgeschlagen, bitte erneut anmelden",
    15: "Anmeldungstimeout, bitte erneut anmelden",
    16: "Charakter erstellung fehlgeschlagen, bitte erneut anmelden",
    17: "Bitte überprüfen Sie die Netzwerkverbindung und versuchen Sie es erneut",
    18: "Erneut anmelden",
}

// 法语
const frMap = {
    0: "Initialisation SDK",
    1: "Récupération des informations utilisateur",
    2: "Chargement du jeu",
    3: "Chargement des ressources du jeu",
    4: "Requête de l'information du jeu",
    5: "Connexion au serveur",
    6: "Initialisation des données",
    7: "Configuration du serveur erronée",
    8: "Connexion au serveur erronée",
    9: "Connexion au serveur interrompue, veuillez vous reconnecter",
    10: "Serveur interrompu, veuillez vous reconnecter",
    11: "Votre compte a été connecté sur un autre appareil. Vous avez été forcé à vous déconnecter. \nSi ce n'est pas vous qui avez agi, votre compte peut avoir été volé!",
    12: "Votre compte a été bloqué",
    13: "Maintenance du serveur, veuillez réessayer plus tard",
    14: "Connexion au serveur échouée, veuillez vous reconnecter",
    15: "Temps d'expiration de la connexion, veuillez vous reconnecter",
    16: "Création de personnage échouée, veuillez vous reconnecter",
    17: "Veuillez vérifier la connexion internet et réessayer",
    18: "Reconnexion",
}

// 西班牙语
const spMap = {
    0: "Inicialización SDK",
    1: "Obtención de información del usuario",
    2: "Cargando el juego",
    3: "Cargando recursos del juego",
    4: "Solicitud de información del juego",
    5: "Conexión al servidor",
    6: "Inicialización de datos",
    7: "Configuración del servidor errónea",
    8: "Conexión al servidor errónea",
    9: "Conexión al servidor interrumpida, por favor vuelva a conectarse",
    10: "Servidor interrumpido, por favor vuelva a conectarse",
    11: "Su cuenta ha sido conectada en otro dispositivo. Ha sido forzado a desconectarse. \nSi no es usted quien ha actuado, su cuenta puede haber sido robada!",
    12: "Su cuenta ha sido bloqueada",
    13: "Mantenimiento del servidor, por favor intente nuevamente más tarde",
    14: "Conexión al servidor fallida, por favor vuelva a conectarse",
    15: "Tiempo de expiración de la conexión, por favor vuelva a conectarse",
    16: "Creación de personaje fallida, por favor vuelva a conectarse",
    17: "Por favor verifique la conexión a internet y vuelva a intentarlo",
    18: "Reconexión",
}

window.langStrMap = chnMap;

window.setLangType = function (lang) {
    if (lang == 0 || lang == "0" || lang == "zhcn") {
        window.langStrMap = chnMap;
    } else if(lang == 1 || lang == "1" || lang == "zhtw") {
        window.langStrMap = chntwMap;
    } else if(lang == 2 || lang == "2" || lang == "en") {
        window.langStrMap = enMap;
    } else if(lang == 3 || lang == "3" || lang == "ko") {
        window.langStrMap = koMap;
    } else if(lang == 4 || lang == "4" || lang == "ja") {
        window.langStrMap = jaMap;
    } else if(lang == 5 || lang == "5" || lang == "ge") {
        window.langStrMap = geMap;
    } else if(lang == 6 || lang == "6" || lang == "fr") {
        window.langStrMap = frMap;
    } else if(lang == 7 || lang == "7" || lang == "sp") {
        window.langStrMap = spMap;
    }
}

