import { centerBoardPosition, hexToWorld } from "../Board/MchHexCoords";
import { MchBoardModel } from "../Board/MchBoardModel";
import { MchFaction, type MchTileState } from "../Core/MchTypes";

const { regClass } = Laya;

@regClass()
export class MchTileClickTarget extends Laya.Script {
    declare owner: Laya.Sprite3D;

    private tile: MchTileState | null = null;

    bind(tile: MchTileState): void {
        this.tile = tile;
    }

    getTile(): MchTileState | null {
        return this.tile;
    }
}

export class MchBoardView {
    readonly root = new Laya.Sprite3D("MichengBoard");

    private readonly playerMat = this.createMaterial(0x4ade80);
    private readonly enemyMat = this.createMaterial(0xf87171);
    private readonly neutralMat = this.createMaterial(0x6b7280);

    constructor(
        private readonly parent: Laya.Sprite3D,
        private readonly board: MchBoardModel,
    ) {
        this.parent.addChild(this.root);
    }

    build(): void {
        this.clear();
        const cfg = this.board.config;
        const mesh = Laya.PrimitiveMesh.createCylinder(
            cfg.tileRadius,
            cfg.tileHeight,
            6,
        );

        for (const tile of this.board.tiles) {
            const node = new Laya.MeshSprite3D(mesh, `MchTile_${tile.col}_${tile.row}`);
            const pos = centerBoardPosition(hexToWorld(tile.col, tile.row, cfg), cfg);
            node.transform.localPosition = pos;
            node.meshRenderer.material = this.getMaterial(tile.faction);
            node.addComponent(Laya.PhysicsCollider).colliderShape =
                new Laya.BoxColliderShape(cfg.tileRadius * 1.8, cfg.tileHeight, cfg.tileRadius * 1.8);
            node.addComponent(MchTileClickTarget).bind(tile);
            this.root.addChild(node);
        }
    }

    getTileLocalPosition(col: number, row: number, y = 0): Laya.Vector3 {
        const pos = centerBoardPosition(hexToWorld(col, row, this.board.config), this.board.config);
        pos.y = y;
        return pos;
    }

    destroy(): void {
        this.root.destroy();
    }

    private clear(): void {
        this.root.destroyChildren();
    }

    private getMaterial(faction: MchFaction): Laya.BlinnPhongMaterial {
        if (faction === MchFaction.Player) return this.playerMat;
        if (faction === MchFaction.Enemy) return this.enemyMat;
        return this.neutralMat;
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
