import { MchBoardModel } from "../Board/MchBoardModel";
import { MchBlueprintType, MchFaction, type MchBlueprintState, type MchTileState } from "../Core/MchTypes";
import { MchBoardView, MchTileClickTarget } from "./MchBoardView";

const { regClass } = Laya;

@regClass()
export class MchBlueprintClickTarget extends Laya.Script {
    declare owner: Laya.Sprite3D;

    private blueprint: MchBlueprintState | null = null;
    private onClick: ((blueprint: MchBlueprintState) => void) | null = null;

    bind(blueprint: MchBlueprintState, onClick: (blueprint: MchBlueprintState) => void): void {
        this.blueprint = blueprint;
        this.onClick = onClick;
    }

    getBlueprint(): MchBlueprintState | null {
        return this.blueprint;
    }

    onMouseDown(): void {
        if (this.blueprint && this.onClick) {
            this.onClick(this.blueprint);
        }
    }
}

export class MchBlueprintView {
    readonly root = new Laya.Sprite3D("MichengBlueprints");

    private readonly towerMat = this.createMaterial(0x38bdf8);
    private readonly mineMat = this.createMaterial(0xfbbf24);
    private readonly barracksMat = this.createMaterial(0xa78bfa);
    private readonly mysteryMat = this.createMaterial(0xf97316);
    private readonly plateMat = this.createMaterial(0x111827);
    private readonly costMat = this.createMaterial(0xfacc15);
    private readonly priceBgMat = this.createMaterial(0x3f2a10);
    private readonly whiteMat = this.createMaterial(0xf8fafc);
    private readonly pickPoint = new Laya.Vector2();
    private readonly pickRay = new Laya.Ray(new Laya.Vector3(), new Laya.Vector3());
    private readonly hitResults: Laya.HitResult[] = [];

    constructor(
        private readonly parent: Laya.Sprite3D,
        private readonly board: MchBoardModel,
        private readonly boardView: MchBoardView,
        private readonly onBlueprintClick: (blueprint: MchBlueprintState) => void,
    ) {
        this.parent.addChild(this.root);
    }

    build(): void {
        this.clear();
        for (const blueprint of this.board.blueprints) {
            if (blueprint.faction !== MchFaction.Player) continue;
            this.root.addChild(this.createBlueprintNode(blueprint));
        }
    }

    destroy(): void {
        this.root.destroy();
    }

    pickBlueprintAtStagePoint(stageX: number, stageY: number): MchBlueprintState | null {
        const hit = this.pickStagePoint(stageX, stageY);
        return hit.blueprint ?? (hit.tile ? this.board.getPlayerBlueprintAt(hit.tile.col, hit.tile.row) : null);
    }

    private pickStagePoint(stageX: number, stageY: number): {
        blueprint: MchBlueprintState | null;
        tile: MchTileState | null;
    } {
        const scene = this.parent.scene;
        const camera = this.findCamera(scene);
        if (!scene || !camera || !scene.physicsSimulation) {
            return { blueprint: null, tile: null };
        }

        this.pickPoint.setValue(stageX, stageY);
        camera.viewportPointToRay(this.pickPoint, this.pickRay);
        this.hitResults.length = 0;
        scene.physicsSimulation.rayCastAll(this.pickRay, this.hitResults, 1000);

        let tile: MchTileState | null = null;
        for (const hit of this.hitResults) {
            const owner = hit.collider?.owner as Laya.Sprite3D;
            const blueprint = this.findBlueprintOnNode(owner);
            if (blueprint) return { blueprint, tile };
            tile = tile ?? this.findTileOnNode(owner);
        }
        return { blueprint: null, tile };
    }

    private clear(): void {
        this.root.destroyChildren();
    }

    private createBlueprintNode(data: MchBlueprintState): Laya.Sprite3D {
        const group = new Laya.Sprite3D(`MchBlueprint_${data.type}_${data.id}`);
        group.transform.localPosition = this.boardView.getTileLocalPosition(data.col, data.row, 0.082);

        this.addMesh(group, Laya.PrimitiveMesh.createCylinder(0.34, 0.008, 6), this.plateMat, 0);
        this.addFlatTypeIcon(group, data.type);
        this.addCostLabel(group, data.cost);

        const collider = group.addComponent(Laya.PhysicsCollider);
        collider.colliderShape = new Laya.BoxColliderShape(0.82, 0.16, 0.82);
        collider.isTrigger = true;
        group.addComponent(MchBlueprintClickTarget).bind(data, this.onBlueprintClick);
        return group;
    }

    private addFlatTypeIcon(parent: Laya.Sprite3D, type: MchBlueprintType): void {
        if (type === MchBlueprintType.Tower) {
            this.addFlatBox(parent, 0, 0.018, 0.03, 0.12, 0.01, 0.3, this.whiteMat);
            this.addFlatBox(parent, 0, 0.03, -0.045, 0.3, 0.01, 0.09, this.whiteMat);
        } else if (type === MchBlueprintType.Mine) {
            this.addMesh(parent, Laya.PrimitiveMesh.createCylinder(0.16, 0.01, 6), this.whiteMat, 0.022);
            this.addFlatBox(parent, 0, 0.034, 0.03, 0.22, 0.008, 0.08, this.whiteMat);
        } else if (type === MchBlueprintType.Mystery) {
            this.addFlatBox(parent, 0, 0.018, -0.02, 0.2, 0.01, 0.08, this.whiteMat);
            this.addFlatBox(parent, 0.055, 0.03, 0.07, 0.08, 0.01, 0.08, this.whiteMat);
            this.addMesh(parent, Laya.PrimitiveMesh.createCylinder(0.035, 0.01, 8), this.whiteMat, 0.04);
        } else {
            this.addMesh(parent, Laya.PrimitiveMesh.createCylinder(0.13, 0.01, 8), this.whiteMat, 0.022);
            this.addFlatBox(parent, -0.09, 0.036, 0.09, 0.12, 0.01, 0.12, this.whiteMat);
            this.addFlatBox(parent, 0.09, 0.036, 0.09, 0.12, 0.01, 0.12, this.whiteMat);
            this.addFlatBox(parent, 0, 0.028, -0.03, 0.22, 0.01, 0.12, this.whiteMat);
        }
    }

    private addCostLabel(parent: Laya.Sprite3D, cost: number): void {
        this.addFlatBox(parent, 0, 0.032, -0.2, 0.52, 0.008, 0.16, this.priceBgMat);

        const digits = String(cost);
        const digitWidth = 0.082;
        const gap = 0.018;
        const totalWidth = digits.length * digitWidth + (digits.length - 1) * gap;
        let x = -totalWidth / 2 + digitWidth / 2;
        for (const digit of digits) {
            this.addDigit(parent, digit, x, 0.056, -0.2, 0.95);
            x += digitWidth + gap;
        }
    }

    private addMesh(
        parent: Laya.Sprite3D,
        mesh: Laya.Mesh,
        mat: Laya.BlinnPhongMaterial,
        y: number,
    ): Laya.MeshSprite3D {
        const node = new Laya.MeshSprite3D(mesh);
        node.meshRenderer.material = mat;
        node.transform.localPosition = new Laya.Vector3(0, y, 0);
        parent.addChild(node);
        return node;
    }

    private addFlatBox(
        parent: Laya.Sprite3D,
        x: number,
        y: number,
        z: number,
        width: number,
        height: number,
        depth: number,
        mat: Laya.BlinnPhongMaterial,
    ): void {
        const node = new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(width, height, depth));
        node.meshRenderer.material = mat;
        node.transform.localPosition = new Laya.Vector3(x, y, z);
        parent.addChild(node);
    }

    private addDigit(
        parent: Laya.Sprite3D,
        digit: string,
        x: number,
        y: number,
        z: number,
        scale: number,
        mirrorX = false,
    ): void {
        const segments: Record<string, string> = {
            "0": "abcfed",
            "1": "bc",
            "2": "abged",
            "3": "abgcd",
            "4": "fgbc",
            "5": "afgcd",
            "6": "afgecd",
            "7": "abc",
            "8": "abcdefg",
            "9": "abfgcd",
        };
        for (const seg of segments[digit] ?? "") {
            this.addDigitSegment(parent, seg, x, y, z, scale, mirrorX);
        }
    }

    private addDigitSegment(
        parent: Laya.Sprite3D,
        segment: string,
        x: number,
        y: number,
        z: number,
        scale: number,
        mirrorX: boolean,
    ): void {
        const long = 0.05 * scale;
        const short = 0.014 * scale;
        const top = 0.04 * scale;
        const mid = 0;
        const bottom = -0.04 * scale;
        const left = -0.026 * scale;
        const right = 0.026 * scale;
        const map: Record<string, [number, number, number, number]> = {
            a: [0, top, long, short],
            b: [right, top / 2, short, long],
            c: [right, bottom / 2, short, long],
            d: [0, bottom, long, short],
            e: [left, bottom / 2, short, long],
            f: [left, top / 2, short, long],
            g: [0, mid, long, short],
        };
        const [dx, dz, width, depth] = map[segment];
        this.addFlatBox(parent, x + (mirrorX ? -dx : dx), y, z + dz, width, 0.012, depth, this.costMat);
    }

    private createMaterial(color: number): Laya.BlinnPhongMaterial {
        const mat = new Laya.BlinnPhongMaterial();
        const r = ((color >> 16) & 0xff) / 255;
        const g = ((color >> 8) & 0xff) / 255;
        const b = (color & 0xff) / 255;
        mat.albedoColor = new Laya.Color(r, g, b, 1);
        return mat;
    }

    private findCamera(scene: Laya.Scene3D): Laya.Camera | null {
        const debugCamera = scene.getChildByName("MichengDebugCamera") as Laya.Camera;
        if (debugCamera) return debugCamera;
        const camera = scene.getChildByName("Main Camera") as Laya.Camera;
        if (camera) return camera;
        return this.findFirstCamera(scene);
    }

    private findFirstCamera(node: Laya.Node): Laya.Camera | null {
        if (node instanceof Laya.Camera) return node;
        for (let i = 0; i < node.numChildren; i++) {
            const found = this.findFirstCamera(node.getChildAt(i));
            if (found) return found;
        }
        return null;
    }

    private findBlueprintOnNode(node: Laya.Sprite3D): MchBlueprintState | null {
        let current: Laya.Node = node;
        while (current) {
            const target = current.getComponent(MchBlueprintClickTarget);
            const blueprint = target?.getBlueprint();
            if (blueprint) return blueprint;
            current = current.parent;
        }
        return null;
    }

    private findTileOnNode(node: Laya.Sprite3D): MchTileState | null {
        let current: Laya.Node = node;
        while (current) {
            const target = current.getComponent(MchTileClickTarget);
            const tile = target?.getTile();
            if (tile) return tile;
            current = current.parent;
        }
        return null;
    }
}
