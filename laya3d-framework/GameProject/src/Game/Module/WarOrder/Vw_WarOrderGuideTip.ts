import LanguageMgr from "../../../DataStock/LanguageMgr";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Game from "../../Game";
import Runtime_Vw_WarOrderGuideTip from "./Runtime_Vw_WarOrderGuideTip";


/**
 * @ Author: 
 * @ Date: 2026/4/13 11:46:10
 * @ Description: 
*/
export default class Vw_WarOrderGuideTip extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "warOrder/Vw_WarOrderGuideTip";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_WarOrderGuideTip;

    public get owner() {
        return this._owner;
    }

    private oTm: number;

    private tweenList: Laya.GWidget[][]

    protected inited(_t: this): void {
        let owner = _t.owner;

        owner.txt1.text = LanguageMgr.getTxt(686);
        owner.txt2.text = LanguageMgr.getTxt(687);
        owner.txt3.text = LanguageMgr.getTxt(688);
        owner.txt4.text = LanguageMgr.getTxt(681);
        owner.txtTip.text = LanguageMgr.getTxt(689);

        _t.tweenList = [
            [owner.imgTitle],
            [owner.iconHelp1, owner.txt1],
            [owner.imgJt1],
            [owner.iconHelp2, owner.txt2],
            [owner.imgJt2],
            [owner.iconHelp3, owner.txt3],
            [owner.iconHelp4, owner.txt4],
            [owner.txtTip],
        ];
    }

    protected initListener(): void {
        let _t = this;
        _t.onClick(_t.owner, _t.onClickSelf);
    }

    public onOpen(arg?: any): void {
        super.onOpen(arg);
        this.oTm = Game.Model.global.getSrvTm();
        Game.GuideMgr.setPause("Vw_WarOrderGuideTip", true);
        this.playAni();
    }

    public onClose(): void {
        super.onClose();
        Game.GuideMgr.setPause("Vw_WarOrderGuideTip", false);
        // let t = this;
        // let list: Laya.GWidget[];
        // for (let i = 0; i < t.tweenList.length; i++) {
        //     list = t.tweenList[i];
        //     for (let img of list) {
        //         XYFrame.Tween.kill(img);
        //     }
        // }
    }

    private onClickSelf(): void {
        let t = this;
        let tm = Game.Model.global.getSrvTm() - t.oTm;
        if (tm < 2500) {
            return;
        }
        t.closeSelf();
    }

    private playAni() {
        let t = this;
        let list: Laya.GWidget[];
        for (let i = 0; i < t.tweenList.length; i++) {
            list = t.tweenList[i];
            for (let img of list) {
                img.alpha = 0;
            }
        }
        for (let i = 0; i < t.tweenList.length; i++) {
            list = t.tweenList[i];
            for (let img of list) {
                t.tweenDelay(img, i * 300).to({ alpha: 1 }, (i + 1) * 250)
            }
        }
    }
}