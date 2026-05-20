import LanguageMgr from "../../../../DataStock/LanguageMgr";
import { Runtime_Stage_HurtFlyBase } from "./Runtime_Stage_HurtFly.generated";

const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/4/17 14:14:50
 * @ Description: 
*/
@regClass()
export default class Runtime_Stage_HurtFly extends Runtime_Stage_HurtFlyBase {

    public showTxt(type: number, num: number) {
        let _t = this;
        let color = "#F3F3F3";
        let txt = "+" + num;
        if (type == 2) {
            color = "#FFC015";
        } else if (type == 100) {
            color = "#13FFFF";
            txt = LanguageMgr.getTxt(403, num);
        }
        _t.lbHurt.color = color;
        _t.lbHurt.text = txt;
    }
}
