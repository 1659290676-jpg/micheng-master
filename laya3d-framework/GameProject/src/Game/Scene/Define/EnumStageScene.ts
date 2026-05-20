/**
 * @ Author: XXL
 * @ Date: 2026-03-24 14:45
 * @ Description: 关卡场景常量
*/
export enum EnumStageScene {
    /** 场景网格分区大小（米） */
    SCENE_GRID_SIZE = 10,

    // NPC配置
    /** NPC移动速度（米/秒） */
    NPC_SPEED = 1.6,
    /** 每帧更新NPC数量（性能核心） */
    NPC_BATCH_UPDATE = 100,
    /** NPC触发逃离距离 */
    NPC_FLEE_DIST = 8,
    /** 每次创建NPC数量（性能核心） */
    NPC_CREATE_COUNT = 200,
    /** 每帧检测创建NPC间隔（毫秒） */
    NPC_CHECK_CREATE = 1000,
    /** 靠近时间 */
    NPC_NEAR_TIME = 500,

    /** 攻击检测范围（米） */
    ATTACK_DETECT_RANGE = 3,
    /** 攻击冷却时间（毫秒） */
    ATTACK_COOLDOWN = 600,
    /** 玩家移动速度（米/秒） */
    PLAYER_SPEED = 3,

    // 摄像机配置（锁定角色）
    /** 相机偏移值X（米） */
    CAMERA_OFFSET_X = 0,
    /** 相机偏移值Y（米） */
    CAMERA_OFFSET_Y = 14,
    /** 相机偏移值Z（米） */
    CAMERA_OFFSET_Z = 9,
    /** 相机平滑度 */
    CAMERA_SMOOTH = 1,
    /** 相机正交大小 */
    CAMERA_ORTHOGRAPHIC_SIZE = 13.5,
    /** 相机视野 */
    CAMERA_FIELD_OF_VIEW = 62,

    /** 玩家存活时间（毫秒） */
    PLAYE_TIME = 60000,
    /** 玩家复活时间（毫秒） */
    RELIVE_TIME = 60000,

    /** 技能 吞噬吸力 吸周围npc距离 （米） */
    SKILL_NEAR_DIST = 8,
}