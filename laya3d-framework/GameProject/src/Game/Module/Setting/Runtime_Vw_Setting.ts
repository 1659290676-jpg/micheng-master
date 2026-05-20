import { ButtonBase } from "../Component/ButtonBase";
import { Runtime_Vw_SettingBase } from "./Runtime_Vw_Setting.generated";
            
const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/3/25 18:36:54
 * @ Description: 
*/
@regClass()
export default class Runtime_Vw_Setting extends Runtime_Vw_SettingBase {
    public btns:ButtonBase[];
    
    onConstruct(): void {
        let _t = this;
        _t.btns = [_t.btn0, _t.btn1, _t.btn2, _t.btn3];
    }
}
