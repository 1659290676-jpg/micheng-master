import EditorUtils from "../EditorUtils";

const fs = IEditor.require("fs");
const path = IEditor.require("path");

interface IWxGameBuildInfo {
    appId: string;
    desc: string;
    wxAppId: string;
    platform: string;
    pf: string;
    secretKey?: string;
    sdk: string;
    servHttp: string;
    gameVer: string;
}

@IEditor.regClass()
export class BuildWxGameDialog extends IEditor.Dialog {
    private cbAppId: gui.ComboBox;
    private lbDesc: gui.TextInput;
    private lbWxAppiId: gui.TextInput;
    private lbPlatform: gui.TextInput;
    private lbPF: gui.TextInput;
    private lbServHttp: gui.TextInput;
    private lbGameVer: gui.TextInput;

    private btnStart: gui.Button;

    private isBuilding = false;

    private pkgList: IWxGameBuildInfo[] = [];

    async create() {
        let t = this;
        t.contentPane = await gui.UIPackage.createWidget(EditorUtils.WIDGET_DIR + "BuildWxGameDialog.widget");
        let box = t.contentPane.getChild("box2");
        t.cbAppId = box.getChild("cbAppId");
        t.lbDesc = box.getChild("lbDesc");
        t.lbWxAppiId = box.getChild("lbWxAppiId");
        t.lbPlatform = box.getChild("lbPlatform");
        t.lbPF = box.getChild("lbPF");
        t.lbServHttp = box.getChild("lbServHttp");
        t.lbGameVer = box.getChild("lbGameVer");
        t.btnStart = t.contentPane.getChild("btnStart");

        t.btnStart.onClick(t.onClickBtnStart, t);

        t.cbAppId.on("changed", t.onCbChange, t);

        // let saveList: gui.TextInput[] = [t.lbDesc, t.lbWxAppiId, t.lbPlatform, t.lbPF, t.lbServHttp, t.lbGameVer];
        // for (let comp of saveList) {
        //     comp.on("changed", t.onSaveCfg, t);
        // }
    }

    protected onInit(): void {
        // console.log("BuildWxGameDialog.onInit");
    }

    protected onShown(...args: any[]): void {
        // console.log("BuildWxGameDialog.onShown");
        let t = this;
        Editor.sceneViewPort.handle("wxgame_build_end", () => {
            if (t.isBuilding) {
                t.isBuilding = false;
                let v = t.pkgList[t.cbAppId.selectedIndex];
                if (v) {
                    t.genWxGamePkg(v);
                }
            }
        }, t);

        console.log(t.readCfg());
        t.initUI(t.readCfg());
    }

    protected onHide(): void {
        // console.log("BuildWxGameDialog.onHide");
        Editor.sceneViewPort.handle("wxgame_build_end", null);
        this.isBuilding = null;
    }

    dispose(): void {
        super.dispose();

    }

    private readCfg(): IWxGameBuildInfo[] {
        let filePath = path.join(Editor.projectPath, "src", "Eidtor", "Build", "wxgame_cfg.json");
        if (fs.existsSync(filePath)) {
            let data = JSON.parse(fs.readFileSync(filePath, "utf-8"));
            return data.pkgs;
        }
        return [];
    }

    private initUI(list: IWxGameBuildInfo[]) {
        let t = this;
        t.pkgList = list;
        t.cbAppId.items = list.map(v => v.appId + "#" + v.desc);
        t.cbAppId.selectedIndex = 0;
        t.onCbChange();
    }

    private onCbChange() {
        // console.log("onCbChange", this.cbAppId.value, this.cbAppId.selectedIndex);
        let v = this.pkgList[this.cbAppId.selectedIndex];
        if (v) {
            this.lbDesc.text = v.desc;
            this.lbWxAppiId.text = v.wxAppId;
            this.lbPlatform.text = v.platform;
            this.lbPF.text = v.pf;
            this.lbServHttp.text = v.servHttp;
            this.lbGameVer.text = v.gameVer;

        }
    }

    private onSaveCfg() {
        let t = this;
        let v = t.pkgList[t.cbAppId.selectedIndex];
        if (v) {
            v.desc = t.lbDesc.text;
            v.wxAppId = t.lbWxAppiId.text;
            v.platform = t.lbPlatform.text;
            v.pf = t.lbPF.text;
            v.servHttp = t.lbServHttp.text;
            v.gameVer = t.lbGameVer.text;

            let filePath = path.join(Editor.projectPath, "src", "Eidtor", "Build", "wxgame_cfg.json");
            if (fs.existsSync(filePath)) {
                let data = JSON.parse(fs.readFileSync(filePath, "utf-8"));
                data.pkgs = t.pkgList;
                fs.writeFileSync(filePath, JSON.stringify(data, null, 2), "utf-8");
            }
        }
    }

    /**开始构建 */
    private onClickBtnStart() {
        let t = this;
        // let v = t.pkgList[t.cbAppId.selectedIndex];
        // if (v) {
        //     t.genWxGamePkg(v);
        // }
        // return;
        if (t.isBuilding) {
            console.warn("正在构建中.....");
            return;
        }
        // Editor.ipc.once("wxgame_build_end", () => {
        //     console.error(">>>>>>>>>>>>>>>>>>>构建结束>>>>>>>>>>>>>>>");
        //     t.isBuilding = false;
        // });
        t.isBuilding = true;
        IEditor.BuildTask.start("wxgame")

    }

    private genWxGamePkg(pkg: IWxGameBuildInfo) {
        this.onSaveCfg();
        let pkgPath = path.join(Editor.projectPath, "release", "wxgame");
        let outPath = path.join(Editor.projectPath, "release", "wxgame_" + pkg.platform + "_" + pkg.appId);
        if (fs.existsSync(outPath)) {
            this.clearDir(outPath);
        } else {
            this.mkdir(outPath);
        }
        this.copyAllFiles(pkgPath, outPath);

        //1.修改appId
        let projectConfigFile = path.join(outPath, "project.config.json");
        let projectConfig = JSON.parse(fs.readFileSync(projectConfigFile, "utf-8"));
        projectConfig.appId = pkg.appId;
        fs.writeFileSync(projectConfigFile, JSON.stringify(projectConfig, null, 2), "utf-8");

        //2.修改setting.js
        let settingFile = path.join(outPath, "js", "setting.js");
        let code = fs.readFileSync(settingFile, "utf-8");
        // 判断是否有 miniAppId字段
        if (!code.match(/miniAppId\s*:\s*['"]\w+['"]/)) {
            code = code.replace(/appId\s*:\s*['"]\w+['"]/g, `appId: "${pkg.appId}",\n    miniAppId: "${pkg.wxAppId}"`);
        } else {
            code = code.replace(/appId\s*:\s*['"]\w+['"]/g, `appId: "${pkg.appId}"`);
            code = code.replace(/miniAppId\s*:\s*['"]\w+['"]/g, `miniAppId: "${pkg.wxAppId}"`);
        }

        code = code.replace(/sdk\s*:\s*['"]\w+['"]/g, `sdk: "${pkg.sdk}"`);
        code = code.replace(/platform\s*:\s*['"]\w+['"]/g, `platform: "${pkg.platform}"`);
        code = code.replace(/pf\s*:\s*['"]\w+['"]/g, `pf: "${pkg.pf}"`);
        if (pkg.secretKey) {
            code = code.replace(/secretKey\s*:\s*['"]\w+['"]/g, `secretKey: "${pkg.secretKey}"`);
        }
        code = code.replace(/servHttp\s*:\s*['"].+['"]/g, `servHttp: "${pkg.servHttp}"`);
        fs.writeFileSync(settingFile, code, "utf-8");

        //3.修改version.js
        let indexFile = path.join(outPath, "js", "version.js");
        code = fs.readFileSync(indexFile, "utf-8");
        code = code.replace(/window.gameVer\s*=\s*['"].+['"]/g, `window.gameVer = "${pkg.gameVer}"`);
        fs.writeFileSync(indexFile, code, "utf-8");

        Editor.alert("构建完成", "info");
    }



    /**
     * 复制目录
     * @param srcDir 
     * @param destDir 
     * @param hasExit 是否存在就跳过
     */
    private copyAllFiles(srcDir: string, destDir: string, hasExit = false) {
        try {
            if (!fs.existsSync(destDir))
                this.mkdir(destDir);
            const entries = fs.readdirSync(srcDir);
            for (const entry of entries) {
                const srcPath = path.join(srcDir, entry);
                const destPath = path.join(destDir, entry);

                if (fs.statSync(srcPath).isDirectory()) {
                    // 递归复制子目录
                    this.copyAllFiles(srcPath, destPath);
                } else {
                    // 复制文件
                    if (hasExit) {
                        if (fs.existsSync(destPath)) {
                            continue;
                        }
                    }
                    fs.copyFileSync(srcPath, destPath);
                }
            }
        } catch (err) {
            throw err;
        }
    }

    /**
     * 递归删除目录下所有内容（文件+子目录），保留目标目录本身
     * @param targetDir 要清空的目录路径
     */
    private clearDir(targetDir: string) {
        // 先判断目录是否存在
        if (fs.existsSync(targetDir)) {
            // 读取目录下所有文件/子目录
            fs.readdirSync(targetDir).forEach((item: string) => {
                const itemPath = path.join(targetDir, item);

                // 判断是文件还是目录
                if (fs.statSync(itemPath).isDirectory()) {
                    // 是目录：递归删除子目录内容
                    this.clearDir(itemPath);
                    // 删空子目录后，删除该子目录
                    fs.rmdirSync(itemPath);
                } else {
                    // 是文件：直接删除
                    fs.unlinkSync(itemPath);
                }
            });
        }
    }

    /**
     * 创建目录
     * @param dir 
     */
    private mkdir(dir: string) {
        let baseDir = path.dirname(dir);
        if (!fs.existsSync(baseDir)) {
            this.mkdir(baseDir);
        }
        if (!fs.existsSync(dir)) {
            fs.mkdirSync(dir);
        }
    }
}