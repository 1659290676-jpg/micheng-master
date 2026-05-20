import EditorUtils from "../EditorUtils";
const fs = IEditorEnv.require("fs");
const path = IEditorEnv.require("path");

/**
 * @ Author: XXL
 * @ Date: 2026-03-19 18:33
 * @ Description: 场景资源导入器
*/
@IEditorEnv.regAssetImporter(["lh"])
export default class PrefabImporter extends IEditorEnv.AssetImporter {

    /** 添加建筑组件的碰撞组 */
    public static readonly COLLISION_BUILDING = 3;
    /** 添加玩家组件的层 */
    public static readonly COLLISION_PLAYER = 4;
    /** 添加技能组件的层 */
    public static readonly COLLISION_SKILL = 5;

    async handleImport(): Promise<void> {
        let asset = this.asset;
        let file = asset.file;
        if (file.startsWith(EditorUtils.BUILDING_PREFAB_DIR)) {
            console.log("处理建筑预制体:" + file);
            PrefabImporter.handleBuildingPrefab(file);
        } else if (file.startsWith(EditorUtils.GROUND_PREFAB_DIR)) {
            console.log("处理地面预制体:" + file);
            PrefabImporter.handleGroundPrefab(file);
        }
    }

    /**
     * 处理建筑预制体
     * @param file 
     */
    public static handleBuildingPrefab(file: string) {
        let filePath = path.join(EditorEnv.assetsPath, file);
        if (!fs.existsSync(filePath)) {
            return;
        }
        const str = fs.readFileSync(filePath, "utf-8");
        const data = JSON.parse(str);

        // let isLayer = PrefabImporter.changeLayer(data, EditorUtils.LAYER_BUILDING);

        // 添加建筑组件
        let isComp = PrefabImporter.addBuildingComp(data);

        let isPhysics = PrefabImporter.addPhysicsCollider(data);

        // 材质
        let isMate = false;
        let matUid = PrefabImporter.getBuildingMatUid();
        if (matUid) {
            isMate = PrefabImporter.replaceMaterial(matUid, data);
        } else {
            console.error("未找到建筑材质资源，无法替换预制体中的材质");
        }

        // 如果添加了组件或者替换了材质，则保存文件
        if (isComp || isPhysics || isMate) {
            fs.writeFileSync(filePath, JSON.stringify(data, null, 2));
        }
    }

    /**
     * 处理地面预制体
     * @param file 
     * @returns 
     */
    public static handleGroundPrefab(file: string) {
        let filePath = path.join(EditorEnv.assetsPath, file);
        if (!fs.existsSync(filePath)) {
            return;
        }
        const str = fs.readFileSync(filePath, "utf-8");
        const data = JSON.parse(str);

        // 材质
        let isMate = false;
        let matUid = PrefabImporter.getGroundMatUid();
        if (matUid) {
            isMate = PrefabImporter.replaceMaterial(matUid, data);
        } else {
            console.error("未找到地表材质资源，无法替换预制体中的材质");
        }
        if (isMate) {
            fs.writeFileSync(filePath, JSON.stringify(data, null, 2));
        }
    }

    /**
     * 添加组件
     * @param data 
     * @returns 
     */
    public static addBuildingComp(data: any) {
        let codeUid = PrefabImporter.getBuildingCodeUid();
        if (!codeUid) {
            console.error("未找到建筑脚本资源，无法添加建筑组件");
            return;
        }
        let comps = data._$comp;
        let hasComp = false;
        if (comps) {
            for (let comp of comps) {
                if (comp._$type == codeUid) {
                    hasComp = true;
                    break;
                }
            }
        }
        if (!hasComp) {
            if (!comps) {
                comps = [];
                data._$comp = comps;
            }
            comps.push({
                _$type: codeUid,
                scriptPath: "../" + EditorUtils.BUILDING_COMP_FILE,
                type: 2,
            });
            return true;
        }
        return false;
    }

    /**
     * 替换预制体中的材质
     * @param matUid 
     * @param data 
     */
    public static replaceMaterial(matUid: string, data: any) {
        let comps = data._$comp;
        let bo = false;
        if (comps) {
            for (let comp of comps) {
                if (comp._$type == "MeshRenderer") {
                    let shareMaterials = comp.sharedMaterials;
                    if (shareMaterials) {
                        for (let i = 0, len = shareMaterials.length; i < len; i++) {
                            let mat = shareMaterials[i];
                            if (mat._$type == "Material") {
                                if (mat._$uuid && mat._$uuid.indexOf("@") != -1) {
                                    mat._$uuid = matUid;
                                    bo = true;
                                }
                                // break; // 改成所有材质都替换
                            }
                        }
                    }

                }
            }
        }
        let childs = data._$child;
        if (childs) {
            for (let child of childs) {
                if (PrefabImporter.replaceMaterial(matUid, child)) {
                    bo = true;
                }
            }
        }
        return bo;
    }

    /**
     * 添加碰撞组件
     * @param data 
     * @returns 
     */
    public static addPhysicsCollider(data: any) {
        let codeUid = PrefabImporter.getBuildingCodeUid();
        if (!codeUid) {
            return;
        }
        let comps = data._$comp;
        if (!comps) {
            return;
        }
        let type = -1;
        for (let comp of comps) {
            if (comp._$type == codeUid) {
                type = comp.type;
                break;
            }
        }
        if (type == -1) {
            return;
        }
        let bo = false;
        if (type == 6 || type == 7) {
            // 联排，需要把碰撞组件添加到子节点上，要移除跟节点上的组件
            for (let i = 0, len = comps.length; i < len; i++) {
                let comp = comps[i];
                if (comp._$type == "PhysicsCollider") {
                    bo = true;
                    comps.splice(i, 1);
                    break;
                }
            }
            // 子节点添加碰撞组件
            let childs = data._$child;
            if (childs) {
                for (let child of childs) {
                    let childComps = child._$comp;
                    if (!childComps) {
                        childComps = [];
                        child._$comp = childComps;
                    }
                    let b = false;
                    for (let comp of childComps) {
                        if (comp._$type == "PhysicsCollider") {
                            b = true;
                            break;
                        }
                    }
                    if (!b) {
                        bo = true;
                        childComps.push({
                            _$type: "PhysicsCollider",
                            colliderShape: {
                                _$type: "BoxColliderShape",
                            },
                            collisionGroup: Math.pow(2, PrefabImporter.COLLISION_BUILDING),
                            canCollideWith: Math.pow(2, PrefabImporter.COLLISION_PLAYER) + Math.pow(2, PrefabImporter.COLLISION_SKILL),
                        });
                    }
                }
            }

        } else {
            // 独栋，直接添加碰撞组件
            let b = false;
            for (let i = 0, len = comps.length; i < len; i++) {
                let comp = comps[i];
                if (comp._$type == "PhysicsCollider") {
                    b = true;
                    break;
                }
            }
            if (!b) {
                bo = true;
                comps.push({
                    _$type: "PhysicsCollider",
                    colliderShape: {
                        _$type: "BoxColliderShape",
                    },
                    collisionGroup: Math.pow(2, PrefabImporter.COLLISION_BUILDING),
                    canCollideWith: Math.pow(2, PrefabImporter.COLLISION_PLAYER) + Math.pow(2, PrefabImporter.COLLISION_SKILL),
                });
            }
            // 检测删除子节点
            let childs = data._$child;
            if (childs) {
                for (let child of childs) {
                    let childComps = child._$comp;
                    if (childComps) {
                        for (let i = childComps.length - 1; i >= 0; i--) {
                            let comp = childComps[i];
                            if (comp._$type == "PhysicsCollider") {
                                childComps.splice(i, 1);
                                bo = true;
                                break;
                            }
                        }
                    }
                }
            }
        }
        return bo;
    }

    /**
     * 改变层
     * @param data 
     * @param layer 
     */
    public static changeLayer(data: any, layer: number) {
        let bo = false;
        if (data.layer != layer) {
            data.layer = layer;
            bo = true;
        }
        let childs = data._$child;
        if (childs) {
            for (let child of childs) {
                if (PrefabImporter.changeLayer(child, layer)) {
                    bo = true;
                }
            }
        }
        return bo;
    }

    /**
     * 获取建筑材质资源的uuid
     * @returns 
     */
    private static getBuildingMatUid() {
        let matPath = path.join(EditorEnv.assetsPath, EditorUtils.BUILDING_MATERIAL_FILE + ".meta");
        if (fs.existsSync(matPath)) {
            let data = JSON.parse(fs.readFileSync(matPath, "utf-8"));
            return data.uuid;
        }
        return null;
    }

    /**
     * 建筑脚本的uuid
     * @returns 
     */
    private static getBuildingCodeUid() {
        let matPath = path.join(EditorEnv.projectPath, EditorUtils.BUILDING_COMP_FILE + ".meta");
        if (fs.existsSync(matPath)) {
            let data = JSON.parse(fs.readFileSync(matPath, "utf-8"));
            return data.uuid;
        }
        return null;
    }

    /**
     * 获取建筑材质资源的uuid
     * @returns 
     */
    private static getGroundMatUid() {
        let matPath = path.join(EditorEnv.assetsPath, EditorUtils.GROUND_MATERIAL_FILE + ".meta");
        if (fs.existsSync(matPath)) {
            let data = JSON.parse(fs.readFileSync(matPath, "utf-8"));
            return data.uuid;
        }
        return null;
    }

}