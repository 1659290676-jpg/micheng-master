import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_stage_001 from "../../../DataStock/ConfigData/Ts/Config_stage_001";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import Vw_HeroAttribute from "../Main/Vw_HeroAttribute";
import Runtime_Vw_Stage from "./Runtime_Vw_Stage";


/**
 * @ Author: 
 * @ Date: 2026/3/25 18:13:46
 * @ Description: 
*/
export default class Vw_Stage extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "stage/Vw_Stage";

    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Stage;

    public get owner() {
        return this._owner;
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onClick(owner.btnStart, _t.touchStart);
        _t.onClick(owner.btnAttr, _t.touchAttr);
        _t.onMsg(EnumMsg.STAGE_LEVEL, _t.onLevMsg)
    }

    public onOpen(...args: any[]): void {
        super.onOpen();
        let _t = this;
        _t.owner.lbId.visible = _t.owner.txt.visible = DEBUG;
        _t._openFocus(_t);
    }

    private touchStart() {
        let _t = this;
        let res = _t.owner.lbId.text;
        if (DEBUG && res) {
            Game.SceneMgr.onEnter(res);
        } else {
            Game.Model.stage.sendEnter();
        }
    }

    private touchAttr() {
        XYFrame.UIMgr.open(Vw_HeroAttribute);
    }

    private onLevMsg(_t: this) {
        _t.showGroup(Game.Model.stage.playLev);
    }

    /**
     * 打开界面显示的焦点
     * @param _t 
     */
    private _openFocus(_t: this) {
        let model = Game.Model.stage;
        let pass_lev = model.pass_lev;
        model.pass_lev = null;
        if (pass_lev) {
            _t.showGroup(pass_lev);
            let curLev = Game.Model.stage.playLev;
            if (pass_lev != curLev) {
                let bg1 = Config_stage_001.getBgByKey(pass_lev);
                let bg2 = Config_stage_001.getBgByKey(curLev);
                if (bg1 != bg2) {
                    _t.showGroup(curLev);
                } else {
                    _t.moveToLev(curLev, true);
                }
            }
        } else {
            _t.onLevMsg(_t);
        }
    }

    /**
     * 显示关卡
     * @param level 
     */
    private showGroup(level: number) {
        if (level <= 0) level = 1;
        else if (ConfigData.stage_001[level] == null) {
            level--;
        }
        let _t = this;
        let owner = _t.owner;
        let bg = Config_stage_001.getBgByKey(level) || 1;
        let pass = Game.Model.stage.level;
        let oneCount = owner.levGroups[0].itemList.length;
        let gap = owner.levGroups.length * oneCount;
        let start = level % gap;
        if (start == 0) {
            start = level - gap;
        } else {
            start = Math.floor(level / gap) * gap + 1;
        }
        for (let i = 0, len = owner.levGroups.length; i < len; i++) {
            let item = owner.levGroups[i];
            item.setData(bg, i + 1, start, pass);
            start += oneCount;
        }

        _t.moveToLev(level, false);
    }

    private moveToLev(level: number, isAni?: boolean) {
        let _t = this;
        let owner = _t.owner;
        let y = _t.getLevPos(level);
        let endY = y + 450 - owner.groupBase.height;
        owner.groupBase.scroller.setPosY(endY, isAni);
    }

    private getLevPos(level: number) {
        let _t = this;
        let owner = _t.owner;
        let oneCount = owner.levGroups[0].itemList.length;
        let gap = owner.levGroups.length * oneCount;
        let index = level % gap;
        if (index == 0) {
            index = gap;
        }
        index -= 1;
        let order = Math.floor(index / oneCount);
        let group = owner.levGroups[order];
        let item = group.itemList[index % oneCount];
        return group.y + item.y;
    }
}
