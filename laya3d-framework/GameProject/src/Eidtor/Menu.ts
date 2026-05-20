import EditorUtils from "./EditorUtils";
import ExportUIPrefab from "./UI/ExportUIPrefab";
import EditorCreateUISceneDialog from "./UI/EditorCreateUISceneDialog";
import ExportUICode from "./UI/ExportUICode";
import EditorCreateUIPrefabDialog from "./UI/EditorCreateUIPrefabDialog";
import DialogCreateLevelScene from "./Level/DialogCreateLevelScene";
import ExportStageLevNodePos from "./Export/ExportStageLevNodePos";
import { BuildWxGameDialog } from "./UI/BuildWxGameDialog";

/**
 * @ Author: XXL
 * @ Date: 2026-01-28 15:16
 * @ Description: 菜单
*/
IEditor.regClass()
export class Menu {

    private static _is_open_scene = false;
    @IEditor.menu("App/XYTool/启动游戏")
    public static async startGame() {
        if (!Editor.sceneManager.playing) {
            if (Menu._is_open_scene) {
                console.warn("正在打开场景中");
                return;
            }
            if (Editor.sceneManager.activeScene.asset.file != "Scene.ls") {
                Editor.openFile("Scene.ls");
                Menu._is_open_scene = true;
                await new Promise((resolve) => {
                    setTimeout(() => {
                        Menu._is_open_scene = false;
                        resolve(true);
                    }, 500);
                });
                if (Editor.sceneManager.activeScene.asset.file != "Scene.ls") {
                    console.log("不要切换场景");
                    return;
                }
            }
            SceneEditor.playControls.play(true);
        } else {
            console.warn("当前场景正在运行中");
        }
    }

    @IEditor.menu("App/XYTool/构建微信小游戏")
    public static async openBuildWxGameDialog() {
        let dialog = await Editor.getDialog(BuildWxGameDialog);
        if (dialog) {
            dialog.show();
        }
    }


    @IEditor.menu("Project/XYTool", { position: "first", sepAfter: true })
    private static test() { }

    @IEditor.menu("Project/XYTool/创建关卡场景")
    public static createLevelScene() {
        let panel: any = Editor.panelManager.getPanel("ProjectPanel");
        if (panel) {
            if (panel._assetsPanel) {
                let pathObj = panel._assetsPanel.getSelectedFolder();
                if (!pathObj) {
                    console.warn("请选择创建目录");
                    return;
                }
                let dir: string = pathObj.file;
                if (!dir || !dir.startsWith(EditorUtils.LEVEL_SCENE_DIR)) {
                    console.warn(`请选择${EditorUtils.LEVEL_SCENE_DIR}目录下文件夹创建关卡场景: ${dir}`);
                    return;
                }
                DialogCreateLevelScene.open(dir);
            }
        }
    }

    /**
     * 在项目资源右键菜单栏中，创建UI场景
     * @returns 
     */
    @IEditor.menu("Project/XYTool/创建 Panel 场景")
    public static createUIScene() {
        let panel: any = Editor.panelManager.getPanel("ProjectPanel");
        if (panel) {
            if (panel._assetsPanel) {
                let pathObj = panel._assetsPanel.getSelectedFolder();
                if (!pathObj) {
                    console.warn("请选择创建目录");
                    return;
                }
                let dir: string = pathObj.file;
                if (!dir || !dir.startsWith(EditorUtils.UI_SCENE_DIR)) {
                    console.warn(`请选择${EditorUtils.UI_SCENE_DIR}目录下文件夹创建ui场景: ${dir}`);
                    return;
                }
                EditorCreateUISceneDialog.open(dir);
            }
        }
    }

    /**
     * 在项目资源右键菜单栏中，创建UI预制体
     */
    @IEditor.menu("Project/XYTool/创建 Panel 预制体", { sepAfter: true })
    public static async createUIPrefab() {
        let panel: any = Editor.panelManager.getPanel("ProjectPanel");
        if (panel) {
            if (panel._assetsPanel) {
                let pathObj = panel._assetsPanel.getSelectedResource();
                if (!pathObj) {
                    console.warn(`请选择${EditorUtils.UI_PREFAB_DIR}目录下文件夹`);
                    return;
                }
                let dir: string = pathObj.file;
                if (!dir || !dir.startsWith(EditorUtils.UI_PREFAB_DIR)) {
                    console.warn(`请选择${EditorUtils.UI_PREFAB_DIR}目录下文件夹: ${dir}`);
                    return;
                }
                // ExportUIPrefab.createPanelPrefab(dir);
                EditorCreateUIPrefabDialog.open(dir);
            }
        }
    }


    /**
     * 在项目资源右键菜单栏中，预制体导出界面脚本
     * @returns 
     */
    @IEditor.menu("Project/XYTool/导出 Panel 脚本")
    public static exportProjectPrefabCode() {
        let panel: any = Editor.panelManager.getPanel("ProjectPanel");
        if (panel) {
            if (panel._assetsPanel) {
                let pathObj = panel._assetsPanel.getSelectedResource();
                if (!pathObj) {
                    console.warn("请选择预制体");
                    return;
                }
                let dir: string = pathObj.file;
                if (!dir) {
                    console.warn(`请选择${EditorUtils.UI_PREFAB_DIR}目录下文件夹预制体: ${dir}`);
                    return;
                }
                ExportUICode.exportPanelByPrefabPath(dir);
            }
        }
    }

    @IEditor.menu("Project/XYTool/导出组件预制体 Runtime 脚本")
    public static async exportProjectWidgetPrefabCode() {
        let panel: any = Editor.panelManager.getPanel("ProjectPanel");
        if (panel) {
            if (panel._assetsPanel) {
                let pathObj = panel._assetsPanel.getSelectedResource();
                if (!pathObj) {
                    console.warn("请选择预制体");
                    return;
                }
                let dir: string = pathObj.file;
                if (!dir) {
                    console.warn(`请选择${EditorUtils.UI_PREFAB_DIR}目录下文件夹预制体: ${dir}`);
                    return;
                }
                await ExportUICode.exportWidgetRuntime(dir);
            }
        }
    }

    @IEditor.menu("Scene/XYTool", { position: "first", sepAfter: true })
    private static test1() { }
    /**
     * 导出场景中的UI预制体
     */
    @IEditor.menu("Scene/XYTool/导出 Panel 预制体")
    public static async exportSceneUIPrefab() {
        await ExportUIPrefab.exportSelectUI();
    }

    /**
     * 在场景右键菜单栏中，导出界面脚本
     */
    @IEditor.menu("Scene/XYTool/导出 Panel 脚本")
    public static async exportSceneCode() {
        await ExportUICode.exportSceneSelect();
    }


    @IEditor.menu("Scene/XYTool/导出组件预制体 Runtime 脚本", { sepBefore: true })
    public static async exportSceneWidgetPrefabCode() {
        await ExportUICode.exportWidgetRuntime();
    }


    @IEditor.menu("Hierarchy/XYTool", { position: "first", sepAfter: true })
    private static test2() { }


    @IEditor.menu("Hierarchy/XYTool/导出 关卡 预制体", { sepAfter: true })
    public static async exportWidgetPrefabCode() {
        // await ExportUICode.exportWidgetRuntime();
    }


    /**
     * 在层级面包中右键菜单栏，导出场景中的选中的UI预制体
     */
    @IEditor.menu("Hierarchy/XYTool/导出 Panel 预制体")
    public static async exportUIPrefab() {
        await ExportUIPrefab.exportSelectUI();
    }

    /**
     * 在层级面包中右键菜单栏，导出界面脚本
     */
    @IEditor.menu("Hierarchy/XYTool/导出 Panel 脚本")
    public static async exportUICode() {
        await ExportUICode.exportSceneSelect();
    }

    @IEditor.menu("Hierarchy/XYTool/导出主界面关卡节点位置", { sepBefore: true })
    public static async exportStageNodePosition() {
        await ExportStageLevNodePos.export();
    }

    private static isCreateUIScene() {
        let panel: any = Editor.panelManager.getPanel("ProjectPanel");
        if (panel) {
            console.log("panel");
            let asset = panel.getSelectedFolder();
            if (asset) {
                let file = asset.file;
                if (file && file.startsWith(EditorUtils.UI_SCENE_DIR)) {
                    return true;
                }
            }
        } else {
            console.log("panel null");
        }
        return false;
    }

    /**
     * 导出UI预制体的菜单是否可操作
     * @returns 
     */
    private static isCreateUIPrefabEnable() {
        //要选中editor/UIScene/目录下场景
        //并选中第二级节点
        let asset = Editor.scene.asset;
        if (asset && asset.type == IEditor.AssetType.Scene && asset.file && asset.file.startsWith(EditorUtils.UI_SCENE_DIR)) {
            let nodes = Editor.scene.getSelection();
            if (nodes.length > 0) {
                let root = Editor.scene.rootNode2D;
                let childrens = root.children;
                for (let i = 0; i < nodes.length; i++) {
                    let node = nodes[i];
                    if (childrens.indexOf(node) >= 0) {
                        return true;
                    }
                }
            }
        }
        return false;

    }

    // @IEditor.onLoad
    // public static onLoad() {
    // }
}
