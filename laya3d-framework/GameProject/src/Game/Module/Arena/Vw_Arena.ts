import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import DateUtils from "../../../XYFrame/Utils/DateUtils";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Game from "../../Game";
import Vw_RewardTip from "../Common/Vw_RewardTip";
import Vw_Role_Name from "../Role/Vw_Role_Name";
import { Item_Arena_Add_Data } from "./Item_Arena_Add";
import { Rank_Data } from "./Model_Arena";
import Runtime_Vw_Arena from "./Runtime_Vw_Arena";
import Vw_Arena_Guilde from "./Vw_Arena_Guilde";


/**
 * @ Author: 
 * @ Date: 2026/4/14 15:10:28
 * @ Description: 
*/
export default class Vw_Arena extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "arena/Vw_Arena";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_Arena;

    public get owner() {
        return this._owner;
    }

    // private addArr = [1, 2, 3, 5, 10]
    private timeId: string
    private isEnd: boolean
    /**【【进行中列表y，进行中列表高】，【【结束列表y，结束列表高】】】 */
    private listArg: number[][] = [[645, 796], [709, 597]]

    protected inited(_t: this): void {
        let owner = _t.owner;

        owner.lbDes1.text = LanguageMgr.getTxt(631)
        owner.lbDes2.text = LanguageMgr.getTxt(632)
        owner.lbDes3.text = LanguageMgr.getTxt(633)
        owner.btnGet.getChild("txt").text = LanguageMgr.getTxt(634)
        owner.lbTitle.text = LanguageMgr.getTxt(639)
        owner.lbDes.text = LanguageMgr.getTxt(635)

        UIUtils.setList(owner.addList, false)
        UIUtils.setList(owner.rankList)
    }

    protected initListener(): void {
        let _t = this, owner = _t.owner;
        _t.onClick(owner.btnClose, _t.closeSelf);
        _t.onClick(owner.btnGet, _t.closeSelf);
        _t.onClick(owner.btnDetail, _t.onClickDetail);
        _t.onClick(owner.btnBox, _t.onClickReward);
    }

    public onOpen(arg?: { list: Rank_Data[], isEnd: boolean }) {
        super.onOpen(arg);
        let t = this;

        // t.onEvent(EnumEvent.OPEN_ARENA, t.openUi)

        // Game.Model.arena.CG551()
        t.isEnd = arg.isEnd
        t.openUi(arg.list)

        if (Game.Model.arena.isGuide) {
            XYFrame.UIMgr.open(Vw_Arena_Guilde)
            if (!Game.Model.hero.isSetName && Game.isOnline) {
                XYFrame.UIMgr.open(Vw_Role_Name);
            }
            Game.Model.arena.isGuide = false
        }
    }

    public onClose() {
        super.onClose();
        let t = this, owner = t.owner;
        owner.addList.source = null
        owner.rankList.source = null
        // t.offEvent(EnumEvent.OPEN_ARENA, t.openUi)

        if (t.timeId) {
            XYFrame.Timer.clearById(t.timeId)
            t.timeId = null
        }
        Game.StepMgr.triggerStep()
        owner.bg.src = null;
    }

    public onResize(): void {
        super.onResize();
        let t = this, owner = t.owner;
        let height = Laya.stage.height;
        t.owner.height = height;
        // owner.back.height = height
        owner.rankList.height = t.isEnd ? (height - owner.rankList.y - 84) : (height - owner.rankList.y)
        // let listHeight = height - t.m_list.y;
        // t.m_list.height = t.m_progressPanel.height = listHeight;
    }

    private openUi(list: Rank_Data[]) {
        let t = this
        t.setData()
        t.setRank(list)
        t.setBase()
    }

    private setData() {
        let t = this, owner = t.owner;
        if (t.isEnd) {
            t.setEndContent()
            owner.contentCur.visible = false
            owner.contentEnd.visible = owner.btnGet.visible = owner.imgBottom.visible = true
        } else {
            t.setCurContent()
            owner.contentCur.visible = true
            owner.contentEnd.visible = owner.btnGet.visible = owner.imgBottom.visible = false
        }
    }

    private setRank(list: Rank_Data[]) {
        let t = this, owner = t.owner;
        let index = 0
        for (let i = 0; i < list.length; i++) {
            if (list[i].playerId == Game.Model.hero.vo.id) {
                index = i
                break
            }
        }
        owner.rankList.source = list
        owner.rankList.scroller.posY = index * 146
    }

    /**进行中 */
    private setCurContent() {
        let t = this
        let arr: Item_Arena_Add_Data[] = []
        let geartList = Game.Model.arena.gearList
        for (let i = 0, len = geartList.length; i < len; i++) {
            let pos = 1;
            if (i == 0) {
                pos = 0
            } else if (i == len - 1) {
                pos = 2
            }
            arr.push({ add: geartList[i], isSelect: geartList[i] == Game.Model.arena.getGearByIndex(Game.Model.arena.tab), pos: pos })
        }
        t.owner.addList.source = arr


        if (t.timeId) {
            XYFrame.Timer.clearById(t.timeId)
            t.timeId = null
        }
        t.timeId = XYFrame.Timer.loop(1000, t.timeTick, t)
        t.timeTick(0, t)
    }

    /**结束展示 */
    private setEndContent() {
        let t = this, owner = t.owner, mod = Game.Model.arena
        let rank = mod.rank || mod.retRank;
        owner.lbRank.text = "#" + rank;
        let img = owner.btnBox.getChild("img") as Laya.GImage
        img.src = mod.getIconbyId(rank)
        owner.lbItemCnt.text = mod.getNumbyId(rank) + "";

        let cfg = ConfigData.getStreakRank_106(rank)
        if (!cfg) return
        let bo = !!cfg.reward
        owner.rankBox.x = bo ? 36 : 251
        owner.lbDes2.visible = owner.btnBox.visible = owner.lbItemCnt.visible = owner.imgLight.visible = bo
    }

    private setBase() {
        let t = this, owner = t.owner;
        // let isEnd = t.isEnd
        // let index = isEnd ? 1 : 0
        // owner.rankList.y = t.listArg[index][0]
        // owner.rankList.height = t.listArg[index][1]

        // let height = isEnd ? 727 : 642
        // owner.bg.height = height
        // Frame.ImgMgr.loadImg(isEnd ? "bg_arena_2.png" : "bg_arena_1.png", t.bg);
        // owner.bg.src = ResPath.getImgPath(isEnd ? "arena/bg_arena_2.png" : "arena/bg_arena_1.png")
        owner.bg.src = ResPath.getImgPath("arena/bg_arena_1.png")
        // owner.lbTitle.y = isEnd ? 335 : 315
        // owner.titleBg.y = isEnd ? 271 : 251
    }

    private timeTick(tm: number, t: this) {
        t.owner.lbTime.text = DateUtils.getDHM(Game.Model.arena.getEndTime())
    }

    private onClickDetail() {
        XYFrame.UIMgr.open(Vw_Arena_Guilde)
    }

    private onClickReward() {
        let cfg = ConfigData.getStreakRank_106(Game.Model.arena.rank)
        if (!cfg) return
        let reward = cfg.reward
        if (reward) {
            Vw_RewardTip.open(ConfigUtils.splitStr(reward, 2), this.owner.btnBox)
        }
    }
}