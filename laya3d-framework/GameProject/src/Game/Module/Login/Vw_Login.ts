import { BridgeManager } from "../../../Bridge/BridgeManager";
import { GameDesign } from "../../../XYFrame/Design/GameDesign";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import Runtime_Vw_Login from "./Runtime_Vw_Login";
import Vw_ServerList from "./Vw_ServerList";


/**
 * @ Author: 
 * @ Date: 2026/3/10 15:08:17
 * @ Description: 
*/
export default class Vw_Login extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "login/Vw_Login";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Login;

    private _des: string = "";
    private _maxPro: number;
    private _curVal: number;

    public get owner() {
        return this._owner;
    }

    protected inited(_t: this): void {
        let owner = _t.owner;
        owner.reloadBtn.text = window.langStrMap[18];// 重新登录
    }

    protected initListener(): void {
        let _t = this;
        let owner = _t.owner;
        let bg = owner.bg;
        _t.onMsg(EnumMsg.LOGIN_DES, _t.onDes)
        _t.onMsg(EnumMsg.LOGIN_PF_LOGIN_END, _t.onPfLoginEnd);
        _t.onMsg(EnumMsg.SRV_DATA_UPDATE, _t.onSrvDataUpdate);
        _t.onEvent(bg, Laya.Event.LOADED, _t.loadedBg);
        _t.onClick(owner.reloadBtn, _t.touchReload);
        _t.onClick(owner.enterBtn, _t.touchEnter);
        _t.onClick(owner.servBtn, _t.touchServer);
        _t.addLoop(10, _t.onUpdate);
    }

    public onOpen(): void {
        super.onOpen();

        let _t = this;
        let owner = _t.owner;
        let bg = owner.bg;
        owner.lbDes.text = "";
        owner.pb.value = 0;
        _t._des = "";
        _t._maxPro = _t._curVal = 0;
        owner.reloadBtn.visible = false;
        owner.loading.visible = true;

        let gameInfo = window.gameInfo;
        let langs = "";
        if (+gameInfo.lang) {
            langs = "_" + gameInfo.langMap[gameInfo.lang];
        }
        bg.src = `login/bg${langs}.jpg`;
        owner.logo.src = `login/logo${langs}.png`;
        owner.enterBtn.icon = `login/Btn_KaiSYX.png`;
    }

    public onClose(): void {
        super.onClose();
        let _t = this;
        _t._owner.bg.src = "";
    }

    /**
     * 更新说明和进度
     * @param _t 
     * @param msg 
     * @param pro 
     * @param isEnd 
     */
    private onDes(_t: this, msg: string, pro: number, isEnd: boolean) {
        if (msg != null) {
            _t._des = msg;
        }
        if (pro != null) {
            if (_t._maxPro > 0 && _t._maxPro <= pro) {
                _t._curVal = _t._owner.pb.value = _t._maxPro;
            }
            _t._maxPro = pro;
        }
        _t._owner.lbDes.text = msg + " " + _t._curVal.toFixed(2) + "%";
        if (isEnd) {
            _t.owner.reloadBtn.visible = true;
        }
    }

    /**
     * 平台登录结束
     * @param _t 
     */
    private onPfLoginEnd(_t: this) {
        let userInfo = BridgeManager.ins.userInfo;
        if (userInfo.whitelist || DEBUG) {
            let owner = _t.owner;
            owner.input.visible = true;
            owner.loading.visible = false;
            _t.onSrvDataUpdate(_t);
            owner.lbId.text = userInfo.user_id + "";
        } else {
            XYFrame.Msg.emit(EnumMsg.LOGIN_USER_END);
        }
    }

    private onSrvDataUpdate(_t: this) {
        let owner = _t.owner;
        if (BridgeManager.ins.info.servSocket)
            owner.servBtn.title = BridgeManager.ins.info.servSocket.name;
    }

    /**
     * 背景加载完成
     * @returns 
     */
    private loadedBg() {
        let _t = this;
        if (!_t.isOpen) {
            return;
        }

        _t.calcSize();

        XYFrame.Msg.emit(EnumMsg.LOGIN_UI_OPENED);
    }

    /**
     * 点击重新登录
     */
    private touchReload() {
        // 重新加载
        Game.LoginMgr.build();
    }

    /**
     * 点击登录
     */
    private touchEnter() {
        let owner = this.owner;
        let user_id = owner.lbId.text;
        // 删除所有空格
        user_id = user_id.replace(/\s+/g, "");
        if (user_id == "") {
            console.warn("请输入用户ID");
            return;
        }
        let info = BridgeManager.ins.userInfo;
        info.user_id = user_id;
        if (DEBUG) {
            Laya.LocalStorage.setItem("lastAccount", user_id);
        }
        owner.input.visible = false;
        owner.loading.visible = true;
        XYFrame.Msg.emit(EnumMsg.LOGIN_USER_END);
    }

    private touchServer() {
        XYFrame.UIMgr.open(Vw_ServerList);
    }

    /**
     * 时间更新
     * @param dt 
     * @param _t 
     */
    private onUpdate(dt: number, _t: this) {
        if (_t._curVal < _t._maxPro) {
            _t._curVal += dt / 100;
            if (_t._curVal > _t._maxPro) {
                _t._curVal = _t._maxPro;
            }
            _t._owner.pb.value = _t._curVal;

            _t._owner.lbDes.text = _t._des + " " + _t._curVal.toFixed(2) + "%";
        }
    }

    /**
     * 计算背景尺寸
     */
    private calcSize() {
        let _t = this;
        let bg = _t._owner.bg;
        if (bg.texture) {
            let width = _t._owner.width;
            let height = GameDesign.showHeight;
            let s = Math.max(width / bg.texture.width, height / bg.texture.height);
            bg.y = -_t.owner.y;
            bg.scale(s, s);
        }
    }

    public onResize(): void {
        super.onResize();
        this.calcSize();
    }
}