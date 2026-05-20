import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import { Runtime_Item_GmProCmdBase } from "./Runtime_Item_GmProCmd.generated";

const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/3/30 12:36:42
 * @ Description: 
*/
@regClass()
export default class Runtime_Item_GmProCmd extends Runtime_Item_GmProCmdBase {

    public showData(type: string) {
        let _t = this;
        _t.lbType.text = type + "";
    }

    public getData(bytes: BaseBytes) {
        let _t = this;
        let val = _t.lbInput.text.trim();
        let type = _t.lbType.text;
        switch (type) {
            case "B":
                bytes.writeByte(parseInt(val));
                break;
            case "S":
                bytes.writeShort(parseInt(val));
                break;
            case "I":
                bytes.writeInt(parseInt(val));
                break;
            case "L":
                bytes.writeLong(+val);
                break;
            case "U":
                bytes.writeUTF(val);
                break;
        }
    }

    public dispose() {
        var t = this;
        t.lbInput.text = "0";
        t.removeSelf();
        Runtime_Item_GmProCmd.POOL.push(t);
    }


    public static POOL: Runtime_Item_GmProCmd[] = [];
    public static tempUrl: string;
    public static create() {
        if (DEBUG)
            return Runtime_Item_GmProCmd.POOL.length ? Runtime_Item_GmProCmd.POOL.shift() : UIUtils.createByUrl(Runtime_Item_GmProCmd.tempUrl, Runtime_Item_GmProCmd);
    }

}
