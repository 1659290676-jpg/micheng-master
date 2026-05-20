import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import BaseModel from "../../../XYFrame/Network/BaseModel";
import { SocketMgr } from "../../../XYFrame/Network/SocketMgr";
import Game from "../../Game";

/**
 * Model_Store
 * 商店
 */
export default class Model_Store extends BaseModel {

	//协议处理
	protected registerCmd(self: this, mgr: SocketMgr) {
		self.socket = mgr;
		//注册GC方法
		mgr.listen(502, self.GC502, self);
	}

	/**501 I-I 购买商品 I:商店表idcidI:购买数量num*/
	public CG501(arg1: number, arg2: number): void {
		if (Game.isOnline) {
			var bates = this.getBytes();
			bates.writeInt(arg1);
			bates.writeInt(arg2);
			this.sendCmd(501, bates);
		} else {
			this.simulateBuyShopItem(arg1, arg2, false);
		}
	}

	/**502 I-I 购买商品 I:商店表idcidI:0成功1货币不足state*/
	protected GC502(self: Model_Store, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readInt();
	}


	//------------------------------------- 模拟服务端 start -------------------------------------
	/**
	 * 模拟商店购买商品
	 * @param id 商品id
	 * @param num 购买数量
	 * @param fromAd 是否来自广告
	 */
	public simulateBuyShopItem(id: number, num = 1, fromAd: boolean = true): boolean {
		let cfg = ConfigData.getShop_101(id);
		if (!cfg) {
			return false;
		}
		if (!!cfg.goldPrice) { // 货币购买
			if (fromAd) {
				// 直接发放
				this.simulateSendShopItem(id, num, 2)
			} else {
				// 扣除货币后再发放
				let costArr = ConfigUtils.splitStr(cfg.goldPrice, 2);
				if (num > 1) {
					for (let cost of costArr) {
						cost[2] *= num;
					}
				}
				if (!Game.Model.bag.isSimulateUse(costArr)) {
					return false;
				}
				//发放商品
				this.simulateSendShopItem(id, num, 2)
			}
			return true;
		}
		return false;
	}

	/**
	 * 模拟商店发放商品
	 * @param id 商品id
	 * @param num 发放数量
	 * @param type 通知类型 0无感 1飘字 2弹窗
	 */
	public simulateSendShopItem(id: number, num = 1, tipType: number): boolean {
		let cfg = ConfigData.getShop_101(id);
		if (!cfg) {
			return false;
		}
		if (cfg.item) {
			let rewardArr = ConfigUtils.splitStr(cfg.item, 2);
			if (num > 1) {
				for (let reward of rewardArr) {
					reward[2] *= num;
				}
			}
			//发放商品
			Game.Model.bag.simulateAddGood(tipType, rewardArr);
		}
		return true;
	}
	//------------------------------------- 模拟服务端 end ---------------------------------------
}