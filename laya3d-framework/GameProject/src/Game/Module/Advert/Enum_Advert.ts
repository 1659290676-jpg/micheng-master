/**
 * @ Author: XXL
 * @ Date: 2026-04-20 20:32
 * @ Description: 广告类型
*/
export const enum Enum_Advert {
    /** 商店购买 */
    StoreBuy = 1,
    /** 关卡通关奖励 */
    StageRd = 2,
    /** 加体力 */
    Stamina = 3,
    /** 强制关卡广告 */
    ForcedStage = 4,
}

/**
 * 广告操作
 */
export const enum Enum_Advert_Opr {
    /** 点击图标 */
    Click = 1,
    /** 开始看 */
    Start = 2,
    /** 看完 */
    End = 3,
    /** 中断 */
    Interrupt = 4,
    /** 免广告看 */
    Free = 5,
}