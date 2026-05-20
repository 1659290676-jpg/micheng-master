/**
 * @ Author: XXL
 * @ Date: 2025-06-10 12:00
 * @ Description: 动作
*/
export default class EnumAction {
    /**待机*/
    public static readonly Idle = 0;
    /**跑*/
    public static readonly Run = 1;
    /**攻击*/
    public static readonly Atk = 2;
    /**受击*/
    public static readonly Hit = 3;
    /**死亡*/
    public static readonly Dead = 4;
    /**坠落*/
    public static readonly Fall = 5;
    /**技能大招*/
    public static readonly Skill = 6;
    /**坐*/
    public static readonly Sit = 7;
    /**跳*/
    public static readonly Jump = 8;
    /**骑乘*/
    public static readonly Ride = 9;
    
    /**spine特效动画默认名*/
    public static readonly Eff_Str = "animation";
    /**帧特效动作默认名*/
    public static readonly Ani_Str = "_1";
    /**待机*/
    public static readonly Idle_Str = "stand";
    /**跑*/
    public static readonly Run_Str = "run";
    /**攻击*/
    public static readonly Atk_Str = "attack";
    /**受击*/
    public static readonly Hit_Str = "hit";
    /**死亡*/
    public static readonly Dead_Str = "dead";
    /**坠落*/
    public static readonly Fall_Str = "fall";
    /**技能*/
    public static readonly Skill_Str = "skill";
    /**坐*/
    public static readonly Sit_Str = "sit";
    /**跳*/
    public static readonly Jump_Str = "jump";
    /**骑乘*/
    public static readonly Ride_Str = "ride";

    /**
     * 动作名映射
     */
    public static readonly NameMap = {
        [EnumAction.Idle]: EnumAction.Idle_Str,
        [EnumAction.Run]: EnumAction.Run_Str,
        [EnumAction.Atk]: EnumAction.Atk_Str,
        [EnumAction.Hit]: EnumAction.Hit_Str,
        [EnumAction.Dead]: EnumAction.Dead_Str,
        [EnumAction.Fall]: EnumAction.Fall_Str,
        [EnumAction.Skill]: EnumAction.Skill_Str,
        [EnumAction.Sit]: EnumAction.Sit_Str,
        [EnumAction.Jump]: EnumAction.Jump_Str,
        [EnumAction.Ride]: EnumAction.Ride_Str,
    }

    /**
     * 动作时间映射
     */
    public static readonly TimeMap = {
        [EnumAction.Idle]: 1000,
        [EnumAction.Run]: 800,
        [EnumAction.Atk]: 1000,
        [EnumAction.Hit]: 500,
        [EnumAction.Dead]: 1000,
        [EnumAction.Fall]: 1000,
        [EnumAction.Skill]: 1000,
    }

}