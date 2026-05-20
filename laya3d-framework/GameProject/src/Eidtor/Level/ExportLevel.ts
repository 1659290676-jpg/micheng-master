import EditorUtils from "../EditorUtils";

/**
 * @ Author: XXL
 * @ Date: 2026-03-19 16:34
 * @ Description: 导出关卡
*/
export default class ExportLevel {

    private readonly fs: any;
    private readonly path: any;
    private readonly Editor: IEditorEnv.IEditorEnvSingleton | IEditor.IEditorSingleton;
    private readonly IEditor: any;
    private readonly assetDb: IEditorEnv.IAssetManager | IEditor.IAssetDb;
    public constructor(Editor: any, IEditor: any) {
        this.Editor = Editor;
        this.IEditor = IEditor;
        this.assetDb = Editor.assetDb || Editor.assetMgr;
        this.fs = IEditor.require("fs");
        this.path = IEditor.require("path");
    }

    /**
     * 设置逐渐信息
     * @param data 
     */
    public pushComponent(data: any, isPrefab = false) {
        let bo = false;
        if (data._$comp) {
            for (let comp of data._$comp) {
                let scrPath: string = comp.scriptPath;
                if (scrPath && scrPath.endsWith(EditorUtils.LEVEL_SCENE_CODE_NAME)) {
                    bo = true;
                    let children = data._$child;
                    if (isPrefab) {
                        // 导出预制体时，要重置跟节点位置
                        let transtorm = data.transform;
                        if (transtorm && transtorm.localPosition) {
                            transtorm.localPosition.x = transtorm.localPosition.y = transtorm.localPosition.z = 0;
                        }
                    }
                    for (let data of children) {
                        if (isPrefab) {
                            this.resetPos(data);
                        }
                        if (data.name == "Building") {
                            // 场景建筑的信息
                            this.pushBuildUid(comp, data, isPrefab);
                        } else if (data.name == "NpcBorn") {
                            // npc出生点信息
                            this.pushNpcBorn(comp, data);
                        } else if (data.name == "PlayerBorn") {
                            // 玩家出生点信息
                            this.pushPlayerBorn(comp, data);
                        } else if (data.name == "ItemBorn") {
                            // 物品出生点信息
                            this.pushItemBorn(comp, data);
                        } else if (data.name == "Ground") {
                            // 地面信息信息
                            this.pushGround(comp, data, isPrefab);
                        }
                    }
                    break;
                }
            }
        }
        return bo;
    }

    /**
     * 重置坐标为0,0,0，子节点要跟着偏移
     * @param data 
     */
    public resetPos(data: any) {
        let x = 0;
        let y = 0;
        let z = 0;
        let transtorm = data.transform;
        if (transtorm && transtorm.localPosition) {
            x = transtorm.localPosition.x || 0;
            y = transtorm.localPosition.y || 0;
            z = transtorm.localPosition.z || 0;
            if (x != 0 || y != 0 || z != 0) {
                transtorm.localPosition.x = transtorm.localPosition.y = transtorm.localPosition.z = 0;
            } else {
                return;
            }
        } else {
            return;
        }
        let children = data._$child;
        if (children) {
            for (let d of children) {
                let tf = d.transform;
                if (!tf) {
                    tf = d.transform = {};
                }
                let localPos = tf.localPosition;
                if (!localPos) {
                    localPos = tf.localPosition = { _$type: "Vector3", x: 0, y: 0, z: 0 };
                }
                localPos.x = (localPos.x || 0) + x;
                localPos.y = (localPos.y || 0) + y;
                localPos.z = (localPos.z || 0) + z;
            }
        }
    }

    /**
     * 添加地面组件的引用
     * @param data 
     * @returns 
     */
    public pushGround(comp: any, data: any, isPrefab = false) {
        if (!isPrefab) {
            return;
        }

        let childs = data._$child;
        if (childs) {
            for (let i = childs.length - 1; i >= 0; i--) {
                let d = childs[i];
                if (d._$prefab) {
                    let assetInfo: any = null;
                    let db: any = this.assetDb;
                    if (db.getAssetSync != null) {
                        assetInfo = db.getAssetSync(d._$prefab);
                    } else {
                        assetInfo = this.assetDb.getAsset(d._$prefab);
                    }
                    if (!assetInfo) {
                        // 不存在需要删除
                        childs.splice(childs.indexOf(d), 1);
                        continue;
                    }
                }
            }
        }

    }

    public pushPlayerBorn(comp: any, data: any) {
        let uuid = this.getPlayerBornCodeUuid();
        if (!uuid) {
            console.error("未找到NPC出生点组件代码");
            return false;
        }

        comp.playerBorns = [];
        let childs = data._$child;
        if (childs) {
            for (let d of childs) {

                let childCom = d._$comp;
                if (!childCom) {
                    childCom = d._$comp = [];
                }
                let isBorn = false;
                for (let comp of childCom) {
                    if (comp._$type == uuid) {
                        isBorn = true;
                        break;
                    }
                }
                // 要设置npc出生点组件
                if (!isBorn) {
                    childCom.push({
                        _$type: uuid,
                        scriptPath: "../" + EditorUtils.PLAYER_BORN_COMP_FILE
                    });
                }
                comp.playerBorns.push({
                    _$ref: d._$id,
                    _$type: uuid
                });
            }
        }

    }

    /**
     * 添加npc出生点的信息
     * @param comp 
     * @param data 
     */
    public pushNpcBorn(comp: any, data: any) {
        let uuid = this.getNpcBornCodeUuid();
        if (!uuid) {
            console.error("未找到NPC出生点组件代码");
            return false;
        }

        comp.npcBorns = [];
        let childs = data._$child;
        if (childs) {
            for (let d of childs) {
                let childCom = d._$comp;
                if (!childCom) {
                    childCom = d._$comp = [];
                }
                let isBorn = false;
                for (let comp of childCom) {
                    if (comp._$type == uuid) {
                        isBorn = true;
                        break;
                    }
                }
                // 要设置npc出生点组件
                if (!isBorn) {
                    childCom.push({
                        _$type: uuid,
                        scriptPath: "../" + EditorUtils.NPC_BORN_COMP_FILE
                    });
                }
                comp.npcBorns.push({
                    _$ref: d._$id,
                    _$type: uuid
                });
            }
        }

    }

    /**
     * 添加物品出生点信息
     * @param comp 
     * @param data 
     */
    public pushItemBorn(comp: any, data: any) {

        comp.itemBorns = [];
        let childs = data._$child;
        if (childs) {
            for (let d of childs) {
                let info = {
                    _$ref: d._$id,
                };
                comp.itemBorns.push(info);
            }
        }
    }

    /**
     * 添加建筑组件的引用
     * @param data 
     * @returns 
     */
    public pushBuildUid(comp: any, data: any, isPrefab = false) {
        let uuid = this.getBuildCodeUuid();
        if (!uuid) {
            console.error("未找到建筑组件代码");
            return false;
        }
        let uids = this.findBuildingComp(data._$child, uuid, isPrefab);
        comp.buildings = [];
        if (uids && uids.length > 0) {
            for (let i = 0; i < uids.length; i++) {
                comp.buildings.push({
                    _$ref: uids[i],
                    _$type: uuid
                });
            }
        }
        return true;
    }


    /**
     * 找到建筑组件
     * @param childs 
     * @param code_uuid 
     * @returns 
     */
    public findBuildingComp(childs: any[], code_uuid: string, isPrefab = false) {
        let uids: string[] = [];
        if (!childs) return uids;
        for (let i = childs.length - 1; i >= 0; i--) {
            let info = childs[i];
            info.layer = EditorUtils.LAYER_BUILDING;
            if (info._$prefab) {
                // 是预制体
                let assetInfo: any = null;
                let db: any = this.assetDb;
                if (db.getAssetSync != null) {
                    assetInfo = db.getAssetSync(info._$prefab);
                } else {
                    assetInfo = this.assetDb.getAsset(info._$prefab);
                }
                if (assetInfo) {
                    let data = this.fs.readFileSync(this.path.join(this.Editor.assetsPath, assetInfo.file), "utf-8");
                    data = JSON.parse(data);
                    if (data._$comp) {
                        for (let comp of data._$comp) {
                            if (comp._$type == code_uuid) {
                                uids.push(info._$id);
                                break;
                            }
                        }
                    }
                    // 检测是否覆盖了建筑类型
                    if (info._$comp) {
                        for (let comp of info._$comp) {
                            if (comp._$override == code_uuid) {
                                console.warn("场景中建筑类型覆盖预制的类型\n建筑：" + info.name);
                                break;
                            }
                        }
                    }
                    // 设置子节点层级
                    if (!info._$child) {
                        info._$child = [{
                            _$override: "#45",
                            layer: EditorUtils.LAYER_BUILDING,
                        }];
                    } else {
                        let bb = false;
                        for (let child of info._$child) {
                            if (child._$override == "#45") {
                                bb = true;
                                child.layer = EditorUtils.LAYER_BUILDING;
                                break;
                            }
                        }
                        if (!bb) {
                            info._$child.push({
                                _$override: "#45",
                                layer: EditorUtils.LAYER_BUILDING,
                            });
                        }
                    }
                } else if (isPrefab) {
                    // 不存在，需要在child中删除
                    let index = childs.indexOf(info);
                    if (index != -1) {
                        childs.splice(index, 1);
                    }
                }
            } else{
                console.error("没使用建筑预制体：" + info.name);
                if (info._$comp) {
                    // 是组件，查看脚本
                    for (let comp of info._$comp) {
                        if (comp._$type == code_uuid) {
                            uids.push(info._$id);
                            break;
                        }
                    }
                }
            } 
        }
        return uids;
    }

    /**
     * 获取代码的uuid
     * @param filePath 脚本路径 例如src/Components/Unit_Building.ts
     * @returns 
     */
    public getCodeUuid(filePath: string) {
        let file = this.path.join(this.Editor.projectPath, filePath) + ".meta";
        if (this.fs.existsSync(file)) {
            let data = JSON.parse(this.fs.readFileSync(file, "utf-8"));
            return data.uuid;
        }
        return ""
    }

    /**
     * 获取建筑组件的uuid
     * @returns 
     */
    public getBuildCodeUuid() {
        return this.getCodeUuid(EditorUtils.BUILDING_COMP_FILE);
    }

    /**
     * 获取npc出生点的uuid
     * @returns 
     */
    public getNpcBornCodeUuid() {
        return this.getCodeUuid(EditorUtils.NPC_BORN_COMP_FILE);
    }

    /**
     * 获取玩家出生点的uuid
     * @returns 
     */
    public getPlayerBornCodeUuid() {
        return this.getCodeUuid(EditorUtils.PLAYER_BORN_COMP_FILE);
    }

}