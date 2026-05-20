import { UIBase } from "../../../../XYFrame/UI/Base/UIBase";
import Runtime_Btn_BuyStamina from "./Runtime_Btn_BuyStamina";


/**
 * @ Author: 
 * @ Date: 2026/4/21 10:13:05
 * @ Description: 
*/
export default class Btn_BuyStamina extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "main/comp/Btn_BuyStamina";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Btn_BuyStamina;

    public get owner() {
        return this._owner;
    }
    
    protected inited(_t: this): void {
        let owner = _t.owner;
        
    }
}