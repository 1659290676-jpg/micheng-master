import Game from "../../Game";

/**
 * @ Author: XXL
 * @ Date: 2026-04-22 20:00
 * @ Description: 场景中物品
*/
export default class ItemsUnit extends Laya.Script {
    declare owner: Laya.Sprite3D;
    public eff: Laya.Sprite3D;
    onReset(): void {
        let _t = this;
        if (_t.eff) {
            Game.SceneMgr.factory.putInst("fx_jitui", _t.eff);
            _t.eff = null;
        }
    }

    onEnable(): void {
        let _t = this;
        if (!_t.eff) {
            _t.eff = Game.SceneMgr.factory.getInst("fx_jitui");
            if (_t.eff) {
                _t.eff.active = true;
                let tf = _t.eff.transform;
                let pos = tf.localPosition;
                pos.setValue(0, 0.5, 0);
                tf.localPosition = pos;

                let owner = _t.owner;
                owner.addChild(_t.eff);
                tf = owner.transform;
                tf.localRotationEulerY = Math.random() * 180;
            }
        }
    }

    onDisable(): void {
        let _t = this;
        if (_t.eff) {
            Game.SceneMgr.factory.putInst("fx_jitui", _t.eff);
            _t.eff = null;
        }
    }

    public setPos(x: number, y: number, z: number): void {
        let tf = this.owner.transform;
        let pos = tf.position;
        pos.setValue(x, y, z);
        tf.position = pos;
    }
}