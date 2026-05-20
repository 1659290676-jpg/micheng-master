import ResPath from "../Resource/ResPath";
import EnumAction from "./EnumAction";

/**
 * @ Author: XXL
 * @ Date: 2025-06-12 16:26
 * @ Description: 描述
*/
export default class MovieClipUtils {
    /**动作部件类型 阴影*/
    public static readonly T_SHADOW = 1;
    /**动作部件类型 身体*/
    public static readonly T_BODY = 10;
    /**动作部件类型 坐骑*/
    public static readonly T_HORSE = 20;
    /**动作部件类型 坐骑遮罩*/
    public static readonly T_HORSE_MASK = 21;
    /**动作部件类型 武器*/
    public static readonly T_WEAPON = 30;
    /**动作部件类型 武器遮罩*/
    public static readonly T_WEAPON_MASK = 31;
    /**动作部件类型 翅膀*/
    public static readonly T_WING = 40;
    /**动作部件类型 称号*/
    public static readonly T_TITLE = 50;
    /**动作部件类型 光环*/
    public static readonly T_HALO = 60;
    /**动作部件类型 特效*/
    public static readonly T_EFF = 70;

    /**正面深度*/
    private static _faceMap: Record<number | string, number>;
    /**背面深度*/
    private static _backMap: Record<number | string, number>;
    /**
     * 获取正面部件的深度
     * @returns 
     */
    public static getDepFace() {
        if (!MovieClipUtils._faceMap) {
            let map: any = MovieClipUtils._faceMap = {};
            map[MovieClipUtils.T_SHADOW] = 10;
            map[MovieClipUtils.T_HALO] = 11;
            map[MovieClipUtils.T_HORSE] = 20;
            map[MovieClipUtils.T_WEAPON_MASK] = 30;
            map[MovieClipUtils.T_WING] = 40;
            map[MovieClipUtils.T_BODY] = 50;
            map[MovieClipUtils.T_WEAPON] = 60;
            map[MovieClipUtils.T_HORSE_MASK] = 70;
            map[MovieClipUtils.T_TITLE] = 80;
        }
        return MovieClipUtils._faceMap;
    }

    /**
     * 获取背面部件深度
     * @returns 
     */
    public static getDepBack() {
        if (!MovieClipUtils._backMap) {
            let map: any = MovieClipUtils._backMap = {};
            map[MovieClipUtils.T_SHADOW] = 10;
            map[MovieClipUtils.T_HALO] = 11;
            map[MovieClipUtils.T_HORSE] = 20;
            map[MovieClipUtils.T_WEAPON] = 30;
            map[MovieClipUtils.T_BODY] = 40;
            map[MovieClipUtils.T_WEAPON_MASK] = 50;
            map[MovieClipUtils.T_WING] = 60;
            map[MovieClipUtils.T_HORSE_MASK] = 70;
            map[MovieClipUtils.T_TITLE] = 80;
        }
        return MovieClipUtils._backMap;
    }

    /**
    * 获取身体模型路径
    * @param id 资源id
    * @param dir 方向
    * @param act 动作类型
    * @param actName 动作名称
    */
    public static getBodyUrl(id: number | string, dir: number, act: number, actName?: number | string) {
        let d = dir == 2 || dir == 3 ? "f" : "b";
        let n = actName || (act == EnumAction.Atk ? EnumAction.Atk_Str : "ani");
        return ResPath.getBody(id + "/" + d + "/" + n);
    }
    /**
     * 获取坐骑模型路径
     * @param id 资源id
     * @param dir 方向
     */
    public static getHorseUrl(id: number | string, dir: number) {
        let d = dir == 2 || dir == 3 ? "f" : "b";
        return ResPath.getHorse(id + "/" + d + "/ani");
    }
    /**
     * 获取坐骑遮罩模型路径
     * @param id 资源id
     * @param dir 方向
     */
    public static getHorseMaskUrl(id: number | string, dir: number) {
        let d = dir == 2 || dir == 3 ? "f" : "b";
        return ResPath.getHorse(id + "/head/" + d + "/ani");
    }

    /**
     * 获取武器模型路径
     * @param id 资源id
     * @param dir 方向
     * @param act 动作类型
     * @param actName 动作名称
     */
    public static getWeaponUrl(id: number | string, dir: number, act: number, actName?: number | string) {
        let d = dir == 2 || dir == 3 ? "f" : "b";
        let n = actName || (act == EnumAction.Atk ? EnumAction.Atk_Str : "ani");
        return ResPath.getWeapon(id + "/" + d + "/" + n);
    }
    /**
     * 获取武器遮罩模型路径
     * @param id 资源id
     * @param dir 方向
     * @param act 动作类型
     * @param actName 动作名称
     */
    public static getWeaponMaskUrl(id: number | string, dir: number, act: number, actName?: number | string) {
        let d = dir == 2 || dir == 3 ? "f" : "b";
        let n = actName || (act == EnumAction.Atk ? EnumAction.Atk_Str : "ani");
        return ResPath.getWeapon(id + "/head/" + d + "/" + n);
    }

    /**
     * 获取翅膀模型路径
     * @param id 资源id
     * @param dir 方向
     */
    public static getWingUrl(id: number | string, dir: number) {
        let d = dir == 2 || dir == 3 ? "f" : "b";
        return ResPath.getWing(id + "/" + d + "/ani");
    }


}