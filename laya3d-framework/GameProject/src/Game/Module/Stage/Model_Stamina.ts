import ConfigUtils from "../../../DataStock/ConfigUtils";
import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import BaseModel from "../../../XYFrame/Network/BaseModel";
import { SocketMgr } from "../../../XYFrame/Network/SocketMgr";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import { EnumStorageKey } from "../../EnumStorageKey";
import EnumUI from "../../EnumUI";
import Game from "../../Game";
import Vw_Msg from "../Tip/Vw_Msg";

const enum Enum_StaminaCache {
	/** 当前体力 */
	current,
	/** 无限免费体力 */
	freeTime,
	/** 体力上限 */
	maxTime,
	/** 体力恢复时间 */
	recoverTime,
}

/**
 * Model_Stamina
 * 体力
 */
export default class Model_Stamina extends BaseModel {

	public getStorageKey(): string {
		return EnumStorageKey.Stamina;
	}

	public initCache() {
		let _t = this;
		let data = _t.readStorage();
		if (data) {
			for (let k in data) {
				let type = +k;
				let value = data[type];
				switch (type) {
					case Enum_StaminaCache.current:
						_t.setCacheNum(type, value);
						break;
					case Enum_StaminaCache.freeTime:
						_t.setCacheNum(type, value);
						break;
					case Enum_StaminaCache.maxTime:
						_t.setCacheNum(type, value);
						break;
					case Enum_StaminaCache.recoverTime:
						let time = value - Game.Model.global.getSrvTm();
						if(time > _t.getOneRecoverTime()) {// 大于一次恢复时间，则设置为一次恢复时间
							value = Game.Model.global.getSrvTm() + _t.getOneRecoverTime();
						}
						_t.setCacheNum(type, value);
						break;
				}
			}
		}
	}

	public getOfflineData(isReconnect?: boolean) {
		let _t = this;
		let d: any = {};
		d.current = _t.current;
		d.maxEndTime = _t.maxTime;
		d.recoverTime = _t.recoverTime;
		d.freeEndTime = _t.freeTime;
		return d;
	}

	/**
	 * 当前剩余的体力
	 */
	public get current() {
		return this.getCacheNum(Enum_StaminaCache.current) || 0;
	}

	/**
	 * 最大体力上限
	 */
	public get maxCount() {
		let max = ConfigUtils.getConst(EnumUI.STAMINE);
		let time = this.maxTime;
		if (time > 0 && time > Game.Model.global.getSrvTm()) {
			max = ConfigUtils.getConst(EnumUI.STAMINE, 2);
		}
		return max;
	}

	public get maxTime() {
		return this.getCacheNum(Enum_StaminaCache.maxTime);
	}

	/** 免费倒计时 */
	public get freeTime() {
		let time = this.getCacheNum(Enum_StaminaCache.freeTime);
		if (time > 0 && time > Game.Model.global.getSrvTm()) {
			return time;
		}
		return 0;
	}

	/** 下次恢复时间 */
	public get recoverTime() {
		let time = this.getCacheNum(Enum_StaminaCache.recoverTime);
		if (time > 0) {
			return time;
		}
		return 0;
	}

	/**
	 * 判断是否还有体力可玩
	 */
	public get canPlay() {
		return this.freeTime > 0 || this.current > 0;
	}

	private getOneRecoverTime() {
		return ConfigUtils.getConst(EnumUI.STAMINE, 3) * 60000;
	}

	/**
	 * 模拟扣除
	 */
	public simulationDeduce() {
		let _t = this;
		let freeTime = _t.freeTime;
		if (freeTime > 0) return true;// 有免费无限时间
		let recoverTime = _t.recoverTime;
		if (recoverTime > 0) {
			// 先计算一次
			_t._runTim(0, _t);
		}
		let current = _t.current;
		if (current > 0) {
			current--;
			let recoverTime = _t.recoverTime;
			if (recoverTime <= 0) {
				recoverTime = Game.Model.global.getSrvTm() + _t.getOneRecoverTime();
			}
			_t.CG480(current, _t.maxTime, recoverTime, _t.freeTime);
		}
	}

	/**
	 * 模拟增加免费无限体力时间
	 * @param time 增加秒数
	 */
	public simulationAddFreeTime(time: number) {
		if (!time || time <= 0) return;
		time *= 1000;
		let _t = this;
		let freeTime = _t.freeTime;
		if (!freeTime || freeTime == 0) {
			freeTime = Game.Model.global.getSrvTm() + time;
		} else {
			freeTime += time;
		}
		_t.CG480(_t.current, _t.maxTime, _t.recoverTime, freeTime);
	}

	/**
	 * 模拟增加上限体力时间
	 * @param time 增加秒数
	 */
	public simulateAddMaxTime(time: number) {
		if(!time || time <= 0) return;
		time *= 1000;
		let _t = this;
		let maxTime = _t.maxTime;
		if (!maxTime || maxTime == 0) {
			maxTime = Game.Model.global.getSrvTm() + time;
		}else{
			maxTime += time;
		}
		_t.CG480(_t.current, maxTime, _t.recoverTime, _t.freeTime);
	}


	/**
	 * 重新开始是否提示无限次数
	 * @returns 
	 */
	public isShowGqExitTip() {
		return this.freeTime > Game.Model.global.getSrvTm();
	}

	public initAfterEnter() {
		let _t = this;
		if (Game.isOnline) {
			if (_t._timerId) {
				XYFrame.Timer.clearById(_t._timerId);
				_t._timerId = null;
			}
			return;
		}
		// 需要定时所有时间
		_t._onDealTime();
	}

	public onOfflineHandle() {
		if (Game.Model.hero.isOfflinePlay) {
			this._onDealTime();
		}
	}

	private _timerId: string;
	/** 处理时间 */
	protected _onDealTime() {
		let _t = this;
		let maxTime = _t.maxTime;
		let freeTime = _t.getCacheNum(Enum_StaminaCache.freeTime);
		let recoverTime = _t.getCacheNum(Enum_StaminaCache.recoverTime);
		if (maxTime > 0 || freeTime > 0 || recoverTime > 0) {
			if (!_t._timerId) {
				_t._timerId = XYFrame.Timer.loop(1000, _t._runTim, _t);
			}
			_t._runTim(0, _t);
		} else {
			if (_t._timerId) {
				XYFrame.Timer.clearById(_t._timerId);
				_t._timerId = null;
			}
		}
	}

	private _runTim(dt: number, _t: this) {
		let now = Game.Model.global.getSrvTm();
		let maxTime = _t.maxTime;
		let freeTime = _t.getCacheNum(Enum_StaminaCache.freeTime);
		let recoverTime = _t.getCacheNum(Enum_StaminaCache.recoverTime);
		let bo = false;
		let isTime = false;
		if (maxTime > 0) {
			if (maxTime <= now) {
				bo = true;
				_t.setCacheNum(Enum_StaminaCache.maxTime, 0);
			} else {
				isTime = true;
			}
		}
		if (freeTime > 0) {
			if (freeTime <= now) {
				bo = true;
				_t.setCacheNum(Enum_StaminaCache.freeTime, 0);
			} else {
				isTime = true;
			}
		}
		if (recoverTime > 0 || _t.current < _t.maxCount) {
			// 计算回复次数
			if(recoverTime <= 0) {
				recoverTime = now;
			}
			if (recoverTime <= now) {
				let current = _t.current;
				let maxCount = _t.maxCount;
				if (current < maxCount) {
					current++;
					let needTime = _t.getOneRecoverTime();
					let time = now - recoverTime;
					current += (time / needTime) >> 0;
					if (current < maxCount) {
						time = needTime - time % needTime + now;
						isTime = true;
					} else {
						current = maxCount;
						time = 0;
					}
					_t.setCacheNum(Enum_StaminaCache.current, current);
					_t.setCacheNum(Enum_StaminaCache.recoverTime, time);
				}
				bo = true;
			} else {
				isTime = true;
			}
		}
		if (bo) {
			_t.saveStorage();
		}
		if (!isTime && _t._timerId) {
			XYFrame.Timer.clearById(_t._timerId);
			_t._timerId = null;
		}
		if (bo) {
			_t.emit(EnumMsg.STAMINA_VAL);
		}
	}

	//协议处理
	protected registerCmd(self: this, mgr: SocketMgr) {
		self.socket = mgr;
		//注册GC方法
		mgr.listen(480, self.GC480, self);
		mgr.listen(482, self.GC482, self);
	}

	/**480 I-L-L-L 推送体力 I:当前体力currL:最大体力结束时间maxTimeL:下次恢复时间reTimeL:免费结束时间freeTime*/
	protected GC480(self: Model_Stamina, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readLong();
		let arg3 = data.readLong();
		let arg4 = data.readLong();
		self.setCacheNum(Enum_StaminaCache.current, arg1);
		self.setCacheNum(Enum_StaminaCache.maxTime, arg2);
		self.setCacheNum(Enum_StaminaCache.recoverTime, arg3);
		self.setCacheNum(Enum_StaminaCache.freeTime, arg4);
		self.saveStorage();
		self.emit(EnumMsg.STAMINA_VAL);
	}

	/**480 I-L-L-L 推送体力 I:当前体力currL:最大体力结束时间maxTimeL:下次恢复时间reTimeL:免费结束时间freeTime*/
	public CG480(arg1: number, arg2: number, arg3: number, arg4: number): void {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeLong(arg2);
		bates.writeLong(arg3);
		bates.writeLong(arg4);
		this.simulateCmd(480, bates);
	}

	/**481 I 购买体力 I:体力数量num*/
	public CG481(arg1: number): void {
		if (Game.isOnline) {
			var bates = this.getBytes();
			bates.writeInt(arg1);
			this.sendCmd(481, bates);
		} else {
			// 离线处理
			let maxCount = this.maxCount;
			if (maxCount <= this.current) {
				Vw_Msg.setCfgTxt(410);//体力已满
			} else {
				let cost = ConfigUtils.getConstList(EnumUI.STAMINE, 3);// 消耗
				if (cost) {
					if (!Game.Model.bag.isSimulateUse([cost]))
						return;
				}
				this.setCacheNum(Enum_StaminaCache.maxTime, 0);
				this.setCacheNum(Enum_StaminaCache.current, maxCount);
				this.emit(EnumMsg.STAMINA_VAL);
				this._onDealTime();
				// this.CG482(0, maxCount);
			}
		}
	}

	/**482 I-I 购买体力返回 I:0成功1体力已满2货币不足3刷新stateI:当前体力current*/
	protected GC482(self: Model_Stamina, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readInt();
		if (arg1 == 0 || arg1 == 3) {
			self.setCacheNum(Enum_StaminaCache.current, arg2);
			self.saveStorage();
			self.emit(EnumMsg.STAMINA_VAL);
		} else if (arg1 == 1) {
			Vw_Msg.setCfgTxt(410);//体力已满
		} else if (arg1 == 2) {
			Vw_Msg.setCfgTxt(411);//金币不足
		} else {
			Vw_Msg.setCfgTxt(412);//购买失败
		}
	}

	/**482 I-I 购买体力返回 I:0成功1体力已满2货币不足3刷新stateI:当前体力current*/
	public CG482(arg1: number, arg2: number): void {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeInt(arg2);
		this.simulateCmd(482, bates);
	}

}