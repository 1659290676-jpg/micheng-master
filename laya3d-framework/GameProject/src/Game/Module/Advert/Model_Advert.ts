import Vw_Msg from "../Tip/Vw_Msg";
import Game from "../../Game";
import { EnumBridgeResult } from "../../../Bridge/EnumBridgeResult";
import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import BaseModel from "../../../XYFrame/Network/BaseModel";
import { SocketMgr } from "../../../XYFrame/Network/SocketMgr";
import { EnumMsg } from "../../EnumMsg";
import ObjectUtils from "../../../XYFrame/Utils/ObjectUtils";
import { EnumStorageKey } from "../../EnumStorageKey";
import Vw_Error from "../Role/Vw_Error";
import { Enum_Advert, Enum_Advert_Opr } from "./Enum_Advert";

/**
 * Model_Advert
 * 广告
 */
export default class Model_Advert extends BaseModel {

	constructor(socket: SocketMgr) {
		super(socket);

		let t = this;
		t.typeFunMap = {
			[Enum_Advert.StoreBuy]: t._getShopAdRefId,		//	获取商品的看广告表id
			[Enum_Advert.StageRd]: () => 15, // 结算奖励
			[Enum_Advert.Stamina]: () => 13, // 补体力
			[Enum_Advert.ForcedStage]: () => 14, // 强制关卡广告
		}
	}

	public getStorageKey(): string {
		return EnumStorageKey.Advert;
	}

	//协议处理
	protected registerCmd(t: this, mgr: SocketMgr) {
		t.socket = mgr;
		//注册GC方法
		mgr.listen(412, t.GC412, t);
		mgr.listen(414, t.GC414, t);
		mgr.listen(416, t.GC416, t);
	}
	/**正在看的广告类型 */
	protected watchIngType: number;
	private _click_tm: number;
	/** 游戏中的广告类型映射对应模块的id */
	private typeFunMap: { [key: number]: (sid: number) => number };

	/**
	 * 获取商品的看广告表id
	 * @param sid 商品id
	 */
	private _getShopAdRefId(sid: number): number {
		let cfg = ConfigData.getRecharge_011(sid);
		if (cfg) {
			return cfg.adId;
		}
		return 0;
	}

	/**
	 * 获取广告uid
	 * @param refId 看广告表id
	 * @returns 广告平台uid 
	 */
	public getAdUID(refId: number) {
		let cfg = ConfigData.getKgg_012(refId);
		if (cfg) {
			let browser = Laya.Browser;
			// TODO 判断平台
			if (browser.onWXMiniGame) {
				return cfg.aid1; // 测试
			} else if (browser.onTTMiniGame) {
				return cfg.aid2;
			}
			return cfg.aid1;
		}
		return "";
	}

	/**充值id观看广告次数 */
	private get rechargeAdCnt(): Record<number, number> {
		let map = <Record<number, number>>this.getCacheMap("rechargeAdCnt", true);
		// if(!map) {
		// 	map = {};//XYFrame.PoolMgr.getObj();
		// 	this.rechargeAdCnt = map;
		// }
		return map;
	}

	// private set rechargeAdCnt(map: Record<number, number>) {
	// 	this.setCacheMap("rechargeAdCnt", map);
	// }

	/**看广告 type:1商店购买2结算奖励3补体力4强制关卡广告*/
	public showAd(type: Enum_Advert, id: number = 0) {
		let _t = this;
		let now = Laya.timer.currTimer;
		if (_t.watchIngType) {
			if (_t._click_tm && now - _t._click_tm < 2000) {
				Vw_Msg.setCfgTxt(189);
				return;
			}
		}
		_t._click_tm = now;
		let adUnitId = "";
		let fun = _t.typeFunMap[type];
		if (fun) {
			adUnitId = _t.getAdUID(fun(id));
		}
		if (type == Enum_Advert.ForcedStage && Game.Model.hero.vo.isAdUnlock) {
			// 免广告
			_t.CG411(Enum_Advert_Opr.Free, type, id, adUnitId);
			return;
		}

		if (!Game.isOnline) {
			Vw_Error.open(3);
			return;
		}

		_t.CG411(Enum_Advert_Opr.Click, type, id, adUnitId);

		let method = type == Enum_Advert.ForcedStage ? "intersititialAd" : "rewardedVideoAd";
		Game.Bridge.invokeMethod({
			method: method,
			data: { adUnitId: adUnitId },
			call: (res) => {
				_t.watchIngType = null;
				// 广告结束
				if (res && res.code == EnumBridgeResult.SUCCESS) {
					// 成功
					_t.CG411(Enum_Advert_Opr.End, type, id, adUnitId);
				} else {
					// 失败
					_t.CG411(Enum_Advert_Opr.Interrupt, type, id, adUnitId);
				}
			},
			other: () => {
				// 开始播放广告
				_t.CG411(Enum_Advert_Opr.Start, type, id, adUnitId);
			}
		})
	}

	/**根据充值id获取已观看次数 */
	public getWatchCntByRechargeId(rechargeId: number) {
		return this.rechargeAdCnt[rechargeId] || 0;
	}

	/**是否正在观看广告 */
	public isWatch() {
		return this.watchIngType > 0;
	}

	/**411 I-I-I-U 看广告 I:1点击图标2开始看3看完4中断5免广告看I:类型1商店购买2结算奖励补体力I:idU:广告id*/
	public CG411(arg1: number, arg2: number, arg3: number, arg4: string): void {
		if (Game.isNetEnter) {
			var bates = this.getBytes();
			bates.writeInt(arg1);
			bates.writeInt(arg2);
			bates.writeInt(arg3);
			bates.writeUTF(arg4);
			this.sendCmd(411, bates);
		} else {
			Vw_Error.open(3);
		}
	}

	/**412 I-I-I 看广告返回 I:操作I:类型I:id*/
	protected CG412(arg1: number, arg2: number, arg3: number) {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeInt(arg2);
		bates.writeInt(arg3);
		this.simulateCmd(412, bates);
	}

	/**412 I-I-I 看广告返回 I:操作I:类型I:id*/
	protected GC412(t: Model_Advert, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readInt();
		let arg3 = data.readInt();
		t.watchIngType = arg1 == Enum_Advert_Opr.Click ? arg2 : 0;
		t.emit(EnumMsg.Advert_Result, arg1, arg2);
	}

	/**414 [I-I] 观看数据 [I:充值idI:看广告次数]观看数据data*/
	protected GC414(t: Model_Advert, data: BaseBytes): void {
		let len = data.readShort();
		let map = t.rechargeAdCnt;
		ObjectUtils.cleanObj(map);
		for (let i = 0; i < len; i++) {
			let arg1 = data.readInt();
			let arg2 = data.readInt();
			map[arg1] = arg2;
		}
		t.saveStorage();
	}

	/**416 I-I 更新观看次数 I:充值ididI:观看次数num*/
	protected CG416(arg1: number, arg2: number): void {
		let bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeInt(arg2);
		this.simulateCmd(416, bates);
	}

	/**416 I-I 更新观看次数 I:充值ididI:观看次数num*/
	protected GC416(t: Model_Advert, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readInt();

		t.rechargeAdCnt[arg1] = arg2;
		t.saveStorage();
		t.emit(EnumMsg.RECHARGE_AD_CNT)
	}

	//------------------------------------- 模拟服务端 start -------------------------------------
	protected simulateAdShopItem(rechargeId: number): void {
		// 商店购买
		let temp = ConfigData.recharge_011[rechargeId];
		if (!temp) return;
		let rechargeCfg = ConfigData.getRecharge_011(rechargeId);
		if (!rechargeCfg.adv) return;
		let shopId = rechargeCfg.g;
		let cfg = ConfigData.getShop_101(shopId);
		if (!cfg) return;
		if (!!cfg.goldPrice) { // 货币购买
			Game.Model.shop.simulateBuyShopItem(shopId);
		} else {
			//直购，增加该商品的看广告进度
			let max = rechargeCfg.adv;
			let count = this.getWatchCntByRechargeId(cfg.rechargeId);
			if (count + 1 >= max) {
				// 发放商品奖励
				Game.Model.shop.simulateSendShopItem(shopId, 1, 2);
				this.CG416(cfg.rechargeId, (count + 1) % max);
			} else {
				this.CG416(cfg.rechargeId, count + 1);
			}
		}
	}
	//------------------------------------- 模拟服务端 end ---------------------------------------

}