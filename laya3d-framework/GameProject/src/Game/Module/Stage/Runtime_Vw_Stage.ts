import Runtime_Group_StageLev from "./Component/Runtime_Group_StageLev";
import { Runtime_Vw_StageBase } from "./Runtime_Vw_Stage.generated";

const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/3/25 18:13:46
 * @ Description: 
*/
@regClass()
export default class Runtime_Vw_Stage extends Runtime_Vw_StageBase {
    public levGroups: Runtime_Group_StageLev[];

    onConstruct(): void {
        let _t = this;
        _t.levGroups = [_t.group0, _t.group1, _t.group2, _t.group3];
    }
}
