import Config_stage_001 from "../../../DataStock/ConfigData/Ts/Config_stage_001";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import EnumUI from "../../EnumUI";
import { EnumStageScene } from "../../Scene/Define/EnumStageScene";
import { EnumTargetType } from "./EnumTargetType";

/**
 * @ Author: XXL
 * @ Date: 2026-03-26 10:34
 * @ Description: 当前关卡场景数据
*/
export default class Vo_StageScene {
    /** 是否暂停 */
    public pause: boolean = false;
    /** 关卡编号 */
    public level: number;
    /** 是否开启 */
    public isStart: boolean;
    /** 剩余时间 */
    public playTime: number;
    /** 调整结果 1胜利 2失败 0未完成 */
    public result: number;
    /** 复活次数 */
    public reliveCount = 0;

    /** 停止时间 */
    public stopTime: boolean;

    /** 剩余的目标值 */
    public targetMap: Record<number | string, Record<number | string, number> | number>;
    /** 总目标数 */
    private totalTarget: number;


    /**
     * 是否胜利
     */
    public get isWin() {
        return this.result == 1;
    }

    /**
     * 是否失败
     */
    public get isFail() {
        return this.result > 1;
    }

    /**
     * 是否已出结果
     */
    public get isResult() {
        return this.result > 0;
    }

    /**
     * 剩余的复活次数
     */
    public get hasRelive() {
        return ConfigUtils.getConst(EnumUI.ROLE, 7) - this.reliveCount;
    }

    /**
     * 初始化
     * @param level 
     */
    public init(level: number) {
        let _t = this;
        _t.level = level;
        _t.clear();
        _t.playTime = (Config_stage_001.getTimeByKey(level) || 0) * 1000 || EnumStageScene.RELIVE_TIME;
        let target = Config_stage_001.getTargetByKey(level);
        if (target) {
            for (let i = 0, len = target.length; i < len; i++) {
                let info = target[i];
                let type = info[0];
                let id = info[1];
                let num = info[2];
                _t.totalTarget += num;
                if (type == EnumTargetType.Player) {
                    _t.targetMap[type] = num;
                } else {
                    let map: any = _t.targetMap[type];
                    if (!map) {
                        map = {};
                        _t.targetMap[type] = map;
                    }
                    map[id] = num;
                }
            }
        }

    }

    /**
     * 击杀玩家
     */
    public addKillPlayer(num: number) {
        if (num <= 0) return;
        let key = EnumTargetType.Player;
        let val = <number>this.targetMap[key] || 0;
        if (val > 0) {
            if (num > val) {
                this.totalTarget -= val;
                val = 0;
            } else {
                this.totalTarget -= num;
                val -= num;
            }
            this.targetMap[key] = val;
            XYFrame.Msg.emit(EnumMsg.STAGE_TARGET, this.totalTarget <= 0);
        }
    }

    /**
     * 设置撞灰撞击
     * @param type 
     */
    public addBuild(type: number) {
        let key = EnumTargetType.Building;
        let map = <any>this.targetMap[key];
        if (map) {
            let val = map[type] || 0;
            if (val > 0) {
                val -= 1;
                this.totalTarget--;
                map[type] = val;
                XYFrame.Msg.emit(EnumMsg.STAGE_TARGET, this.totalTarget <= 0);
            }
        }
    }

    /**
     * 添加击杀npc
     * @param map key:npc类型 val:击杀数量
     */
    public addNpcs(map: Record<number, number>) {
        // let target: any = this.targetMap[EnumTargetType.Npc];
        // if (!target) {
        //     target = {};
        //     this.targetMap[EnumTargetType.Npc] = target;
        // }
        // for (let key in map) {
        //     let val = target[key] || 0;
        //     target[key] = val + map[key];
        // }
        let npc = <any>this.targetMap[EnumTargetType.Npc];
        if (npc && map) {
            let bo = false;
            for (let k in map) {
                let val = npc[k] || 0;
                if (val > 0) {
                    let v = map[k];
                    if (v > val) {
                        this.totalTarget -= val;
                        val = 0;
                    } else {
                        this.totalTarget -= v;
                        val -= v;
                    }
                    npc[k] = val;
                    bo = true;
                }
            }
            bo && XYFrame.Msg.emit(EnumMsg.STAGE_TARGET, this.totalTarget <= 0);
        }
    }

    /**
     * 获取目标数量
     * @param type 类型
     * @param id npc类型 建筑类型 玩家类型不传
     */
    public getTargetNum(type: EnumTargetType, id?: number) {
        if (type == EnumTargetType.Player) {
            return <number>this.targetMap[type] || 0;
        } else {
            let map = <any>this.targetMap[type];
            return map ? map[id] || 0 : 0;
        }
    }

    /**
     * 设置胜利
    */
    public setWin() {
        this.result = 1;
    }

    /**
     * 设置失败
     */
    public setDead() {
        this.result = 2;
    }

    /**
     * 设置超时
     */
    public setTimeout() {
        this.result = 2;
        this.playTime = 0;
    }

    /** 复活 */
    public relive() {
        this.reliveCount++;
        this.result = 0;
        if (!this.playTime || this.playTime <= 0) {
            this.playTime = ConfigUtils.getConst(EnumUI.ROLE, 9) * 1000 || EnumStageScene.RELIVE_TIME;
        }
    }

    /**
     * 减少时间
     * @param time 
     */
    public reduceTime(time: number) {
        if (this.stopTime) {
            return;
        }
        let _t = this;
        // if (_t.stopTime > 0) {
        //     _t.stopTime -= time;
        //     if (_t.stopTime <= 0) {
        //         time = -_t.stopTime;
        //     } else {
        //         return;
        //     }
        // }
        _t.playTime -= time;
        if (_t.playTime <= 0) {
            _t.setTimeout();
            return true;
        }
    }

    public clear() {
        let _t = this;
        _t.pause = false;
        _t.isStart = false;
        _t.playTime = EnumStageScene.RELIVE_TIME;
        _t.result = 0;
        _t.reliveCount = 0;
        _t.stopTime = false;
        _t.targetMap = {};
        _t.totalTarget = 0;
    }
}