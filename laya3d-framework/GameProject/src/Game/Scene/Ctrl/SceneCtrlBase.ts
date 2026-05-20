import Logger from "../../../XYFrame/Logger/Logger";
import ArrayUtils from "../../../XYFrame/Utils/ArrayUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";

/**
 * @ Author: XXL
 * @ Date: 2026-04-10 17:17
 * @ Description: 描述
*/
export default class SceneCtrlBase extends Laya.Script implements ISceneCtrl {

    async enter() {
        return true;
    }

    exit() {
        this.__relaseMsg();
    }

    //todo-----------------------------------------消息监听 start------------------------------------------------//
    //#region 消息监听

    /** 消息监听字典 */
    private _msgMap: Record<string, Function[]>;
    /**
     * 释放消息监听
     */
    private __relaseMsg() {
        let _t = this;
        if (_t._msgMap) {
            let msg = _t._msgMap;
            _t._msgMap = null;
            if (XYFrame.isInit) {
                for (let type in msg) {
                    let list = msg[type];
                    for (let i = 0; i < list.length; i++) {
                        XYFrame.Msg.off(type, <any>list[i], _t);
                    }
                }
                XYFrame.PoolMgr.releaseObj(msg);
            }
        }
    }

    /**
     * 添加保存事件
     * @param type 
     * @param listener 
     */
    private _addMsg(type: number | string, listener: Function) {
        let _t = this;
        if (!_t._msgMap) {
            _t._msgMap = XYFrame.PoolMgr.getObj();
        }
        let list = _t._msgMap[type] || (_t._msgMap[type] = []);
        if (list.indexOf(listener) < 0) {
            list.push(listener);
        }
    }

    /**
     * 添加消息监听，只能调用，不要重装，关闭界面会移除
     * @param type 消息类型
     * @param listener 监听函数
     */
    public onMsg(type: number | string, listener: (ctx: this, ...args: any[]) => any) {
        if (XYFrame.isInit) {
            this._addMsg(type, listener);
            XYFrame.Msg.on(type, listener, this);
        } else if (DEBUG) {
            Logger.warn("XYFrame.Msg.onMsg() 错误：XYFrame未初始化");
        }
    }

    /**
     * 添加一次消息监听，只能调用，不要重装，关闭界面会移除
     * @param type 消息类型
     * @param listener 监听函数
     */
    public onceMsg(type: number | string, listener: (...args: any[]) => any) {
        if (XYFrame.isInit) {
            this._addMsg(type, listener);
            XYFrame.Msg.once(type, listener, this);
        } else if (DEBUG) {
            Logger.warn("XYFrame.Msg.onMsg() 错误：XYFrame未初始化");
        }
    }

    /**
     * 移除消息监听，只能调用，不要重装
     * @param type 监听类型
     * @param listener 监听函数
     */
    public offMsg(type: number | string, listener: (ctx: this, ...args: any[]) => any) {
        if (XYFrame.isInit) {
            let _t = this;
            if (_t._msgMap) {
                ArrayUtils.remove(_t._msgMap[type], listener);
            }
            XYFrame.Msg.off(type, listener, _t);
        } else if (DEBUG) {
            Logger.warn("XYFrame.Msg.offMsg() 错误：XYFrame未初始化");
        }
    }

    //#endregion
    //todo-----------------------------------------消息监听 end------------------------------------------------//
}