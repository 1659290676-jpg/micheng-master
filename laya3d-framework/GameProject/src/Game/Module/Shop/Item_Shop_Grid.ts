import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_recharge_011 from "../../../DataStock/ConfigData/Ts/Config_recharge_011";
import Config_shop_101 from "../../../DataStock/ConfigData/Ts/Config_shop_101";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import ItemSpineEffect from "../../../XYFrame/Effect/ItemSpineEffect";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";
import Game from "../../Game";
import { EnumSysState } from "../Global/EnumSysState";
import EnumShop, { ShopConst } from "./EnumShop";

const { regClass } = Laya;


@regClass()
export class Item_Shop_Grid extends Laya.GButton {
    public img: Laya.GImage
    public btn: Laya.GButton
    public imgAd: Laya.GImage
    public txtBtn: Laya.GTextField
    public lbName: Laya.GTextField

    private effDiKuang: ItemSpineEffect;
    private effWuPin: ItemSpineEffect;
    private bigSpine: ItemSpineEffect

    public onAwake(): void {
        let t = this;
        t.sound = "buy";
    }

    public setData(id: number) {
        let t = this

        let cfg = ConfigData.getShop_101(id)
        if (cfg) {
            let stype = cfg.type;
            let isLanguage = stype == EnumShop.Card || stype == EnumShop.Item;
            t.img.src = ResPath.getAtlasImgPath(isLanguage ? EnumAltas.Language : EnumAltas.Shop, id + "");

            if (t.lbName) {
                if (isLanguage) {
                    t.lbName.text = "";
                } else {
                    t.lbName.text = LanguageMgr.getLngTxt(cfg.name);
                }
            }

            let bo = Game.Model.global.adRechargeIsOpen();
            let rechargeId = cfg.rechargeId;
            if (rechargeId) {
                let rCfg = ConfigData.getRecharge_011(rechargeId)
                if (!bo) {
                    if (rCfg) {
                        t.txtBtn.text = LanguageMgr.getTxt(504, Game.Model.recharge.getChargeMoney(rechargeId));
                    }
                } else {
                    t.txtBtn.text = Game.Model.advert.getWatchCntByRechargeId(rechargeId) + "/" + rCfg.adv
                }
            } else {
                let arr = ConfigUtils.splitStr(cfg.goldPrice)
                t.txtBtn.text = arr[2] + ""
            }
            t.imgAd.visible = bo && !!rechargeId;

            if (t.imgAd.visible) {
                let x = t.btn.width - t.imgAd.width - t.txtBtn.textWidth - 10 >> 1;
                t.imgAd.x = x;
                t.txtBtn.x = x + t.imgAd.width + 10;
            } else {
                t.txtBtn.x = t.btn.width - t.txtBtn.textWidth >> 1;
            }

        }
        if (id == ShopConst.warOrder_goodsId || id == ShopConst.ad_goodsId1) {
            // 添加特效
            if (!t.effDiKuang) {
                // t.effDiKuang = UISpine.createEff(t, t.width / 2, t.height / 2, "fx_shangdian_dikuang", true);
                t.effDiKuang = XYFrame.EffectMgr.addSpine("effect/fx_shangdian_dikuang", t, t.width / 2, t.height / 2, 2000)
            }
        } else if (cfg.type == 2) {
            if (!t.effWuPin) {
                // t.effWuPin = UISpine.createEff(t, 100, t.height / 2, "fx_shangdian_wupin", true);
                t.effWuPin = XYFrame.EffectMgr.addSpine("effect/fx_KL_shangdian_wupin", t, 100, t.height / 2, 2000)
            }
        } else {
            if (!t.bigSpine) {
                // t.bigSpine = UISpine.createEff(t, 341, 141, "fx_shangdian_dikuang", true);
                t.bigSpine = XYFrame.EffectMgr.addSpine("effect/fx_KL_shangdian_dikuang", t, 341, 126, 2000)
                t.bigSpine.setAct("animation2")
            }
        }
    }

    destroy(): void {
        this.clear()
        super.destroy();
    }

    clear() {
        let t = this;
        if (t.effDiKuang) {
            // t.effDiKuang.dispose();
            t.effDiKuang.removeSelf();
            XYFrame.EffectMgr.onRemove(t.effDiKuang);
            t.effDiKuang = null;
        }
        if (t.effWuPin) {
            // t.effWuPin.dispose();
            t.effWuPin.removeSelf();
            XYFrame.EffectMgr.onRemove(t.effWuPin);
            t.effWuPin = null;
        }
        if (t.bigSpine) {
            // t.bigSpine.dispose()
            t.bigSpine.removeSelf();
            XYFrame.EffectMgr.onRemove(t.bigSpine);
            t.bigSpine = null
        }
    }
}