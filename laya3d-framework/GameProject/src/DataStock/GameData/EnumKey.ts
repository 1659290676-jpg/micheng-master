/**
 * @ Author: XXL
 * @ Date: 2026-03-06 10:46
 * @ Description: 物品、属性key定义枚举
*/
export default class EnumKey {
    /** 道具 */
    public static readonly ITEM = 1;
    /** 金币 */
    public static readonly Gold = 3;

    
    /** 攻击 */
    public static readonly Attack = 301;
    /** 速度 */
    public static readonly Speed = 302;
    /** 成长 */
    public static readonly GrowUp = 303;


    // 其他一些定义
    // 等级 key
    public static readonly Key_Lev = 5;
    // 角色经验
    public static readonly Key_Exp = 6;
    // id
    public static readonly Key_ID = 101;
    // 性别
    public static readonly Key_Sex = 103;
    // 名称
    public static readonly Key_Name = 104;
    // 区服 id
    public static readonly Key_SrvId = 105;
    // 城市
    public static readonly Key_City = 106;
    // IP 归属
    public static readonly Key_IpCity = 107;
    /**头像id */
    public static readonly Key_Head = 108;
    /**通关关卡id */
    public static readonly Key_Gq = 109;
    /**是否开通广告卡 */
    public static readonly Key_Ad = 111;
    /** 总充值(分) */
    public static readonly KEY_RECHARGE = 112;
    /** 已激活的皮肤 */
    public static readonly KEY_ACT_SKIN = 113;
    /** 属性等级 */
    public static readonly KEY_ATTR = 114;
    /** 离线卡状态 */
    public static readonly KEY_OFFLINE = 115;
}