const fs = IEditor.require("fs");
const path = IEditor.require("path");

/**
 * @ Author: XXL
 * @ Date: 2026-03-30 18:33
 * @ Description: 建筑信息组件
*/
@IEditor.inspectorField("Unit_Building")
export default class InspectorBuilding extends IEditor.PropertyField {
    create(): IEditor.IPropertyFieldCreateResult {
        let panel = IEditor.GUIUtils.createInspectorPanel();
        let btnInfo = IEditor.GUIUtils.createButton();
        btnInfo.text = "创建碰撞体";
        btnInfo.onClick(this.createCollider, this);
        panel.addChild(btnInfo);
        panel.height = btnInfo.height;
        return { ui: panel };
    }

    private async createCollider(e: gui.Event) {
        let asset = Editor.scene.asset;
        if (asset) {
            if (asset.type == IEditor.AssetType.Prefab && asset.file) {

                // 先保存数据
                await Editor.sceneManager.saveScene(Editor.scene.sceneId);

                const filePath = path.join(Editor.assetsPath, asset.file);
                if (!fs.existsSync(filePath)) {
                    return;
                }

                let prefabData = fs.readFileSync(filePath, "utf-8");


            }
        }
    }

}