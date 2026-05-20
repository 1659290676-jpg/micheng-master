import { XYFrame } from "../../../XYFrame/XYFrame";
import Game from "../../Game";
import Vw_Error from "../Role/Vw_Error";

/**
 * @ Author: XXL
 * @ Date: 2026-04-16 17:12
 * @ Description: 离线管理类
*/
export default class OfflineMgr {
    /**正常掉线*/
    public static readonly TYPE_NORMAL = 100;
    /**服务器踢下线*/
    public static readonly TYPE_KICK = 13;
    /**封号*/
    public static readonly TYPE_SEAL = 2;
    /**封号处理问题*/
    public static readonly TYPE_SEAL2 = 3;
    /**服务器维护*/
    public static readonly TYPE_WEI_HU = 7;
    /**顶号*/
    public static readonly TYPE_REPLACE = 12;
    /**连接错误*/
    public static readonly TYPE_ERROR = 101;
    /**连接超时*/
    public static readonly TYPE_TIMEOUT = 102;
    /**时间错乱*/
    public static readonly TYPE_TIMESCALE = 103;

    /**掉线时间*/
    private static tm: number;
    /**掉线类型*/
    public static type: number;
    /**
     * 掉线处理
     * @param type 掉线类型
     */
    public static handle(type = OfflineMgr.TYPE_NORMAL) {
        if (!OfflineMgr.type || OfflineMgr.type == OfflineMgr.TYPE_NORMAL) {
            OfflineMgr.type = type;
        }
        if (!OfflineMgr.tm) {
            OfflineMgr.tm = Date.now();
        }

        OfflineMgr.openUI();
    }

    /**
     * 打开离线ui
     * @param bo false检测是否可重连 true直接打开提示界面
     */
    public static openUI(bo?: boolean) {
        //暂停时不需要弹出
        // if (!Frame.getPause()) {
        Vw_Error.open(2);
        // }
    }

    public static onClick() {
        if (OfflineMgr.type) {
            OfflineMgr.type = null;
            OfflineMgr.tm = 0;
            if (OfflineMgr.isRelogin()) {//断线超过两分钟，重新刷新登录
                XYFrame.UIMgr.close(Vw_Error);
                Game.LoginMgr.buildRelogin();
            } else {
                Game.Bridge.reload();
            }
        }
    }

    /**
     * 是否可断线重连
     */
    public static isRelogin() {
        //断线超过两分钟，重新刷新登录
        return (OfflineMgr.type == OfflineMgr.TYPE_NORMAL || OfflineMgr.type == OfflineMgr.TYPE_ERROR || OfflineMgr.type == OfflineMgr.TYPE_TIMEOUT) && Game.isEnter && !Game.isNetEnter && OfflineMgr.tm + 60000 * 5 > Date.now() && (!Game.Bridge.userInfo.offline);
    }

    /**
     * 判断是否需要重新断线重连
     */
    public static checkRelogin() {
        if (OfflineMgr.type) {
            if (OfflineMgr.isRelogin()) {//断线超过一分钟，重新刷新登录
                OfflineMgr.type = null;
                OfflineMgr.tm = 0;
                XYFrame.UIMgr.close(Vw_Error);
                Game.LoginMgr.buildRelogin();
            } else if (Game.isEnter && !Game.isNetEnter) {
                OfflineMgr.openUI(true);
            }
        }
    }

    /**
     * 获取描述
     * @returns 
     */
    public static getMsg() {
        let langMap = window.langStrMap;
        let msg = langMap[10]/**"服务器断开连接！"*/;
        switch (OfflineMgr.type) {
            case OfflineMgr.TYPE_REPLACE:
                msg = langMap[11]/**"你的账号在另一个地方登录，你已被迫下线。\n若非本人操作，账号可能被盗！"*/;
                break;
            case OfflineMgr.TYPE_SEAL:
            case OfflineMgr.TYPE_SEAL2:
                msg = langMap[12]/**"您的帐号已被封"*/;
                break;
            case OfflineMgr.TYPE_WEI_HU:
                msg = langMap[13]/**"服务器维护中，请稍后"*/;
                break;
            case OfflineMgr.TYPE_ERROR:
                (!Game.isEnter || (Game.LoginMgr.isLogin() && Game.LoginMgr.type == Game.LoginMgr.TYPE_NORMAL)) && (msg = langMap[14]/**"连接服务器失败，请重新登录"*/);
                break;
            case OfflineMgr.TYPE_TIMEOUT:
                (!Game.isEnter || (Game.LoginMgr.isLogin() && Game.LoginMgr.type == Game.LoginMgr.TYPE_NORMAL)) && (msg = langMap[15]/**"登录超时，请重新登录"*/);
                break;
        }
        return msg || "";
    }
}