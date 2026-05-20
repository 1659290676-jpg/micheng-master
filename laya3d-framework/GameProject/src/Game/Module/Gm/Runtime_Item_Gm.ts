import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_gm from "../../../DataStock/ConfigData/Ts/Config_gm";
import Game from "../../Game";
import GmUtils from "./GmUtils";
import { Runtime_Item_GmBase } from "./Runtime_Item_Gm.generated";

const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/3/27 16:00:16
 * @ Description: 
*/
@regClass()
export default class Runtime_Item_Gm extends Runtime_Item_GmBase {

    onConstruct(): void {
        let _t = this;
        _t.btn.onClick(_t, _t.clickSend);
        _t.lbInput1.data = 1;
        _t.lbInput2.data = 2;
    }

    private clickSend() {
        let _t = this;
        let vo: Vo_Gm = _t.data;
        if (!vo) return;

        let cfg = ConfigData.gm[vo.id];
        if (!cfg) return;

        let style = Config_gm.getYs(cfg);
        let type = Config_gm.getDlx(cfg);
        let index = Config_gm.getXlx(cfg);
        let msg = _t.lbInput1.text.trim();
        let val2 = _t.lbInput2.text.trim();
        let vis2 = _t.lbInput2.visible;
        vo.data = msg + "," + val2;

        let fun = Config_gm.getHs(cfg);
        if (fun) {
            if ((<any>GmUtils)[fun]) {
                (<any>GmUtils)[fun](vo);
            }
            return;
        }
        if (!type || type < 0) return;

        if (style == 1) {
            if (!vo.input1 && !vo.input2) return;
            msg = "";
            if (vo.input1) {
                if (vo.id == 1001) {
                    // 点击道具
                    msg = vo.input1.type + "_";
                }
                msg += vo.input1.id;
            }
            if (vis2) {
                msg += "_" + _t.getVal2(vo, val2);
            }
        } else if (vis2) {
            msg += "_" + _t.getVal2(vo, val2);
        }

        Game.Model.gm.CG81(type, index, msg);
    }

    private getVal2(vo: Vo_Gm, txt: string) {
        if (vo.input2 && vo.input2.id) {
            return vo.input2.id;
        }
        return txt;
    }

    /**
     * 连接回调
     * @param data 
     * @param type 
     * @returns 
     */
    public callLink(data: Vo_GmLink, type: number) {
        let _t = this;
        let vo: Vo_Gm = _t.data;
        if (!vo) return;
        if (type == 1) {
            vo.input1 = data;
            _t.lbInput1.text = data.text + "#" + data.id;
        } else {
            vo.input2 = data;
            _t.lbInput2.text = data.text + "#" + data.id;
        }
    }

    protected dataChanged(): void {
        let _t = this;
        let vo: Vo_Gm = _t.data;
        if (!vo) return;
        let cfg = ConfigData.gm[vo.id];
        if (!cfg) return;

        let style = Config_gm.getYs(cfg);
        let type = Config_gm.getDlx(cfg);
        let index = Config_gm.getXlx(cfg);

        _t.lbInput1.mouseEnabled = _t.lbInput2.mouseEnabled = style > 0 && style < 3;
        _t.lbInput1.visible = _t.bg1.visible = style != 3;
        let title = Config_gm.getBt(cfg);
        let vis2 = false;
        if (title) {
            let l = title.split(",");
            if (l.length > 1) {
                vis2 = true;
                _t.lbTitle2.text = l[1];
            }
            _t.lbTitle1.text = l[0];
        }
        _t.lbInput2.visible = _t.lbTitle2.visible = _t.bg2.visible = vis2;

        let val = vo.data || Config_gm.getT(cfg);
        if (val) {
            let l = val.split(",");
            _t.lbInput1.text = l[0] || "";
            _t.lbInput2.text = l[1] || "";
        } else {
            _t.lbInput1.text = "";
            _t.lbInput2.text = "";
        }
        if (vo.server) {
            if (vis2) {
                _t.lbInput2.text = vo.server;
            } else {
                _t.lbInput1.text = vo.server;
            }
        }

        let lj1 = Config_gm.getLj(cfg);
        if (lj1) {
            _t.lbInput1.on(Laya.Event.INPUT, _t, _t.onTxtInput1);
            if (vo.input1) {
                _t.lbInput1.text = vo.input1.text + "#" + vo.input1.id;
            } else {
                let linkData = GmUtils.getLinks("", cfg, 1, lj1);
                if (linkData && linkData.length > 0) {
                    _t.callLink(linkData[0], 1);
                }
            }
        } else {
            _t.lbInput1.off(Laya.Event.INPUT, _t, _t.onTxtInput1);
        }

        let lj2 = Config_gm.getLj2(cfg);
        if (lj2) {
            _t.lbInput2.on(Laya.Event.INPUT, _t, _t.onTxtInput2);
            if (vo.input2) {
                _t.lbInput2.text = vo.input2.text + "#" + vo.input2.id;
            } else {
                let linkData = GmUtils.getLinks("", cfg, 1, lj2);
                if (linkData && linkData.length > 0) {
                    _t.callLink(linkData[0], 2);
                }
            }
        } else {
            _t.lbInput2.off(Laya.Event.INPUT, _t, _t.onTxtInput2);
        }

    }

    private onTxtInput1() {
        let _t = this;
        let vo: Vo_Gm = _t.data;
        if(!vo) return;
        if(vo.linkCall) {
            vo.linkCall(vo.linkThis, _t, _t.lbInput1);
        }
    }

    private onTxtInput2() {
        let _t = this;
        let vo: Vo_Gm = _t.data;
        if(!vo) return;
        if(vo.linkCall) {
            vo.linkCall(vo.linkThis, _t, _t.lbInput2);
        }
    }

}
