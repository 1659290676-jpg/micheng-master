import { Runtime_Vw_WarOrderBase } from "./Runtime_Vw_WarOrder.generated";
            
const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/4/13 11:43:49
 * @ Description: 
*/
@regClass()
export default class Runtime_Vw_WarOrder extends Runtime_Vw_WarOrderBase {
    txtLv :Laya.GTextField
    txtPro:Laya.GTextField
    imgPro:Laya.GImage;

    onConstruct(): void {
        let t = this;
        t.txtLv = t.comProg.getChild("txtLv");
        t.txtPro = t.comProg.getChild("txtPro");
        t.imgPro = t.comProg.getChild("imgPro");
    }
}
