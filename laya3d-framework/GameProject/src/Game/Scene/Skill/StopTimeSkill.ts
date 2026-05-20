import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Vo_StageScene from "../../Module/Stage/Vo_StageScene";
import SkillBase from "./SkillBase";

/**
 * 停止时间技能
 */
export default class StopTimeSkill extends SkillBase {

    private vo: Vo_StageScene;

    public setData(type: number, time: number, vo: Vo_StageScene): void {
        super.setData(type, time);
        this.vo = vo;
        vo.stopTime = true;
    }

    public onReset(): void {
        if (this.vo) {
            this.vo.stopTime = false;
            this.vo = null;
        }
        super.onReset();
    }
}