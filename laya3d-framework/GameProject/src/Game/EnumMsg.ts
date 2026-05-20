/**
 * @ Author: XXL
 * @ Date: 2026-03-06 11:14
 * @ Description: 枚举消息
*/
export const enum EnumMsg {
    // 登录阶段 1-99
    /** 登录界面打开 */
    LOGIN_UI_OPENED = 1,
    /** 更新登录描述 */
    LOGIN_DES = 2,
    /** 平台登录结束 */
    LOGIN_PF_LOGIN_END = 3,
    /** 设置账号结束 */
    LOGIN_USER_END = 4,
    /**是否创角 参数0未创角，1已创角*/
    IS_CREATED_ROLE = 5,
    /**创号失败*/
    CREATE_ROLE_FAIL = 6,
    /**服务器准备数据完成*/
    SRV_READY = 7,
    /**服务器推送掉线*/
    SRV_SEND_OFFLINE = 10,
    /** 登录步骤完成 */
    LOGIN_STEP_FINISH = 11,
    /** 区服更新 */
    SRV_DATA_UPDATE = 12,

    /** 无法离线，socket断开推送 */
    SOCKET_CLOSED = 20,
    
    /** 打开错误界面 */
    Open_Error = 21,

    // 场景阶段 100-149
    /** 进入场景 */
    SCENE_ENTER = 100,
    /** 退出场景 */
    SCENE_EXIT = 101,

    // 系统开启 150-199
    /** 系统开启 */
    SYS_OPEN = 150,


    // 关卡场景阶段 200-299
    /** 开始玩 */
    START_PLAY = 200,
    /** 移动方向 */
    HERO_MOVE_DIR = 201,
    /** 关卡删除玩家 */
    STAGE_DEL_PLAYER = 202,
    // /** 关卡击杀NPC */
    // STAGE_KILL_NPC = 203,
    /** 关卡删除建筑 */
    STAGE_KILL_BUILD = 204,
    /** 关卡升级英雄 */
    STAGE_HERO_UPGRADE = 205,
    /** 关卡挑战失败 */
    STAGE_FAIL = 206,
    /** 关卡挑战成功 */
    STAGE_SUCCESS = 208,
    /** 关卡复活 */
    STAGE_REVIVE = 209,
    /** 关卡使用技能 */
    STAGE_USE_SKILL = 210,
    /** 关卡更新其他玩家方向 */
    STAGE_UI_ENEMY_DIR = 211,
    /** 击杀目标更新 */
    STAGE_TARGET = 212,
    /** 经验添加 */
    STAGE_ADD_EXP = 213,
    /** 技能结束 */
    STAGE_SKILL_END = 214,
    /** 拾取物品 */
    STAGE_ITEMS_PICK_UP = 215,

    // 关卡数据 300-349
    /** 关卡等级更新 */
    STAGE_LEVEL = 300,
    /** 通关关卡，在更新等级前推送 */
    STAGE_PASS = 301,
    /** 体力更新 */
    STAMINA_VAL = 302,
    /** 领取关卡通关奖励 */
    STAGE_RECEIVE_RD = 303,
    /** 关卡结算 0退出1重新开始3输4赢 */
    STAGE_RESULT = 304,

    // 角色属性 350-399
    /** 属性更新 */
    ROLE_ATTR_UPDATE = 350,
    /**角色名 */
    UP_Name = 351,
    /**角色头像 */
    UP_Head = 352,

    // 背包 400-449
    /** 道具更新 */
    BAG_ITEM_UPDATE = 400,
    /** 角色货币属性更新 */
    Role_Val = 401,

    // 框架 450-499
    /**窗口尺寸更新*/
    RESIZE = 450,
    /**0点更新 */
    ZERO_POINT = 451,
    /**更新时间 */
    UP_SrvTm = 452,
    /**关闭ui */
    CLOSE_UI = 453,
    /**打开ui */
    OPEN_UI = 454,
    /**打开ui缓动中 */
    OPEN_TWEEN = 455,
    /**游戏中前后台变化 参数false进入后台 true进入前台*/
    M_GAME_VIS = 456,
    /**游戏音频中断参数true为暂停播放 false为恢复播放*/
    M_AUDIO_PAUSE = 457,
    /** 指引 */
    GUIDE_UI = 458,
    GUIDE_MASK = 459,
    GUIDE_END = 460,

    // 商店 500-550
    // 充值看广告次数刷新
    RECHARGE_AD_CNT = 500,
    // 金币特效缩放
    GOLD_EFF_SCALE = 501,
    /**看广告返回 */
    Advert_Over = 502,
    /**广告进度 */
    UP_AD = 503,
    /**广告结果 */
    Advert_Result = 504,

    // 竞技场、火焰试炼 551-560
    /**打开竞技场 */
    OPEN_ARENA = 551,
    /**火焰试炼状态改变 */
    FIRETRIAL_CHANGE = 552,
    /**阶段更新 */
    STEP_UPDATE = 553,


    // 战令 561-570
    /**战令数据更新 */ 
    WAR_ORDER_UPDATE = 561,
    /**战令领取奖励中有金币 */
    WAR_ORDER_GET_GOLD = 562,
}