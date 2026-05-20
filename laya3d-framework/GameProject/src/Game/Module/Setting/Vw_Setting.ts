import LanguageMgr from "../../../DataStock/LanguageMgr";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import Vw_ExitStage from "../Stage/Vw_ExitStage";
import Vw_Msg from "../Tip/Vw_Msg";
import Runtime_Vw_Setting from "./Runtime_Vw_Setting";


/**
 * @ Author: 
 * @ Description: 设置ui
*/
export default class Vw_Setting extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "setting/Vw_Setting";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Setting;

    public get owner() {
        return this._owner;
    }

    // 选择的语言
    private lastVal: string;

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.lbTitle.text = LanguageMgr.getTxt(201);//设置
        owner.btnStart.text = LanguageMgr.getTxt(202);//重新开始
        owner.btnHome.text = LanguageMgr.getTxt(203);//返回主页

        owner.lb0.text = LanguageMgr.getTxt(204);//音效
        owner.lb1.text = LanguageMgr.getTxt(205);//音乐
        owner.lb2.text = LanguageMgr.getTxt(206);//震动
        owner.lb3.text = LanguageMgr.getTxt(213);//语言
        owner.lbShake0.text = LanguageMgr.getTxt(212);//开
        owner.lbShake1.text = LanguageMgr.getTxt(211);//关

        owner.btn0.text = LanguageMgr.getTxt(207);// 隐私设置
        owner.btn1.text = LanguageMgr.getTxt(208);// 联系我们
        owner.btn2.text = LanguageMgr.getTxt(209);// 恢复购买
        owner.btn3.text = LanguageMgr.getTxt(210);// 保存进度
        owner.btn0.visible = owner.btn1.visible = owner.btn2.visible = owner.btn3.visible = false;

        let btns = [owner.btn0, owner.btn1, owner.btn3];
        let vis = [
            Game.Bridge.invokeSdkMethod({ method: "isPrivacy", data: { type: 3 } }),
            Game.Bridge.invokeSdkMethod({ method: "isCustomer" }),
            Game.Bridge.invokeSdkMethod({ method: "isCenter" }),
        ];
        let num = 0;
        let x = owner.btn0.x;
        let y = owner.btn0.y;
        let colGap = owner.btn1.x - owner.btn0.x;
        let rowGap = owner.btn2.y - owner.btn0.y;
        for (let i = 0, len = btns.length; i < len; i++) {
            let btn = btns[i];
            let v = vis[i];
            btn.visible = v;
            if (v) {
                btn.x = x + num % 2 * colGap;
                btn.y = y + Math.floor(num / 2) * rowGap;
                num++;
            }
        }

        // 版本号
        owner.lbVersion.text = ""; //TODO

        owner.btnBox.on(Laya.Event.CHANGED, _t, _t.upBtnBox);
        let l: string[] = [], sl: string[] = [];
        let map = window.gameInfo.langTexts;
        for (let k in map) {
            let s = map[k];
            l.push(k);
            sl.push(s);
        }
        owner.btnBox.items = sl;
        owner.btnBox.values = l;
        let lang = Laya.LocalStorage.getItem('lang') || (gameInfo.lang + ""), index = 0;
        if (lang) {
            index = l.indexOf(lang);
        }
        owner.btnBox.selectedIndex = index;
        _t.lastVal = owner.btnBox.value;

    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        _t.onClick(owner.btnClose, _t.closeSelf);
        _t.onClick(owner.btnStart, _t.touchStart);
        _t.onClick(owner.btnHome, _t.touchHome);
        _t.onMsg(EnumMsg.SCENE_ENTER, _t.changeState);
        _t.onMsg(EnumMsg.SCENE_EXIT, _t.changeState);

        for (let i = 0, len = owner.btns.length; i < len; i++) {
            _t.onClick(owner.btns[i], _t.touchBtn);
        }

        _t.onEvent(owner.musicSd, Laya.Event.CHANGED, _t.changeMusicVol);
        _t.onEvent(owner.soundSd, Laya.Event.CHANGED, _t.changeSoundVol);
        _t.onClick(owner.btnShake, _t.touchShake);
    }

    public onOpen(...args: any[]): void {
        super.onOpen();
        let _t = this;
        _t.changeState(_t);
        _t.initUI();
    }

    public onClose(): void {
        super.onClose();
    }

    private changeState(_t: this) {
        let isScene = Game.SceneMgr.isEnter;
        let owner = _t.owner;
        owner.btnStart.visible = isScene;
        owner.btnHome.visible = isScene;

        for (let i = 2; i < owner.btns.length; i++) {
            owner.btns[i].visible = !isScene;
        }
        owner.height = isScene ? 778 : 736;
    }

    private touchStart() {
        let _t = this;
        _t.closeSelf();
        if (!Game.Model.stage.stageVo.isStart) {
            Game.Model.stage.onRestart();
            return;
        }
        if (!Game.Model.stamina.freeTime) {
            if (Game.Model.stamina.current <= 1) {
                Vw_Msg.setCfgTxt(423);// 只有1点体力无法重新开始
                return false;
            }
        }
        if (!Vw_ExitStage.open(1)) {
            Vw_Msg.setCfgTxt(405);// 体力不足
        }
    }

    private touchHome() {
        let _t = this;
        _t.closeSelf();
        if (!Game.Model.stage.stageVo.isStart) {
            Game.Model.stage.onExit();
            return;
        }
        if (!Vw_ExitStage.open(0)) {
            Game.Model.stage.onExit();
        }
    }

    private touchBtn(e: Laya.Event) {
        let _t = this;
        let owner = _t.owner;
        let btn = e.target;
        if (btn == owner.btn0) {
            // 隐私设置
            Game.Bridge.invokeMethod({ method: "openPrivacy", data: 1 });
        } else if (btn == owner.btn1) {
            // 联系我们
            Game.Bridge.invokeMethod({ method: "onCustomer" });
        } else if (btn == owner.btn2) {
            // 恢复购买
        } else if (btn == owner.btn3) {
            // 保存进度
            Game.Bridge.invokeMethod({ method: "openCenter" });
        }
    }

    /** 音乐音量改变 */
    private changeMusicVol(e: Laya.Event) {
        let _t = this;
        let owner = _t.owner;
        let vol = owner.musicSd.value;
        Game.Model.setting.setMusicVol(vol);
    }
    /** 音效音量改变 */
    private changeSoundVol(e: Laya.Event) {
        let _t = this;
        let owner = _t.owner;
        let vol = owner.soundSd.value;
        Game.Model.setting.setSoundVol(vol);
    }

    private touchShake() {
        let _t = this;
        let owner = _t.owner;
        Game.Model.setting.setShake(owner.btnShake.selected);
    }

    private initUI() {
        let _t = this;
        let owner = _t.owner;
        let setting = Game.Model.setting;
        owner.btnShake.selected = setting.getShake();
        owner.musicSd.value = setting.getMusicVol();
        owner.soundSd.value = setting.getSoundVol();
    }

    protected upBtnBox() {
        let t = this;
        let val = t.owner.btnBox.value;
        if (t.lastVal != val) {
            t.lastVal = val;
            Laya.LocalStorage.setItem('lang', val);
            Game.Bridge.reload();
        }
    }
}