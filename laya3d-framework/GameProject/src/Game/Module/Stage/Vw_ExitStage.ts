import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import { Enum_Advert, Enum_Advert_Opr } from "../Advert/Enum_Advert";
import Vw_Msg from "../Tip/Vw_Msg";
import Runtime_Vw_ExitStage from "./Runtime_Vw_ExitStage";


/**
 * @ Author: 
 * @ Date: 2026/4/20 17:03:16
 * @ Description: 退出重新开始关卡
*/
export default class Vw_ExitStage extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "stage/Vw_ExitStage";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_ExitStage;

    public get owner() {
        return this._owner;
    }

    public type: number;
    public index: number;

    private spineId: number;

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.lbDes1.text = LanguageMgr.getTxt(413);// 竞技场连胜进度讲清空
        let list = Game.Model.arena.gearList;
        for (let i = 0, len = owner.arenaLbs.length; i < len; i++) {
            owner.arenaLbs[i].text = "x" + list[i];
        }
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onClick(owner.btnClose, _t.closeSelf);
        _t.onClick(owner.btn, _t.touchRestart);
        _t.onMsg(EnumMsg.Advert_Result, _t.onAdMsg);
    }

    public onOpen(type: number, index: number): void {
        super.onOpen();
        let _t = this;
        let owner = _t.owner;
        _t.type = type || 0;
        _t.index = index || 0;

        owner.lbTitle.text = LanguageMgr.getTxt(!type ? 408 : 410);// 退出关卡 重新开始
        owner.btn.text = LanguageMgr.getTxt(!type ? 409 : 411);// 退 出 重 开

        let spine = false;
        if (index == 1) {
            owner.lbDes.text = LanguageMgr.getTxt(414);//火焰试炼进度讲清空
        } else if (index == 2) {
            owner.lbDes.text = "";
            let tabIdx = Math.max(0, Game.Model.arena.tab - 1);
            for (let i = 0, len = owner.arenaBgs.length; i < len; i++) {
                let index = 1;
                if (i == tabIdx) {
                    index = 2
                }
                let bg = "bg_arena" + index;
                bg += i == 0 ? "0" : "1";
                owner.arenaBgs[i].src = ResPath.getAtlasImgPath(EnumAltas.Stage, bg);
                owner.arenaLbs[i].color = index == 2 ? "#ffef40" : "#f3f3f3";
            }
        } else {
            if (Game.Model.stamina.isShowGqExitTip()) {
                index = 10;
                owner.lbDes.text = LanguageMgr.getTxt(412);//你拥有无限体力
                owner.imgIcon.url = ResPath.getAtlasImgPath(EnumAltas.Stage, "Bm_wxtl");
            } else {
                index = 0;
                owner.lbDes.text = LanguageMgr.getTxt(type ? 415 : 407);//重开将扣除1体力！
                owner.imgIcon.url = ResPath.getAtlasImgPath(EnumAltas.Stage, "Bm_kctl");
                spine = true;
            }
        }
        owner.lbStrength.visible = index == 0;
        owner.fireState.visible = index == 1;
        owner.arenaState.visible = index == 2;
        if (spine) {
            if (!_t.spineId)
                _t.spineId = _t.addSpine("effect/fx_KL_shibai_tili", owner, 269, 249, 3500).eid;
        } else if (_t.spineId) {
            _t.removeSpineById(_t.spineId);
            _t.spineId = null;
        }

        XYFrame.AudioMgr.setMusicFlag("Vw_ExitStage", true);
    }

    public onClose(): void {
        super.onClose();
        let _t = this;
        if (_t.spineId) {
            _t.spineId = null;
        }
        XYFrame.AudioMgr.setMusicFlag("Vw_ExitStage", false);
    }

    protected touchRestart() {
        let _t = this;
        let type = _t.type;
        let index = _t.index;
        let bo = true;

        if (!index) {
            if (Game.Model.fireTrial.isShowGqExitTip()) {
                index = 1;
            } else if (Game.Model.arena.isShowGqExitTip()) {
                index = 2;
            } else {
                bo = false;
            }
        } else if (index == 1) {
            if (Game.Model.arena.isShowGqExitTip()) {
                index = 2;
            } else {
                bo = false;
            }
        } else if(index == 2) {
            bo = false;
        }
        if (bo) {
            _t.closeSelf();
            XYFrame.UIMgr.open(Vw_ExitStage, type, index);
        } else {
            if (Game.Model.stage.canPlayNext) {
                _t.closeSelf();
                // 处理退出或重开
                if (type) {

                    Game.Model.stage.onRestart();
                } else {
                    Game.Model.stage.onExit();
                }
            } else {
                if (type) {
                    if (!Game.Model.stamina.freeTime) {
                        if (Game.Model.stamina.current <= 1) {
                            Vw_Msg.setCfgTxt(423);// 只有1点体力无法重新开始
                            return;
                        }
                    }
                }
                Game.Model.advert.showAd(Enum_Advert.ForcedStage);
            }
        }
    }

    private onAdMsg(_t: this, result: Enum_Advert_Opr, type: Enum_Advert) {
        if (type == Enum_Advert.ForcedStage) {
            if (result != Enum_Advert_Opr.Start) {
                let type = _t.type;
                _t.closeSelf();
                // 处理退出或重开
                if (type) {
                    Game.Model.stage.onRestart();
                } else {
                    Game.Model.stage.onExit();
                }
            }
        }
    }

    /**
     * 
     * @param type 0退出 1重新开始
     * @returns 
     */
    public static open(type: number) {
        let index = -1;
        if (Game.Model.stamina.canPlay) {
            index = 0;
        } else if (Game.Model.fireTrial.isShowGqExitTip()) {
            index = 1;
        } else if (Game.Model.arena.isShowGqExitTip()) {
            index = 2;
        }
        if (index == -1) {
            return false;
        }
        XYFrame.UIMgr.open(Vw_ExitStage, type, index);
        return true;
    }
}