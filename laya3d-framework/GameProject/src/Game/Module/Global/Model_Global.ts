import LanguageMgr from "../../../DataStock/LanguageMgr";
import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import BaseModel from "../../../XYFrame/Network/BaseModel";
import { EnumSocket } from "../../../XYFrame/Network/EnumSocket";
import { SocketEvent } from "../../../XYFrame/Network/SocketClient";
import { SocketMgr } from "../../../XYFrame/Network/SocketMgr";
import DateUtils from "../../../XYFrame/Utils/DateUtils";
import ObjectUtils from "../../../XYFrame/Utils/ObjectUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import OfflineMgr from "../Offline/OfflineMgr";
import Vw_Msg from "../Tip/Vw_Msg";
import { EnumSysState } from "./EnumSysState";

/**
 * Model_Global
 * 全局
 */
export default class Model_Global extends BaseModel {

	//协议处理
	protected registerCmd(t: this, mgr: SocketMgr) {
		t.socket = mgr;
		//注册GC方法
		mgr.listen(320, t.GC320, t);
		mgr.listen(322, t.GC322, t);
		mgr.listen(324, t.GC324, t);
		mgr.listen(328, t.GC328, t);
		mgr.listen(330, t.GC330, t);
		mgr.listen(346, t.GC346, t);
		t.socket.getSocket(EnumSocket.DEFAULT).on(SocketEvent.NETWORK_CLOSED, t._onSocketClose, t);
		XYFrame.Msg.on(EnumMsg.M_GAME_VIS, t._onGameVis, t);
		Laya.stage.on("login_out", t, t.onSdkLogout);
	}

	/**服务器时间 */
	private _srvTm: number = DateUtils.now();
	/**收到协议的时间 */
	private _receive_tm: number = Laya.timer.currTimer;
	/**开服时间 */
	private _kfTm: number;
	/**时区偏移 */
	private _zoneOffset: number = 8 * DateUtils.SEC_HOUR;
	/**服务器版本号 */
	public srvVer: string;

	private _check_tm: number;
	private _lastTm: number;
	// private sysStateMap: Record<number, number> = {}
	private get sysStateMap(): Record<number, number> {
		let map = this.getCacheMap("sysStateMap", true) as Record<number, number>;
		return map;
	}

	public clear(): void {
		let _t = this
		if (_t._check_tm) {
			// XYFrame.Timer.clearById(_t._check_tm);
			window.clearInterval(_t._check_tm);
			_t._check_tm = null;
		}
		if (!_t._addZeroTm) {
			XYFrame.Timer.clearById(_t._addZeroTm);
			_t._addZeroTm = null;
		}
	}
	/**完全进入游戏初始化 */
	public initAfterEnter(): void {
		let _t = this;
		_t.CG321();
		if (_t._check_tm) {
			// XYFrame.Timer.clearById(_t._check_tm);
			window.clearInterval(_t._check_tm);
			_t._check_tm = null;
		}
		// if (!DEBUG) {
		// 	_t._lastTm = DateUtils.now();
		// 	// _t._check_tm = XYFrame.Timer.loop(10000, _t.onCheckTm, _t);
		// 	_t._check_tm = window.setInterval(_t.onCheckTm, 10000, _t);
		// }
	}

	// private onCheckTm(_t: this) {
	// 	if (OfflineMgr.type) return;
	// 	let now = DateUtils.now();
	// 	if (now - _t._lastTm >= 15000) {
	// 		// 调了时间，需要提下线
	// 		XYFrame.SocketMgr.disconnectAll();
	// 		OfflineMgr.handle(OfflineMgr.TYPE_TIMESCALE);
	// 		if (_t._check_tm) {
	// 			// XYFrame.Timer.clearById(_t._check_tm);
	// 			window.clearInterval(_t._check_tm);
	// 			_t._check_tm = null;
	// 		}
	// 	}
	// 	_t._lastTm = now;
	// }


	/**
	 * socket关闭
	 * @param _t 
	 */
	private _onSocketClose(_t: this) {
		Game.isNetEnter = false;
		if (Game.isEnter) {
			Game.Model.offLine();
			if (!Game.Model.hero.isOfflinePlay) {
				// 不能离线玩
				OfflineMgr.handle(OfflineMgr.TYPE_NORMAL);
				_t.emit(EnumMsg.SOCKET_CLOSED);
			} else {
				Game.isOnline = false;
				_t.addZeroTm(_t);
			}
		}
	}


	/**
	 * 前后台切换
	 * @param _t 
	 * @param bo 
	 */
	private _onGameVis(_t: this, bo: boolean) {
		if (bo) {//前台
			// Frame.SocketMgr.resetRecTm();
			// if (!Game.Model.hero.isOfflinePlay)
			OfflineMgr.checkRelogin();
		} else {//后台
		}
	}


	/**
	 * 登出
	 */
	private onSdkLogout() {
		// Frame.SocketMgr.closeAll(true);
		Game.LoginMgr.build();
	}

	/**
	 * 获取服务器当前时间戳 
	 * @param isMil isMil true获取毫秒，false秒数，默认true
	 * @returns 当前服务器时间戳
	 */
	public getSrvTm(isMil = true) {
		let t = this;
		let dt = Laya.timer.currTimer - t._receive_tm;
		let tm = t._srvTm + dt;
		if (isMil) {
			return tm;
		} else {
			return Math.floor(tm / 1000);
		}
	}

	/**
	 * 获取当前已开服天数
	 */
	public getKfDay() {
		return DateUtils.getBetDay(this.getSrvTm(false), this._kfTm / 1000 >> 0) + 1;
	}

	/**获取系统状态 EnumSysState */
	public getSysState(id: number) {
		return this.sysStateMap[id] || 0
	}

	/**广告充值是否开启 */
	public adRechargeIsOpen() {
		return Game.Model.global.getSysState(EnumSysState.adRecharge) == 1
	}

	private _addZeroTm: string;
	private _dayNum: number;
	/**添加0点定时器监听 */
	private addZeroTm(t: this) {
		if (!t._addZeroTm) {
			XYFrame.Timer.clearById(t._addZeroTm);
			t._addZeroTm = null;
		}
		if (!Game.isOnline) {
			let now = t.getSrvTm(false) + t._zoneOffset;
			t._dayNum = Math.floor(now / DateUtils.SEC_DAY);
			t._addZeroTm = XYFrame.Timer.loop(2000, t.onZeroTm, t);
		}
	}

	private onZeroTm(dt: number, _t: this) {
		let now = _t.getSrvTm(false) + _t._zoneOffset;
		let dayNum = Math.floor(now / DateUtils.SEC_DAY);
		if (dayNum != _t._dayNum) {
			_t._dayNum = dayNum;
			_t.CG320(5, "");
		}
	}

	private _zero_tm: string;
	/**延迟派发零点事件*/
	private delay_zero(tm: number, _t: this) {
		_t._zero_tm = null;
		_t.emit(EnumMsg.ZERO_POINT);
	}

	/**320 I-U 系统提示 I:1系统提示2GM热更3当前版本号4服务器维护5服务器零点6充值提示7心跳包8弹窗提示typeU:提示内容content*/
	protected GC320(t: Model_Global, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readUTF();
		if (arg1 == 1 || arg1 == 2) {
			Vw_Msg.setText((arg1 == 1 ? LanguageMgr.getTxt(180) : "GM:") + arg2);
		} else if (arg1 == 3) { //服务器版本号
			t.srvVer = arg2;
		} else if (arg1 == 4) { //服务器维护

		} else if (arg1 == 5) { //服务器零点
			let tm = +arg2;
			if (tm > 0) {
				t._srvTm = tm;
				t._receive_tm = Laya.timer.currTimer;
			}
			Game.Model.dealZero();
			if (!t._zero_tm) {
				t._zero_tm = XYFrame.Timer.once(1000, t.delay_zero, t);
			}
		}
		else if (arg1 == 6) { //充值提示
			Vw_Msg.setText(arg2);
		} else if (arg1 == 8) { //弹窗提示
			Vw_Msg.setText(arg2);
		}
	}

	/**320 I-U 系统提示 I:1系统提示2GM热更3当前版本号4服务器维护5服务器零点6充值提示7心跳包8弹窗提示typeU:提示内容content*/
	public CG320(arg1: number, arg2: string): void {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeUTF(arg2);
		this.simulateCmd(320, bates);
	}

	/**321  获取服务器时间 */
	public CG321(): void {
		if (Game.isOnline) {
			var bates = this.getBytes();
			this.sendCmd(321, bates);
		} else {
			let now = DateUtils.now();
			var bates = this.getBytes();
			bates.writeInt(now);
			bates.writeInt(now);
			bates.writeUTF("");
			this.simulateCmd(322, bates);
		}
	}

	/**322 L-L-U 发送服务器时间 L:当前时间currTimeL:开服时间openTimeU:时区gtm*/
	protected GC322(t: Model_Global, data: BaseBytes): void {
		let arg1 = data.readLong();
		let arg2 = data.readLong();
		let arg3 = data.readUTF();
		t._srvTm = arg1;
		t._kfTm = arg2;
		t._receive_tm = Laya.timer.currTimer;
		t.emit(EnumMsg.UP_SrvTm);
		t.addZeroTm(t); // 添加0点定时器监听
	}

	/**324 I-I 全局操作提示 I:1开启条件不足2系统屏蔽维护中3充值关闭9聊天系统屏蔽中typeI:功能idfunid*/
	protected GC324(t: Model_Global, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readInt();
	}

	/**328 [I-U-I] 推送玩家设置数据 [I:设置idU:数据I:0 永久1 零点重置]玩家设置数据settingInfos*/
	protected GC328(t: Model_Global, data: BaseBytes): void {
		let len = data.readShort();
		for (let i = 0; i < len; i++) {
			let arg1 = data.readInt();
			let arg2 = data.readUTF();
			let arg3 = data.readInt();
		}
	}

	/**329 I-U-I 设置数据 I:设置idsettingIdU:数据infoI:类型 0 普通 1 零点重置type*/
	public CG329(arg1: number, arg2: string, arg3: number): void {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeUTF(arg2);
		bates.writeInt(arg3);
		this.sendCmd(329, bates);
	}

	/**330 [I-U-I] 推送更新设置数据 [I:设置idU:数据I:0 永久 1 零点重置]设置列表settingInfos*/
	protected GC330(t: Model_Global, data: BaseBytes): void {
		let len = data.readShort();
		for (let i = 0; i < len; i++) {
			let arg1 = data.readInt();
			let arg2 = data.readUTF();
			let arg3 = data.readInt();
		}
	}

	/**346 [I-I] 系统状态 [I:1广告充值I:1开启]状态数据data*/
	protected GC346(t: Model_Global, data: BaseBytes): void {
		let len = data.readShort();
		let map = t.sysStateMap;
		ObjectUtils.cleanObj(map);
		for (let i = 0; i < len; i++) {
			let arg1 = data.readInt();
			let arg2 = data.readInt();
			map[arg1] = arg2;
		}
		t.saveStorage();
	}

}