import EditorUtils from "../EditorUtils";
import ExportLevel from "../Level/ExportLevel";
const fs = IEditorEnv.require("fs");
const path = IEditorEnv.require("path");

/**
 * @ Author: XXL
 * @ Date: 2026-03-19 18:33
 * @ Description: 场景资源导入器
*/
@IEditorEnv.regAssetImporter(["ls"])
export default class SceneImporter extends IEditorEnv.AssetImporter {

    private static level: ExportLevel;

    private static get levelScene() {
        if (!SceneImporter.level) {
            SceneImporter.level = new ExportLevel(EditorEnv, IEditorEnv);
        }
        return SceneImporter.level;
    }

    async handleImport(): Promise<void> {
        let asset = this.asset;
        let file = asset.file;
        if (file.startsWith(EditorUtils.LEVEL_SCENE_DIR)) {
            console.log("处理关卡场景:" + file);
            SceneImporter.exportLevelPrefab(file);
        }
    }

    /**
     * 导出关卡预制体
     * @param file 
     */
    public static exportLevelPrefab(file: string) {
        let filePath = path.join(EditorEnv.assetsPath, file);
        if (fs.existsSync(filePath)) {
            const str = fs.readFileSync(filePath, "utf-8");
            const data = JSON.parse(str);
            const childs = data._$child;
            if (!childs) return;
            let scene3D: any;
            for (let i = 0, len = childs.length; i < len; i++) {
                const info = childs[i];
                if (info._$type == "Scene3D") {
                    scene3D = info;
                    break;
                }
            }
            if (scene3D) {
                const cc = scene3D._$child;
                if (cc) {
                    for (const d of cc) {
                        if (d.active || d.active == null) {
                            const bo = SceneImporter.levelScene.pushComponent(d, true);
                            if (bo) {
                                filePath = path.join(EditorEnv.assetsPath, EditorUtils.LEVEL_PREFAB_DIR, d.name + ".lh");
                                d._$ver = 1;
                                if (d._$child) {
                                    for (let info of d._$child) {
                                        if (info.name == "NpcBorn" || info.name == "PlayerBorn" || info.name == "ItemBorn") {
                                            info.active = false;
                                        }
                                    }
                                }
                                fs.writeFileSync(filePath, JSON.stringify(d, null, 2));
                                console.log("导出关卡场景预制体:" + filePath);
                                break;
                            }
                        }
                    }
                }
            }
        }
    }
}