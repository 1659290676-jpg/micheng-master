import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import EnumKey from "../../../DataStock/GameData/EnumKey";
import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import BaseModel from "../../../XYFrame/Network/BaseModel";
import { SocketMgr } from "../../../XYFrame/Network/SocketMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import DateUtils from "../../../XYFrame/Utils/DateUtils";
import ObjectUtils from "../../../XYFrame/Utils/ObjectUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";
import { EnumMsg } from "../../EnumMsg";
import { EnumStorageKey } from "../../EnumStorageKey";
import EnumUI from "../../EnumUI";
import Game from "../../Game";
import { EnumStep } from "../Main/EnumStep";
import Vw_Main from "../Main/Vw_Main";
import Vw_Msg from "../Tip/Vw_Msg";
import { FireTrial_Head_Data } from "./Item_FireTrial_Head";
import Vw_FireTrial_Enter from "./Vw_FireTrial_Enter";
import Vw_FireTrial_Main from "./Vw_FireTrial_Main";
import Vw_FireTrial_Match from "./Vw_FireTrial_Match";
import Vw_fireTrial_Win from "./Vw_fireTrial_Win";

/**挑战数据 */
export interface Fire_Trial_Pos_Data {
	/**需要删除的人数 */
	removeCnt: number,
	/**当前台子 */
	curIndex: number,
	/**上一次的台子 */
	lastIndex: number
	/**当前人数 */
	curCnt: number,
	/**总人数 */
	sumCnt: number,
	/**生成的人数 */
	// createCnt: number
}

/**
 * Model_FireTrial
 * 火焰试炼
 */
export default class Model_FireTrial extends BaseModel {

	public getStorageKey(): string {
		return EnumStorageKey.FireTrial;
	}

	/**开启状态 0未开启 1开启 2冷却中 3已领奖 */
	private get state(): number {
		return this.getCacheNum("state") ?? 0;
	}
	private set state(value: number) {
		this.setCacheNum("state", value)
	}
	/**结束时间 */
	private get endTime(): number {
		return this.getCacheNum("endTime") ?? 0;
	}
	private set endTime(value: number) {
		this.setCacheNum("endTime", value)
	}
	/**当前剩余人数 */
	public get humanSum(): number {
		return this.getCacheNum("humanSum") ?? 0;
	}
	public set humanSum(value: number) {
		this.setCacheNum("humanSum", value)
	}
	/**是否打开过 */
	public get openFlag(): boolean {
		return this.getCacheBool("openFlag") ?? false;
	}
	public set openFlag(value: boolean) {
		this.setCacheBool("openFlag", value)
	}
	/**所有头像id */
	private headIds: number[]
	/**当前连胜数 */
	public get winCount(): number {
		return this.getCacheNum("winCount") ?? 0;
	}
	public set winCount(value: number) {
		this.setCacheNum("winCount", value)
	}
	/**本轮剩余的头像列表（不包括自己） */
	public roundHeadList: FireTrial_Head_Data[] = []
	/**台子总数 */
	public posCnt: number = 7
	/**是否要跳格子 */
	// public needJump: boolean = false
	/**战斗结果 3失败 4胜利 */
	public battleResult: number = 0
	/**连胜最大次数 */
	public maxWinCount: number = 7
	/**每次生成人数 */
	public createCnt: number = 12
	/**状态 0不动 1赢 2输 */
	private resState: number = 0

	private timeId: string;

	public initCache() {
		let data = this.readStorage();
		if (data != null && ObjectUtils.getObjType(data) == ObjectUtils.OBJECT) {
			this.cacheVo["_map"] = data;
		}
	}

	/**
	 * 登录时要上报服务器数据
	 */
	public getOfflineData(): any {
		let t = this;
		let now = Game.Model.global.getSrvTm();
		let state = t.state;
		let endTime = t.endTime;
		let humanSum = t.humanSum;
		let gainCoin = 0;
		if ((state == 1 && endTime < now) || state == 3) {
			// 需要结算
			// gainCoin = Math.floor(10000 / humanSum);
			gainCoin = Math.floor(10000 / 76);
		} else if (state == 2 && endTime < now) {
			// 冷却结束
			state = 0;
			endTime = 0;
		}
		return {
			state: state,
			// endTime: endTime,
			human: humanSum,
			open: t.openFlag ? 0 : 1,
			continueWin: t.winCount,
			gainCoin: gainCoin
		}
	}

	public initAfterEnter() {
		if (!Game.isOnline) {
			// 离线
			this.checkSettle();
		}
	}

	/**判断是否需要离线结算奖励 */
	private checkSettle() {
		if (!Game.isOnline) {
			let state = this.state;
			let endTime = this.endTime;
			let humanSum = this.humanSum;
			let winCount = this.winCount;
			if ((state == 1 && endTime < Game.Model.global.getSrvTm())) {
				if (winCount >= this.maxWinCount) {
					// 需要结算
					let gainCoin = Math.floor(10000 / 76);
					// 发放金币
					Game.Model.bag.simulateAddGood(0, [[EnumKey.Gold, 0, gainCoin]]);
				}
				this.state = 3;
				this.winCount = 0;
				this.openFlag = true;

				this.CG578(winCount, humanSum);
			} else if (state == 2 && endTime < Game.Model.global.getSrvTm()) {
				// 冷却结束
				this.state = 0;
				this.endTime = 0;
				this.winCount = 0;
				this.openFlag = true;
			}
		}
	}

	/**打开试炼 */
	public open() {
		let t = this
		let state = t.getState()
		if (state == 1) {
			//已开启
			t.CG573()
		} else {
			XYFrame.UIMgr.open(Vw_FireTrial_Enter);
		}


		// t.createHeadData(10)
		// Frame.UIMgr.openByObj(Vw_fireTrial_Win, { list: t.getCurHeadList() })


		// let init = 12
		// let removeCnt = 3
		// this.createHeadData(init)
		// let vo: Fire_Trial_Pos_Data = { removeCnt: removeCnt, curIndex: 5, lastIndex: 4, curCnt: 2, sumCnt: 3 }
		// Frame.UIMgr.openByObj(Vw_FireTrial_Main, vo)
	}

	/**检测发送打开页面 */
	public checkSendOpen(isWin: boolean) {
		let t = this;
		if (t.getState() == 1) {
			t.setBattleResult(isWin ? 4 : 3)
			t.resState = isWin ? 1 : 2
			t.CG573()
		}
	}

	/**获取连胜数据 */
	// public getData<T>(call: (_t: T) => void, callThis: T) {
	// 	let t = this;
	// 	let state = t.getState()
	// 	if (state == 1) {
	// 		//已开启
	// 		t.cacheVo.setMap("getData", { call: call, callThis: callThis });
	// 		t.CG573();
	// 	}
	// }

	public isShowGqExitTip(): boolean {
		if (this.getState() == 1) {
			return this.winCount >= 0;
		}
		return false;
	}

	/**关卡结算检测打开弹窗 */
	// public checkOpenRes() {
	// 	if (this.getState() == 1) {
	// 		Game.Model.fireTrial.CG573()
	// 	}
	// }

	/**获取结束时间 */
	public getEndTime(): number {
		return Math.max(0, this.endTime - Game.Model.global.getSrvTm());
	}

	/**获取开启状态 0未开启 1开启 2冷却中 3已领奖 */
	public getState(): number {
		let state = this.state;
		if (state == 2) {
			// 判断冷却结束没，结束了状态要更改为未开启
			let tm = this.getEndTime();
			if (tm <= 0) {
				return 0;
			}
		}
		return state;
	}

	/**根据头像id获取头像 */
	public getHeadSrc(id: number) {
		let cfg = ConfigData.getSkin_301(id), res: string;
		if (cfg.icon) {
			res = ResPath.getAtlasImgPath(EnumAltas.Role, cfg.icon);
		}
		// t.btnHead.icon = res;
		return res
	}

	/**获取所有头像id */
	public getHeadIds() {
		let t = this
		if (t.headIds) {
			return t.headIds
		}
		t.headIds = []
		let cfgMap = ConfigData.skin_301;
		for (let k in cfgMap) {
			let c = ConfigData.getSkin_301(k);
			t.headIds.push(+k)
		}

		return t.headIds
	}

	/**随机一个头像数据 */
	public getRandomHeadData(belongId?: number): FireTrial_Head_Data {
		let t = this
		let ids = t.getHeadIds()
		let index = Math.floor(Math.random() * ids.length)
		return { head: t.getHeadSrc(ids[index]), frame: ResPath.getAtlasImgPath(EnumAltas.Role, "bg_txk"), belongId: belongId }
	}

	/**获取自己的头像数据 */
	public getMyHeadData(): FireTrial_Head_Data {
		let ownHead = Game.Model.fireTrial.getHeadSrc(Game.Model.hero.vo.headId)
		let ownFrane = ResPath.getAtlasImgPath(EnumAltas.FireTrial, "frame")
		return { head: ownHead, frame: ownFrane }
	}

	/**创建指定数量头像数据 */
	public createHeadData(cnt: number) {
		let t = this
		t.roundHeadList = []
		let initId = 1001
		for (let i = 0; i < cnt; i++) {
			t.roundHeadList.push(t.getRandomHeadData(initId++))
		}
	}

	/**随机删除一个头像 */
	public removeRandomHead(): FireTrial_Head_Data {
		let t = this
		let index = Math.floor(Math.random() * t.roundHeadList.length)
		return t.roundHeadList.splice(index, 1)[0]
	}

	/**获取当前的头像列表 */
	public getCurHeadList() {
		return this.roundHeadList
	}

	/**改变格子状态 */
	// public setNeedJump(need: boolean) {
	// 	this.needJump = need
	// }

	/**保存战斗结果 */
	public setBattleResult(result: number) {
		if (result == 3 || result == 4) {
			this.battleResult = result
			// if (result == 4) {
			// 	this.setNeedJump(true)
			// }
		}
	}

	/**战斗是否失败 */
	public isBattleFail() {
		return this.battleResult == 3
	}

	/**检测打开火焰试炼 */
	public checkOpen() {
		let t = this
		if (t.battleResult == 3 || t.battleResult == 4) {
			t.CG573()
		}
	}

	/**检测倒计时 */
	private checkTime() {
		let t = this
		if (t.timeId) {
			XYFrame.Timer.clearById(t.timeId)
			t.timeId = null
		}
		let endTime = t.getEndTime()
		if (endTime > 0) {
			t.timeId = XYFrame.Timer.once(endTime, function () {
				Game.Model.fireTrial.CG577()
			}, t)
		}
	}
	/**最大连胜数 */
	public getMaxWin() {
		return 7;
	}

	public clear(): void {
		let t = this
		t.roundHeadList = []
		// t.needJump = false
		t.battleResult = 0
		if (t.timeId) {
			XYFrame.Timer.clearById(t.timeId)
			t.timeId = null
		}
	}

	/**
	 * 
	 * @param t 
	 * @param res 0退出1重新开始3输4赢
	 */
	private onStageResult(t: this, res: number) {
		//console.error("onStageResult", res)
		if (Game.isOnline) {
			t.checkSendOpen(res == 4);
		} else {
			if (t.getState() == 1) {
				let isWin = res == 4;
				if (!isWin) {
					// 挑战失败，进入冷却CD， 连胜清零
					let winCount = 0;
					let state = 2;
					let etm = Game.Model.global.getSrvTm() + ConfigUtils.getConst(EnumUI.FIRE_TRIAL, 2) * 600 * 1000;
					t.CG570(state, etm, t.openFlag ? 0 : 1, winCount);
				}
				t.setBattleResult(isWin ? 4 : 3)
				t.resState = isWin ? 1 : 2
				t.CG573();
			}
		}
	}

	private onStagePass(t: this, gq: number) {
		//console.error("onStagePass", gq);
		// 只处理离线状态
		if (Game.isOnline || !ConfigData.stage_001[gq]) return;
		if (t.getState() == 1) {
			// 连胜数 + 1
			t.winCount = Math.min(t.getMaxWin(), t.winCount + 1);
			// 剩余人数 - 3
			t.humanSum = Math.max(0, t.humanSum - 3);
		}
	}

	private onZeroPoint(t: this) {
		t.checkSettle();
	}

	//协议处理
	protected registerCmd(self: this, mgr: SocketMgr) {
		self.socket = mgr;
		//注册GC方法
		mgr.listen(570, self.GC570, self);
		mgr.listen(572, self.GC572, self);
		mgr.listen(574, self.GC574, self);
		mgr.listen(576, self.GC576, self);
		mgr.listen(578, self.GC578, self);

		XYFrame.Msg.on(EnumMsg.STAGE_PASS, self.onStagePass, self);
		XYFrame.Msg.on(EnumMsg.STAGE_RESULT, self.onStageResult, self);
		XYFrame.Msg.on(EnumMsg.ZERO_POINT, self.onZeroPoint, self);
	}

	/**570 I-L-I-I 试炼数据 I:0未开启1开启2冷却中3已领奖stateL:结束时间endTimeI:是否打开过openI:连胜数*/
	public CG570(arg1: number, arg2: number, arg3: number, arg4: number): void {
		let bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeLong(arg2);
		bates.writeInt(arg3);
		bates.writeInt(arg4);
		this.simulateCmd(570, bates);
	}

	/**570 I-L-I-I 试炼数据 I:0未开启1开启2冷却中3已领奖stateL:结束时间endTimeI:是否打开过openI:连胜数*/
	protected GC570(self: Model_FireTrial, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readLong();
		let arg3 = data.readInt();
		let arg4 = data.readInt();

		self.state = arg1
		self.endTime = arg2
		self.openFlag = arg3 == 0
		self.winCount = arg4

		self.checkTime()
		self.emit(EnumMsg.FIRETRIAL_CHANGE)
	}

	/**571  开始活动 */
	public CG571(): void {
		if (Game.isOnline) {
			var bates = this.getBytes();
			this.sendCmd(571, bates);
		} else {
			// let state = this.state;
			// let endTime = this.endTime;
			// if (state == 1 || (state == 2 && endTime > Game.Model.global.getSrvTm())) {
			// 	this.CG572(5, 0, 0);
			// 	return;
			// } else if (state == 3) {
			// 	let startTime = endTime - DateUtils.SEC_DAY * 1000;
			// 	if (DateUtils.getBetDay(startTime, Game.Model.global.getSrvTm()) == 0) {
			// 		this.CG572(4, 0, 0);
			// 		return;
			// 	}
			// }
			// // 新开一期
			// endTime = Game.Model.global.getSrvTm() + ConfigUtils.getConst(EnumUI.FIRE_TRIAL, 1) * 60 * 60 * 1000;
			// this.CG572(0, endTime, 100);
			// this.CG570(1, endTime, 0, 0);
		}
	}

	/**572 I-L-I 开始返回 I:0成功stateL:结束时间endTimeI:人数human*/
	protected CG572(arg1: number, arg2: number, arg3: number) {
		let bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeLong(arg2);
		bates.writeInt(arg3);
		this.simulateCmd(572, bates);
	}

	/**572 I-L-I 开始返回 I:0成功stateL:结束时间endTimeI:人数human*/
	protected GC572(self: Model_FireTrial, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readLong();
		let arg3 = data.readInt();

		let msg = 0
		if (arg1 == 0) {
			self.endTime = arg2
			self.humanSum = arg3
			XYFrame.UIMgr.close(Vw_FireTrial_Enter)
			XYFrame.UIMgr.open(Vw_FireTrial_Match)
			// self.createHeadData(arg3 - 1)
			self.createHeadData(self.createCnt - 1)
		} else if (arg1 == 1) {
			msg = 770 // 功能未开启
		} else if (arg1 == 2) {
			msg = 771 // 活动未开启
		} else if (arg1 == 3) {
			msg = 772 // 未通关
		} else if (arg1 == 4) {
			msg = 773 // 奖励已领取过
		} else if (arg1 == 5) {
			msg = 774 // 活动已开启
		}
		if (arg1) {
			Vw_Msg.setCfgTxt(msg)
		}
	}

	/**573  打开面板 */
	public CG573(): void {
		if (Game.isOnline) {
			var bates = this.getBytes();
			this.sendCmd(573, bates);
		} else {
			let bates = this.getBytes();
			bates.writeInt(this.winCount);
			bates.writeInt(this.humanSum);
			this.simulateCmd(574, bates);
		}
	}

	/**574 I-I 历练数据 I:当前连胜数countI:人数human*/
	protected GC574(self: Model_FireTrial, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readInt();
		self.winCount = arg1;
		self.humanSum = arg2;
		// let d: any = self.cacheVo.getMap("getData");
		// if (d) {
		// 	if (d.call) {
		// 		d.call(d.callThis);
		// 	}
		// 	self.cacheVo.setMap("getData", null);
		// 	return;
		// }

		if (self.roundHeadList.length == 0) {
			// self.createHeadData(arg3 - 1)
			self.createHeadData(self.createCnt - 1)
		}
		let lastIndex = -1
		if (self.resState == 1) {
			lastIndex = arg1 - 1
		}
		// if (!self.needJump) {
		// 	//不需要跳格子时，显示进行中
		// 	self.battleResult = 4
		// }
		// let removeCnt = arg3 - arg2
		let removeCnt = self.resState > 0 ? 3 : 0
		let vo: Fire_Trial_Pos_Data = { removeCnt: removeCnt, curIndex: arg1, lastIndex: lastIndex, curCnt: arg2, sumCnt: ConfigUtils.getConst(EnumUI.FIRE_TRIAL, 4) }
		Game.StepMgr.removeStepByType(EnumStep.fireTrialJump);
		Game.StepMgr.addStep(EnumStep.fireTrialJump, function (_t, _arg) {
			XYFrame.UIMgr.open(Vw_FireTrial_Main, _arg[0])
		}, [vo], self)
		if (XYFrame.UIMgr.isOpen(Vw_Main)) {
			Game.StepMgr.triggerStep()
		}
		// Frame.UIMgr.openByObj(Vw_fireTrial_Win, { list: self.getCurHeadList() })
		// self.needJump = false
		self.resState = 0
	}

	/**575  领取奖励 */
	public CG575(): void {
		if (Game.isOnline) {
			var bates = this.getBytes();
			this.sendCmd(575, bates);
		} else {
			// let state = this.state;
			// if (state == 0 || state == 2) {
			// 	this.CG576(2);
			// 	return;
			// } else if (state == 3) {
			// 	this.CG576(4);
			// 	return;
			// }
			this.CG576(0);
		}
	}

	/**576 I 领取奖励返回 I:0成功1功能未开启2活动未开启3未通关4奖励不存在5活动已开启state*/
	protected CG576(arg1: number): void {
		let bates = this.getBytes();
		bates.writeInt(arg1);
		this.simulateCmd(576, bates);
	}

	/**576 I 领取奖励返回 I:0成功1功能未开启2活动未开启3未通关4奖励不存在5活动已开启state*/
	protected GC576(self: Model_FireTrial, data: BaseBytes): void {
		let arg1 = data.readInt();

		let msg = 0
		if (arg1 == 0) {
			XYFrame.UIMgr.open(Vw_fireTrial_Win, { list: self.getCurHeadList() })
			if (!Game.isOnline) {
				this.state = 3;
				this.winCount = 0;
				this.openFlag = true;
				this.humanSum = 100;
			}
		} else if (arg1 == 1) {
			msg = 770
		} else if (arg1 == 2) {
			msg = 771
		} else if (arg1 == 3) {
			msg = 772
		} else if (arg1 == 4) {
			msg = 773
		} else if (arg1 == 5) {
			msg = 774
		}
		if (arg1) {
			Vw_Msg.setCfgTxt(msg)
		}
	}

	/**577  检查状态改变 */
	public CG577(): void {
		if (Game.isOnline) {
			var bates = this.getBytes();
			this.sendCmd(577, bates);
		} else {
			let state = this.state;
			let endTime = this.endTime;
			let humanSum = this.humanSum;
			let winCount = this.winCount;
			if ((state == 1 && endTime < Game.Model.global.getSrvTm())) {
				if (winCount >= this.maxWinCount) {
					// 需要结算
					let gainCoin = Math.floor(10000 / 76);
					// 发放金币
					Game.Model.bag.simulateAddGood(0, [[EnumKey.Gold, 0, gainCoin]]);
				}
				this.state = 3;
				this.winCount = 0;
				this.openFlag = true;
			} else if (state == 2 && endTime < Game.Model.global.getSrvTm()) {
				this.state = 0;
				this.endTime = 0;
				this.winCount = 0;
				this.openFlag = true;
			}

			this.CG578(winCount, humanSum);
		}
	}

	/**578 I-I 上期结束数据 I:连胜数winCountI:人数human*/
	protected CG578(arg1: number, arg2: number): void {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeInt(arg2);
		this.simulateCmd(578, bates);
	}

	/**578 I-I 上期结束数据 I:连胜数winCountI:人数human*/
	protected GC578(self: Model_FireTrial, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readInt();

		self.checkTime()
		if (XYFrame.UIMgr.isOpen(Vw_Main)) {
			let vo: Fire_Trial_Pos_Data = { removeCnt: 0, curIndex: arg1, lastIndex: -1, curCnt: arg2, sumCnt: arg2 }
			XYFrame.UIMgr.open(Vw_FireTrial_Main, vo)
		}
	}
}