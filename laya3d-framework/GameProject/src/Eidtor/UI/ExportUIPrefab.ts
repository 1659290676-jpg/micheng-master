import EditorUtils from "../EditorUtils";

const path = IEditor.require("path");
const fs = IEditor.require("fs");

/**
 * @ Author: XXL
 * @ Date: 2026-01-29 16:05
 * @ Description: 导出UI预制体
*/
@IEditor.regClass()
export default class ExportUIPrefab {

    /**
     * 导出当前UI场景的选中的预制体
     */
    public static async exportSelectUI() {
        let asset = Editor.scene.asset;
        if (asset && asset.type == IEditor.AssetType.Scene && asset.file && asset.file.startsWith(EditorUtils.UI_SCENE_DIR)) {
            // Editor.scene.createPrefab
            let node = Editor.scene.rootNode2D;
            let childrens = node.children;
            if (childrens.length > 0) {
                //先保存场景
                await Editor.sceneManager.saveScene(Editor.scene.sceneId);
                //先检查名字是否有相同的
                let nameSet = new Set<string>();
                for (let i = 0; i < childrens.length; i++) {
                    let children = childrens[i];
                    if (children.name.indexOf(",") >= 0) {
                        // console.error("节点名称不能包含逗号《,》：" + children.name);
                        EditorUtils.showLog("节点名称不能包含逗号《,》：" + children.name, 2);
                        return;
                    }
                    if (nameSet.has(children.name)) {
                        // console.error("请检查节点名称重复：" + children.name);
                        EditorUtils.showLog("请检查节点名称重复：" + children.name, 2);
                        return;
                    }
                }

                //获取选中的节点，导出节点预制体，预制体文件名称与节点名称一致
                let nodes = Editor.scene.getSelection();
                let list: string[] = [];
                for (let i = 0; i < nodes.length; i++) {
                    let node = nodes[i];
                    if (childrens.indexOf(node) >= 0) {
                        list.push(node.name);
                    }
                }
                if (list.length <= 0) {
                    // console.warn("未选中导出的UI节点");
                    EditorUtils.showLog("请选择二级节点导出", 1);
                    return;
                }

                let savePath = asset.file.replace(EditorUtils.UI_SCENE_DIR, "").replace(asset.fileName, "");

                let msg = "";
                for (let i = 0; i < list.length; i++) {
                    let prefabPath = path.join(EditorUtils.UI_PREFAB_DIR, savePath, list[i] + ".lh");
                    let file = path.join(Editor.assetsPath, prefabPath);
                    if (fs.existsSync(file)) {
                        if (msg) {
                            msg += "\n";
                        }
                        msg += prefabPath;
                    }
                }
                if (msg) {
                    // let ret = await Editor.showMessageBox({ message: "是否覆盖存在的预制体：\n" + msg, type: "warning", buttons: ["取消", "确定"] });
                    // if (ret.response != 1) {
                    //     return;
                    // }
                    console.log("覆盖存在的预制体：" + msg);
                }

                await ExportUIPrefab.export(asset.file, savePath, list);

            } else {
                // console.warn("没有可导出的UI节点");
                EditorUtils.showLog("没有可导出的UI节点", 1);
            }
        } else {
            // console.warn("请选择editor/UIScene/目录下的场景");
            EditorUtils.showLog("请选择editor/UIScene/目录下的场景", 1);
        }
    }

    /**
     * 导出UI预制体
     * @param scenePath 场景文件相对路径
     * @param saveDir 保存预设体路径
     * @param prefabs
     * @returns 
     */
    public static async export(scenePath: string, saveDir: string, prefabs: string[]) {

        let filePath = path.join(Editor.assetsPath, scenePath);
        if (!fs.existsSync(filePath)) {
            // console.error("场景文件不存在：" + scenePath);
            EditorUtils.showLog("场景文件不存在：" + scenePath, 2);
            return false;
        }
        let d = fs.readFileSync(filePath, "utf-8");
        let data = JSON.parse(d);
        let childrens = data._$child;
        if (!childrens || childrens.length <= 0) {
            // console.error("场景文件没有子节点：" + scenePath);
            EditorUtils.showLog("场景文件没有子节点：" + scenePath, 2);
            return false;
        }

        // 创建目录
        function mkDir(root: string, dir: string) {
            let d = path.join(root, dir);
            if (!fs.existsSync(d)) {
                mkDir(root, path.dirname(dir));
                fs.mkdirSync(d);
            }
        }

        // 导出预制体
        for (let i = 0; i < prefabs.length; i++) {
            let prefab = prefabs[i];
            let isPrefab = false;
            for (let j = 0; j < childrens.length; j++) {
                let child = childrens[j];
                if (child.name == prefab) {
                    isPrefab = true;
                    if (child._$prefab) {
                        EditorUtils.showLog("选中的节点已是预制体：" + prefab, 1);
                        break;
                    }
                    // 查找runtime代码的.meta文件获取uuid
                    let uuid = "";
                    let interName = "Runtime_" + prefab + ".ts.meta";
                    let codePath = path.join(Editor.projectPath, EditorUtils.UI_CODE_DIR, saveDir.charAt(0).toUpperCase() + saveDir.slice(1), interName);
                    if (fs.existsSync(codePath)) {
                        let meta = JSON.parse(fs.readFileSync(codePath, "utf-8"));
                        if (meta.uuid) {
                            uuid = meta.uuid;
                        }
                    }

                    let prefabPath = path.join(EditorUtils.UI_PREFAB_DIR, saveDir, prefab + ".lh");
                    let version = 1;
                    //将节点位置重置
                    let str = JSON.stringify(child, null, 2);
                    let d = JSON.parse(str);
                    d._$ver = version;
                    d.x = d.y = 0;
                    if (uuid) {
                        d._$runtime = "res://" + uuid;
                    }
                    str = JSON.stringify(d, null, 2);
                    await Editor.assetDb.writeFile(prefabPath, str);
                    EditorUtils.showLog("成功导出预制体：" + prefabPath);
                    break;
                }
            }
            if (!isPrefab) {
                // console.error("没有找到预制体：" + prefab);
                EditorUtils.showLog("没有找到预制体：" + prefab, 2);
            }
        }
        return true;
    }

    /**
     * 在asssets目录下创建界面预制体
     * @param dir 
     */
    public static async createPanelPrefab(dir: string) {
        console.log(dir);
        let filePath = path.join(dir, "Vw_Panel.lh");
        // let dialog = await Editor.showSaveDialog({
        //     defaultPath: path.join(Editor.assetsPath, filePath),
        //     title: "创建界面预制体",
        //     buttonLabel: "保存",
        //     filters: [
        //         { name: "预制体", extensions: ["lh"] }
        //     ]
        // });
        // if (dialog.canceled) return;
        // console.log(dialog.filePath);
        let panel: any = Editor.panelManager.getPanel("ProjectPanel");
        if (panel) {
            let uid = IEditor.utils.genShortId();
            panel.createAsset(filePath, path.join(Editor.assetsPath, "editor/templet/PanelTemplet.lh"), { UUID: uid });
        }
        // let info = await Editor.assetDb.createFileFromTemplate(filePath, path.join(Editor.assetsPath,"editor/templet/PanelTemplet.lh"));

    }
}