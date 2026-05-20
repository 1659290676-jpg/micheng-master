import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_streakRank_106 from "../../../DataStock/ConfigData/Ts/Config_streakRank_106";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { EnumAltas } from "../../EnumAtlas";
import Game from "../../Game";
import Vw_RewardTip from "../Common/Vw_RewardTip";
import { Item_Arena_RankBase } from "./Item_Arena_Rank.generated";
import { Rank_Data } from "./Model_Arena";

const { regClass } = Laya;

@regClass()
export default class Item_Arena_Rank extends Item_Arena_RankBase {

    private isInit: boolean
    private reward: number[][]

    public setData(data: Rank_Data) {
        let t = this
        let rank = data.rank
        let isThree = rank <= 3
        // let cfg = ConfigData.streakRank_106[rank]
        let cfg = ConfigData.getStreakRank_106(rank)
        if (!cfg) return
        let reward = ConfigUtils.splitStr(cfg.reward, 2)

        let isOwn = data.playerId == Game.Model.hero.vo.id
        t.imgRank.visible = isThree
        t.lbRank.visible = !isThree
        t.imgCur.visible = isOwn
        if (isThree) {
            t.imgRank.src = ResPath.getAtlasImgPath(EnumAltas.Arena, "Bm_Rank" + rank)
        }
        t.lbRank.text = rank + ""
        let ownHead = data.avatarUrl ? data.avatarUrl : Game.Model.fireTrial.getHeadSrc(Game.Model.hero.vo.headId)
        let otherHead = Game.Model.fireTrial.getHeadSrc(data.avatarId)
        t.imgHead.src = isOwn ? ownHead : otherHead
        t.lbName.text = data.name
        t.lbSum.text = data.score + ""
        let img = t.btnBox.getChild("img") as Laya.GImage
        if (cfg.icon) {
            img.src = ResPath.getAtlasImgPath(EnumAltas.Item, cfg.icon + "")
        } else {
            if (reward.length == 1) {
                let itemType = reward[0][0] != 1 ? reward[0][0] : reward[0][1]
                img.src = ResPath.getAtlasImgPath(EnumAltas.Item, itemType + "")
            } else {
                img.src = ""
            }
        }
        if (!t.isInit) {
            t.isInit = true
            t.btnBox.onClick(t, t.onClickBox)
        }

        t.reward = reward
        if (reward.length == 1) {
            t.lbItemCnt.text = "x" + reward[0][2]
        } else {
            t.lbItemCnt.text = ""
        }
    }

    public clear() {
        let t = this
        t.btnBox.offClick(t, t.onClickBox)
        t.isInit = false
        t.reward = null
    }

    private onClickBox() {
        let t = this
        if (t.reward) {
            Vw_RewardTip.open(t.reward, t.btnBox)
        }
    }
}