import ConfigData from "../DataStock/ConfigData/ConfigData";
import Config_functionResource_101 from "../DataStock/ConfigData/Ts/Config_functionResource_101";
import LanguageMgr from "../DataStock/LanguageMgr";
import Singleton from "../XYFrame/Base/Singleton";
import { XYFrame } from "../XYFrame/XYFrame";
import { EnumMsg } from "./EnumMsg";
import Game from "./Game";
import Vw_Msg from "./Module/Tip/Vw_Msg";

const { regClass } = Laya;

/**
 * @ Author: XXL
 * @ Date: 2026-03-26 15:28
 * @ Description: 系统开启关卡器
*/
@regClass()
export default class SystemMgr extends Singleton {

    /** 已系统开启 */
    private openedMap: Record<string, boolean> = {};
    /** 未开启的系统 */
    private noOpenMap: Record<string, boolean> = {};

    protected onInit(...args: any[]): void {
        let _t = this;
        XYFrame.Msg.on(EnumMsg.STAGE_LEVEL, _t.onLevMsg, _t);
    }

    /**
     * 关卡更新
     * @param _t 
     */
    private onLevMsg(_t: this) {
        _t.checkOpen(_t);
    }

    /**
     * 检测系统开启
     * @param _t 
     */
    private checkOpen(_t: this) {
        let list: number[];
        for (let k in _t.noOpenMap) {
            if (_t.isOpen(k, false)) {
                delete _t.noOpenMap[k];
                if (!_t.openedMap[k]) {
                    _t.openedMap[k] = true;
                    if (!list) list = [];
                    list.push(parseInt(k));
                }
            }
        }
        if (list) {
            XYFrame.Msg.emit(EnumMsg.SYS_OPEN, list);
        }
    }

    /**
     * 进入游戏初始化
     */
    public init() {
        let _t = this;
        let data = ConfigData.functionResource_101;
        if (data) {
            for (let k in data) {
                if (_t.isOpen(k, false)) {
                    _t.openedMap[k] = true;
                } else {
                    _t.noOpenMap[k] = true;
                }
            }
        }
    }

    /**
     * 判断系统是否开启
     * @param id 系统id
     * @param isMsg 是否提示
     * @returns 
     */
    public isOpen(id: number | string, isMsg?: boolean) {
        let data = ConfigData.functionResource_101[id];
        if (!data) return true;
        if (this.openedMap[id]) return true;
        let con = Config_functionResource_101.getT(data);
        if (con == 1) {
            //或关卡
            let gq = Config_functionResource_101.getGq(data);
            if (gq <= Game.Model.hero.vo.stage_lev) {
                return true;
            }
            if (isMsg) {
                Vw_Msg.setCfgTxt(7, gq);
            }
            return false;
        } else {
            let gq = Config_functionResource_101.getGq(data);
            if (gq > Game.Model.hero.vo.stage_lev) {
                if (isMsg) {
                    Vw_Msg.setCfgTxt(7, gq);
                }
                return false;
            }
            return true;
        }
    }

    /**
     * 是否显示
     * @param id 系统id
     */
    public isShow(id: number | string): boolean {
        let data = ConfigData.functionResource_101[id];
        if (!data) return true;
        if (this.openedMap[id]) return true;
        let gq = Config_functionResource_101.getXsgq(data);
        if (gq && gq > Game.Model.hero.vo.stage_lev) {
            return false;
        }
        return true;
    }

    /**
     * 获取系统名称
     * @param id 
     */
    public getName(id: number | string) {
        let cfg = ConfigData.getFunctionResource_101(id);
        return cfg && cfg.n && LanguageMgr.getLngTxt(cfg.n) || "";
    }
}