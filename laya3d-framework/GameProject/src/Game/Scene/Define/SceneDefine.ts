/**
 * @ Author: XXL
 * @ Date: 2026-04-13 09:28
 * @ Description: 场景常量
*/
export default class SceneDefine {
    public static readonly Down = new Laya.Vector3(0, -1, 0);
    /** 射线对象（复用，提升性能） */
    public static readonly Ray: Laya.Ray = new Laya.Ray(new Laya.Vector3(), SceneDefine.Down);
    /** 射线碰撞信息 */
    public static readonly HitInfo: Laya.HitResult = new Laya.HitResult();
    /** 偏移量 */
    public static readonly Offset: Laya.Vector3 = new Laya.Vector3(0, -0.1, 0);
}