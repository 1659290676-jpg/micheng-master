import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_daoju_102 from "../../../DataStock/ConfigData/Ts/Config_daoju_102";
import Config_streakRank_106 from "../../../DataStock/ConfigData/Ts/Config_streakRank_106";
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
import Game from "../../Game";
import { EnumStep } from "../Main/EnumStep";
import Vw_Arena from "./Vw_Arena";
import Vw_Arena_Again from "./Vw_Arena_Again";
import Vw_Arena_Reward from "./Vw_Arena_Reward";

/**排行榜数据 */
export interface Rank_Data {
	/**玩家id */
	playerId: number
	/**排名 */
	rank: number
	/**头像id */
	avatarId: number
	/**头像url */
	avatarUrl: string
	/**名称 */
	name: string
	/**积分 */
	score: number
}

/**
 * Model_Arena
 * 竞技场
 */
export default class Model_Arena extends BaseModel {

	public getStorageKey(): string {
		return EnumStorageKey.Arena;
	}

	public initCache() {
		let data = this.readStorage();
		if (data != null && ObjectUtils.getObjType(data) == ObjectUtils.OBJECT) {
			this.cacheVo["_map"] = data;
		}
	}

	/** 上一期已结算完成的活动起始 0 点毫秒时间戳 */
	public get settleTime(): number {
		return this.getCacheNum("settleTime") || 0;
	}

	/** 上一期已结算完成的活动起始 0 点毫秒时间戳 */
	public set settleTime(value: number) {
		this.setCacheNum("settleTime", value);
	}

	/** 待发放结算名次 */
	public get pendingRank(): number {
		return this.getCacheNum("pendingRank") || 0;
	}
	/** 待发放结算名次 */
	public set pendingRank(value: number) {
		this.setCacheNum("pendingRank", value);
	}

	/**开始时间 */
	public get startTime(): number {
		return this.getCacheNum("startTime") || 0;
	}

	/**开始时间 */
	public set startTime(value: number) {
		this.setCacheNum("startTime", value);
	}

	/**结束时间 */
	public get endTime(): number {
		return this.getCacheNum("endTime") || 0;
	}
	/**结束时间 */
	public set endTime(value: number) {
		this.setCacheNum("endTime", value);
	}

	/**连胜数 */
	public get continueWin(): number {
		return this.getCacheNum("continueWin") || 0;
	}

	/**连胜数 */
	public set continueWin(value: number) {
		this.setCacheNum("continueWin", value);
	}

	/**上一次的连胜数 */
	public get lastContinueWin(): number {
		return this.getCacheNum("lastContinueWin") || 0;
	}

	/**上一次的连胜数 */
	public set lastContinueWin(value: number) {
		this.setCacheNum("lastContinueWin", value);
	}

	/**标签 */
	public get tab(): number { return this.getTabIdxByWinNum(this.continueWin); }
	/**上一次的标签 */
	public get lastTab(): number { return this.getTabIdxByWinNum(this.lastContinueWin); }
	/**根据连胜数获取标签下标 */
	public getTabIdxByWinNum(winNum: number): number {
		if (winNum <= 0) return 0;
		else if (winNum >= 1 && winNum <= 4) return winNum;
		else return 5;
	}
	/**连胜积分 */
	public get continueScore(): number {
		return this.getCacheNum("continueScore") || 0;
	}

	/**连胜积分 */
	public set continueScore(value: number) {
		this.setCacheNum("continueScore", value);
	}

	/**排名 */
	public get rank(): number {
		return this.getCacheNum("rank") || 0;
	}

	/**排名 */
	public set rank(value: number) {
		this.setCacheNum("rank", value);
	}

	/**结算排名 */
	public retRank: number;

	/**排行榜数据 */
	protected get rankItemList(): Rank_Data[] {
		return this.getCacheArr("rankItemList") || []
	}

	/**排行榜数据 */
	protected set rankItemList(value: Rank_Data[]) {
		this.setCacheArr("rankItemList", value)
	}

	/**档位 */
	public gearList: number[] = [1, 2, 3, 5, 10]

	public isGuide = false

	// private _showVwArena: Function;

	/**
	 * 打开竞技场
	 * @param state 0当前1结算
	 */
	private openArena(state: number, list: Rank_Data[]) {
		if (state == 1) {
			// 结算
			// if (Game.isNetEnter) {
			// 	Frame.UIMgr.openByObj(Vw_Arena, { list: list, isEnd: true })
			// } else {
			// 	this._showVwArena = () => {
			// 		Frame.Timer.delay(() => {
			// 			Frame.UIMgr.openByObj(Vw_Arena, { list: list, isEnd: true })
			// 		}, null, 500);
			// 	}
			// }
			Game.Model.openByObj(Vw_Arena, { list: list, isEnd: true })
		} else {
			if (this.continueScore > 0) {
				// 进行中
				Game.Model.openByObj(Vw_Arena, { list: list, isEnd: false })
			} else {
				// 未开始
				Game.Model.openByObj(Vw_Arena_Again);
			}
		}

		// Frame.UIMgr.openByObj(Vw_Arena_Reward, 1)
	}

	public isShowGqExitTip(): boolean {
		if (this.tab >= 1) {
			return true;
		}
		return false;
	}

	/**根据表id获取图标名字 */
	public getIconbyId(id: number) {
		let cfg = ConfigData.streakRank_106[id]
		if (!cfg) return ""
		let c = ConfigData.getStreakRank_106(id);
		let res = c.icon;
		if (!res) {
			if (c.reward) {
				let jl: number[][] = ConfigUtils.splitStr(c.reward, 2);
				let a = jl[0];
				let type = a[0], id = a[1];
				if (type == EnumKey.ITEM) {
					let cdj = ConfigData.getDaoju_102(id);
					if (cdj.ic) {
						res = cdj.ic + "";
					}
				}
			}
		}
		if (res) {
			return ResPath.getAtlasImgPath(EnumAltas.Item, res);
		}
		return "";
	}

	/**根据表id获取图标名字 */
	public getNumbyId(id: number) {
		let cfg = ConfigData.streakRank_106[id]
		if (!cfg) return 1;
		let c = ConfigData.getStreakRank_106(id);
		if (!c.icon) {
			if (c.reward) {
				let jl: number[][] = ConfigUtils.splitStr(c.reward, 2);
				let a = jl[0];
				return a[2];
			}
		}
		return 1;
	}

	/**获取剩余时间 */
	public getEndTime() {
		let t = this
		let time = t.endTime - Game.Model.global.getSrvTm()
		if (time < 0) return 0
		return time
	}

	/**根据下标获取档位 */
	public getGearByIndex(index: number) {
		let gear = this.gearList[index - 1]
		if (gear) return gear
		return 1
	}

	public clear(): void {
		let t = this
		t.isGuide = false
		// t._showVwArena = null;
	}

	/**
	 * 登录时要上报服务器数据
	 */
	public getOfflineData(): any {
		let t = this;
		let pendingRank = t.pendingRank;
		let settleTime = t.settleTime;
		let continueWin = t.continueWin;
		let continueScore = t.continueScore;
		return {
			continueWin: continueWin,
			continueScore: continueScore,
			pendingRank: pendingRank,
			settleTime: settleTime,
		}
	}

	public initAfterEnter() {
		if (!Game.isOnline) {
			this.checkNewSeason();
		}
	}

	// public initAfterEnter(): void {
	// 	super.initAfterEnter();
	// 	if (this._showVwArena) {
	// 		this._showVwArena();
	// 		this._showVwArena = null;
	// 	}
	// }

	public checkNewSeason(): void {
		if (!Game.isOnline) {
			let t = this;
			let etm = t.getEndTime();
			if (etm <= 0) {
				// 已结束，判断是否需要结算弹窗
				let sTm = t.startTime;
				let settleTime = t.settleTime;
				if (sTm != settleTime) {
					let rank = t.rank; // 名次
					t.settleTime = sTm;
					t.pendingRank = rank;

					t.CG552(t.continueWin, 1, t.continueScore, t.rankItemList);
					let cfg = ConfigData.getStreakRank_106(rank);
					let rewards: number[][];
					if (cfg && cfg.reward) {
						rewards = ConfigUtils.splitStr(cfg.reward, 2);
					}
					t.CG556(rank, rewards);
				}
				// 新赛季
				// sTm = DateUtils.getZero(DateUtils.now()) - DateUtils.zoneOffset(); // 赛季开始时间
				// t.CG524(sTm, 0, 0);
			}
		}
	}

	//协议处理
	protected registerCmd(self: this, mgr: SocketMgr) {
		self.socket = mgr;
		//注册GC方法
		mgr.listen(552, self.GC552, self);
		mgr.listen(554, self.GC554, self);
		mgr.listen(556, self.GC556, self);

		XYFrame.Msg.on(EnumMsg.STAGE_PASS, self.onStagePass, self);
		XYFrame.Msg.on(EnumMsg.STAGE_RESULT, self.onStageResult, self);
		XYFrame.Msg.on(EnumMsg.ZERO_POINT, self.onZeroPoint, self);
	}

	/**0点结算 */
	private onZeroPoint(t: this) {
		if (!Game.isOnline) {
			let etm = t.getEndTime();
			if (etm <= 0 && t.settleTime != t.startTime) { // 防止重复结算
				// 已结束，需要结算弹窗
				let rank = t.rank; // 名次
				let cfg = ConfigData.getStreakRank_106(rank);
				if (cfg && cfg.reward) {
					let rewards: number[][] = ConfigUtils.splitStr(cfg.reward, 2);
					// 奖励进背包
					Game.Model.bag.simulateAddGood(0, rewards);
				}
			}
			t.checkNewSeason();
		}
	}

	private onStageResult(t: this, res: number) {
		if (Game.isOnline || t.getEndTime() <= 0) return;
		// 清理连胜数
		if (res != 4) {
			t.CG554(t.startTime, 0, t.rank);
		}
	}

	private onStagePass(t: this, gq: number) {
		// 只处理离线状态
		if (Game.isOnline || !ConfigData.stage_001[gq]) return;
		if (t.getEndTime() <= 0) { // 已结束了
			return;
		}
		let cfg = ConfigData.getStage_001(gq);
		let add = cfg.shield * t.getGearByIndex(t.tab);
		let continueScore = t.continueScore + add;
		let continueWin = t.continueWin + 1;
		let itemList = t.rankItemList;
		let rank = 1;
		let item: Rank_Data;
		let mineId = Game.Model.hero.vo.id;
		for (let i = 0, len = itemList.length; i < len; i++) {
			item = itemList[i];
			if (item.playerId == mineId) {
				item.score = continueScore;
				break;
			}
			item = null;
		}
		if (!item) {
			item = {
				playerId: mineId,
				avatarId: Game.Model.hero.vo.headId,
				avatarUrl: Game.Bridge.userInfo?.avatarUrl ?? "",
				name: Game.Model.hero.vo.name,
				score: continueScore,
				rank: rank
			}
			itemList.push(item);
		}
		itemList.sort((a, b) => b.score - a.score);
		for (let i = 0, len = itemList.length; i < len; i++) {
			item = itemList[i];
			item.rank = i + 1;
			if (item.playerId == mineId) {
				rank = item.rank;
			}
		}
		t.rankItemList = itemList;
		t.continueScore = continueScore;
		t.CG554(t.startTime, continueWin, rank);
	}

	/**551  打开面板 */
	public CG551(): void {
		if (Game.isOnline) {
			var bates = this.getBytes();
			this.sendCmd(551, bates);
		} else {
			if (this.getEndTime() > 0) {
				// let sTm = this.startTime;
				let continueWin = this.continueWin;
				let continueScore = this.continueScore;
				let rankItemList = this.rankItemList;
				this.CG552(continueWin, 0, continueScore, rankItemList);
			}
		}
	}

	/**552 I-I-I-[L-I-U-U-I] 排行榜数据 I:连胜数I:0当前1结算settleI:当前积分poin[L:idI:头像idU:头像urlU:名称I:积分]排行数据rank*/
	protected CG552(arg1: number, arg2: number, arg3: number, arg4: Rank_Data[]): void {
		var bates = this.getBytes();
		// bates.writeLong(arg1);
		bates.writeInt(arg1);
		bates.writeInt(arg2);
		bates.writeInt(arg3);
		bates.writeShort(arg4.length);
		for (let i = 0; i < arg4.length; i++) {
			bates.writeLong(arg4[i].playerId);
			bates.writeInt(arg4[i].avatarId);
			bates.writeUTF(arg4[i].avatarUrl);
			bates.writeUTF(arg4[i].name);
			bates.writeInt(arg4[i].score);
		}
		this.simulateCmd(552, bates);
	}

	/**552 I-I-I-[L-I-U-U-I] 排行榜数据 I:连胜数I:0当前1结算settleI:当前积分poin[L:idI:头像idU:头像urlU:名称I:积分]排行数据rank*/
	protected GC552(self: Model_Arena, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg222 = data.readInt();
		let arg333 = data.readInt();
		let len = data.readShort();
		let list: Rank_Data[] = []
		for (let i = 0; i < len; i++) {
			let arg2 = data.readLong();
			let arg3 = data.readInt();
			let arg4 = data.readUTF();
			let arg5 = data.readUTF();
			let arg6 = data.readInt();
			list.push({
				playerId: arg2,
				avatarId: arg3,
				avatarUrl: arg4,
				name: arg5,
				score: arg6,
				rank: i + 1
			})
		}
		// self.notify(EnumEvent.OPEN_ARENA, list)
		// arg222 = 0
		// arg333 = 0
		self.continueScore = arg333
		self.continueWin = arg1
		self.rankItemList = list;
		self.openArena(arg222, list)
	}

	/**554 L-I-I 更新排行 L:开始时间I:连胜数I:排名rank*/
	public CG554(arg1: number, arg4: number, arg5: number): void {
		var bates = this.getBytes();
		bates.writeLong(arg1);
		bates.writeInt(arg4);
		bates.writeInt(arg5);
		this.simulateCmd(554, bates);
	}

	private isReceived554: boolean; // 是否接收过554这个协议

	/**554 L-L-I-I-I 更新排行 L:开始时间I:连胜数I:排名rank*/
	protected GC554(self: Model_Arena, data: BaseBytes): void {
		let sTm = data.readLong();
		let arg3 = data.readInt();
		let arg4 = data.readInt();

		let tab = self.getTabIdxByWinNum(arg3);
		if (self.isReceived554 && self.tab < tab) {
			// let step = {} as StepData
			Game.StepMgr.addStep(EnumStep.arenaAni, null, [self.tab, tab], self);
		}
		self.isReceived554 = true;
		self.lastContinueWin = self.continueWin;
		self.startTime = sTm;
		self.endTime = sTm + 86400000 - 1000;
		self.continueWin = arg3;
		self.rank = arg4

	}

	/**556 I-[I-I-L] 结算奖励 I:排名rank[I:物品类型I:物品idL:数量]奖励reward*/
	protected CG556(arg1: number, rewards: number[][]): void {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeShort(rewards ? rewards.length : 0);
		for (let i = 0, len = rewards ? rewards.length : 0; i < len; i++) {
			bates.writeInt(rewards[i][0]);
			bates.writeInt(rewards[i][1]);
			bates.writeLong(rewards[i][2]);
		}
		this.simulateCmd(556, bates);
	}

	/**556 I-[I-I-L] 结算奖励 I:排名rank[I:物品类型I:物品idL:数量]奖励reward*/
	protected GC556(self: Model_Arena, data: BaseBytes): void {
		let arg1 = data.readInt();
		self.retRank = arg1;
		let len = data.readShort();
		for (let i = 0; i < len; i++) {
			let arg2 = data.readInt();
			let arg3 = data.readInt();
			let arg4 = data.readLong();
		}
		if (len > 0) {
			// Frame.UIMgr.openByObj(Vw_Arena_Reward, arg1)
			Game.Model.openByObj(Vw_Arena_Reward, arg1);
		}
	}
}