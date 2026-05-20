import {
    MCH_BLUEPRINT_COSTS,
    rollMchBarracksResult,
    rollMchBlueprint,
} from "../Config/MchBlueprintConfig";
import { getHexNeighbors, hexDistance } from "./MchHexCoords";
import {
    MchBlueprintType,
    MchBuildingKind,
    MchFaction,
    MchSoldierKind,
    type MchBlueprintState,
    type MchBuildingState,
    type MchLevelConfig,
    type MchSoldierState,
    type MchTileState,
} from "../Core/MchTypes";

const BUILDING_HP: Record<MchBuildingKind, number> = {
    [MchBuildingKind.LordBase]: 800,
    [MchBuildingKind.GoldMine]: 260,
    [MchBuildingKind.ArrowTower]: 360,
    [MchBuildingKind.BarracksNormal]: 320,
    [MchBuildingKind.BarracksRare]: 380,
    [MchBuildingKind.BarracksEpic]: 460,
    [MchBuildingKind.BarracksLegendary]: 560,
    [MchBuildingKind.EmptyWall]: 160,
};

const SOLDIER_STATS: Record<MchSoldierKind, { hp: number; attack: number }> = {
    [MchSoldierKind.Normal]: { hp: 100, attack: 34 },
    [MchSoldierKind.Rare]: { hp: 130, attack: 44 },
    [MchSoldierKind.Epic]: { hp: 170, attack: 58 },
    [MchSoldierKind.Legendary]: { hp: 230, attack: 78 },
};

const TOWER_ATTACK = 36;
const LORD_BASE_ATTACK = 48;
const TOWER_RANGE = 3;
const LORD_BASE_RANGE = 3;

export class MchBoardModel {
    readonly tiles: MchTileState[] = [];
    readonly buildings: MchBuildingState[] = [];
    readonly soldiers: MchSoldierState[] = [];
    readonly blueprints: MchBlueprintState[] = [];
    private readonly tileMap: Record<string, MchTileState> = {};
    private readonly blueprintMap: Record<string, MchBlueprintState> = {};

    constructor(readonly config: MchLevelConfig) {
        this.buildInitialBoard();
    }

    getTile(col: number, row: number): MchTileState {
        return this.tileMap[this.keyOf(col, row)];
    }

    keyOf(col: number, row: number): string {
        return `${col},${row}`;
    }

    addBuilding(kind: MchBuildingKind, faction: MchFaction, col: number, row: number): void {
        const hp = BUILDING_HP[kind];
        this.buildings.push({
            id: `building_${this.buildings.length + 1}`,
            kind,
            faction,
            col,
            row,
            hp,
            maxHp: hp,
        });
    }

    getBuildingAt(col: number, row: number): MchBuildingState | undefined {
        return this.buildings.find((building) => building.col === col && building.row === row);
    }

    getPlayerBlueprintAt(col: number, row: number): MchBlueprintState | undefined {
        return this.blueprintMap[this.blueprintKey(MchFaction.Player, col, row)];
    }

    getFirstPlayerBlueprint(): MchBlueprintState | undefined {
        return this.blueprints.find((blueprint) => blueprint.faction === MchFaction.Player);
    }

    countTilesByFaction(): { player: number; enemy: number } {
        let player = 0;
        let enemy = 0;
        for (const tile of this.tiles) {
            if (tile.faction === MchFaction.Player) player++;
            else if (tile.faction === MchFaction.Enemy) enemy++;
        }
        return { player, enemy };
    }

    countBuildings(faction: MchFaction, kind: MchBuildingKind): number {
        let count = 0;
        for (const building of this.buildings) {
            if (building.faction === faction && building.kind === kind) count++;
        }
        return count;
    }

    refreshBlueprints(): void {
        this.refreshBlueprintsForFaction(MchFaction.Player);
        this.refreshBlueprintsForFaction(MchFaction.Enemy);
    }

    tryBuildPlayerBlueprint(col: number, row: number): MchBuildingState | null {
        const blueprint = this.getPlayerBlueprintAt(col, row);
        if (!blueprint || !this.isFrontierBuildable(col, row, MchFaction.Player)) return null;

        this.removeBlueprint(blueprint);
        const building = this.executeBlueprint(blueprint);
        this.refreshBlueprints();
        return building;
    }

    addSoldier(kind: MchSoldierKind, faction: MchFaction, col: number, row: number): void {
        const stats = SOLDIER_STATS[kind];
        this.soldiers.push({
            id: `soldier_${this.soldiers.length + 1}`,
            kind,
            faction,
            col,
            row,
            hp: stats.hp,
            maxHp: stats.hp,
            attack: stats.attack,
        });
    }

    stepBattle(): boolean {
        let changed = false;

        for (const soldier of [...this.soldiers]) {
            if (!this.soldiers.includes(soldier)) continue;
            if (this.trySoldierAttack(soldier)) {
                changed = true;
                continue;
            }
            if (this.tryMoveSoldier(soldier)) {
                changed = true;
            }
        }

        if (this.applyDefenseFire()) {
            changed = true;
        }
        if (changed) {
            this.refreshBlueprints();
        }
        return changed;
    }

    seedInitialBases(): void {
        if (this.buildings.length > 0 || this.soldiers.length > 0) return;

        this.addBuilding(MchBuildingKind.LordBase, MchFaction.Player, 4, 14);
        this.addBuilding(MchBuildingKind.LordBase, MchFaction.Enemy, 4, 1);
        this.refreshBlueprints();
    }

    seedPreviewEntities(): void {
        if (this.buildings.length > 0 || this.soldiers.length > 0) return;

        this.addBuilding(MchBuildingKind.LordBase, MchFaction.Player, 4, 15);
        this.addBuilding(MchBuildingKind.BarracksNormal, MchFaction.Player, 4, 13);
        this.addBuilding(MchBuildingKind.GoldMine, MchFaction.Player, 3, 14);
        this.addBuilding(MchBuildingKind.ArrowTower, MchFaction.Player, 5, 14);
        this.addSoldier(MchSoldierKind.Normal, MchFaction.Player, 4, 12);
        this.addSoldier(MchSoldierKind.Rare, MchFaction.Player, 5, 13);

        this.addBuilding(MchBuildingKind.LordBase, MchFaction.Enemy, 4, 0);
        this.addBuilding(MchBuildingKind.BarracksNormal, MchFaction.Enemy, 4, 2);
        this.addBuilding(MchBuildingKind.GoldMine, MchFaction.Enemy, 5, 1);
        this.addBuilding(MchBuildingKind.ArrowTower, MchFaction.Enemy, 3, 1);
        this.addSoldier(MchSoldierKind.Normal, MchFaction.Enemy, 4, 3);
        this.addSoldier(MchSoldierKind.Rare, MchFaction.Enemy, 3, 2);

        this.refreshBlueprints();
    }

    private buildInitialBoard(): void {
        for (let row = 0; row < this.config.rows; row++) {
            for (let col = 0; col < this.config.cols; col++) {
                const faction =
                    row >= this.config.playerStartRow
                        ? MchFaction.Player
                        : row <= this.config.enemyEndRow
                            ? MchFaction.Enemy
                            : MchFaction.Neutral;
                const tile: MchTileState = {
                    key: this.keyOf(col, row),
                    col,
                    row,
                    faction,
                };
                this.tiles.push(tile);
                this.tileMap[tile.key] = tile;
            }
        }
    }

    private refreshBlueprintsForFaction(faction: MchFaction): void {
        const nextFrontier = new Set<string>();
        for (const tile of this.tiles) {
            if (!this.isFrontierBuildable(tile.col, tile.row, faction)) continue;
            const key = this.blueprintKey(faction, tile.col, tile.row);
            nextFrontier.add(key);
            if (!this.blueprintMap[key]) {
                const type = rollMchBlueprint();
                const blueprint: MchBlueprintState = {
                    id: `blueprint_${this.blueprints.length + 1}`,
                    type,
                    faction,
                    col: tile.col,
                    row: tile.row,
                    cost: MCH_BLUEPRINT_COSTS[type],
                };
                this.blueprints.push(blueprint);
                this.blueprintMap[key] = blueprint;
            }
        }

        for (const blueprint of [...this.blueprints]) {
            if (blueprint.faction !== faction) continue;
            const key = this.blueprintKey(faction, blueprint.col, blueprint.row);
            if (!nextFrontier.has(key)) this.removeBlueprint(blueprint);
        }
    }

    private isFrontierBuildable(col: number, row: number, faction: MchFaction): boolean {
        const tile = this.getTile(col, row);
        if (!tile || this.getBuildingAt(col, row)) return false;
        if (faction === MchFaction.Enemy && tile.faction !== faction) return false;
        return getHexNeighbors(col, row, this.config).some((neighbor) => {
            const building = this.getBuildingAt(neighbor.col, neighbor.row);
            return building?.faction === faction && building.kind !== MchBuildingKind.EmptyWall;
        });
    }

    private executeBlueprint(blueprint: MchBlueprintState): MchBuildingState {
        if (blueprint.type === MchBlueprintType.Tower) {
            return this.createBuiltBuilding(MchBuildingKind.ArrowTower, blueprint);
        }
        if (blueprint.type === MchBlueprintType.Mine) {
            return this.createBuiltBuilding(MchBuildingKind.GoldMine, blueprint);
        }
        if (blueprint.type === MchBlueprintType.Mystery) {
            const result = rollMchBarracksResult(25);
            if (!result.kind) return this.createBuiltBuilding(MchBuildingKind.EmptyWall, blueprint);
            return this.createBarracksWithSoldier(result.kind, result.soldier, blueprint);
        }

        const result = rollMchBarracksResult(MCH_BLUEPRINT_COSTS[blueprint.type]);
        return this.createBarracksWithSoldier(result.kind, result.soldier, blueprint);
    }

    private createBuiltBuilding(kind: MchBuildingKind, blueprint: MchBlueprintState): MchBuildingState {
        this.addBuilding(kind, blueprint.faction, blueprint.col, blueprint.row);
        return this.buildings[this.buildings.length - 1];
    }

    private createBarracksWithSoldier(
        kind: MchBuildingKind | null,
        soldier: MchSoldierKind | null,
        blueprint: MchBlueprintState,
    ): MchBuildingState {
        if (!kind) return this.createBuiltBuilding(MchBuildingKind.EmptyWall, blueprint);
        const building = this.createBuiltBuilding(kind, blueprint);
        if (soldier) {
            const spawn = this.findSoldierSpawnTile(blueprint.faction, blueprint.col, blueprint.row);
            if (spawn) {
                this.addSoldier(soldier, blueprint.faction, spawn.col, spawn.row);
                this.captureTile(spawn.col, spawn.row, blueprint.faction);
            }
        }
        return building;
    }

    private trySoldierAttack(soldier: MchSoldierState): boolean {
        const enemySoldier = this.soldiers.find((target) =>
            target.faction !== soldier.faction &&
            hexDistance(soldier.col, soldier.row, target.col, target.row) <= 1
        );
        if (enemySoldier) {
            this.captureTile(soldier.col, soldier.row, soldier.faction);
            this.captureTile(enemySoldier.col, enemySoldier.row, soldier.faction);
            enemySoldier.hp -= soldier.attack;
            this.removeDeadSoldiers();
            return true;
        }

        const enemyBuilding = this.buildings.find((building) =>
            building.faction !== soldier.faction &&
            hexDistance(soldier.col, soldier.row, building.col, building.row) <= 1
        );
        if (enemyBuilding) {
            this.captureTile(soldier.col, soldier.row, soldier.faction);
            this.captureTile(enemyBuilding.col, enemyBuilding.row, soldier.faction);
            enemyBuilding.hp -= soldier.attack;
            this.removeDestroyedBuildings();
            return true;
        }

        return false;
    }

    private tryMoveSoldier(soldier: MchSoldierState): boolean {
        const target = this.getEnemyBaseOrGoal(soldier.faction);
        const candidates = getHexNeighbors(soldier.col, soldier.row, this.config)
            .filter((tile) => !this.getBuildingAt(tile.col, tile.row))
            .filter((tile) => !this.getSoldierAt(tile.col, tile.row));
        if (candidates.length <= 0) return false;

        candidates.sort((a, b) =>
            hexDistance(a.col, a.row, target.col, target.row) -
            hexDistance(b.col, b.row, target.col, target.row)
        );
        const next = candidates[0];
        const currentDistance = hexDistance(soldier.col, soldier.row, target.col, target.row);
        const nextDistance = hexDistance(next.col, next.row, target.col, target.row);
        if (nextDistance > currentDistance) return false;

        soldier.col = next.col;
        soldier.row = next.row;
        this.captureTile(next.col, next.row, soldier.faction);
        return true;
    }

    private applyDefenseFire(): boolean {
        let changed = false;
        for (const building of this.buildings) {
            const isTower = building.kind === MchBuildingKind.ArrowTower;
            const isBase = building.kind === MchBuildingKind.LordBase;
            if (!isTower && !isBase) continue;

            const range = isBase ? LORD_BASE_RANGE : TOWER_RANGE;
            const damage = isBase ? LORD_BASE_ATTACK : TOWER_ATTACK;
            const target = this.findNearestEnemySoldier(building.faction, building.col, building.row, range);
            if (!target) continue;

            target.hp -= damage;
            changed = true;
        }
        if (changed) this.removeDeadSoldiers();
        return changed;
    }

    private findNearestEnemySoldier(
        faction: MchFaction,
        col: number,
        row: number,
        range: number,
    ): MchSoldierState | undefined {
        return this.soldiers
            .filter((soldier) => soldier.faction !== faction)
            .filter((soldier) => hexDistance(col, row, soldier.col, soldier.row) <= range)
            .sort((a, b) =>
                hexDistance(col, row, a.col, a.row) -
                hexDistance(col, row, b.col, b.row)
            )[0];
    }

    private findSoldierSpawnTile(
        faction: MchFaction,
        col: number,
        row: number,
    ): { col: number; row: number } | null {
        const target = this.getEnemyBaseOrGoal(faction);
        const candidates = getHexNeighbors(col, row, this.config)
            .filter((tile) => !this.getBuildingAt(tile.col, tile.row))
            .filter((tile) => !this.getSoldierAt(tile.col, tile.row))
            .sort((a, b) =>
                hexDistance(a.col, a.row, target.col, target.row) -
                hexDistance(b.col, b.row, target.col, target.row)
            );
        return candidates[0] ?? null;
    }

    private getEnemyBaseOrGoal(faction: MchFaction): { col: number; row: number } {
        const enemy = faction === MchFaction.Player ? MchFaction.Enemy : MchFaction.Player;
        const base = this.buildings.find((building) =>
            building.kind === MchBuildingKind.LordBase && building.faction === enemy
        );
        if (base) return { col: base.col, row: base.row };
        return {
            col: Math.floor(this.config.cols / 2),
            row: faction === MchFaction.Player ? 0 : this.config.rows - 1,
        };
    }

    private getSoldierAt(col: number, row: number): MchSoldierState | undefined {
        return this.soldiers.find((soldier) => soldier.col === col && soldier.row === row);
    }

    private captureTile(col: number, row: number, faction: MchFaction): void {
        const tile = this.getTile(col, row);
        if (tile) tile.faction = faction;
    }

    private removeDeadSoldiers(): void {
        for (let i = this.soldiers.length - 1; i >= 0; i--) {
            if (this.soldiers[i].hp <= 0) this.soldiers.splice(i, 1);
        }
    }

    private removeDestroyedBuildings(): void {
        for (let i = this.buildings.length - 1; i >= 0; i--) {
            if (this.buildings[i].hp <= 0) this.buildings.splice(i, 1);
        }
    }

    private removeBlueprint(blueprint: MchBlueprintState): void {
        const index = this.blueprints.indexOf(blueprint);
        if (index >= 0) this.blueprints.splice(index, 1);
        delete this.blueprintMap[this.blueprintKey(blueprint.faction, blueprint.col, blueprint.row)];
    }

    private blueprintKey(faction: MchFaction, col: number, row: number): string {
        return `${faction}:${this.keyOf(col, row)}`;
    }
}
