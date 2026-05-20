import Config_building_105 from "../../../../DataStock/ConfigData/Ts/Config_building_105";
import Config_skin_301 from "../../../../DataStock/ConfigData/Ts/Config_skin_301";
import ResPath from "../../../../XYFrame/Resource/ResPath";
import { EnumAltas } from "../../../EnumAtlas";
import { Runtime_Stage_PlayerDirBase } from "./Runtime_Stage_PlayerDir.generated";

const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/4/13 11:14:36
 * @ Description: 
*/
@regClass()
export default class Runtime_Stage_PlayerDir extends Runtime_Stage_PlayerDirBase {

    public setData(angle: number, data: { type: number, level: number }) {
        let _t = this;
        _t.lb.visible = _t.bg.visible = data.type != 0;
        _t.imgIcon.visible = _t.imgBg.visible = data.type == 0;
        let scale = data.type == 0 ? 2 : 1;
        _t.scale(scale, scale);
        if (data.type == 0) {
            _t.imgIcon.src = ResPath.getAtlasImgPath(EnumAltas.building, Config_building_105.getIconByKey(data.level));
        } else {
            _t.bg.rotation = angle + 90;
            _t.lb.text = data.level + "";
            let color = Config_skin_301.getHaloByKey(data.type);
            if (color && color != _t.bg.color) {
                _t.bg.color = color;
            }
        }
    }
}
