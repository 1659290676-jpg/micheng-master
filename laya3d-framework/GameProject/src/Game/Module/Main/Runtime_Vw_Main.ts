import { ButtonBase } from "../Component/ButtonBase";
import { Runtime_Vw_MainBase } from "./Runtime_Vw_Main.generated";

const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/3/12 20:44:38
 * @ Description: 
*/
@regClass()
export default class Runtime_Vw_Main extends Runtime_Vw_MainBase {

    public tabs: ButtonBase[];
    public selectedIndex: number;

    public leftIcons: Laya.GWidget[];
    public rightIcons: Laya.GWidget[];

    public onInit() {
        let _t = this;
        _t.tabs = [_t.btnShop, _t.btnStage];

        _t.leftIcons = [_t.btnWarOrder, _t.btnAdCard];
        _t.rightIcons = [_t.btnArena, _t.btnFireTrial];
    }

    /**
     * 选中标签
     * @param index 
     */
    public selectTab(index: number) {
        let _t = this;
        _t.selectedIndex = index;
        _t.btnRoot.visible = index == 1;
        for (let i = 0; i < _t.tabs.length; i++) {
            const tab = _t.tabs[i];
            tab.selected = i == index;
        }
    }
}
