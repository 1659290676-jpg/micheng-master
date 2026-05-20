import { Unit_Building } from "../Components/Unit_Building";
import NpcUnit from "../Unit/NpcUnit";

/**
 * @ Author: XXL
 * @ Date: 2026-03-24 14:33
 * @ Description: 空间分区管理器
*/
export default class SpatialPartition {

    private static readonly KEY = "grid_key";

    private playerMap: Map<string, Laya.Sprite3D[]> = new Map();
    private npcMap: Map<string, NpcUnit[]> = new Map();
    private buildingMap: Map<string, Unit_Building[]> = new Map();
    private gridSize: number;

    public constructor(gridSize: number) {
        this.gridSize = gridSize;
    }

    /**
     * 获取对象所在网格Key
     * @param pos 
     * @returns 
     */
    public getGridKey(pos: Laya.Vector3) {
        const x = Math.floor(pos.x / this.gridSize);
        const z = Math.floor(pos.z / this.gridSize);
        return `${x}_${z}`;
    }

    /**
     * 添加对象到分区
     * @param obj 
     */
    public addPlayer(obj: Laya.Sprite3D) {
        this.removePlayer(obj);
        const key = this.getGridKey(obj.transform.localPosition);
        (<any>obj)[SpatialPartition.KEY] = key;
        if (!this.playerMap.has(key)) {
            this.playerMap.set(key, []);
        }
        this.playerMap.get(key).push(obj);
    }

    /**
     * 移除对象从分区
     * @param obj 
     */
    public removePlayer(obj: Laya.Sprite3D) {
        const key = (<any>obj)[SpatialPartition.KEY];
        if (key) {
            const list = this.playerMap.get(key);
            if (list) {
                const index = list.indexOf(obj);
                if (index >= 0) {
                    list.splice(index, 1);
                }
            }
            delete (<any>obj)[SpatialPartition.KEY];
        }
    }

    public addNpc(pos: Laya.Vector3, obj: NpcUnit) {
        this.removeNpc(obj);
        const key = this.getGridKey(pos);
        (<any>obj)[SpatialPartition.KEY] = key;
        if (!this.npcMap.has(key)) {
            this.npcMap.set(key, []);
        }
        this.npcMap.get(key).push(obj);
    }

    public removeNpc(obj: NpcUnit) {
        const key = (<any>obj)[SpatialPartition.KEY];
        if (key) {
            const list = this.npcMap.get(key);
            if (list) {
                const index = list.indexOf(obj);
                if (index >= 0) {
                    list.splice(index, 1);
                }
            }
            delete (<any>obj)[SpatialPartition.KEY];
        }
    }

    public addBuilding(pos: Laya.Vector3, buiding: Unit_Building) {
        this.removeBuilding(buiding);
        const key = this.getGridKey(pos);
        (<any>buiding)[SpatialPartition.KEY] = key;
        if (!this.buildingMap.has(key)) {
            this.buildingMap.set(key, []);
        }
        this.buildingMap.get(key).push(buiding);
    }

    public removeBuilding(buiding: Unit_Building) {
        const key = (<any>buiding)[SpatialPartition.KEY];
        if (key) {
            const list = this.buildingMap.get(key);
            if (list) {
                const index = list.indexOf(buiding);
                if (index >= 0) {
                    list.splice(index, 1);
                }
            }
            delete (<any>buiding)[SpatialPartition.KEY];
        }
    }

    /**
     * 清空所有对象
     */
    public clear() {
        this.playerMap.clear();
        this.npcMap.clear();
        this.buildingMap.clear();
    }

    /**
     * 获取目标位置周边网格的对象列表
     * @param pos 
     * @param range 周围范围
     * @returns 
     */
    public getNearbyPlayer(pos: Laya.Vector3, range: number = 1): Laya.Sprite3D[] {
        const centerKey = this.getGridKey(pos);
        const [cx, cz] = centerKey.split("_").map(Number);
        const result: Laya.Sprite3D[] = [];
        // 遍历周边range范围的网格
        for (let x = cx - range; x <= cx + range; x++) {
            for (let z = cz - range; z <= cz + range; z++) {
                const list = this.playerMap.get(`${x}_${z}`);
                if (list) result.push(...list);
            }
        }
        return result;
    }

    /**
     * 获取目标位置周边网格的对象列表
     * @param pos 
     * @param range 周围范围
     * @returns 
     */
    public getNearByNpc(pos: Laya.Vector3, range: number = 1): any[] {
        const centerKey = this.getGridKey(pos);
        const [cx, cz] = centerKey.split("_").map(Number);
        const result: any[] = [];
        // 遍历周边range范围的网格
        for (let x = cx - range; x <= cx + range; x++) {
            for (let z = cz - range; z <= cz + range; z++) {
                const list = this.npcMap.get(`${x}_${z}`);
                if (list) result.push(...list);
            }
        }
        return result;
    }

    public getNearbyBuilding(pos: Laya.Vector3, range: number = 1): Unit_Building[] {
        const centerKey = this.getGridKey(pos);
        const [cx, cz] = centerKey.split("_").map(Number);
        const result: Unit_Building[] = [];
        // 遍历周边range范围的网格
        for (let x = cx - range; x <= cx + range; x++) {
            for (let z = cz - range; z <= cz + range; z++) {
                const list = this.buildingMap.get(`${x}_${z}`);
                if (list) result.push(...list);
            }
        }
        return result;
    }

    /**
     * 更新对象的分区（位置变化时调用）
     * @param obj 
     */
    public updatePlayerGrid(obj: Laya.Sprite3D): void {
        // this.remove(obj);
        this.addPlayer(obj);
    }


}