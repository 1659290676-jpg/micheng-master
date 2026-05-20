const { regClass } = Laya

/**
 * @ Author: XXL
 * @ Date: 2026-03-31 20:56
 * @ Description: 小车摧毁动画 - 抛物线翻滚起飞后移除
*/
@regClass()
export default class CarBrokenAnim extends Laya.Script {
    declare owner: Laya.Sprite3D;

    public camera: Laya.Camera;

    /** 抛物线速度: [x, vy, z] */
    private speed: number[];
    /** 翻滚速度: [x, y, z] */
    private rotSpeed: number[];
    /** 重力 */
    private gravity: number = -80;
    /** 已过时间(毫秒) */
    private elapsed: number = 0;
    /** 总时长(毫秒) */
    private duration: number = 2000;

    onAwake(): void {
        let _t = this;
        let upSpeed = 0.7;
        _t.speed = [(Math.random() - 0.5) * 0.03, upSpeed, (Math.random() - 0.5) * 0.03];
        _t.rotSpeed = [
            (Math.random() * 10 + 6) * (Math.random() > 0.5 ? 1 : -1),
            (Math.random() * 8 + 2) * (Math.random() > 0.5 ? 1 : -1),
            (Math.random() * 10 + 6) * (Math.random() > 0.5 ? 1 : -1)
        ];
    }

    onUpdate(): void {
        let _t = this;
        let dt = Laya.timer.delta;
        _t.elapsed += dt;
        if (_t.elapsed >= _t.duration) {
            _t.owner.destroy();
            return;
        }

        // 重力
        _t.speed[1] += _t.gravity * (dt / 1000) / 100;

        // 位移
        _t.owner.transform.translate(
            Laya.Vector3.TEMP.setValue(_t.speed[0], _t.speed[1], _t.speed[2]), false
        );

        // 翻滚旋转
        _t.owner.transform.rotate(
            Laya.Vector3.TEMP.setValue(_t.rotSpeed[0], _t.rotSpeed[1], _t.rotSpeed[2]),
            false, false
        );
    }

    onReset(): void {
        this.camera = null;
        this.speed = this.rotSpeed = null;
        this.elapsed = 0;
    }

    onDestroy(): void {
        this.onReset();
    }
}
