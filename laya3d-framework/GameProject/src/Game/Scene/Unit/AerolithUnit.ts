import { StageSceneCtrl } from "../Ctrl/StageSceneCtrl";

const { regClass } = Laya;
/**
 * @ Author: XXL
 * @ Date: 2026-04-23 22:07
 * @ Description: 陨石
*/
@regClass()
export default class AerolithUnit extends Laya.Script {
    declare owner: Laya.Sprite3D;

    /** 陨石的范围 多少米*/
    public range: number;

    private transform: Laya.Transform3D;
    private effect: Laya.Sprite3D;
    private effectParticle: Laya.ShurikenParticleRenderer;
    private hole: Laya.Sprite3D;
    // private physics: Laya.PhysicsCollider;

    private _ctrl: StageSceneCtrl;
    private _time = 0;
    private _duration = 4600;
    private _effectDuration = 6000;
    private _hit = false;
    private _isEffect = false;

    onAwake(): void {
        let _t = this;
        let owner = _t.owner;
        _t.transform = owner.transform;
        _t.effect = owner.getChildByName("effect");
        _t.hole = owner.getChildByName("hole");
        _t.effectParticle = _t.effect.getComponent(Laya.ShurikenParticleRenderer);
        _t.effect.active = false;
        _t.hole.active = false;
        // _t.physics = owner.getComponent(Laya.PhysicsCollider);
        // _t.physics.enabled = false;
    }

    onUpdate(): void {
        const _t = this;
        if (_t._hit && _t._isEffect) return;
        _t._time += Laya.timer.delta;
        // const t = Math.min(1, _t._time / _t._duration);
        // const y = _t._startY + (_t._groundY - _t._startY) * t;
        // const pos = _t.transform.position;
        // pos.y = y;
        // _t.transform.position = pos;
        if(!_t._hit) {
            if (_t._time >= _t._duration) {
                _t.hole.active = true;
                _t._hit = true;
                _t._ctrl && _t._ctrl.onAerolithHit && _t._ctrl.onAerolithHit(_t, _t.transform.position, _t.range);
            }
        }
        if(!_t._isEffect) {
            if (_t._time >= _t._effectDuration) {
                _t._isEffect = true;
                _t.effect.active = false;
                _t.effectParticle.particleSystem.stop();
            }
        }
    }

    /**
     * 初始化一次陨石下落
     * @param ctrl StageSceneCtrl
     * @param x 落点x
     * @param z 落点z
     * @param groundY 地面y
     * @param diameter 直径（米）
     * @param startY 起始y
     */
    public initFall(ctrl: any, x: number, z: number, diameter: number) {
        const _t = this;
        _t._ctrl = ctrl;
        _t.range = diameter;
        _t._time = 0;
        // _t._duration = 4600;
        _t._hit = false;
        _t._isEffect = false;
        const pos = _t.transform.position;
        pos.setValue(x, 0, z);
        _t.transform.position = pos;

        // 默认陨石16米，预制体按1 = 16米处理：通过缩放适配实际直径
        const s = diameter / 16;
        const scale = _t.transform.localScale;
        scale.setValue(s, s, s);
        _t.transform.localScale = scale;

        _t.hole.active = false;
        _t.effect.active = true;
        _t.effectParticle.particleSystem.play();
    }
}