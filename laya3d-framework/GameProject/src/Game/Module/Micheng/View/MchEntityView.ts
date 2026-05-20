import { MchBoardModel } from "../Board/MchBoardModel";
import {
    MchBuildingKind,
    MchFaction,
    MchSoldierKind,
    type MchBuildingState,
    type MchSoldierState,
} from "../Core/MchTypes";
import { MchBoardView } from "./MchBoardView";

export class MchEntityView {
    readonly root = new Laya.Sprite3D("MichengEntities");

    private readonly playerMat = this.createMaterial(0x2563eb);
    private readonly enemyMat = this.createMaterial(0xdc2626);
    private readonly goldMat = this.createMaterial(0xfbbf24);
    private readonly towerMat = this.createMaterial(0x93c5fd);
    private readonly barracksMat = this.createMaterial(0xa78bfa);
    private readonly soldierPlayerMat = this.createMaterial(0x7dd3fc);
    private readonly soldierEnemyMat = this.createMaterial(0xfb7185);
    private readonly darkMat = this.createMaterial(0x1f2937);
    private readonly flipUpdates = new Set<() => void>();

    constructor(
        private readonly parent: Laya.Sprite3D,
        private readonly board: MchBoardModel,
        private readonly boardView: MchBoardView,
    ) {
        this.parent.addChild(this.root);
    }

    build(): void {
        this.clear();
        for (const building of this.board.buildings) {
            this.root.addChild(this.createBuilding(building));
        }
        for (const soldier of this.board.soldiers) {
            this.root.addChild(this.createSoldier(soldier));
        }
    }

    addBuildingWithFlip(building: MchBuildingState, onComplete?: () => void): void {
        const node = this.createBuilding(building);
        const endPos = this.boardView.getTileLocalPosition(building.col, building.row, 0.12);
        node.transform.localPosition = new Laya.Vector3(endPos.x, -0.55, endPos.z);
        node.transform.localRotationEuler = new Laya.Vector3(-90, 0, 0);
        this.root.addChild(node);

        const state = { frame: 0 };
        const total = 18;
        const update = () => {
            if (node.destroyed || !node.transform) {
                this.clearFlipUpdate(update);
                return;
            }
            state.frame++;
            const t = Math.min(1, state.frame / total);
            const ease = 1 - Math.pow(1 - t, 3);
            node.transform.localPosition = new Laya.Vector3(
                endPos.x,
                -0.55 + (endPos.y + 0.55) * ease,
                endPos.z,
            );
            node.transform.localRotationEuler = new Laya.Vector3(-90 + 90 * ease, 0, 0);
            if (t >= 1) {
                this.clearFlipUpdate(update);
                onComplete?.();
            }
        };
        this.flipUpdates.add(update);
        Laya.timer.frameLoop(1, this, update);
    }

    destroy(): void {
        this.clearFlipUpdates();
        this.root.destroy();
    }

    private clear(): void {
        this.clearFlipUpdates();
        this.root.destroyChildren();
    }

    private clearFlipUpdate(update: () => void): void {
        Laya.timer.clear(this, update);
        this.flipUpdates.delete(update);
    }

    private clearFlipUpdates(): void {
        for (const update of this.flipUpdates) {
            Laya.timer.clear(this, update);
        }
        this.flipUpdates.clear();
    }

    private createBuilding(data: MchBuildingState): Laya.Sprite3D {
        const group = new Laya.Sprite3D(`MchBuilding_${data.kind}_${data.id}`);
        group.transform.localPosition = this.boardView.getTileLocalPosition(data.col, data.row, 0.12);

        if (data.kind === MchBuildingKind.LordBase) {
            this.addMesh(group, Laya.PrimitiveMesh.createCylinder(0.34, 0.55, 8), this.matByFaction(data.faction), 0.28);
            this.addMesh(group, Laya.PrimitiveMesh.createCone(0.33, 0.38, 8), this.goldMat, 0.75);
            this.addMesh(group, Laya.PrimitiveMesh.createBox(0.18, 0.18, 0.18), this.darkMat, 0.97);
        } else if (data.kind === MchBuildingKind.GoldMine) {
            this.addMesh(group, Laya.PrimitiveMesh.createCone(0.36, 0.42, 6), this.goldMat, 0.34);
            this.addMesh(group, Laya.PrimitiveMesh.createSphere(0.12, 8, 8), this.darkMat, 0.62);
        } else if (data.kind === MchBuildingKind.ArrowTower) {
            this.addMesh(group, Laya.PrimitiveMesh.createCylinder(0.18, 0.58, 6), this.towerMat, 0.32);
            this.addMesh(group, Laya.PrimitiveMesh.createCone(0.24, 0.28, 6), this.goldMat, 0.75);
        } else if (data.kind === MchBuildingKind.EmptyWall) {
            this.addMesh(group, Laya.PrimitiveMesh.createCylinder(0.38, 0.12, 6), this.darkMat, 0.18);
            this.addMesh(group, Laya.PrimitiveMesh.createCylinder(0.22, 0.16, 6), this.matByFaction(data.faction), 0.24);
        } else {
            this.addMesh(group, Laya.PrimitiveMesh.createBox(0.55, 0.32, 0.45), this.barracksMat, 0.28);
            this.addMesh(group, Laya.PrimitiveMesh.createCylinder(0.18, 0.28, 6), this.matByFaction(data.faction), 0.58);
        }

        return group;
    }

    private createSoldier(data: MchSoldierState): Laya.Sprite3D {
        const group = new Laya.Sprite3D(`MchSoldier_${data.kind}_${data.id}`);
        group.transform.localPosition = this.boardView.getTileLocalPosition(data.col, data.row, 0.18);
        const mat = data.faction === MchFaction.Player ? this.soldierPlayerMat : this.soldierEnemyMat;
        const scale = data.kind === MchSoldierKind.Rare ? 0.16 : 0.14;
        this.addMesh(group, Laya.PrimitiveMesh.createSphere(scale, 8, 8), mat, 0.22);
        this.addMesh(group, Laya.PrimitiveMesh.createBox(scale * 1.1, scale * 1.35, scale * 0.8), mat, 0.05);
        return group;
    }

    private addMesh(
        parent: Laya.Sprite3D,
        mesh: Laya.Mesh,
        mat: Laya.BlinnPhongMaterial,
        y: number,
    ): void {
        const node = new Laya.MeshSprite3D(mesh);
        node.meshRenderer.material = mat;
        node.transform.localPosition = new Laya.Vector3(0, y, 0);
        parent.addChild(node);
    }

    private matByFaction(faction: MchFaction): Laya.BlinnPhongMaterial {
        return faction === MchFaction.Player ? this.playerMat : this.enemyMat;
    }

    private createMaterial(color: number): Laya.BlinnPhongMaterial {
        const mat = new Laya.BlinnPhongMaterial();
        const r = ((color >> 16) & 0xff) / 255;
        const g = ((color >> 8) & 0xff) / 255;
        const b = (color & 0xff) / 255;
        mat.albedoColor = new Laya.Color(r, g, b, 1);
        return mat;
    }
}
