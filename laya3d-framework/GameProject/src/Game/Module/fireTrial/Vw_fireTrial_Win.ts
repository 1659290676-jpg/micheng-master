import LanguageMgr from "../../../DataStock/LanguageMgr";
import ItemSpineEffect from "../../../XYFrame/Effect/ItemSpineEffect";
import { Ease } from "../../../XYFrame/Tween/Ease";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Game from "../../Game";
import { FireTrial_Head_Data, Item_FireTrial_Head } from "./Item_FireTrial_Head";
import Runtime_Vw_fireTrial_Win from "./Runtime_Vw_fireTrial_Win";


/**
 * @ Author: 
 * @ Date: 2026/4/14 15:36:36
 * @ Description: 
*/
export default class Vw_fireTrial_Win extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "fireTrial/Vw_fireTrial_Win";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_fireTrial_Win;

    public get owner() {
        return this._owner;
    }

    private ownHead: Item_FireTrial_Head
    private roleList: FireTrial_Head_Data[]

    /**渐隐流程列表 */
    private stepArr: Laya.GWidget[]
    private boxSpine: ItemSpineEffect
    private goldSpine: ItemSpineEffect
    private lightSpine: ItemSpineEffect

    private goldSum = 0

    protected inited(_t: this): void {
        let owner = _t.owner;

        // owner.lbTitle.text = LanguageMgr.getTxt(751)
        owner.lbDes1.text = LanguageMgr.getTxt(761)
        owner.lbDes2.text = LanguageMgr.getTxt(762)
        owner.lbDes3.text = LanguageMgr.getTxt(763)
        owner.lbClose.text = LanguageMgr.getTxt(757)


        UIUtils.setList(owner.list, false)
        _t.stepArr = [owner.imgTitle, owner.lbDes1, owner.box, owner.lbDes2, owner.gold, null, owner.lbDes3, null, owner.lbClose]
    }

    public onOpen(arg?: { list: FireTrial_Head_Data[] }) {
        super.onOpen(arg);
        let t = this;

        t.roleList = arg.list
        t.init()

        t.playAni()
    }

    public onClose() {
        super.onClose();
        let t = this, owner = t.owner;
        t.ownHead.removeSelf()
        // XYFrame.Tween.kill(t.ownHead)
        XYFrame.PoolMgr.releasePrefabInst(t.ownHead)
        t.ownHead = null
        // let source = owner.list.source
        // for (let i = 0; i < source.length; i++) {
        //     let item = owner.list.getChildAt(i)
        //     if (item) {
        //         XYFrame.Tween.kill(item)
        //     }
        // }
        owner.list.source = null
        if (t.boxSpine) {
            // t.boxSpine.dispose()
            XYFrame.EffectMgr.onRemove(t.boxSpine);
            t.boxSpine = null
        }
        if (t.goldSpine) {
            // t.goldSpine.dispose()
            XYFrame.EffectMgr.onRemove(t.goldSpine);
            t.goldSpine = null
        }
        if (t.lightSpine) {
            // t.lightSpine.dispose()
            XYFrame.EffectMgr.onRemove(t.lightSpine);
            t.lightSpine = null
        }
        // XYFrame.Tween.kill(t)
        // XYFrame.Tween.kill(owner.gold)
    }

    private init() {
        let t = this

        let ownHead = t.ownHead
        if (!ownHead) {
            ownHead = t.ownHead = Item_FireTrial_Head.create(t.ownHead, 360, 1042, Game.Model.fireTrial.getMyHeadData())
            ownHead.scale(0.9, 0.9)
            ownHead.alpha = 0
        }

        t.tweenDelay(ownHead, 1200).to({ alpha: 1 }, 200)
    }

    // private hideList() {
    //     let t = this
    //     for (let ele of t.stepArr) {
    //         if (ele) {
    //             ele.alpha = 0
    //         }
    //     }
    // }

    private playAni() {
        let t = this, owner = t.owner;
        // t.hideList()
        t.addSpines()
        t.playListAni()
        for (let i = 0; i < t.stepArr.length; i++) {
            let item = t.stepArr[i]
            if (item) {
                item.alpha = 0
                t.tweenDelay(item, i * 300).to({ alpha: 1 }, (i + 1) * 300)
            }
        }

        // t.lbCnt.alpha
        // t.lbCnt.text = Math.floor(10000 / (t.roleList.length + 1)) + ""
        let goldTime = 1000
        t.tweenDelay(owner.gold, goldTime).to({ scaleX: 1.2, scaleY: 1.2, alpha: 1 }, 300).delay(200).to({ scaleX: 1, scaleY: 1 }, 200)
        t.goldSum = 0
        let maxGold = Math.floor(10000 / Game.Model.fireTrial.humanSum)
        owner.lbCnt.text = "0"
        t.tweenDelay(t, goldTime).to({ goldSum: maxGold }, 300, Ease.linear, function () {
            owner.lbCnt.text = Math.floor(t.goldSum) + ""
            console.log(owner.lbCnt.text)
        }).call(function () {
            let lightSpine = t.lightSpine
            if (!lightSpine) {
                // lightSpine = t.lightSpine = UISpine.createEff(t.gold, 298, 144, "fx_yitongjin_2", false);
                lightSpine = t.lightSpine = t.addSpine("effect/fx_KL_yitongjin_2", owner.gold, 301, 213, 1000, 1000, false);

            }
        })
    }

    private addSpines() {
        let t = this
        let boxSpine = t.boxSpine
        if (!boxSpine) {
            // boxSpine = t.boxSpine = UISpine.createEff(t.box, 298, 144, "fx_zhongjijiangli", true);
            boxSpine = t.boxSpine = t.addSpine("effect/fx_KL_zhongjijiangli", t.owner.box, 300, 138, 2000);
        }

        let goldSpine = t.goldSpine
        if (!goldSpine) {
            // goldSpine = t.goldSpine = UISpine.createEff(t.gold, 304, 210, "fx_yitongjin", true, null, 0);
            goldSpine = t.goldSpine = t.addSpine("effect/fx_KL_yitongjin", t.owner.gold, 301, 209, 2000, 0, true, null, 1, 1, 0);
        }
    }

    private playListAni() {
        let t = this, owner = t.owner, source = t.roleList
        owner.list.visible = true
        // t.list.scrollTo(0, 0)
        owner.list.source = source
        for (let i = 0; i < source.length; i++) {
            let item = owner.list.getChildAt(i)
            if (item) {
                item.alpha = 0
            }
        }
        let delay = 1600
        for (let i = 0; i < source.length; i++) {
            let item = owner.list.getChildAt(i)
            if (item) {
                t.tweenDelay(item, delay + (i + 1) * 50).to({ alpha: 1 }, 200)
            }
        }
    }
}