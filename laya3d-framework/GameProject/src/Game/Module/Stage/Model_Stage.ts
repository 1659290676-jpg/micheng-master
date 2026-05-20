import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_skill_105 from "../../../DataStock/ConfigData/Ts/Config_skill_105";
import Config_stage_001 from "../../../DataStock/ConfigData/Ts/Config_stage_001";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import EnumKey from "../../../DataStock/GameData/EnumKey";
import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import BaseModel from "../../../XYFrame/Network/BaseModel";
import { SocketMgr } from "../../../XYFrame/Network/SocketMgr";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import { EnumStorageKey } from "../../EnumStorageKey";
import EnumUI from "../../EnumUI";
import Game from "../../Game";
import Vw_Msg from "../Tip/Vw_Msg";
import Vo_StageScene from "./Vo_StageScene";
import Vw_ExitStage from "./Vw_ExitStage";
import Vw_Fail from "./Vw_Fail";
import Vw_Pass from "./Vw_Pass";

const enum Enum_StageCache {
    /** 是否有未领取的结算奖励 */
    isReward,
    /** 通关时间 */
    passTime,
    /** 挑战结果 */
    result,
    /** 是否正在游戏中 */
    isPlaying,
}


/**
 * @ Author: XXL
 * @ Date: 2026-04-14 14:46
 * @ Description: 关卡
*/
export default class Model_Stage extends BaseModel {
    public getStorageKey(): string {
        return EnumStorageKey.Stage;
    }

    public initCache() {
        let data = this.readStorage();
        if (data) {
            for (let k in data) {
                let type = +k;
                let v = data[k];
                switch (type) {
                    case Enum_StageCache.isReward:
                        this.rewardId = v;
                        break;
                    case Enum_StageCache.passTime:
                        this.passTime = v;
                        break;
                    case Enum_StageCache.result:
                        this.result = v;
                        break;
                    case Enum_StageCache.isPlaying:
                        this.setCacheNum(Enum_StageCache.isPlaying, v);
                        break;
                }
            }
        }
    }

    public initCacheEnd() {
        // 初始化缓存结束，要出来离线前是否有开始关卡，如果开始关卡了，需要判断扣除体力与清理对应系统的失败
        let isPlaying = this.getCacheNum(Enum_StageCache.isPlaying);
        if (isPlaying) {
            this.setCacheNum(Enum_StageCache.isPlaying, 0);
            this.saveStorage();
            // 离线玩需要扣除体力，后端有离线卡不会扣除体力
            if (Game.Model.hero.isOfflinePlay) {
                Game.Model.stamina.simulationDeduce();
                this.emit(EnumMsg.STAGE_RESULT, 3);
            }
        }
    }

    public getOfflineData(isReconnect?: boolean) {
        let data: any = {};
        let _t = this;
        data.passId = _t.level;
        data.passTime = _t.passTime;
        data.rewardId = isReconnect ? 0 : _t.rewardId;
        return data;
    }

    /** 关卡位置 */
    public posMap: Record<string | number, { x: number, y: number }[]>;

    /** 已通关的关卡 */
    public get level(): number {
        return Game.Model.hero.vo.stage_lev;
    }

    /** 挑战关卡 */
    public get playLev(): number {
        let lev = Game.Model.hero.vo.stage_lev + 1;
        if (ConfigData.stage_001[lev]) return lev;
        return Game.Model.hero.vo.stage_lev;
    }

    /** 当前进入的关卡 */
    public enterLev: number = 1;

    /**
     * 当前挑战关卡
     */
    public get challengeLev() {
        return this.enterLev || this.playLev;
    }

    /** 当前场景关卡数据 */
    public stageVo = new Vo_StageScene();

    /**
     * 体力上限
     */
    public get staminaMax() {
        let val = ConfigUtils.getConst(EnumUI.STAMINE, 1);
        return val;
    }

    /**
     * 有未领取的结算奖励
     */
    public get rewardId() {
        return this.getCacheNum(Enum_StageCache.isReward) || 0;
    }

    public set rewardId(v: number) {
        this.setCacheNum(Enum_StageCache.isReward, v);
    }

    /** 通关时间 */
    public get passTime(): number {
        return this.getCacheNum(Enum_StageCache.passTime) || 0;
    }

    public set passTime(v: number) {
        this.setCacheNum(Enum_StageCache.passTime, v);
    }

    /**
     * 挑战的结果 1胜利 2失败
     */
    public get result() {
        return this.getCacheNum(Enum_StageCache.result) || 0;
    }

    public set result(v: number) {
        this.setCacheNum(Enum_StageCache.result, v);
    }


    /**
     * 是否可以播放下一关
     */
    public get canPlayNext() {
        return ConfigUtils.getConst(EnumUI.ROLE, 6) > this.level;
    }

    private _nameIds: string[];
    public get nameIds() {
        if (!this._nameIds) {
            this._nameIds = Object.keys(ConfigData.name_105);
        }
        return this._nameIds;
    }

    /** 保存通关等级，以便打开关卡界面制作动画 */
    public pass_lev: number;
    /**
     * 通关
     */
    public onPass() {
        let _t = this;
        if (_t.stageVo.isWin) return;
        let lev = _t.challengeLev;
        _t.stageVo.pause = true;
        if (!_t.pass_lev) {
            _t.pass_lev = _t.rewardId = lev;
        }
        _t.result = 1;
        _t.passTime = Game.Model.global.getSrvTm();
        _t.saveStorage();
        _t.stageVo.setWin();
        XYFrame.UIMgr.close(Vw_ExitStage);
        XYFrame.UIMgr.open(Vw_Pass, lev);
        _t.CG457(4);
        Game.Model.setting.vibrate(1);
    }

    /**
     * 挑战失败
     * @param type 
     */
    public onFail(type: number) {
        let _t = this;
        _t.result = 2;
        _t.saveStorage();
        if (type == 2) {
            _t.stageVo.setDead();
        } else {
            _t.stageVo.setTimeout();
        }
        XYFrame.Msg.emit(EnumMsg.STAGE_FAIL, type);
    }

    /**
     * 进入关卡
     */
    public enterStage() {
        let lev = this.challengeLev;
        let cfg = ConfigData.stage_001[lev];
        if (!cfg) {
            cfg = ConfigData.stage_001[lev - 1];
        }
        let sceneId: string | number = 1;
        if (cfg) {
            sceneId = Config_stage_001.getMap(cfg) || 1;
        }
        Game.SceneMgr.onEnter(sceneId);
    }

    /**
     * 推送进入关卡
     */
    public sendEnter() {
        this.CG451(0);
    }

    public clearResult() {
        this.result = 0;
        this.rewardId = 0;
        this.saveStorage();
    }

    /**
     * 重新开始
     */
    public onRestart() {
        if (!Game.SceneMgr.isEnter) {
            return true;
        }
        if (!Game.Model.stamina.freeTime) {
            if (Game.Model.stamina.current <= 1) {
                Vw_Msg.setCfgTxt(423);// 只有1点体力无法重新开始
                return false;
            }
        }
        this.CG457(1);
    }

    /**
     * 退出关卡
     */
    public onExit(isFail?: boolean) {
        if (Game.SceneMgr.isEnter) {
            this.CG457(isFail ? 3 : 2);
            Game.SceneMgr.onExit();
        }
    }

    public initAfterEnter() {
        let _t = this;
        _t.pass_lev = null;
        let result = _t.result;
        if (result) {
            if (Game.isOnline) {
                if (Game.isEnter) {
                    // 是断线重连的
                    if (result == 2) {
                        if (!XYFrame.UIMgr.isOpen(Vw_Fail)) {
                            // 需要通知
                            _t.CG457(3);
                        }
                    } else {
                        // 胜利
                        _t.CG457(4);
                    }
                } else {
                    // 不是
                    _t.result = 0;
                    _t.saveStorage();
                }
            } else {
                // 离线失败需要扣除体力
                if (result == 2) {
                    if (!Game.SceneMgr.isEnter || !XYFrame.UIMgr.isOpen(Vw_Fail)) {
                        Game.Model.stamina.simulationDeduce();
                    }
                    _t.CG457(3);
                } else {
                    _t.CG457(4);
                }
            }
        }
        let rewardId = _t.rewardId;
        if (rewardId) {
            // 还领取奖励
            if (Game.isOnline) {
                // 断线重连，在线需要通知领取奖励
                if (Game.isEnter && !XYFrame.UIMgr.isOpen(Vw_Pass)) {
                    _t.CG459();
                } else {
                    _t.rewardId = 0;
                    _t.saveStorage();
                }
            } else {
                // 离线玩直接领
                _t.CG459();
            }
        }
    }

    //协议处理
    protected registerCmd(self: this, mgr: SocketMgr) {
        self.socket = mgr;
        //注册GC方法
        mgr.listen(452, self.GC452, self);
        mgr.listen(454, self.GC454, self);
        mgr.listen(456, self.GC456, self);
        mgr.listen(458, self.GC458, self);
        mgr.listen(460, self.GC460, self);
        mgr.listen(462, self.GC462, self);
        mgr.listen(464, self.GC464, self);
    }

    private _onFailMsg(val: number) {
        let msg = 0;
        if (val == 2) {
            // 已在关卡中
            msg = 416;
        } else if (val == 3) {
            // 体力不足
            msg = 405;
        } else if (val == 4) {
            // 已通关
            msg = 417;
        } else if (val == 5) {
            // 道具不足
            msg = 418;
        } else if (val == 6) {
            // 房间不存在
            msg = 419;
        } else if (val == 7) {
            // 奖励不存在
            msg = 420;
        } else if (val == 8) {
            // 结算时间异常
            msg = 421;
        } else if (val == 9) {
            // 金币不足
            msg = 422;
        }
        Vw_Msg.setCfgTxt(msg);
    }

    /**
     * 进入关卡
     * 发送进入关卡请求，在线时发送451指令，离线时模拟进入
     * @param arg1 0正常进入，1断线进入
     */
    public CG451(arg1: number): void {
        if (Game.isOnline) {
            var bates = this.getBytes();
            bates.writeInt(arg1);
            this.sendCmd(451, bates);
        } else {
            // 模拟进入
            this.CG452(0, this.playLev, arg1);
        }
    }

    /**
     * 进入返回 I-I-I I:0成功1体力不足I:关卡idI:0正常进1断线进
     * @param self 关卡模型实例
     * @param data 服务器返回数据，包含两个整数：返回码和关卡ID
     *              返回码：0成功，1体力不足
     */
    protected GC452(self: Model_Stage, data: BaseBytes): void {
        let arg1 = data.readInt();
        let arg2 = data.readInt();
        let arg3 = data.readInt();
        if (arg1 == 0) {
            if (arg3 == 0) {
                self.enterLev = arg2;
                self.enterStage();
            }
        } else if (arg1 == 1) {
            Vw_Msg.setCfgTxt(406);//进入失败
        } else {
            self._onFailMsg(arg1);
        }
    }

    /**452 I-I 进入返回 I:0成功1体力不足stateI:关卡idid*/
    public CG452(arg1: number, arg2: number, arg3: number): void {
        var bates = this.getBytes();
        bates.writeInt(arg1);
        bates.writeInt(arg2);
        bates.writeInt(arg3);
        this.simulateCmd(452, bates);
    }

    /**453 I 使用技能 I:技能idid*/
    public CG453(arg1: number): void {
        if (Game.isOnline) {
            var bates = this.getBytes();
            bates.writeInt(arg1);
            this.sendCmd(453, bates);
        } else {
            let itemId = Config_skill_105.getItemByKey(arg1);
            if (itemId) {
                if (Game.Model.bag.isSimulateUse([[EnumKey.ITEM, itemId, 1]])) {
                    this.CG454(0, arg1);
                }
            }
        }
    }

    /**454 I-I 使用技能返回 I:0成功stateI:技能idid*/
    protected GC454(self: Model_Stage, data: BaseBytes): void {
        let arg1 = data.readInt();
        let arg2 = data.readInt();
        if (arg1 == 0) {
            self.emit(EnumMsg.STAGE_USE_SKILL, arg2);
        } else {
            self._onFailMsg(arg1);
        }
    }

    /**454 I-I 使用技能返回 I:0成功stateI:技能idid*/
    public CG454(arg1: number, arg2: number): void {
        var bates = this.getBytes();
        bates.writeInt(arg1);
        bates.writeInt(arg2);
        this.simulateCmd(454, bates);
    }

    /**455  开始游戏 */
    public CG455(): void {
        if (Game.isOnline) {
            var bates = this.getBytes();
            this.sendCmd(455, bates);
        } else {
            this.CG456(0);
        }
    }

    /**456 I 开始游戏 I:0成功state*/
    protected GC456(self: Model_Stage, data: BaseBytes): void {
        let arg1 = data.readInt();
        if (arg1 == 0) {
            self.setCacheNum(Enum_StageCache.isPlaying, 1);
            self.saveStorage();
            self.emit(EnumMsg.START_PLAY);
        } else {
            self._onFailMsg(arg1);
        }
    }

    /**456 I 开始游戏 I:0成功state*/
    public CG456(arg1: number): void {
        var bates = this.getBytes();
        bates.writeInt(arg1);
        this.simulateCmd(456, bates);
    }

    /**457 I 结算 I:1重新开始2:退出3输4赢result*/
    public CG457(arg1: number): void {
        let _t = this;
        if (Game.isOnline) {
            var bates = _t.getBytes();
            bates.writeInt(arg1);
            _t.sendCmd(457, bates);
        } else {
            if (arg1 == 1) {
                // 重新开始
                if (!Game.Model.stamina.freeTime) {
                    if (Game.Model.stamina.current <= 0) {
                        Vw_Msg.setCfgTxt(405);// 体力不足
                        return;
                    }
                }
                Game.Model.stamina.simulationDeduce();
                _t.CG452(0, _t.playLev, 0);
                _t.CG458(0, arg1, _t.level);
            } else {
                if (arg1 == 4) {
                    // 需要给奖励
                    _t.CG458(0, arg1, _t.playLev);
                } else {
                    // 不赢就扣体力
                    Game.Model.stamina.simulationDeduce();
                    _t.CG458(0, arg1, _t.level);
                }
            }
        }
    }

    /**458 I-I-I 结算返回 I:0成功stateI:1重新开始2:退出3输4赢resultI:通关idnextId*/
    protected GC458(self: Model_Stage, data: BaseBytes, socketId?: number, isSimulate?: boolean): void {
        let arg1 = data.readInt();
        let arg2 = data.readInt();
        let arg3 = data.readInt();
        if (arg1 == 0) {
            self.setCacheNum(Enum_StageCache.isPlaying, 0);
            self.result = 0;
            self.saveStorage();
            if (arg2 == 4 && Game.Model.hero.vo.stage_lev != arg3) {
                Game.Model.hero.vo.stage_lev = arg3;
                Game.Model.hero.saveStorage();
                self.emit(EnumMsg.STAGE_LEVEL);
                self.emit(EnumMsg.STAGE_PASS, arg3);
            }
            if (arg2 == 2) {
                // 退出
                Game.SceneMgr.onExit();
            }
            self.emit(EnumMsg.STAGE_RESULT, arg2);
        } else {
            self._onFailMsg(arg1);
        }
    }

    /**458 I-I-I 结算返回 I:0成功stateI:1重新开始2:退出3输4赢resultI:下一层idnextId*/
    public CG458(arg1: number, arg2: number, arg3: number): void {
        var bates = this.getBytes();
        bates.writeInt(arg1);
        bates.writeInt(arg2);
        bates.writeInt(arg3);
        this.simulateCmd(458, bates);
    }

    /**459  领取结算奖励 */
    public CG459(): void {
        let _t = this;
        if (Game.isOnline) {
            var bates = _t.getBytes();
            _t.sendCmd(459, bates);
        } else {
            // 离线奖励
            let lev = _t.challengeLev;
            let rd = Config_stage_001.getRewardByKey(lev);
            if (rd) {
                Game.Model.bag.simulateAddGood(0, rd);
            }
            _t.CG460(0);
        }
    }

    /**460 I 领取奖励返回 I:0成功state*/
    protected GC460(self: Model_Stage, data: BaseBytes): void {
        let arg1 = data.readInt();

        if (arg1 == 0) {
            self.clearResult();
            self.emit(EnumMsg.STAGE_RECEIVE_RD);
            // 如果没有结束界面，还在场景中需要退出场景
            if (!XYFrame.UIMgr.isOpen(Vw_Pass) && Game.SceneMgr.isEnter) {
                Game.SceneMgr.onExit();
            }
        } else {
            self._onFailMsg(arg1);
        }
    }

    /**460 I 领取奖励返回 I:0成功state*/
    public CG460(arg1: number): void {
        var bates = this.getBytes();
        bates.writeInt(arg1);
        this.simulateCmd(460, bates);
    }

    /**462 I 存在未领取的关卡奖励 I:关卡idid*/
    protected GC462(self: Model_Stage, data: BaseBytes): void {
        let arg1 = data.readInt();
    }

    /**462 I 存在未领取的关卡奖励 I:关卡idid*/
    public CG462(arg1: number): void {
        var bates = this.getBytes();
        bates.writeInt(arg1);
        this.simulateCmd(462, bates);
    }

    /**463  金币复活 */
    public CG463(): void {
        if (Game.isOnline) {
            var bates = this.getBytes();
            this.sendCmd(463, bates);
        } else {
            if (Game.Model.bag.isSimulateUse([ConfigUtils.getConstList(EnumUI.ROLE, 3)])) {
                this.CG464(0);
            }
        }
    }

    /**464 I 金币复活 I:0成功ret*/
    protected GC464(self: Model_Stage, data: BaseBytes): void {
        let arg1 = data.readInt();
        if (arg1 == 0) {
            self.setCacheNum(Enum_StageCache.isPlaying, 1);
            self.result = 0;
            self.saveStorage();
            XYFrame.UIMgr.close(Vw_Fail);
            XYFrame.Msg.emit(EnumMsg.STAGE_REVIVE);
        } else {
            self._onFailMsg(arg1);
        }
    }

    /**464 I 格子已满复活 I:0成功ret*/
    public CG464(arg1: number): void {
        var bates = this.getBytes();
        bates.writeInt(arg1);
        this.simulateCmd(464, bates);
    }
}