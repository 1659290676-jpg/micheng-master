import Config_building_105 from "../../../../DataStock/ConfigData/Ts/Config_building_105";
import ResPath from "../../../../XYFrame/Resource/ResPath";
import { XYFrame } from "../../../../XYFrame/XYFrame";
import { EnumAltas } from "../../../EnumAtlas";
import Game from "../../../Game";
import { EnumTargetType } from "../EnumTargetType";
import { Runtime_Item_StageTargetBase } from "./Runtime_Item_StageTarget.generated";

const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/4/14 14:27:48
 * @ Description: 
*/
@regClass()
export default class Runtime_Item_StageTarget extends Runtime_Item_StageTargetBase {

    private _data: number[];
    /** 上次的目标数量 */
    private _targetNum: number;
    private _currentNum: number = 0;


    public clear() {
        let _t = this;
        _t._data = null;
        _t.data = null;
        _t._targetNum = -1;
        _t._currentNum = 0;
        _t.imgMask0.visible = _t.imgMask1.visible = false;
        XYFrame.Tween.kill(_t);
    }

    protected dataChanged() {
        let _t = this;
        let data = _t.data;
        let num = Game.Model.stage.stageVo.getTargetNum(data[0], data[1]);
        if (num < _t._targetNum && data == _t._data) {
            XYFrame.Tween.to(_t, { currentNum: num }, 500).call(_t._tweenEnd, _t);
        } else if (_t._targetNum != num) {
            _t._currentNum = num;
            _t.lbCount.text = num + "";
            _t.imgMask0.visible = _t.imgMask1.visible = num <= 0;
            XYFrame.Tween.kill(_t);
        }
        _t._targetNum = num;
        _t._data = data;
        let type = data[0];
        let id = data[1];
        if (type == EnumTargetType.Building) {
            _t.imgIcon.src = ResPath.getAtlasImgPath(EnumAltas.building, Config_building_105.getIconByKey(id));
        } else if (type == EnumTargetType.Npc) {
            _t.imgIcon.src = ResPath.getAtlasImgPath(EnumAltas.building, "ren");
        } else if (type == EnumTargetType.Player) {
            _t.imgIcon.src = ResPath.getAtlasImgPath(EnumAltas.building, "konglong");
        }
    }

    private _tweenEnd(_t: this) {
        _t.imgMask0.visible = _t.imgMask1.visible = _t._targetNum <= 0;
    }

    public set currentNum(v: number) {
        this._currentNum = Math.round(v);
        this.lbCount.text = this._currentNum + "";
    }

    public get currentNum() {
        return this._currentNum;
    }
}
