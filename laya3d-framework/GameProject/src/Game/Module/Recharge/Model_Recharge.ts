import { BridgeManager } from "../../../Bridge/BridgeManager";
import Config_recharge_011 from "../../../DataStock/ConfigData/Ts/Config_recharge_011";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import Logger from "../../../XYFrame/Logger/Logger";
import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import BaseModel from "../../../XYFrame/Network/BaseModel";
import { SocketMgr } from "../../../XYFrame/Network/SocketMgr";
import Game from "../../Game";
import { Enum_Advert } from "../Advert/Enum_Advert";
import Vw_Msg from "../Tip/Vw_Msg";

/**
 * Model_Recharge
 * 充值
 */
export default class Model_Recharge extends BaseModel {

	/**
	 * 充值
	 * @param chargeid 充值id
	 * @param param 参数，默认为""
	 */
	public pay(chargeid: number, param: string = "") {
		if (Game.Model.global.adRechargeIsOpen()) {
			// 看广告
			Game.Model.advert.showAd(Enum_Advert.StoreBuy, chargeid);
		} else {
			this.CG273(chargeid, param);
		}
	}

	/**
	 * 获取充值额度额度
	 * @param id 
	 */
	public getChargeMoney(id: number) {
		let money = Config_recharge_011.getMoneyByKey(id) || 0;
		if (LanguageMgr.region == 1) {
			/** 欧美地区需要除以100 */
			money = money / 100;
		}
		return money;
	}

	//协议处理
	protected registerCmd(self: this, mgr: SocketMgr) {
		self.socket = mgr;
		//注册GC方法
		mgr.listen(272, self.GC272, self);
		mgr.listen(274, self.GC274, self);
	}

	/**271  请求充值面板 */
	public CG271(): void {
		var bates = this.getBytes();
		this.sendCmd(271, bates);
	}

	/**272 [I] 已充值过的id [I:充值id]已充值过的iddata*/
	protected GC272(self: Model_Recharge, data: BaseBytes): void {
		let len = data.readShort();
		for (let i = 0; i < len; i++) {
			let arg1 = data.readInt();
		}
	}

	/**273 I-U 充值 I:充值idconfigU:参数param*/
	public CG273(arg1: number, arg2: string): void {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		bates.writeUTF(arg2);
		bates.writeUTF(gameInfo.sdk || "");
		this.sendCmd(273, bates);
	}

	/**274 I-U 充值 I:0成功1失败2功能未开启3配置不存在4充值次数已达上限5需要先完成首充6充值无法进行7订单不存在8订单已发货9签名验证失败
	 * 10订单信息不匹配11参数错误12活动未开启13活动已结束stateU:订单json信息info*/
	protected GC274(self: Model_Recharge, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readUTF();

		let msg = 0
		if (arg1 == 0) {
			let obj = arg2 ? JSON.parse(arg2) : null;
			BridgeManager.ins.sdkPay(obj, function (res: any) {
				if (DEBUG) {
					if (res && res.code == 0) {
						Logger.log(`充值成功：` + res.msg);
					}
				}
			});
		} else if (arg1 == 1) {
			msg = 601
		} else if (arg1 == 2) {
			msg = 602
		} else if (arg1 == 3) {
			msg = 603
		} else if (arg1 == 4) {
			msg = 604
		} else if (arg1 == 5) {
			msg = 605
		} else if (arg1 == 6) {
			msg = 606
		} else if (arg1 == 7) {
			msg = 607
		} else if (arg1 == 8) {
			msg = 608
		} else if (arg1 == 9) {
			msg = 609
		} else if (arg1 == 10) {
			msg = 610
		} else if (arg1 == 11) {
			msg = 611
		} else if (arg1 == 12) {
			msg = 612
		} else if (arg1 == 13) {
			msg = 613
		}


		if (msg) {
			Vw_Msg.setCfgTxt(msg)
		}
	}

}