import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import EnumKey from "../../../DataStock/GameData/EnumKey";
import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import BaseModel from "../../../XYFrame/Network/BaseModel";
import { SocketMgr } from "../../../XYFrame/Network/SocketMgr";
import DateUtils from "../../../XYFrame/Utils/DateUtils";
import ObjectUtils from "../../../XYFrame/Utils/ObjectUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import { EnumStorageKey } from "../../EnumStorageKey";
import EnumUI from "../../EnumUI";
import Game from "../../Game";
import Vw_RewardAlert from "../Common/Vw_RewardAlert";
// import Vw_rewardAlert from "../Common/Vw_rewardAlert";
import { EnumStep } from "../Main/EnumStep";
import Vw_Msg from "../Tip/Vw_Msg";
import Vw_WarOrder from "./Vw_WarOrder";

interface Vo_WarOrder {
	/**表id */
	id: number;
	/**期数 */
	qs: number;
	/**是否已购买 */
	isBuy: number;
	/**结束时间 */
	eTm: number;
	/**进度 */
	pro: number;
	/**是否已结算进度奖励 */
	gainProgress: number;
	/**等级 */
	lv: number;
	/**经验 */
	exp: number;
	/**普通已领取列表 */
	ids1: number[];
	/**进阶已领取列表 */
	ids2: number[];
}

/**
 * Model_WarOrder
 * 战令
 */
export default class Model_WarOrder extends BaseModel {

	/**最大积分 */
	maxScore: number = 5000;

	public getStorageKey(): string {
		return EnumStorageKey.WarOrder;
	}

	public initCache() {
		let data = this.readStorage();
		// console.log("本地缓存",data);
		if (data != null && ObjectUtils.getObjType(data) == ObjectUtils.OBJECT) {
			this.cacheVo["_map"] = data;
		}
	}

	protected getStorageData(): any {
		let data = super.getStorageData();
		if (data) {
			let curActId = this.curActId;
			for (let key in data) {
				if (key.startsWith("vo_") && key != "vo_" + curActId) {
					// 不是当前期的数据，不保存本地
					delete data[key];
				}
			}
		}
		return data;
	}

	/**
	 * 登录时要上报服务器数据
	 */
	public getOfflineData(): any {
		let vo = this.getVo();
		if (vo) {
			return {
				"sid": vo.id,
				"sign": vo.qs,
				"click": this.isFirstOpen ? 1 : 0,
				"currentPeriodBuy": vo.isBuy,
				"currentOrder": {
					"id": vo.id,
					"sign": vo.qs,
					"endTime": vo.eTm,
					"progress": vo.pro,
					"level": vo.lv,
					"exp": vo.exp,
					"open": this.isFirstOpen ? 1 : 0,
					"gainSet": vo.ids1 || [],
					"buyGainSet": vo.ids2 || [],
					"gainProgress": vo.gainProgress ?? 0
				}
			}
		}
		return null;
	}

	public initAfterEnter() {
		if (!Game.isOnline) {
			// 离线模式，进入游戏， 判断结算
			this.checkSettle();
		}
	}

	/**判断是否需要离线结算奖励 */
	private checkSettle() {
		if (Game.isOnline) {
			return;
		}
		let curActId = this.curActId;
		let vo = this.getVo(curActId);
		if (!vo || vo.gainProgress == 1) return; // 没数据或已结算过
		// 判断是否过期
		let tm = vo.eTm - Game.Model.global.getSrvTm();
		let oldVo: Vo_WarOrder;
		if (tm <= 0) {
			// oldVo = vo;
			if (vo.pro > 0 || this.getNotFetchIds1(curActId) || this.getNotFetchIds2(curActId)) {
				oldVo = vo;
			}
			// curActId += 1;
			// vo = {
			// 	id: curActId,
			// 	qs: 1,
			// 	isBuy: 0,
			// 	eTm: (DateUtils.getZero(DateUtils.now() / 1000) * 1000 - DateUtils.zoneOffset() + 86400000 * ConfigUtils.getConst(EnumUI.WAR_ORDER)),
			// 	pro: 0,
			// 	lv: 0,
			// 	exp: 0,
			// 	ids1: [],
			// 	ids2: []
			// }
		}
		if (oldVo) {
			let voArr: Vo_WarOrder[] = [oldVo]; //[oldVo, vo];
			this.CG522(this.isFirstOpen ? 1 : 0, curActId, voArr);
		}
	}

	/**0点 */
	protected onZeroPoint(t: this) {
		if (!Game.isOnline) {
			t.checkSettle();
		}
	}

	//协议处理
	protected registerCmd(self: this, mgr: SocketMgr) {
		self.socket = mgr;
		//注册GC方法
		mgr.listen(520, self.GC520, self);
		mgr.listen(522, self.GC522, self);
		mgr.listen(524, self.GC524, self);
		mgr.listen(526, self.GC526, self);
		mgr.listen(528, self.GC528, self);

		XYFrame.Msg.on(EnumMsg.STAGE_PASS, self.onStagePass, self);
		XYFrame.Msg.on(EnumMsg.ZERO_POINT, self.onZeroPoint, self);
	}

	/**520 I 失败提示 I:结果：0失败 1成功 2功能未开启 3非法参数 4无奖励可领取or*/
	protected GC520(self: Model_WarOrder, data: BaseBytes): void {
		let arg1 = data.readInt();

		let textId: number
		if (arg1 == 2) {
			textId = 13;
		} else if (arg1 == 3) {
			textId = 16;
		} else if (arg1 == 4) {
			textId = 14;
		}

		if (textId) {
			Vw_Msg.setCfgTxt(textId);
		}
	}

	/**520 I 失败提示 I:结果：0失败 1成功 2功能未开启 3非法参数 4无奖励可领取or*/
	public CG520(arg1: number): void {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		this.simulateCmd(520, bates);
	}

	/**521  点击图标 */
	public CG521(): void {
		if (Game.isOnline) {
			var bates = this.getBytes();
			this.sendCmd(521, bates);
		}
	}

	/**522 I-I-[I-I-I-L-I-I-I-[I]-[I]] 面板 I:是否打开过firstI:当前idsign[I:idI:配置期数I:1已购买L:结束时间戳I:进度I:等级I:经验[I:表id]普通已领列表[I:表id]进阶已领列表]期数战令数据orderData*/
	public CG522(arg1: number, arg2: number, arg3: Vo_WarOrder[]): void {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeInt(arg2);
		var len = arg3.length;
		bates.writeShort(len);
		for (let i = 0; i < len; i++) {
			let vo = arg3[i];
			bates.writeInt(vo.id);
			bates.writeInt(vo.qs);
			bates.writeInt(vo.isBuy);
			bates.writeLong(vo.eTm);
			bates.writeInt(vo.pro);
			bates.writeInt(vo.lv);
			bates.writeInt(vo.exp);
			var len1 = vo.ids1 ? vo.ids1.length : 0;
			bates.writeShort(len1);
			for (let i = 0; i < len1; i++) {
				bates.writeInt(vo.ids1[i]);
			}
			var len1 = vo.ids2 ? vo.ids2.length : 0;
			bates.writeShort(len1);
			for (let i = 0; i < len1; i++) {
				bates.writeInt(vo.ids2[i]);
			}
		}
		this.simulateCmd(522, bates);
	}

	/**522 I-I-[I-I-I-L-I-I-I-[I]-[I]] 面板 I:是否首次打开firstI:当前id[I:idI:配置期数I:1已购买L:结束时间戳I:进度I:等级I:经验[I:表id]普通已领列表[I:表id]进阶已领列表]期数战令数据orderData*/
	protected GC522(self: Model_WarOrder, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readInt();

		self.isFirstOpen = arg1 == 1;
		self.curActId = arg2;
		let len = data.readShort();
		let openActId: number;
		for (let i = 0; i < len; i++) {
			let arg3 = data.readInt();		//actId
			let arg4 = data.readInt();		//配置期数
			let arg5 = data.readInt();		//是否已购买
			let arg6 = data.readLong();		//结束时间
			let arg7 = data.readInt();		//进度
			let arg8 = data.readInt();		//等级
			let arg9 = data.readInt();		//经验
			if (arg2 != arg3) {
				openActId = arg3;
			}

			let vo = self.getVo(arg3) || XYFrame.PoolMgr.getObj();
			vo.id = arg3;
			vo.qs = arg4;
			vo.isBuy = arg5;
			vo.eTm = arg6;
			vo.pro = arg7;
			vo.lv = arg8;
			vo.exp = arg9;

			let ids1: number[] = vo.ids1;
			if (vo.ids1) {
				ids1 = vo.ids1;
				ids1.length = 0;
			} else {
				ids1 = [];
			}

			let len1 = data.readShort();
			for (let i = 0; i < len1; i++) {
				let arg10 = data.readInt();
				ids1.push(arg10);
			}
			let ids2: number[] = vo.ids2;
			if (vo.ids2) {
				ids2 = vo.ids2;
				ids2.length = 0;
			} else {
				ids2 = [];
			}
			let len2 = data.readShort();
			for (let i = 0; i < len2; i++) {
				let arg11 = data.readInt();
				ids2.push(arg11);
			}

			vo.ids1 = ids1;
			vo.ids2 = ids2;

			self.setVo(arg3, vo);

			self.emit(EnumMsg.WAR_ORDER_UPDATE, arg3);
		}
		if (openActId) {
			// Frame.UIMgr.openByObj(Vw_WarOrder, openActId);
			Game.Model.openByObj(Vw_WarOrder, openActId);
		}
	}

	/**523 I-I-I 领取奖励 I:id（非当前id则为历史）signI:1免费2进阶typeI:id（0一键领取）id*/
	public CG523(arg1: number, arg2: number, arg3: number): void {
		if (Game.isOnline) {
			var bates = this.getBytes();
			bates.writeInt(arg1);
			bates.writeInt(arg2);
			bates.writeInt(arg3);
			this.sendCmd(523, bates);
		} else {
			if (arg1 == this.curActId) {
				this.simulateFetch(arg1, arg2, arg3);
			} else {
				// 领取上一期的奖励，需要全部领取
				let ids1 = this.getNotFetchIds1(arg1);
				let ids2 = this.getNotFetchIds2(arg1);
				// 发奖励进背包
				let temp: number[][];
				if (ids1) {
					for (let id of ids1) {
						let cfg = ConfigData.getZl_104(id);
						if (cfg && cfg.free) {
							temp = temp || [];
							temp.push(...cfg.free);
						}
					}
				}
				if (ids2) {
					for (let id of ids2) {
						let cfg = ConfigData.getZl_104(id);
						if (cfg && cfg.advance) {
							temp = temp || [];
							temp.push(...cfg.advance);
						}
					}
				}
				let vo = this.getVo(arg1);
				if (vo && vo.pro) {
					let val = Math.min(this.maxScore, (vo.pro / 10) * 100);
					temp = temp || [];
					temp.push([EnumKey.Gold, 0, val]);
				}
				if (temp) {
					// 发奖励进背包
					Game.Model.bag.simulateAddGood(0, temp);
				}
				vo.gainProgress = 1; // 设置结算状态
				this.CG524(arg1, ids1, ids2);
			}
		}
	}

	/**524 I-[I]-[I] 领取奖励 I:idid[I:普通奖励id]普通领列表gainArr[I:进阶奖励id]进阶领列表buyGainArr*/
	public CG524(arg1: number, arg2: number[], arg3: number[]): void {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		var len = arg2 ? arg2.length : 0;
		bates.writeShort(len);
		for (let i = 0; i < len; i++) {
			bates.writeInt(arg2[i]);
		}
		var len = arg3 ? arg3.length : 0;
		bates.writeShort(len);
		for (let i = 0; i < len; i++) {
			bates.writeInt(arg3[i]);
		}
		this.simulateCmd(524, bates);
	}

	/**524 I-[I]-[I] 领取奖励 I:id [I:普通奖励id]普通已领列表gainArr[I:进阶奖励id]进阶已领列表buyGainArr*/
	protected GC524(self: Model_WarOrder, data: BaseBytes): void {
		let arg1 = data.readInt();	//活动id
		let vo = self.getVo(arg1);
		let len = data.readShort();
		// 往期奖励
		// let jlMap:{[key: string]: number[]} = arg1 != self.curQs ? {} : null;
		let jlMap: { [key: string]: number[] } = arg1 != self.curActId ? XYFrame.PoolMgr.getObj() : null;
		let showGoldEff = jlMap != null && vo && vo.pro > 0;
		let temp: number[][];
		let hasGoldFun = (itemArr: number[][]) => {
			if (!itemArr || itemArr.length < 1) return false;
			for (let arr of itemArr) {
				if (arr[0] == EnumKey.Gold) {
					return true;
				}
			}
			return false;
		}
		for (let i = 0; i < len; i++) {
			let arg2 = data.readInt();
			if (vo && vo.ids1 && vo.ids1.indexOf(arg2) == -1) {
				vo.ids1.push(arg2);
			}
			temp = null;
			if (jlMap) {
				let cfg = ConfigData.getZl_104(arg2);
				if (cfg && cfg.free) {
					temp = cfg.free;
					for (let jl of temp) {
						if (jlMap[jl[0] + "_" + jl[1]]) {
							jlMap[jl[0] + "_" + jl[1]][2] += jl[2];
						} else {
							jlMap[jl[0] + "_" + jl[1]] = [jl[0], jl[1], jl[2]];
						}
					}
				}
			}
			if (!showGoldEff) {
				let cfg = ConfigData.getZl_104(arg2);
				if (cfg && cfg.free) {
					showGoldEff = hasGoldFun(cfg.free);
				}
			}
		}
		let len2 = data.readShort();
		for (let i = 0; i < len2; i++) {
			let arg3 = data.readInt();
			if (vo && vo.ids2 && vo.ids2.indexOf(arg3) == -1) {
				vo.ids2.push(arg3);
			}
			if (jlMap) {
				let cfg = ConfigData.getZl_104(arg3);
				if (cfg && cfg.advance) {
					// jlMap.push(...ConfigUtils.splitStr(cfg.advance, 2));
					temp = cfg.advance;
					for (let jl of temp) {
						if (jlMap[jl[0] + "_" + jl[1]]) {
							jlMap[jl[0] + "_" + jl[1]][2] += jl[2];
						} else {
							jlMap[jl[0] + "_" + jl[1]] = [jl[0], jl[1], jl[2]];
						}
					}
				}
			}
			if (!showGoldEff) {
				let cfg = ConfigData.getZl_104(arg3);
				if (cfg && cfg.advance) {
					showGoldEff = hasGoldFun(cfg.advance);
				}
			}
		}
		self.emit(EnumMsg.WAR_ORDER_UPDATE, arg1);

		if (showGoldEff) {
			self.emit(EnumMsg.WAR_ORDER_GET_GOLD);
		}

		if (jlMap) {
			let val = Math.min(self.maxScore, (vo.pro / 10) * 100);
			if (jlMap[EnumKey.Gold + "_0"]) {
				jlMap[EnumKey.Gold + "_0"][2] += val;
			} else {
				jlMap[EnumKey.Gold + "_0"] = [EnumKey.Gold, 0, val];
			}
			let jlArr: number[][] = [];
			for (let key in jlMap) {
				jlArr.push(jlMap[key]);
			}
			XYFrame.UIMgr.open(Vw_RewardAlert, { list: jlArr });
			XYFrame.UIMgr.close(Vw_WarOrder);
		}
		self.saveStorage();
	}

	/**526 I-I-L 登录或者新开启战令推送 I:ididI:配置期数signL:结束时间endTime*/
	protected GC526(self: Model_WarOrder, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readInt();
		let arg3 = data.readLong();
	}

	/**528 I-I-I-I-I 更新进度 I:更新idsignI:是否需要openopenI:进度progressI:等级levelI:当前经验exp*/
	public CG528(arg1: number, arg2: number, arg3: number, arg4: number, arg5: number): void {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeInt(arg2);
		bates.writeInt(arg3);
		bates.writeInt(arg4);
		bates.writeInt(arg5);
		this.simulateCmd(528, bates);
	}

	/**528 I-I-I-I-I 更新进度 I:更新idsignI:是否需要openopenI:进度progressI:等级levelI:当前经验exp*/
	protected GC528(self: Model_WarOrder, data: BaseBytes): void {
		let arg1 = data.readInt();	// actId
		let arg2 = data.readInt();	// 是否需要open
		let arg3 = data.readInt();	// 进度
		let arg4 = data.readInt();  // 等级
		let arg5 = data.readInt();  // 当前经验

		let num: number = arg5; // 钥匙数量

		let vo = self.getVo(arg1);
		if (vo) {
			let oldPro = vo.pro;
			vo.pro = arg3;
			vo.lv = arg4;
			vo.exp = arg5;
			num = arg3 - oldPro;
		}
		self.showOpenTag = arg2 == 1;
		if (arg2 == 1) {
			Game.StepMgr.removeStepByType(EnumStep.warOrderAni);
			Game.StepMgr.addStep(EnumStep.warOrderAni, null, [num], self)
		}
		self.emit(EnumMsg.WAR_ORDER_UPDATE, arg1);
	}

	get isFirstOpen(): boolean {
		return this.getCacheBool("isFirstOpen");
	}

	set isFirstOpen(val: boolean) {
		this.setCacheBool("isFirstOpen", val);
	}

	/**获取活动期数 */
	getQsById(actId: number) {
		let vo = this.getVo(actId);
		return vo ? vo.qs : 1;
	}

	/**当前活动id */
	get curActId(): number {
		return this.getCacheNum("curId");
	}

	/**当前活动id */
	set curActId(val: number) {
		this.setCacheNum("curId", val);
	}

	getVo(actId?: number): Vo_WarOrder {
		if (actId == null) {
			actId = this.curActId;
		}
		return <Vo_WarOrder>this.getCacheMap("vo_" + actId);
	}

	setVo(actId: number, vo: Vo_WarOrder) {
		this.setCacheMap("vo_" + actId, vo);
	}

	clearVo(actId: number) {
		let vo = this.getVo(actId);
		if (vo) {
			XYFrame.PoolMgr.releaseObj(vo);
			this.setCacheMap("vo_" + actId, null);
		}
	}

	/**是否已领取奖励 */
	isFetched(actId: number, type: number, id: number): boolean {
		let vo = this.getVo(actId);
		if (vo) {
			let ids = type == 1 ? vo.ids1 : vo.ids2;
			if (ids && ids.indexOf(id) != -1) {
				return true;
			}
		}
		return false;
	}


	/**是否可领取 */
	isCanFetch(actId: number, type: number, id: number): boolean {
		let vo = this.getVo(actId);
		if (vo) {
			if (type == 2 && !vo.isBuy) { // 没有购买进阶版
				return false;
			}
			let lv = vo.lv;
			let cfg = ConfigData.getZl_104(id);
			if (lv < cfg.lv) return false;
			let ids = type == 1 ? vo.ids1 : vo.ids2;
			if (!ids || ids.indexOf(id) == -1) {
				return true;
			}
		}
		return false;
	}

	/**获取未领奖的id列表 */
	getNotFetchIds1(actId: number): number[] {
		let vo = this.getVo(actId);
		if (vo) {
			let ids = vo.ids1;
			let res: number[];
			let lv = vo.lv;
			let cfgList = this.getCfgList(vo.qs);
			let cfg: Struct_zl_104;
			for (let i = 0; i < cfgList.length; i++) {
				cfg = cfgList[i];
				if (cfg.lv > lv) {
					break;
				}
				if (ids == null || ids.indexOf(cfg.id) == -1) {
					if (!res) res = [];
					res.push(cfg.id);
				}
			}
			return res;
		}
		return null;
	}

	/**获取未领奖的进阶奖励id列表 */
	getNotFetchIds2(actId: number): number[] {
		let vo = this.getVo(actId);
		if (vo && !!vo.isBuy) {
			let ids = vo.ids2;
			let res: number[];
			let lv = vo.lv;
			let cfgList = this.getCfgList(vo.qs);
			let cfg: Struct_zl_104;
			for (let i = 0; i < cfgList.length; i++) {
				cfg = cfgList[i];
				if (cfg.lv > lv) {
					break;
				}
				if (ids == null || ids.indexOf(cfg.id) == -1) {
					if (!res) res = [];
					res.push(cfg.id);
				}
			}
			return res;
		}
		return null;
	}

	getCfgList(qs: number): Struct_zl_104[] {
		let map = ConfigData.zl_104;
		let list = [];
		let cfg: Struct_zl_104;
		for (let key in map) {
			cfg = ConfigData.getZl_104(key);
			if (cfg.type == 1 && cfg.Issue == qs) {
				list.push(cfg);
			}
		}
		list.sort((a, b) => {
			return a.lv - b.lv;
		});
		return list;
	}

	/**主界面是否显示Open标识 */
	get showOpenTag(): boolean {
		return this.getCacheBool("showOpenTag");
	}

	/**主界面是否显示Open标识 */
	set showOpenTag(val: boolean) {
		this.setCacheBool("showOpenTag", val);
	}

	/**当前期战令是否购买进阶档 */
	get isBuy(): boolean {
		let vo = this.getVo();
		return vo ? !!vo.isBuy : false;
	}

	// toBuy(chargeid: number): void {
	// 	if (Game.Model.global.adRechargeIsOpen()) {
	// 		//看广告
	// 		Game.Model.advert.showAd(1, chargeid)
	// 	} else {
	// 		Game.Model.recharge.CG273(chargeid, "");
	// 	}
	// }

	//------------------------------------- 模拟服务端 start -------------------------------------
	/**通过关卡 */
	private onStagePass(_t: this, gq: number) {
		if (Game.isOnline || !ConfigData.stage_001[gq]) {
			return;
		}
		let cfg = ConfigData.getStage_001(gq);
		let add = cfg.key;
		let vo = _t.getVo();
		if (vo) {
			let showOpenTag = _t.showOpenTag;
			let pro = vo.pro + add;
			let exp = vo.exp + add;
			let lv = vo.lv;
			let cfgLv = ConfigData.getBattlelevel_104(lv);
			if (exp >= cfgLv.exp) {
				// 升级
				lv = lv + Math.floor(exp / cfgLv.exp);
				exp = exp % cfgLv.exp;
				showOpenTag = true;
			}
			_t.CG528(vo.id, showOpenTag ? 1 : 0, pro, lv, exp);
		}
	}

	/**
	 * 
	 * @param actId 活动id
	 * @param type 类型 1免费2进阶
	 * @param id 奖励id
	 */
	private simulateFetch(actId: number, type: number, id: number) {
		let vo = this.getVo(actId);
		if (vo) {
			if (!ConfigData.zl_104[id]) return;
			let cfg = ConfigData.getZl_104(id);
			if (type == 1) {
				let ids = vo.ids1;
				if (ids == null || ids.indexOf(id) == -1) {
					ids = ids || [];
					ids.push(id);
					// 进背包
					Game.Model.bag.simulateAddGood(0, cfg.free);
					this.CG524(actId, ids, null);
				} else {
					this.CG520(4);
				}
			} else {
				if (vo.isBuy) {
					let ids = vo.ids2;
					if (ids == null || ids.indexOf(id) == -1) {
						ids = ids || [];
						ids.push(id);
						// 进背包
						Game.Model.bag.simulateAddGood(0, cfg.advance);
						this.CG524(actId, null, ids);
					} else {
						this.CG520(4);
					}
				} else {
					this.CG520(4);
				}
			}
		}
	}
	//------------------------------------- 模拟服务端 end ---------------------------------------
}