import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_human_105 from "../../../DataStock/ConfigData/Ts/Config_human_105";

const { regClass, property } = Laya;

/**
 * npc生成点
 */
@regClass()
export class Point_NpcBorn extends Laya.Script {
    declare owner: Laya.Sprite3D;
    //declare owner : Laya.Sprite;

    /** 生成类型 */
    @property({
        type: Number, tips: "生成类型",
        enumSource: [
            { value: 1, name: "1黄色小人" },
            { value: 2, name: "2彩色小人" },
            { value: 3, name: "3小恐龙" },
        ],
        catalogCaption: "NPC出生范围设置"
    })
    public type: number;

    /** 生成角度 */
    public angle: number[];
    /** 生成数量 */
    public count: number;
    /** npc类型 */
    public npcType: number;
    /** 死亡经验 */
    public exp: number;
    public expType: number;
    /** 模型 */
    public mx: string;
    /** 死亡特效 */
    public effect: string;


    onReset(): void {
        const _t = this;
        _t.angle = null;
    }

    public init() {
        const _t = this;
        const data = ConfigData.human_105[_t.type];
        if (!data) return;
        let cx = Config_human_105.getCx(data);
        let angle = cx.split(",");
        _t.angle = [];
        for (let i = 0; i < angle.length; i++) {
            _t.angle.push(+angle[i]);
        }
        _t.count = Config_human_105.getSl(data) || 1;
        _t.npcType = Config_human_105.getType(data) || 1
        _t.exp = Config_human_105.getJy(data) || 0;
        _t.expType = Config_human_105.getExpType(data) || 1;
        _t.mx = Config_human_105.getMx(data) || "ren";
        _t.effect = Config_human_105.getEffect(data);
    }

    /**
     * 获取随机出生点
     * @returns 
     */
    public getPos() {
        let tf = this.owner.transform;
        let pos = tf.position;
        let sx = tf.localScaleX;
        let sz = tf.localScaleZ;
        let x = pos.x - sx / 2;
        let z = pos.z - sz / 2;
        return [x + Math.random() * sx, 0, z + Math.random() * sz];
    }


}