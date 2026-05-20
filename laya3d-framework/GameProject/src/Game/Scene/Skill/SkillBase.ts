import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import { PlayerController } from "../Logic/PlayerController";

const { regClass } = Laya

/**
 * @ Author: XXL
 * @ Date: 2026-04-09 21:40
 * @ Description: 技能基类
*/
@regClass()
export default class SkillBase extends Laya.Script {

    declare owner: Laya.Sprite3D;
    protected player: PlayerController;

    /** 技能类型 */
    public type: number;

    /** 剩余时间 */
    protected time: number;

    onAwake(): void {
        let _t = this;
        _t.player = _t.owner.getComponent(PlayerController);
    }

    onDisable(): void {
        this.onReset();
        this.destroy();
    }

    /**
     * 设置数据
     * @param type 技能类型
     * @param time 技能剩余时间
     */
    public setData(type: number, time: number, ...args: any[]) {
        this.type = type;
        this.time = time;
    }

    /** 每帧调用 */
    public onUpdate() {
        this.time -= Laya.timer.delta;
        if (this.time <= 0 || this.player.isDead) {
            this.destroy();
        }
    }

    public onReset(): void {
        this.time = 0;
        this.player = null;
        XYFrame.Msg.emit(EnumMsg.STAGE_SKILL_END, this.type);
    }
}