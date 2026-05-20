/**
 * 碰撞组枚举
 */
export const enum EnumCollisonGroup {
    Default = 0,
    Area = 1,
    /** 建筑 */
    Npc = 2,
    /** 建筑 */
    Building = 3,
    /** 玩家 */
    Player = 4,
    /** 技能的碰撞体 */
    Skill = 5,
    /** 不碰撞 */
    Donot = 6,
    /** 物品 */
    Item = 7,
}