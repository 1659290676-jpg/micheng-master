import Config_skill_105 from "../../../../DataStock/ConfigData/Ts/Config_skill_105";
import Game from "../../../Game";
import { Runtime_Btn_StageSkillBase } from "./Runtime_Btn_StageSkill.generated";

const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/4/14 11:58:27
 * @ Description: 
*/
@regClass()
export default class Runtime_Btn_StageSkill extends Runtime_Btn_StageSkillBase {
    /** 技能id */
    public sid: number;
    /** 需要的道具id */
    public itemId: number;
    /** 当前剩余次数 */
    public count: number;

    public initData(id: number) {
        let _t = this;
        _t.sid = id;
        _t.itemId = Config_skill_105.getItemByKey(id);
    }

    /**
     * 更新次数显示
     */
    public updateCount() {
        let _t = this;
        _t.count = Game.Model.bag.getItemCount(_t.itemId);
        _t.countBg.visible = _t.lbCount.visible = _t.count > 0;
        _t.imgAdd.visible = _t.count <= 0;
        _t.lbCount.text = _t.count.toString();
    }


}
