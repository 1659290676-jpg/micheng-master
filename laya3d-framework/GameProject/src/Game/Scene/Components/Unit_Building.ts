import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_building_105 from "../../../DataStock/ConfigData/Ts/Config_building_105";

const { regClass, property } = Laya;

/**
 * 设置建筑属性的组件
 */
@regClass()
export class Unit_Building extends Laya.Script {

    // @property({ type: Laya.Sprite3D, inspector: "Unit_Building", catalogCaption: "建筑组件" })
    declare owner: Laya.Sprite3D;

    @property({
        type: Number, tips: "建筑类型",
        enumSource: [
            { name: "1小建筑", value: 1 },
            { name: "2中建筑", value: 2 },
            { name: "3大建筑", value: 3 },
            { name: "4楼梯", value: 4 },
            { name: "5地标建筑", value: 5 },
            { name: "6联排别墅三层", value: 6 },
            { name: "7联排别墅四层", value: 7 },
            { name: "8彩色公寓5层", value: 8 },
            { name: "9彩色公寓4层", value: 9 },
            { name: "10弧形大厦", value: 10 },
            { name: "11方形大厦", value: 11 },
            { name: "12黄色大厦", value: 12 },
            { name: "13圆形大厦", value: 13 },
            { name: "14蓝色大厦", value: 14 },
            { name: "15水塔", value: 15 },
            { name: "16足球场", value: 16 },
            { name: "17美国-纽约-帝国大厦", value: 17 },
            { name: "18美国-自由女神", value: 18 },
            { name: "19美国-方尖碑", value: 19 },
            { name: "20美国-华盛顿-五角大楼", value: 20 },
            { name: "21法国-埃菲尔铁塔", value: 21 },
            { name: "22法国-卢浮宫", value: 22 },
            { name: "23法国-凯旋门", value: 23 },
            { name: "24法国-巴黎圣母院", value: 24 },
            { name: "25日本-富士山", value: 25 },
            { name: "26日本-晴空塔", value: 26 },
            { name: "27日本-塔", value: 27 },
            { name: "28日本-神社", value: 28 },
            { name: "101车", value: 101 }
        ],
        catalogCaption: "建筑设置"
    })
    public type: number;

    /** 最多气血 */
    public hpMax: number;
    /** 气血 */
    public hp: number;
    /** 击破后的获得经验 */
    public exp: number;
    /** 击破后生成的 NPC 类型 */
    public npcType: number;
    /** 击破后特效 */
    public effect: string;
    /** 撞击是否后台 */
    public isBack: boolean;
    /** 是否已击破 */
    public isDead: boolean;
    /** 是否联排建筑 */
    public isLink: boolean;
    /** 是否车 */
    public isCar: boolean;
    /** 是否地标建筑 */
    public isLandmark:boolean;

    /** 子建筑 */
    public childBuildings: Unit_Building[];

    public init(hp: number) {
        let _t = this;
        if (_t.hp != null) return;
        let data = ConfigData.building_105[_t.type];
        if (!data) return;
        _t.hp = _t.hpMax = hp || Config_building_105.getXl(data) || 10;
        _t.exp = Config_building_105.getJy(data) || 0;
        _t.npcType = Config_building_105.getJg(data);
        _t.effect = Config_building_105.getEffect(data);
        _t.isBack = !Config_building_105.getBack(data);
        let lx = Config_building_105.getLx(data);
        _t.isCar = lx == 2;
        _t.isLink = lx == 1;
        _t.isLandmark = lx == 3;

        let owner = _t.owner;
        if (_t.isLink) {
            let num = owner.numChildren;
            if (num > 0) {
                _t.childBuildings = [];
                for (let i = 0; i < num; i++) {
                    let child = owner.getChildAt(i);
                    let comp = child.getComponent(Laya.PhysicsCollider);
                    if (comp) {
                        comp.collisionGroup = Math.pow(2, 3);
                        comp.canCollideWith = Math.pow(2, 4) + Math.pow(2, 5);
                        child.layer = 3;
                        let buiding = child.getComponent(Unit_Building);
                        if (!buiding) {
                            buiding = child.addComponent(Unit_Building);
                            buiding.hp = buiding.hpMax = _t.hp;
                            buiding.exp = _t.exp;
                            buiding.npcType = _t.npcType;
                            buiding.effect = _t.effect;
                            buiding.isBack = _t.isBack;
                            buiding.isLink = true;
                            buiding.isLandmark = _t.isLandmark;
                            buiding.isCar = _t.isCar;
                            _t.childBuildings.push(buiding);
                        }
                    }
                }
            }
        } else {
            let comp = owner.getComponent(Laya.PhysicsCollider);
            if (comp) {
                comp.collisionGroup = Math.pow(2, 3);
                comp.canCollideWith = Math.pow(2, 4) + Math.pow(2, 5);
                owner.layer = 3;
            }
        }
    }

    onReset(): void {
        let _t = this;
        _t.hp = _t.hpMax = _t.exp = _t.npcType = _t.effect = _t.isBack = _t.isLink = null;
        _t.isDead = false;
        _t.childBuildings = null;
    }

    onDestroy(): void {
        let _t = this;
        _t.onReset();
    }

}