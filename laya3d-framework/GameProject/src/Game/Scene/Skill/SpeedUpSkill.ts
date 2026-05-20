import Config_upgrade_105 from "../../../DataStock/ConfigData/Ts/Config_upgrade_105";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import SkillBase from "./SkillBase";

/**
 * 加速技能
 */
export default class SpeedUpSkill extends SkillBase {

    /** 特效id */
    private _eid: number;

    onAwake(): void {
        super.onAwake();
        // this.player.setAppendSpeed(5);
        let _t = this;
        XYFrame.Msg.on(EnumMsg.STAGE_HERO_UPGRADE, _t.onUpgradeMsg, _t);
        _t.onUpgradeMsg(_t);
    }

    public setData(type: number, time: number, ...args: any[]): void {
        super.setData(type, time, ...args);
        if (this._eid) {
            Game.SceneMgr.particle.remove(this._eid);
        }
        let vec = Laya.Vector3.TEMP;
        vec.setValue(0, 2, 0);
        this._eid = Game.SceneMgr.particle.play(this.owner, vec, "fx_chongci_C", 1, time + 1000);
    }

    public onReset(): void {
        let _t = this;
        _t.player && _t.player.setAppendSpeed(0);
        Game.SceneMgr.particle.remove(_t._eid);
        _t._eid = null;
        XYFrame.Msg.off(EnumMsg.STAGE_HERO_UPGRADE, _t.onUpgradeMsg, _t);
        super.onReset();
    }

    private onUpgradeMsg(_t: this) {
        if (_t.player) {
            let speed = Config_upgrade_105.getSkillspeedByKey(_t.player.playerLev) || 0;
            _t.player.setAppendSpeed(speed / 100);
        }
    }
}