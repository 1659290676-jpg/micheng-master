import ExportLevel from "./ExportLevel";

const fs = IEditor.require("fs");
const path = IEditor.require("path");

/**
 * @ Author: XXL
 * @ Date: 2026-03-19 16:39
 * @ Description: 场景信息组件
*/
@IEditor.inspectorField("Level_Scene")
export default class InspectorLevelScene extends IEditor.PropertyField {

    private static level: ExportLevel;

    private static get levelScene() {
        if (!InspectorLevelScene.level) {
            InspectorLevelScene.level = new ExportLevel(Editor, IEditor);
        }
        return InspectorLevelScene.level;
    }

    create(): IEditor.IPropertyFieldCreateResult {
        let panel = IEditor.GUIUtils.createInspectorPanel();
        let btnInfo = IEditor.GUIUtils.createButton();
        btnInfo.text = "生成场景信息";
        btnInfo.onClick(this.generateSceneInfo, this);
        panel.addChild(btnInfo);

        // let btnPrefab = IEditor.GUIUtils.createButton();
        // btnPrefab.text = "生成场景预设";
        // btnPrefab.onClick(this.generateScenePrefab);
        // btnPrefab.x = btnInfo.x + btnInfo.width + 10;
        // panel.addChild(btnPrefab);
        panel.height = btnInfo.height;
        return { ui: panel };
    }

    private async generateSceneInfo(e: gui.Event) {
        let asset = Editor.scene.asset;
        if (asset) {
            if (asset.type == IEditor.AssetType.Scene && asset.file) {
                let uuid = InspectorLevelScene.levelScene.getBuildCodeUuid();
                if (!uuid) {
                    console.error("未找到建筑组件代码");
                    return;
                }

                await Editor.sceneManager.saveScene(Editor.scene.sceneId);

                let filePath = path.join(Editor.assetsPath, asset.file);
                if (fs.existsSync(filePath)) {
                    let sceneData = fs.readFileSync(path.join(Editor.assetsPath, asset.file), "utf-8");
                    sceneData = JSON.parse(sceneData);
                    let childs = sceneData._$child;
                    let importData: any;
                    for (let info of childs) {
                        if (info._$type == "Scene3D") {
                            importData = info;
                            break;
                        }
                    }
                    if (importData) {
                        let cc = importData._$child;
                        if (cc) {
                            for (let d of cc) {
                                InspectorLevelScene.levelScene.pushComponent(d);
                            }
                        }
                    }

                    Editor.assetDb.writeFile(asset.file, JSON.stringify(sceneData, null, 2));
                    // await Editor.assetDb.getAsset(asset.file);
                    // Editor.openFile(asset.file);
                }
            }
        }
    }


    // private generateScenePrefab(e: gui.Event) {
    // }
}