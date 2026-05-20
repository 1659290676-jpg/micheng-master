import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import BaseModel from "../../../XYFrame/Network/BaseModel";
import { SocketMgr } from "../../../XYFrame/Network/SocketMgr";

/**
 * Model_Guide
 * 功能剧情
 */
export default class Model_Guide extends BaseModel {

	//协议处理
	protected registerCmd(t: this, mgr: SocketMgr) {
		t.socket = mgr;
		//注册GC方法
		mgr.listen(590, t.GC590, t);
		mgr.listen(592, t.GC592, t);
		mgr.listen(594, t.GC594, t);
	}
	
	/**590 I 失败提示 I:结果：0失败 1成功 2非法请求 3功能未开启 4配置不存在 opResult*/
	protected GC590(t: Model_Guide, data: BaseBytes): void {
		let arg1 = data.readInt();
	}
	
	/**592 [I] 登录数据 [I:指引id]已指引列表gainList*/
	protected GC592(t: Model_Guide, data: BaseBytes): void {
		let len = data.readShort();
		for(let i = 0; i < len; i++) {
			let arg1 = data.readInt();
		}
	}
	
	/**593 I 点击指引 I:指引idcid*/
	public CG593(arg1): void {
		var bates = this.getBytes();
		bates.writeInt(arg1);
		this.sendCmd(593, bates);
	}
	
	/**594 I-I 点击指引返回 I:状态：0成功stateI:指引idcid*/
	protected GC594(t: Model_Guide, data: BaseBytes): void {
		let arg1 = data.readInt();
		let arg2 = data.readInt();
	}
	
}