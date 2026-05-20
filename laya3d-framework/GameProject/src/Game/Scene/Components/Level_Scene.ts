import { Point_NpcBorn } from "./Point_NpcBorn";
import { Point_PlayerBorn } from "./Point_PlayerBorn";
import { Unit_Building } from "./Unit_Building";

const { regClass, property } = Laya;

/**
 * 场景一些配置组件
 */
@regClass()
export class Level_Scene extends Laya.Script {

    @property({ type: Laya.Sprite3D, inspector: "Level_Scene", catalogCaption: "关卡场景配置组件" })
    declare owner: Laya.Sprite3D;

    // /** NPC最大生成数量 */
    // @property({ type: Number, tips: "场景最大生成小人NPC数量" })
    // public npcMaxCount: number = 100;

    // /** 玩家最大数量 */
    // @property({ type: Number, tips: "场景最机器人恐龙数量" })
    // public playerMax = 10;

    // public range

    /** NPC出生点 */
    @property({ type: [Point_NpcBorn], tips: "NPC出生范围点" })
    public npcBorns: Point_NpcBorn[] = [];

    /** 玩家出生点 */
    @property({ type: [Point_PlayerBorn], tips: "玩家出生范围点" })
    public playerBorns: Point_PlayerBorn[] = [];

    /** 物品出生点 */
    @property({ type: [Laya.Sprite3D], tips: "物品出生范围点" })
    public itemBorns: Laya.Sprite3D[] = [];

    /** 建筑列表 */
    @property({ type: [Unit_Building], tips: "建筑列表" })
    public buildings: Unit_Building[] = [];


    public onReset(): void {
        let _t = this;
        // _t.npcMaxCount = 100;
        _t.npcBorns.length = 0;
        _t.playerBorns.length = 0;
        _t.itemBorns.length = 0;
        _t.buildings.length = 0;
    }


}