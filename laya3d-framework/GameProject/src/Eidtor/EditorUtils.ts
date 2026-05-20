/**
 * @ Author: XXL
 * @ Date: 2026-01-29 17:01
 * @ Description: 常量
*/
export default class EditorUtils {
    /** 模板目录 */
    public static readonly TEMPLET_DIR = "editor/templet/";

    /** 编辑关卡场景目录 */
    public static readonly LEVEL_SCENE_DIR = "editor/levelScene";

    /** 编辑UI场景目录 */
    public static readonly UI_SCENE_DIR = "editor/uiScene/";
    /** ui预制体目录 */
    public static readonly UI_PREFAB_DIR = "resources/ui/prefab/";

    /** 编辑器UI组件目录 */
    public static readonly WIDGET_DIR = "editor/widget/"

    /** ui组件代码目录 */
    public static readonly UI_CODE_DIR = "src/Game/Module/";

    /** 建筑组件代码路径 */
    public static readonly BUILDING_COMP_FILE = "src/Game/Scene/Components/Unit_Building.ts";
    /** npc出生点组件代码路径 */
    public static readonly NPC_BORN_COMP_FILE = "src/Game/Scene/Components/Point_NpcBorn.ts";
    /** 玩家出生点组件代码路径 */
    public static readonly PLAYER_BORN_COMP_FILE = "src/Game/Scene/Components/Point_PlayerBorn.ts";
    /** 关卡场景代码名称 */
    public static readonly LEVEL_SCENE_CODE_NAME = "Level_Scene.ts";
    /** 关卡预制体目录 */
    public static readonly LEVEL_PREFAB_DIR = "resources/scene/level/";
    /** 建筑预制体目录 */
    public static readonly BUILDING_PREFAB_DIR = "resources/scene/building/";
    /** 建筑材质文件 */
    public static readonly BUILDING_MATERIAL_FILE = "resources/scene/material/changjing_tex.lmat";
    public static readonly GROUND_PREFAB_DIR = "resources/scene/ground/";
    public static readonly GROUND_MATERIAL_FILE = "resources/scene/material/ground_tex.lmat";

    /** 添加建筑组件的层 */
    public static readonly LAYER_BUILDING = 3;


    /**
     * 显示日志
     * @param msg 
     * @param type 
     * @returns 
     */
    public static showLog(msg: string, type: 0 | 1 | 2 = 0) {
        if (!msg) return;
        let method = "log";
        if (type == 1) {
            method = "warn";
        } else if (type == 2) {
            method = "error";
        }
        (<any>console)[method](msg);
        if (type == 1) {
            Editor.alert(msg, "warning");
        } else if (type == 2) {
            Editor.alert(msg, "error");
        }
    }
}