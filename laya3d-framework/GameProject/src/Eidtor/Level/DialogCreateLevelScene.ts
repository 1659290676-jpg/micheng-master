import EditorUtils from "../EditorUtils";

/**
 * @ Author: XXL
 * @ Date: 2026-03-19 16:29
 * @ Description: 创建关卡场景
*/
@IEditor.regClass()
export default class DialogCreateLevelScene extends IEditor.Dialog {

    private savePathTxt: IEditor.TextInput;
    private nameTxt: IEditor.TextInput;

    async create() {
        let _t = this;
        let panel = await gui.UIPackage.createWidget(EditorUtils.WIDGET_DIR + "CreateLevelScene.widget");
        panel.text = "创建关卡场景";
        _t.contentPane = panel;
        let savePathTxt = IEditor.GUIUtils.createTextInput();
        savePathTxt.enabled = false;
        savePathTxt.setSize(280, 25);
        savePathTxt.setPos(86, 56);
        panel.addChild(savePathTxt);
        _t.savePathTxt = savePathTxt;

        let nameTxt = IEditor.GUIUtils.createTextInput();
        nameTxt.setSize(280, 25);
        nameTxt.setPos(86, 96);
        nameTxt.text = "";
        panel.addChild(nameTxt);
        _t.nameTxt = nameTxt;

        let btnSure = panel.getChild("btnSure");
        btnSure.onClick(async () => {
            let bo = await _t.createScene();
            bo && _t.hide();
        }, _t);
    }

    protected onShown(dir: string): void {
        let _t = this;
        _t.savePathTxt.text = dir;
    }

    /**
     * 创建场景
     * @returns 
     */
    private async createScene() {
        let _t = this;
        // 路径与名称要去掉全部空格
        let saveDir = _t.savePathTxt.text.replace(/\s+/g, "");
        let nameStr = _t.nameTxt.text.replace(/\s+/g, "");
        if (!saveDir) {
            console.warn("请选择保存路径");
            return true;
        }
        if (!nameStr) {
            console.warn("请输入场景名称");
            return false;
        }

        // 提示是否存在
        const fs = IEditor.require("fs");
        const path = IEditor.require("path");
        const sceneFile = path.join(saveDir, nameStr + ".ls");
        const absSceneFile = path.join(Editor.assetsPath, sceneFile);
        if (fs.existsSync(absSceneFile)) {
            console.warn(`已存在同名场景文件${sceneFile}`);
            let ret = await Editor.showMessageBox({ message: `已存在同名场景文件${nameStr}，是否覆盖？`, type: "warning", buttons: ["取消", "确定"] });
            if (ret.response != 1) {
                return false;
            }
        }

        // 获取模版修改名称
        const templeteFile = path.join(EditorUtils.TEMPLET_DIR, "LevelTemplet.ls");
        const absTempleFile = path.join(Editor.assetsPath, templeteFile);
        if (!fs.existsSync(absTempleFile)) {
            console.warn(`未找到关卡场景模板文件${templeteFile}`);
            return false;
        }
        let templeData:string = fs.readFileSync(absTempleFile, "utf-8");
        templeData = templeData.replace("{name}", nameStr);

        // 改变关卡场景的组件的id
        let sceneData = JSON.parse(templeData);
        let childs = sceneData._$child;
        for (let info of childs) {
            let cc = info._$child;
            if (cc) {
                for (let data of cc) {
                    if (data._$comp) {
                        for (let comp of data._$comp) {
                            let scrPath: string = comp.scriptPath;
                            if (scrPath && scrPath.endsWith(EditorUtils.LEVEL_SCENE_CODE_NAME)) {
                                let id = data._$id;
                                let uid = IEditor.utils.genShortId();
                                // 把全部id替换成uid
                                templeData = templeData.replace(new RegExp(id, "g"), uid);
                                break;
                            }
                        }
                    }
                }
            }
        }

        await Editor.assetDb.writeFile(sceneFile, templeData);
        //创建成功打开场景
        Editor.openFile(sceneFile);
        return true;
    }


    /**
     * 打开
     * @param dir 
     */
    public static async open(dir: string) {
        let panel = await Editor.getDialog(DialogCreateLevelScene);
        if (panel) {
            panel.hide();
            panel.show(null, dir);
        }
    }

}