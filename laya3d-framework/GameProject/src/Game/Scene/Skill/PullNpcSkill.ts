import Config_upgrade_105 from "../../../DataStock/ConfigData/Ts/Config_upgrade_105";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import { StageSceneCtrl } from "../Ctrl/StageSceneCtrl";
import { EnumStageScene } from "../Define/EnumStageScene";
import NpcUnit from "../Unit/NpcUnit";
import SkillBase from "./SkillBase";

/**
 * @ Author: XXL
 * @ Date: 2026-04-09 22:00
 * @ Description: 吞噬技能
*/
export default class PullNpcSkill extends SkillBase {
    private check_tm = 0;
    private ctrl: StageSceneCtrl;
    /** 特效id */
    private _eid: number;

    /** 动画列表 */
    private list: { time: number, npcs: NpcUnit[], isEff?: boolean }[] = [];

    public setData(type: number, time: number, ctrl: StageSceneCtrl): void {
        super.setData(type, time);
        this.ctrl = ctrl;
        if (this._eid) {
            Game.SceneMgr.particle.remove(this._eid);
        }
        this._eid = Game.SceneMgr.particle.play(this.owner, Laya.Vector3.ZERO, "fx_tunshixili", 1, time + 1000);
    }

    public onUpdate(): void {
        if (this.player.isDead) return;
        this.time -= Laya.timer.delta;
        if ((this.time <= 0 && this.list.length == 0) || this.player.isDead) {
            this.destroy();
            return;
        }
        if (this.time > 0) {
            this.checkNpcs();
        }
        let pos = this.owner.transform.position;
        for (let i = this.list.length - 1; i >= 0; i--) {
            let obj = this.list[i];
            obj.time -= Laya.timer.delta;
            if (obj.time <= 0) {
                this.list.splice(i, 1);
                for (let npc of obj.npcs) {
                    npc.recover();
                }
                XYFrame.PoolMgr.releaseObj(obj);
            } else {
                // 计算每个npc的位置
                for (let npc of obj.npcs) {
                    let targetPos = npc.position;
                    targetPos.y = 0;
                    let temp = Laya.Vector3.TEMP.setValue(0, 0, 0);
                    Laya.Vector3.lerp(targetPos, pos, 1 - obj.time / EnumStageScene.NPC_NEAR_TIME, temp);
                    // npc.targetTF.position = temp;
                    npc.setPos(temp.x, 0, temp.z);
                }
                // if (!obj.isEff && obj.time < 200) {
                //     obj.isEff = true;
                //     if (!this._hit_time || this._hit_time < Laya.timer.currTimer) {
                //         this._hit_time = Laya.timer.currTimer + 600;
                //         Game.SceneMgr.particle.play(this.owner, Laya.Vector3.ZERO, "fx_tunshixili_hit");
                //     }
                // }
            }
        }
    }

    public onReset(): void {
        super.onReset();
        this.check_tm = 0;
        this.ctrl = null;
        Game.SceneMgr.particle.remove(this._eid);
        this._eid = null;
        for (let i = 0, len = this.list.length; i < len; i++) {
            let obj = this.list[i];
            for (let npc of obj.npcs) {
                // Game.SceneMgr.factory.putNpc(npc);
                npc.recover();
            }
            XYFrame.PoolMgr.releaseObj(obj);
        }
        this.list.length = 0;
    }

    /**
     * 检查范围内是否有npc，如果有则移动到我攻击范围，增加经验
     * @returns 
     */
    private checkNpcs() {
        let _t = this;
        _t.check_tm += Laya.timer.delta;
        if (_t.check_tm < 200) return;
        let maxDist = Math.max(_t.player.atk_range + (Config_upgrade_105.getSkillrangeByKey(_t.player.playerLev) || 0) / 100, EnumStageScene.SKILL_NEAR_DIST);
        let range = Math.ceil(maxDist / EnumStageScene.SCENE_GRID_SIZE);
        let pos = _t.player.targetTF.position;
        let nearbyUnits = _t.ctrl.spatial.getNearByNpc(pos, range);
        if (!nearbyUnits) {
            return;
        }
        let npcs: NpcUnit[] = [];
        for (let i = 0, len = nearbyUnits.length; i < len; i++) {
            let unit: NpcUnit = nearbyUnits[i];
            if (unit.isDead) continue;
            // 判断是否在范围内
            let dist = Laya.Vector3.distance(pos, unit.position);
            if (dist <= maxDist) {
                npcs.push(unit);
                let index = _t.ctrl.npcUnits.indexOf(unit);
                if (index != -1) {
                    _t.ctrl.npcUnits.splice(index, 1);
                }
            }
        }

        if (npcs.length == 0) return;
        // 移到我攻击范围
        let expMap: Record<number, number> = {};
        let killMap: Record<number, number> = {};
        let addExp = 0;
        for (let i = 0, len = npcs.length; i < len; i++) {
            let npc = npcs[i];
            npc.nearDead(_t.player.targetTF);
            addExp += npc.exp;
            expMap[npc.expType] = (expMap[npc.expType] || 0) + npc.exp;
            killMap[npc.npcType] = (killMap[npc.npcType] || 0) + 1;
        }
        Game.Model.stage.stageVo.addNpcs(killMap);
        // 添加到动画列表
        let obj: { time: number, npcs: NpcUnit[] } = XYFrame.PoolMgr.getObj();
        obj.time = EnumStageScene.NPC_NEAR_TIME;
        obj.npcs = npcs;
        _t.list.push(obj);
        // let anim = _t.player.owner.addComponent(NearTargetDeadAnim);
        // anim.setData(EnumStageScene.NPC_NEAR_TIME, npcs);
        _t.player.addExp(addExp);

        // 转换ui位置
        let temp = Laya.Vector4.TEMP;
        Game.SceneMgr.camera.worldToViewportPoint(pos, temp);
        for (let k in expMap) {
            let exp = expMap[k];
            let obj: { type: number, exp: number, x: number, y: number } = XYFrame.PoolMgr.getObj();
            obj.type = +k || 1;
            obj.exp = exp;
            obj.x = temp.x + Math.random() * 100 * (Math.random() < 0.5 ? -1 : 1);
            obj.y = temp.y - 200 + Math.random() * 100 * (Math.random() < 0.5 ? -1 : 1);
            XYFrame.Msg.emit(EnumMsg.STAGE_ADD_EXP, obj);
            XYFrame.PoolMgr.releaseObj(obj);
        }

        (<StageSceneCtrl>Game.SceneMgr.ctrl).checkKing();

    }

}