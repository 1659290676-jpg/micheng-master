import ConfigData from "../../../../DataStock/ConfigData/ConfigData";
import ConfigUtils from "../../../../DataStock/ConfigUtils";
import EnumKey from "../../../../DataStock/GameData/EnumKey";
import LanguageMgr from "../../../../DataStock/LanguageMgr";
import ResPath from "../../../../XYFrame/Resource/ResPath";
import { XYFrame } from "../../../../XYFrame/XYFrame";
import { EnumAltas } from "../../../EnumAtlas";
import Game from "../../../Game";
import Vw_RewardTip from "../../Common/Vw_RewardTip";
import ItemTipsMgr from "../../Tip/ItemTipsMgr";
import Vw_WarOrderBuyTip from "../Vw_WarOrderBuyTip";
import { Item_WarOrder1Base } from "./Item_WarOrder1.generated";

const { regClass } = Laya;

@regClass()
export class Item_WarOrder1 extends Item_WarOrder1Base {
    public static readonly PREFAB = "warOrder/Item_WarOrder1";

    public actId: number = 0;
    // private jl1: number[][];
    // private jl2: number[][];
    onConstruct() {
        super.onConstruct();
        this.uiInit();
    }

    protected uiInit(): void {
        let t = this;
        // t.btnFetch1.on(Laya.Event.CLICK, t, t.onClickBtnFetch1);
        // t.btnFetch2.on(Laya.Event.CLICK, t, t.onClickBtnFetch2);
        t.btnFetch1.text = LanguageMgr.getTxt(634);
        t.btnFetch2.text = LanguageMgr.getTxt(634);
        t.item1.on(Laya.Event.CLICK, t, t.onClickIcon1);
        t.item2.on(Laya.Event.CLICK, t, t.onClickIcon2);
    }


    setData(data: Struct_zl_104, actId: number) {
        let t = this;
        t.actId = actId;
        t.data = data;
        // t.jl1 = t.jl2 = null;
        let vo = Game.Model.warOrder.getVo(actId);
        if (vo) {
            t.visible = true;
            t.setIcon(t.icon1, data.icon1, data.free);
            t.setState(actId, 1, data.id, !!vo.isBuy);
            t.setIcon(t.icon2, data.icon2, data.advance);
            t.setState(actId, 2, data.id, !!vo.isBuy);
            t.imgStar.visible = data.lv == 0;
            t.txtLv.visible = data.lv > 0;
            t.txtLv.text = data.lv + "";
            let cfgZlDj = ConfigData.battlelevel_104[vo.lv + 1];
            let lv = cfgZlDj ? vo.lv + 1 : vo.lv
            t.imgCur.visible = data.lv == lv;
            t.imgPro1.src = ResPath.getAtlasImgPath(EnumAltas.WarOrder, lv >= data.lv ? "Bm_CenterPro" : "Bm_CenterProBg");
            t.imgPro2.src = ResPath.getAtlasImgPath(EnumAltas.WarOrder, lv >= data.lv ? "Bm_6" : "Bm_5");
            t.img1.src = ResPath.getAtlasImgPath(EnumAltas.WarOrder, lv >= data.lv ? "Bm_3" : "Bm_3_0");
        } else {
            t.visible = false;
            t.imgCur.visible = false;
        }
    }

    private setIcon(comIcon: Laya.GWidget, icon: string, jl: number[][]) {
        let img: Laya.GImage = comIcon.getChild("img");
        let txtNum: Laya.GTextField = comIcon.getChild("txtNum");
        if (icon) {
            img.src = ResPath.getAtlasImgPath("Item", icon);
            txtNum.text = "";
        } else {
            // jl = jl.split(";")[0]
            let arr: number[] = jl[0];
            // let arr: number[] = ConfigUtils.splitStr(jl, 1);
            img.src = ConfigUtils.getItemIconPath(arr[0], arr[1]);
            let textNum = arr[2] + "";
            /// 文本是否居中显示
            let isCenterTxt = true;
            if (arr[0] == EnumKey.ITEM) {
                let cfg: Struct_daoju_102 = <any>ConfigUtils.getGoodCfg(arr[0], arr[1]);
                if (cfg.l == 4 || cfg.l == 5) { // 类型5 不显示数量
                    txtNum.text = "";
                    return;
                }
                isCenterTxt = false;
                textNum = "x" + textNum;
            }
            txtNum.text = textNum;
            if (isCenterTxt) {
                txtNum.x = img.width / 2 - txtNum.textWidth / 2;
            } else {
                txtNum.x = img.width - txtNum.textWidth;
            }
        }
    }

    /**
     * 
     * @param _type 1：免费档状态   2: 进阶档状态
     */
    private setState(actId: number, _type: number, id: number, isBuy: boolean) {
        let t = this;
        let btn = _type == 1 ? t.item1 : t.item2;
        // 已领取组件
        let imgGet = _type == 1 ? t.imgGet1 : t.imgGet2;
        let imgLock = t.imgLock;
        /**可领取组件*/
        let btnFetch = _type == 1 ? t.btnFetch1 : t.btnFetch2;

        imgLock.visible = !isBuy;

        let warOrder = Game.Model.warOrder;

        let isFetched = warOrder.isFetched(actId, _type, id);
        if (isFetched) {
            imgGet.visible = true;
            btnFetch.visible = false;
        } else {
            imgGet.visible = false;
            let isCanFetch = warOrder.isCanFetch(actId, _type, id);
            if (isCanFetch) {
                btnFetch.visible = true;
            } else {
                btnFetch.visible = false;
            }
        }
    }

    protected onClickBtnFetch1() {
        let t = this;
        if (!t.data) return;
        let vo = Game.Model.warOrder.getVo(t.actId);
        if (!vo) {
            return;
        }
        let cfg: Struct_zl_104 = t.data;
        if (Game.Model.warOrder.isCanFetch(t.actId, 1, cfg.id)) {
            Game.Model.warOrder.CG523(t.actId, 1, cfg.id);
            let jl1 = t.getJl1();
            if (jl1) {
                ItemTipsMgr.showReward(jl1, t.icon1);
            }
            return true;
        }
    }

    protected onClickBtnFetch2() {
        let t = this;
        if (!t.data) return;
        let vo = Game.Model.warOrder.getVo(t.actId);
        if (!vo || !vo.isBuy) {
            return;
        }
        let cfg: Struct_zl_104 = t.data;
        if (Game.Model.warOrder.isCanFetch(t.actId, 2, cfg.id)) {
            Game.Model.warOrder.CG523(t.actId, 2, cfg.id);
            let jl2 = t.getJl2();
            if (jl2) {
                ItemTipsMgr.showReward(jl2, t.icon2);
            }
            return true;
        }
    }

    private getJl1(): number[][] {
        let t = this;
        let cfg: Struct_zl_104 = t.data;
        if (!cfg) return;
        // if (!t.jl1) {
        //     t.jl1 = ConfigUtils.splitStr(cfg.free, 2);
        // }
        // return t.jl1;
        return cfg.free;
    }

    private getJl2(): number[][] {
        let t = this;
        let cfg: Struct_zl_104 = t.data;
        if (!cfg) return;
        // if (!t.jl2) {
        //     t.jl2 = ConfigUtils.splitStr(cfg.advance, 2);
        // }
        // return t.jl2;
        return cfg.advance;
    }

    protected onClickIcon1() {
        let t = this;
        if (t.onClickBtnFetch1()) return;
        let vo = Game.Model.warOrder.getVo(t.actId);
        if (!vo) return;
        let cfg: Struct_zl_104 = t.data;
        if (!cfg) return;
        let isFetched = vo.ids1 && vo.ids1.indexOf(cfg.id) != -1;
        if (isFetched) { // 奖励已领取
            ItemTipsMgr.showDescTip(t.icon1, LanguageMgr.getTxt(693));
            return;
        }
        let jl1 = t.getJl1();
        if (jl1) {
            if (cfg.icon1) {
                // 宝箱， 弹宝箱包含的道具
                Vw_RewardTip.open(jl1, t.icon1);
            } else {
                // 道具， 弹道具详情
                // ItemTipsMgr.showItemDescTip(t.icon1, t.jl1[0]);
                ItemTipsMgr.showDescTip(t.icon1, LanguageMgr.getTxt(692));
            }
        }
    }

    protected onClickIcon2() {
        let t = this;
        if (t.onClickBtnFetch2()) return;
        let vo = Game.Model.warOrder.getVo(t.actId);
        if (!vo) return;
        let cfg: Struct_zl_104 = t.data;
        if (!cfg) return;
        if (cfg.lv == 0) {
            let vo = Game.Model.warOrder.getVo(t.actId);
            if (vo && !vo.isBuy) {
                XYFrame.UIMgr.open(Vw_WarOrderBuyTip, { actId: t.actId });
                return;
            }
        }
        let isFetched = vo.ids2 && vo.ids2.indexOf(cfg.id) != -1;
        if (isFetched) { // 奖励已领取
            ItemTipsMgr.showDescTip(t.icon2, LanguageMgr.getTxt(693));
            return;
        }
        let jl2 = t.getJl2();
        if (jl2) {
            if (cfg.icon2) {
                // 宝箱， 弹宝箱包含的道具
                Vw_RewardTip.open(jl2, t.icon2);
            } else {
                // 道具， 弹道具详情
                // ItemTipsMgr.showItemDescTip(t.icon2, t.jl2[0]);
                let textId: number;
                if (vo.isBuy) {
                    textId = 692;
                } else {
                    if (vo.lv >= cfg.lv) {
                        textId = 690;
                    } else {
                        textId = 691;
                    }
                }
                ItemTipsMgr.showDescTip(t.icon2, LanguageMgr.getTxt(textId));
            }
        }
    }
}