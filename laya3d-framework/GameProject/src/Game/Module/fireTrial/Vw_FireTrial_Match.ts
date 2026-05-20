import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";
import Game from "../../Game";
import { Item_FireTrial_Head } from "./Item_FireTrial_Head";
import Runtime_Vw_FireTrial_Match from "./Runtime_Vw_FireTrial_Match";


/**
 * @ Author: 
 * @ Date: 2026/4/14 15:35:36
 * @ Description: 
*/
export default class Vw_FireTrial_Match extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "fireTrial/Vw_FireTrial_Match";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_FireTrial_Match;

    public get owner() {
        return this._owner;
    }

    private timeId: string
    private curSum = 1
    private timeHead: string

    private headList: Item_FireTrial_Head[] = []
    private ownHead: Item_FireTrial_Head
    
    protected inited(_t: this): void {
        let owner = _t.owner;

        // owner.lbTitle.text = LanguageMgr.getTxt(751)
        owner.lbDes.text = LanguageMgr.getTxt(756)
        owner.lbClose.text = LanguageMgr.getTxt(757)
    }

    public onOpen(arg?: any) {
        super.onOpen(arg);
        let t = this, owner = t.owner;

        t.curSum = 1
        t.setCnt()
        t.AddHead()
        owner.imgTitle.src = ResPath.getAtlasImgPath(EnumAltas.Language, "Bm_bt_bfdb");
        owner.imgJl.src = ResPath.getAtlasImgPath(EnumAltas.Language, "bg_fireTrial4");
    }

    public onClose() {
        super.onClose();
        let t = this;
        if (t.timeId) {
            XYFrame.Timer.clearById(t.timeId)
            t.timeId = null
        }
        if (t.timeHead) {
            XYFrame.Timer.clearById(t.timeHead)
            t.timeHead = null
        }

        for (let i = 0; i < t.headList.length; i++) {
            // XYFrame.Tween.kill(t.headList[i])
            t.headList[i].removeSelf()
            XYFrame.PoolMgr.releasePrefabInst(t.headList[i])
        }
        t.headList.length = 0
        t.ownHead.removeSelf()
        XYFrame.PoolMgr.releasePrefabInst(t.ownHead)
        t.ownHead = null

        Game.Model.fireTrial.CG573()
    }

    /**添加头像 */
    private AddHead() {
        let t = this
        //先添加自己
        let ownData = Game.Model.fireTrial.getMyHeadData()
        let head = Item_FireTrial_Head.create(t.owner.headCom, 119, 162, ownData)
        t.ownHead = head
        head.setScale(0.9)
        // t.headList.push(head)

        //随机头像
        if (t.timeHead) {
            XYFrame.Timer.clearById(t.timeHead)
            t.timeHead = null
        }
        t.timeHead = XYFrame.Timer.loop(100,t.headTime, t)
        t.headTime(0,t)
    }

    private headTime(tm:number,t: this) {
        let head = t.createHead()
        head.setScale(0.6)
        t.headList.push(head)
        if (t.headList.length > 20) {
            if (t.timeHead) {
                XYFrame.Timer.clearById(t.timeHead)
                t.timeHead = null
            }
        }
        t.owner.headCom.setChildIndex(t.ownHead, t.owner.headCom.numChildren - 1);
    }

    /**随机创建一个头像 */
    private createHead() {
        let t = this, owner = t.owner
        let x = Math.random() * owner.headCom.width + 5
        let y = Math.random() * owner.headCom.height + 5

        let headData = Game.Model.fireTrial.getRandomHeadData()
        let head = Item_FireTrial_Head.create(owner.headCom, x, y, headData)
        head.alpha = 0
        t.tweenTo(head, { alpha: 1 }, 200)
        return head
    }

    private setCnt() {
        let t = this
        if (t.timeId) {
            XYFrame.Timer.clearById(t.timeId)
            t.timeId = null
        }
        t.timeId = XYFrame.Timer.loop(25,t.timeTick, t, 25)
        t.timeTick(0,t)
    }

    private timeTick(tm:number,t: this) {
        t.curSum++
        if (t.curSum >= 100) {
            if (t.timeId) {
                XYFrame.Timer.clearById(t.timeId)
                t.timeId = null
            }
        }
        t.owner.lbSum.text = t.curSum + "/" + 100
    }
}