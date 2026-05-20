import { BridgeManager } from "../../../Bridge/BridgeManager";
import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_gm from "../../../DataStock/ConfigData/Ts/Config_gm";
import Config_gm_link from "../../../DataStock/ConfigData/Ts/Config_gm_link";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import { EnumSocket } from "../../../XYFrame/Network/EnumSocket";
import StringUtils from "../../../XYFrame/Utils/StringUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Game from "../../Game";
import { StageSceneCtrl } from "../../Scene/Ctrl/StageSceneCtrl";
import Vw_Gm from "./Vw_Gm";

/**
 * @ Author: XXL
 * @ Date: 2026-03-27 17:52
 * @ Description: gm工具类
*/
export default class GmUtils {
    /**
     * 获取gm连接列表
     * @param text 搜索文本
     * @param cfg 配置
     * @param num 数量
     * @param lj 链接
     * @returns 列表
     */
    public static getLinks(text: string, cfg: any, num = 30, lj?: string): Vo_GmLink[] {
        let list = [];
        let link = lj ? lj : Config_gm.getLj(cfg);
        let c = ConfigData.gm_link;
        let Con = ConfigData as any;
        if (c[link]) {
            list = Config_gm_link.getLinkCfgByKey(link);
            if (list) {
                let l = [];
                let key = "key";
                let count = 0;
                a: for (let i = 0, len = list.length; i < len; i++) {
                    let info = list[i];
                    if (!info || !info[0] || !info[1]) continue;
                    let cfgName = info[0];
                    let funName = "get" + StringUtils.toFirstUpperCase(cfgName);
                    if (!Con[funName]) continue;
                    let keysNames = info[1].split(",");
                    if (keysNames.length < 2) continue;
                    let type = info[2];
                    let cfgs = Con[cfgName];
                    if (!cfgs) continue;
                    for (let k in cfgs) {
                        let item = Con[funName](k);
                        let name = keysNames[0] == key ? k : (item[keysNames[0]] || '') + '';
                        let id = keysNames[1] == key ? k : (item[keysNames[1]] || '') + '';
                        if (keysNames[2]) {
                            name += "&" + (keysNames[2] == key ? k : (item[keysNames[2]] || '') + '');
                        }
                        if (text == "" || name.indexOf(text) != -1 || id.indexOf(text) != -1) {
                            let o = <Vo_GmLink>{};
                            o.text = name;
                            o.id = id;
                            o.cfg = item;
                            if (type) {
                                o.type = type;
                                var attr = ConfigUtils.getAttrName(o.type);
                                o.text = o.text + "(" + (attr || o.type) + ")";
                            } else if (cfgName == "heroAttr_105") {
                                o.type = +k;
                                o.id = 0;
                                var attr = ConfigUtils.getAttrName(o.type);
                                o.text = o.text;
                            }
                            count++;
                            l.push(o);
                            if (count >= num) break a;
                        }
                    }
                }
                list = l;
            } else {
                list = Config_gm_link.getListByKey(link) || [];
            }
        }
        return list;
    }

    //todo-----------------------------特殊处理接口start-------------------------------//
    /**清理帐号重登*/
    public static onClearUser(data: Struct_gm) {
        Game.Model.gm.CG81(data.dlx, data.xlx, "");
        XYFrame.Timer.once(1000, function () {
            //Game.Bridge.reload();
            BridgeManager.ins.reload();
        }, GmUtils);
    }

    public static onCloseNet() {
        XYFrame.UIMgr.close(Vw_Gm);
        XYFrame.SocketMgr.getSocket(EnumSocket.DEFAULT).simulateClose();
    }

    public static onStageStopOther() {
        XYFrame.UIMgr.close(Vw_Gm);
        const ctrl: StageSceneCtrl = Game.SceneMgr && (Game.SceneMgr as any).ctrl;
        if (ctrl) {
            ctrl.isDebugScene = true;
        }
    }
    //todo-----------------------------特殊处理接口end-------------------------------//
}