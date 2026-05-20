import { EnumUILayer } from "../../../XYFrame/UI/Layer/EnumUILayer";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Game from "../../Game";
import { Runtime_BuildingHp } from "../UI/Runtime_BuildingHp";

const { regClass, property } = Laya;

@regClass()
export class BuildingHp extends Laya.Script {
    declare owner: Laya.Sprite3D;

    @property({ type: Laya.Camera })
    public camera: Laya.Camera;

    /** 显示位置 */
    private pos: Laya.Vector3 = new Laya.Vector3();

    private hp: Runtime_BuildingHp;

    private tf: Laya.Transform3D;

    private time: number = 1000;

    onAwake(): void {
        let _t = this;
        _t.time = 1000;
        if (!_t.hp) {
            _t.hp = Game.SceneMgr.factory.getBuildingHp();
        }
        _t.tf = _t.owner.transform;
    }

    onReset(): void {
        if (this.hp) {
            this.hp.pb.value = 100;
            this.hp.removeSelf();
        }
    }

    onEnable(): void {
        const _t = this;
        if (_t.hp) {
            let layer = XYFrame.UIMgr.getLayer(EnumUILayer.Scene);
            layer.addChild(_t.hp);
        }
    }

    onDisable(): void {
        const _t = this;
        if (_t.hp) {
            _t.hp.removeSelf();
        }
    }


    //手动调用节点销毁时执行
    onDestroy(): void {
        if (this.hp) {
            this.hp.destroy();
            this.hp = null;
        }
    }

    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onUpdate(): void {}

    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    onLateUpdate(): void {
        this.time -= Laya.timer.delta;
        if (this.time <= 0) {
            this.destroy();
            return;
        }
        this.updatePos();
    }

    public setPos(vec: Laya.Vector3) {
        vec.cloneTo(this.pos);
    }

    public setHp(hp: number, hpMax: number) {
        if (hp < 0) hp = 0;
        else if (hp > hpMax) {
            hp = hpMax;
        }
        this.time = hp > 0 ? 5000 : 500;
        let r = hp / hpMax;
        this.hp.hpBar.width = 116 * r;
        this.hp.pb.tweenValue(r * 100, 500);
    }

    private updatePos() {
        if (this.camera && this.hp) {
            const pos = this.pos;
            const temp = Laya.Vector3.TEMP.setValue(0, -pos.y, 0);
            Laya.Vector3.add(pos, temp, temp);
            const screenPos = Laya.Vector4.TEMP.setValue(0, 0, 0, 0);
            this.camera.worldToViewportPoint(temp, screenPos);
            this.hp.pos((screenPos.x >> 0) - this.hp.width / 2, screenPos.y >> 0);
        }
    }
}