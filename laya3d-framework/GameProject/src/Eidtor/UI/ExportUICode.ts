import EditorUtils from "../EditorUtils";

const path = IEditor.require("path");
const fs = IEditor.require("fs");

/**
 * @ Author: XXL
 * @ Date: 2026-03-04 17:38
 * @ Description: 导出ui代码
*/
@IEditor.regClass()
export default class ExportUICode {

    /**
     * 导出场景中的选中的UI代码
     */
    public static async exportSceneSelect() {
        let asset = Editor.scene.asset;
        if (asset) {
            if (asset.type == IEditor.AssetType.Scene && asset.file && asset.file.startsWith(EditorUtils.UI_SCENE_DIR)) {
                let node = Editor.scene.rootNode2D;
                let childrens = node.children;
                if (childrens.length > 0) {
                    //先保存场景
                    await Editor.sceneManager.saveScene(Editor.scene.sceneId, asset.file);

                    let sceneData = fs.readFileSync(path.join(Editor.assetsPath, asset.file), "utf-8");
                    sceneData = JSON.parse(sceneData);
                    childrens = sceneData._$child;

                    //获取选中的节点，导出节点预制体，预制体文件名称与节点名称一致
                    let nodes = Editor.scene.getSelection();
                    let list: any[] = [];
                    for (let i = 0; i < nodes.length; i++) {
                        let node = nodes[i];
                        for (let j = 0; j < childrens.length; j++) {
                            let child = childrens[j];
                            if (child.name == node.name) {
                                list.push(child);
                                break;
                            }
                        }
                    }
                    if (list.length <= 0) {
                        EditorUtils.showLog("请选择二级节点导出", 1);
                        return;
                    }

                    let savePath = asset.file.replace(EditorUtils.UI_SCENE_DIR, "").replace(asset.fileName, "");

                    let msg = "";
                    for (let i = 0; i < list.length; i++) {
                        let prefabPath = path.join(EditorUtils.UI_CODE_DIR, savePath, list[i].name + ".ts");
                        let file = path.join(Editor.projectPath, prefabPath);
                        if (fs.existsSync(file)) {
                            if (msg) {
                                msg += "\n";
                            }
                            msg += prefabPath;
                        }
                    }
                    if (msg) {
                        // let ret = await Editor.showMessageBox({ message: "是否覆盖存在的预制体代码：\n" + msg, type: "warning", buttons: ["取消", "确定"] });
                        // if (ret.response != 1) {
                        //     return;
                        // }
                        console.log("覆盖存在的预制体代码：" + msg);
                    }
                    for (let i = 0; i < list.length; i++) {
                        let prefab = list[i];
                        await ExportUICode.exportPanel(prefab, path.join(savePath, prefab.name));
                    }

                } else {
                    EditorUtils.showLog("没有可导出的UI节点", 1);
                }
            } else if (asset.type == IEditor.AssetType.Prefab && asset.file && asset.file.startsWith(EditorUtils.UI_PREFAB_DIR)) {
                await Editor.sceneManager.saveScene(Editor.scene.sceneId, asset.file);
                await ExportUICode.exportPanelByPrefabPath(asset.file);
            } else {
                EditorUtils.showLog(`请选择\n${EditorUtils.UI_SCENE_DIR}目录下的场景\n${EditorUtils.UI_PREFAB_DIR}目录下的预制体`, 1);
            }
        } else {
            EditorUtils.showLog(`请选择\n${EditorUtils.UI_SCENE_DIR}目录下的场景\n${EditorUtils.UI_PREFAB_DIR}目录下的预制体`, 1);
        }
    }

    /**
     * 根据预制体的路径导出代码
     * @param filePath 
     */
    public static async exportPanelByPrefabPath(filePath: string) {
        console.log(filePath);
        filePath = filePath.replace(/\\/g, "/");
        const absPrefab: string = path.join(Editor.assetsPath, filePath);
        if (!fs.existsSync(absPrefab)) {
            console.warn("未找到预制体文件: " + absPrefab);
            return;
        }
        let prefabData = JSON.parse(fs.readFileSync(absPrefab, "utf-8"));
        let codeName = path.basename(filePath, ".lh");
        let codePath: string = path.dirname(filePath).replace(EditorUtils.UI_PREFAB_DIR, "");
        let saveDir = path.join(codePath, codeName);
        codePath = path.join(EditorUtils.UI_CODE_DIR, saveDir + ".ts");
        let absCode = path.join(Editor.projectPath, codePath);
        if (fs.existsSync(absCode)) {
            let ret = await Editor.showMessageBox({ message: "是否覆盖存在的预制体代码：\n" + codePath, type: "warning", buttons: ["取消", "确定"] });
            if (ret.response != 1) {
                return;
            }
            console.log("覆盖存在的预制体代码：" + codePath);
        }

        await ExportUICode.exportPanel(prefabData, saveDir);
    }

    /**
     * 导出面板代码
     */
    public static async exportPanel(data: any, filePath: string) {
        filePath = filePath.replace(/\\/g, "/");

        await ExportUICode.saveRuntimeCode(data, filePath);

        let namesList = filePath.split("/");
        let name = namesList.pop().split(".")[0];

        for (let i = 0, len = namesList.length; i < len; i++) {
            namesList[i] = namesList[i].charAt(0).toUpperCase() + namesList[i].substring(1);
        }
        let codePathBase = namesList.join("/") + "/" + name;

        let interName = "Runtime_" + name;

        let str = "";

        let codePath: string = path.join(EditorUtils.UI_CODE_DIR, codePathBase + ".ts");
        let absPath: string = path.join(Editor.projectPath, codePath)
        let code = "";
        if (fs.existsSync(absPath)) {
            // 已存在就代码
            // 将组件定义添加代码中
            code = fs.readFileSync(absPath, "utf-8");
            let lines = code.split("\n");
            // 查找预制体是否已定义
            let classIndex = -1;
            let isPrefab = false;
            let isOwn = false;
            for (let i = 0, len = lines.length; i < len; i++) {
                let line = lines[i];
                if (line) {
                    if (line.indexOf("class " + name) >= 0) {
                        classIndex = i;
                    } else {
                        if (line.indexOf("static readonly prefab") >= 0 || line.indexOf("static prefab") >= 0) {
                            line = `    public static readonly prefab: string = "${filePath}";`;
                            isPrefab = true;
                            lines[i] = line;
                        } else if (line.indexOf("protected _owner") >= 0) {
                            line = `    protected _owner: ${interName};`;
                            isOwn = true;
                            lines[i] = line;
                        }
                    }
                    if (isPrefab && isOwn) break;
                }
            }

            if (classIndex == -1) return;
            if (!isOwn) {
                lines.splice(classIndex + 1, 0, `    /** 自动生成，ui根节点 */\r\n    protected _owner: ${interName};`);
            }
            if (!isPrefab) {
                lines.splice(classIndex + 1, 0, `    /** 自动生成，预设体路径 */\r\n    public static prefab: string = "${filePath}";`);
            }
            code = lines.join("\n");
        } else {
            code = str = "";
            let list = codePath.replace(/\\/g, "/").split("/");
            let len = list.length - 2;
            let importBase = "";
            for (let i = 0; i < len; i++) {
                importBase += "../";
            }
            if (importBase == "") {
                importBase = "./";
            }

            // 定义类
            // 类的注释
            code += `import { UIBase } from "${importBase}XYFrame/UI/Base/UIBase";
import ${interName} from "./${interName}";


/**
 * @ Author: 
 * @ Date: ${new Date().toLocaleString()}
 * @ Description: 
*/
export default class ${name} extends UIBase {
    /** 自动生成，预设体路径 */\n    public static prefab: string = "${filePath}";
    /** 自动生成，ui根节点 */\n    protected _owner: ${interName};

    public get owner() {
        return this._owner;
    }
    
    protected inited(_t: this): void {
        let owner = _t.owner;
        
    }
}`;
        }
        fs.writeFileSync(absPath, code, "utf-8");
    }

    /**
     * 导出组件预制体Runtime代码
     */
    public static async exportWidgetRuntime(filePath?: string) {
        if (!filePath) {
            let asset = Editor.scene.asset;
            if (asset && asset.type == IEditor.AssetType.Prefab && asset.file.startsWith(EditorUtils.UI_PREFAB_DIR)) {
                filePath = asset.file;
            }
        }
        if (filePath) {
            const absPrefab: string = path.join(Editor.assetsPath, filePath);
            if (!fs.existsSync(absPrefab)) {
                console.warn("未找到预制体文件: " + absPrefab);
                return;
            }
            let prefabData = JSON.parse(fs.readFileSync(absPrefab, "utf-8"));
            let codeName = path.basename(filePath, ".lh");
            let codePath: string = path.dirname(filePath).replace(EditorUtils.UI_PREFAB_DIR, "");
            let saveDir = path.join(codePath, codeName);
            await ExportUICode.saveRuntimeCode(prefabData, saveDir);
        } else {
            EditorUtils.showLog(`请选择\n${EditorUtils.UI_PREFAB_DIR}目录下的预制体`, 1);
        }
    }


    /**
     * 
     * @param data 
     * @param filePath ui预制体目录下相对路径或场景节点路径
     * @returns 返回组件代码的uuid
     */
    public static async saveRuntimeCode(data: any, filePath: string) {
        filePath = filePath.replace(/\\/g, "/");

        let prefabPath: string = path.join(EditorUtils.UI_PREFAB_DIR, filePath);
        if (!prefabPath.endsWith(".lh")) {
            prefabPath += ".lh";
        }
        prefabPath = prefabPath.replace(/\\/g, "/");

        let generatedPath: string;
        let runtimePath: string;
        let fileName: string;

        if (data._$runtime) {
            // 已有代码路径
            let asset = await Editor.assetDb.getAsset(data._$runtime);

            if (asset) {
                console.log("已存在脚本", asset.file);
                let codePath = asset.file.replace(/\\/g, "/");
                if (codePath.startsWith("../")) {
                    codePath = codePath.substring(3);
                }
                runtimePath = codePath;
                fileName = path.basename(runtimePath, ".ts");
                let list = runtimePath.split(".");
                if (list.length > 1) {
                    list.pop();
                }
                generatedPath = list.join(".") + ".generated.ts";
            }
        }


        if (!generatedPath) {
            let list = filePath.split(".");
            if (list.length > 1) {
                list.pop();
            }
            filePath = list.join(".");
            list = filePath.split("/");
            fileName = list.pop();
            fileName = "Runtime_" + fileName;
            for (let i = 0; i < list.length; i++) {
                list[i] = list[i].charAt(0).toUpperCase() + list[i].slice(1);
            }
            list.push(fileName);
            generatedPath = list.join("/");
            runtimePath = path.join(EditorUtils.UI_CODE_DIR, generatedPath.charAt(0).toUpperCase() + generatedPath.slice(1)) + ".ts";
            generatedPath = path.join(EditorUtils.UI_CODE_DIR, generatedPath.charAt(0).toUpperCase() + generatedPath.slice(1)) + ".generated.ts";
        }
        ExportUICode.mkDir(Editor.projectPath, path.dirname(generatedPath));
        // 绝对路径
        let absPath = path.join(Editor.projectPath, generatedPath);


        // laya runtime generated的模版
        let imports: string[] = [];
        let widgets: string[] = [];

        // 先查询是否有存在，查看继承
        let lastType: string;
        if (fs.existsSync(absPath)) {
            let code = fs.readFileSync(absPath, "utf-8");
            // 匹配 export class xxx extends xxxx {
            let match = code.match(/export class ([^\s]+) extends ([^\s]+)\s*/);
            if (match) {
                lastType = match[2];
                if (lastType.startsWith("Laya.")) {
                    lastType = null;
                } else {
                    // 查找引用 import 类名 from 路径 或 import {类名} from 路径
                    let lines = code.split("\n");
                    for (let i = 0; i < lines.length; i++) {
                        let line = lines[i];
                        if (line.startsWith("import ") && line.indexOf(lastType) != -1) {
                            imports.push(line);
                            break;
                        }
                    }
                }
            }
        }

        await ExportUICode.toExportWidget(generatedPath, data, imports, widgets);
        let widgetStr = widgets.join("\n    ");
        if (widgetStr) {
            widgetStr = widgetStr;
        }

        let type = lastType || ("Laya." + (data._$type || "GWidget"));
        let baseName = fileName + "Base";
        let code = `/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
        
${imports.join("\r\n")}
        
/**
 * ${prefabPath}
 */
export class ${baseName} extends ${type} {
    ${widgetStr}
}
        
`
        fs.writeFileSync(absPath, code, "utf-8");

        // 生成对应界面主件代码
        // 绝对路径
        absPath = path.join(Editor.projectPath, runtimePath);
        if (!fs.existsSync(absPath)) {
            let metaPath = path.join(Editor.projectPath, runtimePath + ".meta");
            if (!fs.existsSync(metaPath)) {
                let uuid = IEditor.utils.genUUID();
                let meta = { uuid: uuid };
                fs.writeFileSync(metaPath, JSON.stringify(meta, null, 2), "utf-8");
            }
            code = `import { ${baseName} } from "./${fileName}.generated";
            
const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: ${new Date().toLocaleString()}
 * @ Description: 
*/
@regClass\(\)
export default class ${fileName} extends ${baseName} {
}
`;
            fs.writeFileSync(absPath, code, "utf-8");
        }

        //检查是否存在.meta文件
        let uuid: string;
        let metaPath = absPath + ".meta";
        if (!fs.existsSync(metaPath)) {
            uuid = IEditor.utils.genUUID();
            let meta = { uuid: uuid };
            fs.writeFileSync(metaPath, JSON.stringify(meta, null, 2), "utf-8");
            console.log("生成.meta文件，uuid=" + uuid);
        } else {
            let meta = JSON.parse(fs.readFileSync(metaPath, "utf-8"));
            uuid = meta.uuid;
            console.log("获取uuid: " + uuid);
        }

        if (uuid) {
            // 查找预制体，将uuid设置到预制体上
            prefabPath = path.join(Editor.assetsPath, prefabPath);
            if (fs.existsSync(prefabPath)) {
                let prefabData = JSON.parse(fs.readFileSync(prefabPath, "utf-8"));
                let res = "res://" + uuid;
                if (prefabData._$runtime != res && prefabData._$runtime != uuid) {
                    console.log("设置预制体的Runtime脚本: " + res);
                    prefabData._$runtime = res;
                    fs.writeFileSync(prefabPath, JSON.stringify(prefabData, null, 4));
                }
            }
        }

        // return uuid;
    }

    /**
     * 导出组件的定义
     * @param data 
     * @param widgets 
     * @returns 
     */
    public static async toExportWidget(codePath: string, data: any, importList: string[], widgets: string[]) {
        let childs: any[] = data._$child;
        if (childs) {
            function getChilds(d: any, list: any[]) {
                let childs: any[] = d._$child;
                if (childs) {
                    for (let i = 0, len = childs.length; i < len; i++) {
                        let child = childs[i];
                        if (child._$var) {
                            list.push(child);
                        }
                        getChilds(child, list);
                    }
                }
                return list;
            }
            const allImports: any[] = [];
            getChilds(data, allImports);
            for (let i = 0; i < allImports.length; i++) {
                let child = allImports[i];
                // 需要导出
                let name = child.name;
                let type = "Laya." + child._$type;
                if (child._$prefab) {
                    // 是预制体
                    let asset = await Editor.assetDb.getAsset(child._$prefab);
                    if (asset) {
                        const filePath = path.join(Editor.assetsPath, asset.file);
                        const data = fs.readFileSync(filePath, "utf-8");
                        const json = JSON.parse(data);
                        type = "Laya." + (json._$type || "GWidget");
                        if (json._$runtime) {
                            // 有runtime代码
                            let runtime: string = json._$runtime + "";
                            let index = runtime.indexOf("res://");
                            if (index != -1) {
                                runtime = runtime.substring(index + 6);
                            }
                            let info = await Editor.assetDb.getAsset(runtime);
                            if (info) {
                                // console.log("runtime:", info.file, info.fileName);
                                let imports = ExportUICode.toImportPath(codePath || "", info.file || "");
                                if (imports) {
                                    if (imports[1]) {
                                        type = imports[1];
                                    }
                                    if (imports[0] && importList.indexOf(imports[0]) == -1)
                                        importList.push(imports[0]);
                                }
                            } else {
                                console.log("未找到runtime代码：" + runtime);
                            }
                        } else {
                            console.log("预制体没有runtime代码");
                        }
                    } else {
                        type = "Laya.GWidget";
                    }
                }
                let str = `public ${name}!: ${type};`;
                widgets.push(str);
            }
        }
    }

    private static toImportPath(toPath: string, fromPath: string): string[] {
        if (toPath.startsWith("../src/")) {
            toPath = toPath.replace("../src/", "src/");
        }
        if (fromPath.startsWith("../src/")) {
            fromPath = fromPath.replace("../src/", "src/");
        }
        let toAbs: string = path.join(Editor.projectPath, toPath);
        let fromAbs: string = path.join(Editor.projectPath, fromPath);

        if (!fs.existsSync(fromAbs)) {
            return null;
        }

        let baseName: string = path.basename(fromPath, ".ts");
        let fromCode: string = fs.readFileSync(fromAbs, "utf-8");
        if (!fromCode) return null;
        let importName = "";
        if (fromCode.indexOf(`export default class ${baseName}`) >= 0) {
            importName = `import ${baseName} from `;
        } else if (fromCode.indexOf(`export class ${baseName}`) >= 0) {
            importName = `import { ${baseName} } from `;
        } else {
            return null;
        }


        toAbs = toAbs.substring(Editor.projectPath.length + 1).replace(/\\/g, "/");
        fromAbs = fromAbs.substring(Editor.projectPath.length + 1).replace(/\\/g, "/");
        let toList = toAbs.split("/");
        let fromList = fromAbs.split("/");
        let index = -1;
        let len = fromList.length;
        for (let i = 0; i < len - 1; i++) {
            let p1 = toList[i];
            let p2 = fromList[i];
            if (p1 == p2) {
                index = i;
            } else {
                break;
            }
        }

        let relative = "";
        for (let i = index + 1, len1 = toList.length - 1; i < len1; i++) {
            relative += "../";
        }
        if (relative == "") {
            relative += "./";
        }
        relative += fromList.slice(index + 1).join("/");
        relative = relative.replace(path.basename(relative), baseName);
        importName += "\"" + relative + "\"" + ";";
        return [importName, baseName];

    }

    // 创建目录
    private static mkDir(root: string, dir: string) {
        let d = path.join(root, dir);
        if (!fs.existsSync(d)) {
            ExportUICode.mkDir(root, path.dirname(dir));
            fs.mkdirSync(d);
        }
    }
}