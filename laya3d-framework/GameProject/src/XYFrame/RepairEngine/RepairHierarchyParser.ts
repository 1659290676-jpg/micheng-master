import RepairEngine from "./RepairEngine";

/**
 * @ Author: XXL
 * @ Date: 2026-03-23 11:05
 * @ Description: 修复解析场景、预制体
*/
export default class RepairHierarchyParser {

    private static excludeKeys = new Set(["x", "y", "width", "height", "controllers", "relations", "gears"]);

    public static repair() {
        Laya.HierarchyParser.parse = function (data: any, options?: Record<string, any>, errors?: Array<any>): Array<Laya.Node> {
            let printErrors = errors == null;
            errors = errors || [];
            let nodeMap: Record<string, Laya.Node> = {};
            let dataList: Array<any> = [];
            let allNodes: Array<Laya.Node> = [];
            let outNodes: Array<Laya.Node> = [];
            let toDestroy: Array<string> = [];
            let scene: any;

            let inPrefab: boolean;
            let prefabNodeDict: Map<Laya.Node, Record<string, Laya.Node>>;
            let skinBaseUrl: string;
            let overrideData: Array<Array<any>>;
            let hasRuntime: boolean;
            let hasUI: boolean;

            if (options) {
                inPrefab = options.inPrefab;
                if (inPrefab)
                    prefabNodeDict = options.prefabNodeDict;
                skinBaseUrl = options.skinBaseUrl;
                overrideData = options.overrideData;
            }

            function createChildren(data: any, prefab: Laya.Node) {
                for (let child of data._$child) {
                    if (child._$child) {
                        let node = createNode(child, prefab);
                        createChildren(child, child._$prefab ? node : prefab);

                        dataList.push(child);
                        allNodes.push(node);
                    }
                    else {
                        let node = createNode(child, prefab);
                        dataList.push(child);
                        allNodes.push(node);
                    }
                }
            }

            function createNode(nodeData: any, prefab: Laya.Node): Laya.Node {
                let node: Laya.Node;
                let pstr: string;
                if (pstr = nodeData._$override) { //prefab里的override节点
                    if (prefab && prefabNodeDict) {
                        if (Array.isArray(pstr)) {
                            node = prefab;
                            for (let i = 0, n = pstr.length; i < n; i++) {
                                let map = prefabNodeDict.get(node);
                                node = map?.[pstr[i]];
                                if (!node)
                                    break;

                                if (node == prefab) { //不能引用自己
                                    node = null;
                                    break;
                                }
                            }
                        }
                        else {
                            let map = prefabNodeDict.get(prefab);
                            if (map) {
                                node = map[nodeData._$override];
                                if (node == prefab)
                                    node = null;
                            }
                        }
                    }
                }
                else {
                    if (pstr = nodeData._$prefab) { //prefab根节点
                        let res = <Laya.Prefab>Laya.Loader.getRes(Laya.URL.getResURLByUUID(pstr), Laya.Loader.HIERARCHY);
                        if (res) {
                            if (!prefabNodeDict)
                                prefabNodeDict = new Map();

                            let overrideData2: Array<any> = [];
                            let testId = nodeData._$id;
                            if (overrideData) {
                                for (let i = 0, n = overrideData.length; i < n; i++) {
                                    let arr = overrideData[i];
                                    if (arr && arr.length > 0) {
                                        overrideData2[i] = arr.filter(d => {
                                            let od = d._$override || d._$parent;
                                            return Array.isArray(od) && od.length > n - i && od[n - i - 1] == testId;
                                        });
                                    }
                                    else
                                        overrideData2[i] = arr;
                                }
                            }

                            overrideData2.push(nodeData._$child);

                            node = res.create({ inPrefab: true, prefabNodeDict: prefabNodeDict, overrideData: overrideData2 }, errors);
                        }
                    }
                    else if (pstr = nodeData._$type) {
                        let cls = Laya.ClassUtils.getClass(pstr);
                        if (cls) {
                            try {
                                if (pstr == "Sprite3D") {
                                    node = RepairEngine.getPool("Sprite3D", cls);
                                    RepairEngine.resetSprite3D(node);
                                } else {
                                    node = new cls();
                                }
                            }
                            catch (err: any) {
                                errors.push(err);
                            }
                        }
                        else {
                            errors.push(new Error(`missing node type '${pstr}' (in ${nodeData.name || 'noname'})`));
                        }
                    }

                    if (node) {
                        nodeMap[nodeData._$id] = node;
                        if (node._nodeType === 2)
                            hasUI = true;
                    }
                }

                return node;
            }

            function getNodeByRef(idPath: string | string[]) {
                if (Array.isArray(idPath)) {
                    let prefab = nodeMap[idPath[0]];
                    if (prefab && idPath.length > 1)
                        return findNodeInPrefab(prefab, idPath, 1);
                    else
                        return prefab;
                }
                else
                    return nodeMap[idPath];
            }

            function findNodeInPrefab(prefab: Laya.Node, idPath: string | string[], startIndex: number = 0) {
                if (!idPath)
                    return prefab;

                let map = prefabNodeDict?.get(prefab);
                if (!map)
                    return null;

                if (Array.isArray(idPath)) {
                    let node: Laya.Node;
                    for (let i = startIndex, n = idPath.length; i < n; i++) {
                        if (!map)
                            return null;

                        node = map[idPath[i]];
                        if (!node)
                            break;

                        map = prefabNodeDict.get(node);
                    }
                    return node;
                }
                else
                    return map[idPath];
            }

            let bakedOverrideData: Record<string, Array<any>>;
            function getNodeData(node: Laya.Node) {
                let i = allNodes.indexOf(node);
                let nodeData = dataList[i];

                node.removeSelf();
                toDestroy.push(nodeData._$id);
                allNodes[i] = null;

                if (!overrideData)
                    return nodeData;

                if (bakedOverrideData === undefined)
                    bakedOverrideData = Laya.SerializeUtil.bakeOverrideData(overrideData);

                if (bakedOverrideData)
                    return Laya.SerializeUtil.applyOverrideData(nodeData, bakedOverrideData);
                else
                    return nodeData;
            }

            if (data._$type || data._$prefab) {
                let runtime = data._$runtime;
                if (runtime) {
                    hasRuntime = true;
                    if (runtime.startsWith("res://"))
                        runtime = runtime.substring(6);
                    runtime = Laya.ClassUtils.getClass(runtime);
                    if (!runtime)
                        errors.push(new Error(`missing runtime class '${data._$runtime}'`));
                }
                if (options && options.runtime)
                    runtime = options.runtime;
                let node: Laya.Node;
                if (runtime) {
                    node = new runtime();
                    if (!(node instanceof Laya.Node)) {
                        errors.push(new Error(`runtime class invalid - '${runtime}', must derive from Node`));
                        node = null;
                    }
                    nodeMap[data._$id] = node;
                }
                else
                    node = createNode(data, null);
                if (node) {
                    if (data._$child)
                        createChildren(data, data._$prefab ? node : null);

                    dataList.push(data);
                    allNodes.push(node);

                    if (node instanceof Laya.Scene)
                        scene = node;
                }
            }
            else {
                if (data._$child)
                    createChildren(data, null);
            }

            let nodeCnt = dataList.length;

            //生成树
            let k = 0;
            let outNodeData: Array<any> = [];
            for (let i = 0; i < nodeCnt; i++) {
                let nodeData = dataList[i];
                let node = allNodes[i];

                let children: Array<any> = nodeData._$child;
                if (children) {
                    let num = children.length;
                    if (node) {
                        if (nodeData._$prefab) {
                            for (let j = 0; j < num; j++) {
                                let m = k - num + j;
                                let n = outNodes[m];
                                if (n && !n.parent) { //是预制体新增
                                    let nodeData2 = outNodeData[m];
                                    let parentNode = findNodeInPrefab(node, nodeData2._$parent);
                                    if (parentNode) {
                                        let pos = nodeData2._$index;
                                        if (pos != null && pos < parentNode.numChildren)
                                            parentNode.addChildAt(n, pos);
                                        else
                                            parentNode.addChild(n);
                                    }
                                    else {
                                        //挂接的节点可能被删掉了
                                        node.addChildAt(n, 0);
                                    }
                                }
                            }
                        }
                        else {
                            for (let j = 0; j < num; j++) {
                                let n = outNodes[k - num + j];
                                if (n) {
                                    if (node === scene && n.is3D)
                                        scene._scene3D = <any>n;
                                    else
                                        node.addChild(n);
                                }
                            }
                        }
                    }
                    k -= num;
                }

                outNodes[k] = node;
                outNodeData[k] = nodeData;
                k++;
            }
            outNodes.length = k;
            outNodes = outNodes.filter(n => n != null);
            let topNode = outNodes[0];

            //加载所有组件
            let compInitList: Array<any> = [];
            for (let i = 0; i < nodeCnt; i++) {
                let components = dataList[i]._$comp;
                if (!components)
                    continue;

                let node = allNodes[i];
                if (!node)
                    continue;

                for (let compData of components) {
                    let comp: Laya.Component;
                    let typeOrId = compData._$override;
                    if (compData._$override) {
                        let cls = Laya.ClassUtils.getClass(typeOrId);
                        if (cls)
                            comp = node.getComponent(cls);
                        else
                            comp = node.components.find(comp => (<any>comp._extra).storeId == typeOrId);
                    }
                    else {
                        let cls: any = Laya.ClassUtils.getClass(compData._$type);
                        if (cls) {
                            if (!compData._$id)
                                comp = node.getComponent(cls);
                            if (!comp) {
                                try {
                                    comp = node.addComponent(cls);
                                    (<any>comp._extra).storeId = compData._$id;
                                }
                                catch (err: any) {
                                    errors.push(err);
                                }
                            }
                        }
                        else
                            errors.push(new Error(`missing component type '${compData._$type}' (in ${dataList[i].name || 'noname'})`));
                    }

                    if (comp)
                        compInitList.push(compData, comp);
                }
            }

            const decoder = new Laya.ObjDecoder();
            decoder.errors = errors;
            decoder.getNodeByRef = getNodeByRef;
            decoder.getNodeData = getNodeData;

            //第一轮
            for (let i = 0; i < nodeCnt; i++) {
                let nodeData = dataList[i];
                let node = <Laya.Sprite>allNodes[i];
                if (node && (node._nodeType === 2 || node === scene))
                    decoder.decodeObjBounds(nodeData, node);
            }

            if (hasUI) {
                if (topNode._nodeType === 2) {
                    (<Laya.GWidget>topNode).sourceWidth = (<Laya.Sprite>topNode).width;
                    (<Laya.GWidget>topNode).sourceHeight = (<Laya.Sprite>topNode).height;
                }

                //第二轮(Relations)
                for (let i = 0; i < nodeCnt; i++) {
                    let nodeData = dataList[i];
                    let node = allNodes[i];
                    if (node && node._nodeType === 2) {
                        let v = nodeData["relations"];
                        if (v != null) {
                            if (nodeData._$prefab != null)
                                (<Laya.GWidget>node)._addRelations(decoder.decodeObj(v));
                            else
                                (<Laya.GWidget>node).relations = decoder.decodeObj(v);
                        }
                    }
                }
            }

            //第三轮
            for (let i = 0; i < nodeCnt; i++) {
                let nodeData = dataList[i];
                let node = allNodes[i];
                if (node) {
                    if (skinBaseUrl != null && node._nodeType === 0)
                        (<Laya.Sprite>node)._skinBaseUrl = skinBaseUrl;

                    decoder.decodeObj(nodeData, node, (node._nodeType === 2 || node === scene) ? RepairHierarchyParser.excludeKeys : null);

                    if (hasRuntime && nodeData._$var && node.name) {
                        try {
                            (<any>topNode)[node.name] = node;
                        }
                        catch (err: any) {
                            errors.push(err);
                        }
                    }
                }
            }

            //设置组件属性
            let compCnt = compInitList.length;
            for (let i = 0; i < compCnt; i += 2) {
                let compData = compInitList[i];
                let comp = compInitList[i + 1];
                decoder.decodeObj(compData, comp);
            }

            if (hasUI) {
                //第四轮(Gears)
                for (let i = 0; i < nodeCnt; i++) {
                    let nodeData = dataList[i];
                    let node = allNodes[i];
                    if (node && node._nodeType === 2) {
                        let v = nodeData["gears"];
                        if (v != null) {
                            if (nodeData._$prefab != null)
                                (<Laya.GWidget>node)._addGears(decoder.decodeObj(v));
                            else
                                (<Laya.GWidget>node).gears = decoder.decodeObj(v);
                        }
                    }
                }

                if (topNode._nodeType === 2 && (!prefabNodeDict || !prefabNodeDict.has(topNode))) {
                    try {
                        (<Laya.GWidget>topNode)._onConstruct(inPrefab);
                    }
                    catch (error: any) {
                        errors.push(error);
                    }
                }
            }

            for (let nodeId of toDestroy) {
                let node = nodeMap[nodeId];
                if (!node._destroyed)
                    node.destroy();

                delete nodeMap[nodeId];
            }

            if (inPrefab && prefabNodeDict && topNode) //记录下nodeMap，上层创建prefab时使用
                prefabNodeDict.set(topNode, nodeMap);

            if (printErrors && errors.length > 0)
                errors.forEach(err => console.error(err));

            return outNodes;
        };

        if (Laya.HierarchyParserV2)
            (<any>Laya.HierarchyParserV2)._createSprite3DInstance = function (nodeData: any, spriteMap: any, outBatchSprites: Laya.RenderableSprite3D[]): Node {
                let node: any;
                let nodeToComp: any;
                switch (nodeData.type) {
                    case "Scene3D":
                        node = new Laya.Scene3D();
                        break;
                    case "Sprite3D":
                        node = RepairEngine.getPool("Sprite3D", Laya.Sprite3D);
                        break;
                    case "MeshSprite3D":
                        node = new Laya.MeshSprite3D();
                        (outBatchSprites && nodeData.props.isStatic) && (outBatchSprites.push(<Laya.MeshSprite3D>node));
                        break;
                    case "SkinnedMeshSprite3D":
                        node = new Laya.SkinnedMeshSprite3D();
                        break;
                    case "SimpleSkinnedMeshSprite3D":
                        node = new Laya.SimpleSkinnedMeshSprite3D();
                        break;
                    case "ShuriKenParticle3D":
                        node = new Laya.ShuriKenParticle3D();
                        break;
                    case "Camera":
                        node = new Laya.Camera();
                        break;
                    case "ReflectionProbe":
                        node = RepairEngine.getPool("Sprite3D", Laya.Sprite3D);
                        nodeToComp = node.addComponent(Laya.ReflectionProbe);
                        break;
                    case "DirectionLight":
                        node = RepairEngine.getPool("Sprite3D", Laya.Sprite3D);
                        nodeToComp = node.addComponent(Laya.DirectionLightCom);
                        break;
                    case "PointLight":
                        node = RepairEngine.getPool("Sprite3D", Laya.Sprite3D);
                        nodeToComp = node.addComponent(Laya.PointLightCom);
                        break;
                    case "SpotLight":
                        node = RepairEngine.getPool("Sprite3D", Laya.Sprite3D);
                        nodeToComp = node.addComponent(Laya.SpotLightCom);
                        break;
                    case "TrailSprite3D":
                        node = RepairEngine.getPool("Sprite3D", Laya.Sprite3D);
                        nodeToComp = node.addComponent(Laya.TrailRenderer);
                        break;
                    default:
                        throw new Error(`unknown node type ${nodeData.type}`);
                }

                let childData: any[] = nodeData.child;
                if (childData) {
                    for (let i: number = 0, n: number = childData.length; i < n; i++) {
                        let child: any = (<any>Laya.HierarchyParserV2)._createSprite3DInstance(childData[i], spriteMap, outBatchSprites)
                        node.addChild(child);
                    }
                }

                spriteMap[nodeData.instanceID] = nodeToComp || node;
                return node;
            };
    }
}