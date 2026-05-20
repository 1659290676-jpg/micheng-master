
import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import BaseModel from "../../../XYFrame/Network/BaseModel";
import { SocketMgr } from "../../../XYFrame/Network/SocketMgr";
import Game from "../../Game";


/**
 * Model_GM
 * GM协议
 */
export default class Model_GM extends BaseModel {

    private _offlineMap: Record<number, Function>;

    //协议处理
    protected registerCmd(t: this, mgr: SocketMgr) {
        t.socket = mgr;
        //注册GC方法
        mgr.listen(82, t.GC82, t);
        // mgr.listen(84, t.GC84, t);

        let map: any = t._offlineMap = {};
        map[1001] = t.simulateBag;
    }

    /**81 I-I-U GM命令 I:系统类型gmTypeI:方法类型typeU:内容content*/
    public CG81(arg1: number, arg2: number, arg3: string): void {
        if (!Game.isOnline) {
            let map = this._offlineMap;
            if (map[arg1]) {
                map[arg1](this, arg2, arg3);
            }
            return;
        }
        var bates = this.getBytes();
        bates.writeInt(arg1);
        bates.writeInt(arg2);
        bates.writeUTF(arg3);
        this.sendCmd(81, bates);
    }

    /**82 I-U-I GM协议返回 I:GM类型IDcmdU:如果有多数据用“_”分割dataStrI:操作类型type*/
    protected GC82(t: Model_GM, data: BaseBytes): void {
        let arg1 = data.readInt();
        let arg2 = data.readUTF();
        let arg3 = data.readInt();
        t.emit("GM_SERVER", arg1, arg2, arg3);
    }

    /**82 I-U-I GM协议返回 I:GM类型IDcmdU:如果有多数据用“_”分割dataStrI:操作类型type*/
    public CG82(arg1: number, arg2: string, arg3: number): void {
        var bates = this.getBytes();
        bates.writeInt(arg1);
        bates.writeUTF(arg2);
        bates.writeInt(arg3);
        this.simulateCmd(82, bates);
    }

    // /**84 U-U 推送战斗日志 U:文件名nameU:内容infoStr*/
    // protected GC84(t: Model_GM, data: BaseBytes): void {
    //     let arg1 = data.readUTF();
    //     let arg2 = data.readUTF();
    //     let blob = new Blob([arg2], { type: "text/plain" });
    //     let url = URL.createObjectURL(blob);
    //     let a = document.createElement("a");
    //     a.href = url;
    //     a.download = arg1;
    //     a.click();
    //     URL.revokeObjectURL(url);
    //     Vw_Msg.setText("复制战报成功")
    // }

    /**
     * 添加物品
     * @param _t 
     * @param arg2 
     * @param arg3 
     * @returns 
     */
    private simulateBag(_t: this, arg2: number, arg3: string) {
        if (arg2 == 1) {
            // 添加物品
            if (!arg3) return;
            let list = arg3.split("_");
            let num = +list[2];
            if (!num) {
                return;
            }
            if (num < 0) {
                Game.Model.bag.simulateUseGood([[+list[0], +list[1], -num]]);
            } else {
                Game.Model.bag.simulateAddGood(1, [[+list[0], +list[1], num]]);
            }
        } else if (arg2 == 2) {
            // 清理背包
            Game.Model.bag.CG160([]);
        }
    }


}