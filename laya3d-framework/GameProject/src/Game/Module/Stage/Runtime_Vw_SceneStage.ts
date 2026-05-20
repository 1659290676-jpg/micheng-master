import { ButtonBase } from "../Component/ButtonBase";
import Runtime_Btn_StageSkill from "./Component/Runtime_Btn_StageSkill";
import { Runtime_Vw_SceneStageBase } from "./Runtime_Vw_SceneStage.generated";

const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/3/16 17:43:58
 * @ Description: 
*/
@regClass()
export default class Runtime_Vw_SceneStage extends Runtime_Vw_SceneStageBase {
    
    public skillBtns: Runtime_Btn_StageSkill[];

    onConstruct(): void {
        super.onConstruct();
        let _t = this;
        _t.skillBtns = [_t.btnSkill0, _t.btnSkill1, _t.btnSkill2, _t.btnSkill3];
    }
}
