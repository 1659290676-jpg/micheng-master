const { regClass } = Laya;
import LanguageMgr from "../../../../DataStock/LanguageMgr";
import Game from "../../../Game";
import ItemTipsMgr from "../../Tip/ItemTipsMgr";
import { Item_WarOrder2Base } from "./Item_WarOrder2.generated";

@regClass()
export class Item_WarOrder2 extends Item_WarOrder2Base {
    public static readonly PREFAB = "warOrder/Item_WarOrder2";

    public actId: number = 0;

    onConstruct() {
        super.onConstruct();
        let t = this
        t.txtTitle.text = LanguageMgr.getTxt(678);
        t.txtDesc.text = LanguageMgr.getTxt(679);
        t.btnFetch.text = LanguageMgr.getTxt(634);
        
        t.on(Laya.Event.CLICK, t, t.onClickItem);
        t.btnFetch.onClick(t, t.onClickBtnFetch);
    }

    setData(data: Struct_zl_104, actId: number) {
        let t = this;
        t.actId = actId;
        t.data = data;
        let warOrder = Game.Model.warOrder;
        let vo = warOrder.getVo(actId);
        if (vo) {
            t.visible = true;
            t.imgSuo.visible = !!vo.isBuy;
            t.proBar.max = warOrder.maxScore;
            t.proBar.value = Math.min(warOrder.maxScore, (vo.pro / 10) * 100);
            t.btnFetch.visible = actId != warOrder.curActId;
        } else {
            t.visible = false;
        }
    }

    private onClickItem() {
        ItemTipsMgr.showDescTip(this.txtTitle, LanguageMgr.getTxt(694));
    }

    /**点击领取积分奖励 */
    private onClickBtnFetch(e: Laya.Event) {
        e.stopPropagation();
        Game.Model.warOrder.CG523(this.actId, 1, 0);
    }
}