import EditorUtils from "../EditorUtils";

/**
 * @ Author: XXL
 * @ Date: 2026-03-10 14:53
 * @ Description: 创建UI预制体对话框
*/

@IEditor.regClass()
export default class EditorCreateUIPrefabDialog extends IEditor.Dialog {

    private savePathTxt: IEditor.TextInput;
    private nameTxt: IEditor.TextInput;

    async create() {
        let _t = this;
        let panel = await gui.UIPackage.createWidget(EditorUtils.WIDGET_DIR + "CreateUIPrefab.widget");
        panel.text = "创建 UI 界面预制体";
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
        nameTxt.text = "Vw_";
        panel.addChild(nameTxt);
        _t.nameTxt = nameTxt;

        let btnSure = panel.getChild("btnSure");
        btnSure.onClick(async () => {
            let bo = await _t.createPrefab();
            bo && _t.hide();
        }, _t);
    }

    protected onShown(dir: string): void {
        let _t = this;
        _t.savePathTxt.text = dir;
        // _t.nameTxt.text = "Vw_";
    }

    /**
     * 创建预制体
     * @returns 
     */
    private async createPrefab() {
        let _t = this;
        // 路径与名称要去掉全部空格
        let saveDir = _t.savePathTxt.text.replace(/\s+/g, "");
        let nameStr = _t.nameTxt.text.replace(/\s+/g, "");
        if (!saveDir) {
            console.warn("请选择保存路径");
            return true;
        }
        if (!nameStr || nameStr.toLocaleLowerCase() == "vw_") {
            console.warn("请输入UI名称");
            return false;
        }

        // 提示是否存在
        const fs = IEditor.require("fs");
        const path = IEditor.require("path");
        const prefabFile = path.join(saveDir, nameStr + ".lh");
        const absSceneFile = path.join(Editor.assetsPath, prefabFile);
        if (fs.existsSync(absSceneFile)) {
            console.warn(`已存在同名预制文件${prefabFile}`);
            let ret = await Editor.showMessageBox({ message: `已存在同名场景文件${nameStr}，是否覆盖？`, type: "warning", buttons: ["取消", "确定"] });
            if (ret.response != 1) {
                return false;
            }
        }

        // 获取模版修改名称
        const templeteFile = path.join(EditorUtils.TEMPLET_DIR, "PanelTemplet.lh");
        const absTempleFile = path.join(Editor.assetsPath, templeteFile);
        if (!fs.existsSync(absTempleFile)) {
            console.warn(`未找到UI模板文件${templeteFile}`);
            return false;
        }
        let uid = IEditor.utils.genShortId();
        let templeData = fs.readFileSync(absTempleFile, "utf-8");
        templeData = templeData.replace("{panelName}", nameStr);
        templeData = templeData.replace("{UID}", uid);

        await Editor.assetDb.writeFile(prefabFile, templeData);
        //创建成功打开场景
        Editor.openFile(prefabFile);
        return true;
    }


    /**
     * 打开
     * @param dir 
     */
    public static async open(dir: string) {
        let panel = await Editor.getDialog(EditorCreateUIPrefabDialog);
        if (panel) {
            panel.hide();
            panel.show(null, dir);
        }
    }

}