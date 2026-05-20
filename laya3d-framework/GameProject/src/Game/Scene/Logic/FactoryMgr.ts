import ResPath from "../../../XYFrame/Resource/ResPath";
import { EnumRenderLayer } from "../Define/EnumRenderLayer";
import { EnumTag } from "../Define/EnumTag";
import { AnimatorCtl } from "./AnimatorCtl";
import { PlayerController } from "./PlayerController";
import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_human_105 from "../../../DataStock/ConfigData/Ts/Config_human_105";
import { Runtime_BuildingHp } from "../UI/Runtime_BuildingHp";
import Config_skin_301 from "../../../DataStock/ConfigData/Ts/Config_skin_301";
import ItemsUnit from "../Unit/ItemsUnit";
import UIUtils from "../../../XYFrame/Utils/UIUtils";

/**
 * @ Author: XXL
 * @ Date: 2026-03-16 15:53
 * @ Description: 工厂管理
*/
export default class FactoryMgr {
    /** 资源缓存 */
    private assets: Map<string, any> = new Map();
    /** 对象池 */
    private pool: Map<string, Laya.Script[]> = new Map();
    /** 对象池 */
    private spPool: Map<string, Laya.Node[]> = new Map();

    private _isInit: boolean = false;

    /**
     * 初始化资源
     */
    public async initAsset() {
        let _t = this;
        if (_t._isInit) return;

        let loadUrls: string[] = [];
        let keyLists: string[] = [];

        loadUrls.push(ResPath.getResPath("scene/unit/prefab/player.lh"));
        keyLists.push("player");
        loadUrls.push(ResPath.getResPath("scene/unit/prefab/daoju_rou.lh"));
        keyLists.push("daoju_rou");
        loadUrls.push(ResPath.getResPath("scene/unit/prefab/Aerolith.lh"));
        keyLists.push("Aerolith");
        loadUrls.push(ResPath.getUIPrefab("scene/BuildingHp.lh"));
        keyLists.push("BuildingHp");

        // npc模型
        let npcCfg = ConfigData.human_105;
        let mxs: string[] = [];
        for (let k in npcCfg) {
            let mx = Config_human_105.getMxByKey(k);
            if (mx && mxs.indexOf(mx) < 0) {
                mxs.push(mx);
            }
        }
        if (mxs.length > 0) {
            // let urls: string[] = [];
            for (let i = 0; i < mxs.length; i++) {
                let mx = mxs[i];
                loadUrls.push(ResPath.getResPath(`scene/unit/prefab/${mx}.lh`));
                keyLists.push("Npc_" + mx);
            }
        }

        // 加载特效
        let effects: string[] = [];
        let effCfg = ConfigData.effect_105;
        for (let k in effCfg) {
            effects.push(k);
        }

        // let urls: string[] = [];
        for (let i = 0; i < effects.length; i++) {
            let effect = effects[i];
            loadUrls.push(ResPath.getResPath(`effect/Prefab/${effect}.lh`));
            keyLists.push(effect);
        }

        // 加模型材质
        let mats: string[] = ["blueAlpha"];
        let matCfg = ConfigData.skin_301;
        for (let k in matCfg) {
            let d = matCfg[k];
            let skin = Config_skin_301.getMat(d);
            if (skin && mats.indexOf(skin) < 0) {
                mats.push(skin);
            }
        }
        for (let i = 0; i < mats.length; i++) {
            let mat = mats[i];
            loadUrls.push(ResPath.getResPath(`scene/material/${mat}.lmat`));
            keyLists.push(mat);
        }
        let assets = await Laya.loader.load(loadUrls);
        for (let i = 0; i < assets.length; i++) {
            let asset = assets[i];
            asset && (asset._addReference(), _t.assets.set(keyLists[i], asset));
        }

        _t._isInit = true;
    }

    /**
     * 获取资源
     * @param name 
     * @returns 
     */
    public getAsset<T extends Laya.Resource>(name: string): T {
        return this.assets.get(name);
    }

    /**
     * 获取蓝色材质
     * @returns 
     */
    public getBlueAlpha() {
        return this.assets.get("blueAlpha");
    }


    /**
     * 获取玩家
     * @returns 
     */
    public getPlayer() {
        let _t = this;
        let name = "player";
        if (!_t.pool.has(name)) {
            _t.pool.set(name, []);
        }
        let list = <PlayerController[]>_t.pool.get(name);
        if (list.length > 0) {
            let script = list.shift();
            script.owner.active = true;
            script.isDead = false;
            return script;
        } else {
            let asset = _t.assets.get(name);
            if (asset) {
                let sp: Laya.Sprite3D = asset.create();
                if (sp) {
                    sp.layer = EnumRenderLayer.Player;
                    sp.tag = EnumTag.Player;
                    let ani = sp.getComponent(AnimatorCtl);
                    if (!ani) {
                        sp.addComponent(AnimatorCtl);
                    }
                    let player = sp.getComponent(PlayerController);
                    if (!player) {
                        player = sp.addComponent(PlayerController);
                    }
                    return player;
                }
            }
        }
        return null;
    }

    /**
     * 回收玩家
     * @param node 
     */
    public putPlayer(node: PlayerController) {
        if (node && !node.destroyed) {
            let owner = node.owner;
            node.owner.active = false;
            node.clear();
            owner.removeSelf();
            let list = <PlayerController[]>this.pool.get("player");
            if (!list) {
                list = [];
                this.pool.set("player", list);
            }
            list.push(node);
        }
    }

    // /**
    //  * 获取NPC
    //  * @param id 
    //  * @returns 
    //  */
    // public getNpc(id?: string) {
    //     if (!id) {
    //         id = "ren";
    //     }
    //     const _t = this;
    //     let name = "Npc_" + id;
    //     if (!_t.pool.has(name)) {
    //         _t.pool.set(name, []);
    //     }
    //     let list = <NpcController[]>_t.pool.get(name);
    //     if (list.length > 0) {
    //         let script = list.shift();
    //         script.owner.active = true;
    //         script.isDead = false;
    //         return script;
    //     }
    //     let asset = _t.assets.get(name);
    //     if (asset) {
    //         let sp: Laya.Sprite3D = asset.create();
    //         if (sp) {
    //             sp.tag = EnumTag.Npc;
    //             sp.layer = EnumRenderLayer.Npc;
    //             let ani = sp.getComponent(AnimatorCtl);
    //             if (!ani) {
    //                 sp.addComponent(AnimatorCtl);
    //             }
    //             let npc = sp.getComponent(NpcController);
    //             if (!npc) {
    //                 npc = sp.addComponent(NpcController);
    //             }
    //             npc.tag = name;
    //             return npc;
    //         }

    //     }
    // }

    // /**
    //  * 回收NPC
    //  * @param node 
    //  */
    // public putNpc(node: NpcController) {
    //     if (node && !node.destroyed) {
    //         node.owner.active = false;
    //         node.clear();
    //         node.owner.removeSelf();
    //         let list = <NpcController[]>this.pool.get(node.tag);
    //         if (!list) {
    //             list = [];
    //             this.pool.set(node.tag, list);
    //         }
    //         list.push(node);
    //     }
    // }

    public getNpcUnit(res: number | string, npcType: number) {
        // return this.getNpc(res);
        let key = "NpcUnit_" + res;
        let list = <Laya.Sprite3D[]>this.spPool.get(key);
        if (list && list.length > 0) {
            let sp = <Laya.Sprite3D>list.shift();
            sp.active = true;
            return sp;
        } else {
            let asset = this.assets.get("Npc_" + res);
            if (asset) {
                let sp: Laya.Sprite3D = asset.create();
                if (sp) {
                    sp.layer = EnumRenderLayer.Npc;
                    if (npcType == 2) {
                        // 彩色小人
                        let renderer = UIUtils.findComponent(sp, Laya.MeshRenderer);
                        if (renderer) {
                            let mat = <Laya.BlinnPhongMaterial>renderer.material;
                            if (mat) {
                                let newMat = new Laya.BlinnPhongMaterial();
                                mat.cloneTo(newMat);
                                renderer.material = newMat;
                            }
                        }
                    }
                    let ani = sp.getComponent(AnimatorCtl);
                    if (!ani) {
                        sp.addComponent(AnimatorCtl);
                    }
                    return sp;
                }
            }
            return null;
        }
    }

    public putNpcUnit(res: number | string, node: Laya.Sprite3D) {
        if (node && !node.destroyed) {
            node.active = false;
            node.removeSelf();
            let key = "NpcUnit_" + res;
            let list = <Laya.Sprite3D[]>this.spPool.get(key);
            if (!list) {
                list = [];
                this.spPool.set(key, list);
            }
            list.push(node);
        }
    }

    /**
     * 获取一个资源实例
     * @param name 
     * @returns 
     */
    public getInst(name: string) {
        let _t = this;
        let list = _t.spPool.get(name);
        if (list && list.length > 0) {
            let sp = <Laya.Sprite3D>list.shift();
            sp.active = true;
            return sp;
        }
        let asset = _t.assets.get(name);
        if (asset) {
            let sp: Laya.Sprite3D = asset.create();
            if (sp) {
                return sp;
            }
        }
        return null;
    }

    /**
     * 回收一个实例
     * @param name 
     * @param sp 
     */
    public putInst(name: string, sp: Laya.Sprite3D) {
        if (sp && !sp.destroyed) {
            sp.active = false;
            sp.removeSelf();
            let list = this.spPool.get(name);
            if (!list) {
                list = [];
                this.spPool.set(name, list);
            }
            list.push(sp);
        }
    }

    public getItem() {
        let sp = this.getInst("daoju_rou");
        if (sp) {
            sp.layer = EnumRenderLayer.Items;
            let item = sp.getComponent(ItemsUnit);
            if (!item) {
                item = sp.addComponent(ItemsUnit);
            }
            return item;
        }
        return null;
    }

    public putItem(unit: ItemsUnit) {
        let owner = unit.owner;
        if (owner.destroyed) return;
        owner.active = false;
        owner.removeSelf();
        this.putInst("daoju_rou", owner);
    }

    /**
     * 获取建筑血量组件
     * @returns 
     */
    public getBuildingHp() {
        let asset: Laya.PrefabImpl = this.assets.get("BuildingHp");
        if (asset) {
            return <Runtime_BuildingHp>asset.create();
        }
    }

    destroy() {
        let _t = this;
        _t.pool.forEach(list => {
            list.forEach(node => {
                node.destroy();
            });
        });
        _t.pool.clear();
        _t.spPool.forEach(list => {
            list.forEach(node => {
                node.destroy();
            });
        });
        _t.spPool.clear();
        for (let k in _t.assets) {
            let asset = _t.assets.get(k);
            asset && asset.removeReference();
            asset.url && Laya.loader.clearRes(asset.url);
        }
        _t.assets.clear();
        _t._isInit = false;
    }
}