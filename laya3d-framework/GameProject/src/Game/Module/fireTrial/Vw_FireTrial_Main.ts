import LanguageMgr from "../../../DataStock/LanguageMgr";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { Ease } from "../../../XYFrame/Tween/Ease";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import DateUtils from "../../../XYFrame/Utils/DateUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Game from "../../Game";
import { Item_FireTrial_Head, FireTrial_Head_Data } from "./Item_FireTrial_Head";
import { Fire_Trial_Pos_Data } from "./Model_FireTrial";
import Runtime_Vw_FireTrial_Main from "./Runtime_Vw_FireTrial_Main";
import Vw_FireTrial_Guide from "./Vw_FireTrial_Guide";


/**
 * @ Author: 
 * @ Date: 2026/4/14 15:34:39
 * @ Description: 
*/
export default class Vw_FireTrial_Main extends UIBase {
    /** 自动生成，预设体路径 */
    public static prefab: string = "fireTrial/Vw_FireTrial_Main";
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_FireTrial_Main;

    public get owner() {
        return this._owner;
    }

    /**所有头像集合 */
    private headMap: Record<number, Item_FireTrial_Head> = {}
    /**自己头像 */
    private myHead: Item_FireTrial_Head
    private vo: Fire_Trial_Pos_Data
    private timeId: string
    /**台子初始位置 */
    private posInitMap: Record<number, number[]> = {}
    private moveTime: string
    private endTimeId: string
    /**是否播放出生动画 */
    private isStartAni: boolean = false


    protected inited(_t: this): void {
        let owner = _t.owner;

        for (let i = 0; i <= Game.Model.fireTrial.posCnt; i++) {
            let pos = owner["img" + i] as Laya.GWidget
            if (pos) {
                _t.posInitMap[i] = [pos.x, pos.y]
            }
        }

        owner.lbTitle.text = LanguageMgr.getTxt(751)
        owner.lbDes.text = LanguageMgr.getTxt(758)
        owner.lbDes1.text = LanguageMgr.getTxt(759)
        owner.lbDes2.text = LanguageMgr.getTxt(760)
        owner.lbFail.text = LanguageMgr.getTxt(764)
        owner.lbClose.text = LanguageMgr.getTxt(757)
        owner.lbReward.text = LanguageMgr.getTxt(646)

    }

    protected initListener(): void {
        let _t = this, owner = _t.owner;
        _t.onClick(owner.btnClose, _t.closeSelf);
        _t.onClick(owner.imgClose, _t.closeSelf);
        _t.onClick(owner.btnDetail, _t.onDetail);
    }

    public onOpen(arg?: Fire_Trial_Pos_Data) {
        super.onOpen(arg);
        let t = this;
        t.vo = arg

        t.isStartAni = !Game.Model.fireTrial.openFlag
        // t.isStartAni = true
        t.init()
        // XYFrame.ImgMgr.loadImg("bg_fireTrial1.png", t.bg);
        t.owner.bg.src = ResPath.getImgPath("fireTrial/bg_fireTrial1.png")
    }

    public onClose() {
        super.onClose();
        let t = this;
        if (t.timeId) {
            XYFrame.Timer.clearById(t.timeId)
            t.timeId = null
        }
        for (let k in t.headMap) {
            // XYFrame.Tween.kill(t.headMap[k])
            t.headMap[k].removeSelf()
            XYFrame.PoolMgr.releasePrefabInst(t.headMap[k])
        }
        // XYFrame.Tween.kill(t.myHead)
        t.myHead.removeSelf()
        XYFrame.PoolMgr.releasePrefabInst(t.myHead)
        t.myHead = null
        t.headMap = {}
        Game.StepMgr.triggerStep()
        // Frame.ImgMgr.free(t.bg);
        t.owner.bg.src = null;

        // for (let i = 1; i <= Game.Model.fireTrial.posCnt; i++) {
        //     let pos = t.owner["img" + i] as Laya.GWidget
        //     if (pos) {
        //         XYFrame.Tween.kill(pos)
        //     }
        // }
        if (t.moveTime) {
            XYFrame.Timer.clearById(t.moveTime)
            t.moveTime = null
        }
        if (t.endTimeId) {
            XYFrame.Timer.clearById(t.endTimeId)
            t.endTimeId = null
        }
        // Game.Model.fireTrial.setBattleResult(0)
    }

    private init() {
        let t = this
        t.hidePos()
        t.createHeadList()
        t.playAni()
        t.setContent()

        if (!Game.Model.fireTrial.openFlag) {
            XYFrame.UIMgr.open(Vw_FireTrial_Guide, 1)
            Game.Model.fireTrial.openFlag = true
        }
    }

    /**创建所有头像 */
    private createHeadList() {
        let t = this, owner = t.owner, mod = Game.Model.fireTrial
        //创建自己
        let myPos = t.getRandomPos()
        t.myHead = Item_FireTrial_Head.create(owner.headBox, myPos[0], myPos[1], mod.getMyHeadData())
        t.myHead.rotation = 1
        t.myHead.setPanelScale(0.5)
        if (t.isStartAni) {
            t.bornAni(t.myHead)
        }

        //创建其他人
        let list = mod.getCurHeadList()
        for (let i = 0; i < list.length; i++) {
            let ele = list[i]
            let pos = t.getRandomPos()
            let head = Item_FireTrial_Head.create(owner.headBox, pos[0], pos[1], ele)
            head.rotation = 1
            head.setPanelScale(0.4)
            t.headMap[ele.belongId] = head
            if (t.isStartAni) {
                head.box.alpha = 0
                XYFrame.Timer.once(i * 50, function () {
                    if (!t.isOpen) return
                    t.bornAni(head)
                }, t)
            } else {
                head.box.alpha = 1
            }
        }

        owner.headBox.setChildIndex(t.myHead, owner.headBox.numChildren)
    }

    /**隐藏台子 */
    private hidePos() {
        let t = this
        let showIndex = t.vo.lastIndex >= 0 ? t.vo.lastIndex : t.vo.curIndex
        for (let i = 0; i <= Game.Model.fireTrial.posCnt; i++) {
            let img = t.owner["img" + i] as Laya.GImage
            if (img) {
                let arr = t.posInitMap[i]
                img.visible = i >= showIndex
                img.rotation = 0
                img.pos(arr[0], arr[1])
            }
        }
    }

    private setContent() {
        let t = this, owner = t.owner, vo = t.vo
        let isWin = !Game.Model.fireTrial.isBattleFail()
        owner.planBox.visible = isWin
        // owner.topBox.y = !isWin ? 52 : 17
        owner.failBox.visible = !isWin
        if (owner.planBox.visible) {
            owner.lbPlan.text = vo.curIndex + "/" + Game.Model.fireTrial.maxWinCount
            owner.lbHuman.text = vo.curCnt + "/" + vo.sumCnt
            if (t.endTimeId) {
                XYFrame.Timer.clearById(t.endTimeId)
                t.endTimeId = null
            }
            t.endTimeId = XYFrame.Timer.loop(1000, t.setEndTime, t)
            t.setEndTime(0, t)
        }
    }

    private setEndTime(tm: number, t: this) {
        t.owner.lbTime.text = DateUtils.getDHM(Game.Model.fireTrial.getEndTime())
    }

    private onDetail() {
        XYFrame.UIMgr.open(Vw_FireTrial_Guide, 4);
        // let removeList= [];
        // for(let i = 0; i < 3; i++) {
        //     removeList.push(Game.Model.fireTrial.removeRandomHead().belongId)
        // }
        // this.dropHead(removeList);
    }

    /***------------------------------------------ 动画 start ------------------------------------------- */

    /**动画 */
    private playAni() {
        let t = this
        let vo = t.vo
        let removeCnt = vo.removeCnt
        if (removeCnt <= 0) return
        // if (vo.lastIndex < 0) return
        //需要删除的列表
        let removeList: number[] = []
        for (let i = 0; i < removeCnt; i++) {
            let curList = Game.Model.fireTrial.getCurHeadList()
            if (curList.length > 0) {
                let data = Game.Model.fireTrial.removeRandomHead()
                removeList.push(data.belongId)
            }
        }
        //剩余的列表
        let lastList: FireTrial_Head_Data[] = Game.Model.fireTrial.getCurHeadList().concat()

        let delayTime = 0
        if (vo.lastIndex >= 0) {
            //跳跃头像
            t.jumpHead(lastList)
            //胜利了自己也要跳
            if (!Game.Model.fireTrial.isBattleFail()) {
                t.jumpOneHead(t.myHead)
            }
            delayTime = 700
        }

        //掉落头像
        t.timeId = XYFrame.Timer.once(delayTime, function () {
            t.jumpFinish(removeList)
        }, t)
    }

    /**头像跳跃 */
    public jumpHead(list: FireTrial_Head_Data[]) {
        let t = this, vo = t.vo
        if (t.moveTime) {
            XYFrame.Timer.clearById(t.moveTime)
            t.moveTime = null
        }
        let timeMap = {}
        for (let ele of list) {
            timeMap[ele.belongId] = Math.random() * 300 + 50
        }
        let timeTick = 30
        let moveMap = {}
        let delay = 30
        let jumpCnt = list.length
        t.moveTime = XYFrame.Timer.loop(delay, function (_dt: number, _t,) {
            for (let ele of list) {
                let bId = ele.belongId
                if (!moveMap[bId] && timeTick >= timeMap[bId]) {
                    let head = t.headMap[bId]
                    if (head) {
                        t.jumpOneHead(head)
                    }
                    moveMap[bId] = true
                    jumpCnt--
                }
            }
            if (jumpCnt <= 0) {
                if (t.moveTime) {
                    XYFrame.Timer.clearById(t.moveTime)
                    t.moveTime = null
                }
            }
            timeTick += delay
        }, t, delay)
    }

    /**跳跃一个头像 */
    private jumpOneHead(item: Item_FireTrial_Head) {
        let t = this
        if (!t.isOpen) {
            return
        }
        //新位置
        let newPos = t.getRandomPos(t.vo.curIndex)
        item.jumpProgress = 0
        XYFrame.Tween.kill(item)

        let duration = 1400;
        // 记录起点
        let startX = item.x;
        let startY = item.y;

        // 初始化
        item.alpha = 1;
        item.scaleX = item.scaleY = 1;
        item.jumpProgress = 0;
        let targetX = newPos[0];
        let targetY = newPos[1];

        // 一个缓动搞定：抛物跳跃 + 精准缩放 + 渐隐
        t.tweenTo(item, {
            jumpProgress: 1
        }, duration, Ease.linear, function () {
            let p = item.jumpProgress;
            let time = p * duration;

            if (time < 200) {
                item.x = startX;
                item.y = startY;
            }
            else if (time < 400) {
                let t = (time - 200) / 200;
                item.x = startX + (targetX - startX) * t;

                // 真实抛物线跳跃
                let lineY = startY + (targetY - startY) * t;
                let arcY = -110 * Math.sin(t * Math.PI);
                item.y = lineY + arcY;
            }
            else {
                item.x = targetX;
                item.y = targetY;
            }

            if (time < 100) {
                let t = time / 100;
                item.scaleY = 1 - 0.2 * t;
            }
            else if (time < 300) {
                let t = (time - 100) / 200;
                item.scaleY = 0.8 + 0.7 * t;
            }
            else if (time < 500) {
                let t = (time - 300) / 200;
                item.scaleY = 1.5 - 0.7 * t;
            }
            else if (time < 600) {
                let t = (time - 500) / 100;
                item.scaleY = 0.8 + 0.3 * t;
            }
            else if (time < 700) {
                let t = (time - 600) / 100;
                item.scaleY = 1.1 - 0.1 * t;
            }
            else {
                item.scaleY = 1;
            }
        }, t)
    }

    /**跳跃完成 */
    private jumpFinish(dropList: number[]) {
        let t = this
        if (Game.Model.fireTrial.isBattleFail()) {
            //如果失败，自己也要跳
            t.dropOneHead(t.myHead)
        }
        t.dropHead(dropList)
        t.playPosAni()
        t.showResult()
    }

    /**头像掉落 */
    private dropHead(dropList: number[]) {
        let t = this
        for (let ele of dropList) {
            let head = t.headMap[ele]
            if (head) {
                t.dropOneHead(head)
            }
        }
    }

    /**掉落一个头像 */
    private dropOneHead(item: Item_FireTrial_Head) {
        let t = this
        item.rotation = 0
        XYFrame.Tween.kill(item)

        item.jumpProgress = 0
        // 1. 基础配置
        let dir = Math.random() > 0.5 ? 1 : -1;      // 随机左/右
        let jumpHeight = 220;                       // 抛起来的最高点高度
        let jumpDistance = 260;                     // 水平飘多远
        let duration = 1400;                        // 总时长
        let targetY = item.y + 300;

        // 起点记录
        let startX = item.x;
        let startY = item.y;
        let targetX = item.x + dir * jumpDistance;

        // 初始化
        // item.alpha = 1;
        item.jumpProgress = 0;

        t.tweenTo(item, {
            jumpProgress: 1
        }, duration, Ease.linear, function () {
            let p = item.jumpProgress;  // 0~1 进度
            if (p < 0.85) {
                item.x = startX + (targetX - startX) * p;
                let linearY = startY + (targetY - startY) * p;
                let arcY = -jumpHeight * Math.sin(p * Math.PI);
                item.y = linearY + arcY;
                // item.alpha = 1; // 跳跃中不隐
            } else {
                // item.x = targetX;
                // item.y = targetY;
                // item.alpha = 1 - p;
            }

            let time = p * duration;
            if (time < 100) {
                // item.rotation = -10 * (time / 100);
                item.setRotation(-10 * (time / 100))
            } else if (time < 300) {
                let temp = (time - 100) / 200;
                // item.rotation = -10 + 20 * t;
                item.setRotation(-10 + 20 * temp)
            } else if (time < 930) {
                let temp = (time - 300) / 630;
                // item.rotation = 10 - 50 * t;
                item.setRotation(10 - 50 * temp)
            } else {
                let temp = (time - 930) / 470;
                // item.rotation = -40 - 3 * t;
                item.setRotation(-40 - 3 * temp)
            }
        }, t)  // 必须匀速
        // .call(function () {
        //     item.playAni()
        // })
        t.addDelay(duration - 300, () => {
            item.playAni();
        })
    }

    /**台子动画 */
    private playPosAni() {
        // 抖动 - 消失
        let t = this
        let vo = t.vo
        if (vo.lastIndex >= 0) {
            let img = t.owner["img" + vo.lastIndex] as Laya.GWidget
            if (img) {
                XYFrame.Tween.kill(img)
                img.rotation = 0
                t.tweenTo(img, { rotation: 15 }, 130).to({ rotation: 0 }, 130).to({ rotation: 15 }, 140).to({
                    rotation: 45
                }, 430).to({ y: img.y + 600 }, 400)
            }
        }
    }

    /**结算 */
    private showResult() {
        if (this.vo.curIndex >= Game.Model.fireTrial.maxWinCount) {
            // 胜利
            // Frame.UIMgr.openByObj(Vw_fireTrial_Win, { list: Game.Model.fireTrial.getCurHeadList() })
            Game.Model.fireTrial.CG575()
        }
    }

    /**获取台子的随机位置 */
    private getRandomPos(targetIndex?: number) {
        let t = this, vo = t.vo
        let index: number
        if (targetIndex) {
            index = targetIndex
        } else {
            index = vo.lastIndex > -1 ? vo.lastIndex : vo.curIndex
        }
        let pos = t.owner["pos" + index] as Laya.GWidget

        let newX = Math.random() * pos.width
        let newY = Math.random() * pos.height

        let p = Laya.Point.TEMP
        p.reset();
        p.x = newX
        p.y = newY + 34
        p = pos.localToGlobal(p);
        // p = t.dispaly.globalToLocal(p);
        p = t.owner.headBox.globalToLocal(p);
        return [p.x, p.y]
    }

    /**出生动画 */
    private bornAni(item: Item_FireTrial_Head) {
        if (!item) return
        // 渐隐 - 缩放
        XYFrame.Tween.kill(item)
        let box = item.box
        // box.alpha = 0
        item.setScale(0)
        // item.scaleX = 0
        // item.scaleY = 0
        this.tweenTo(box, { alpha: 1, scaleX: 1.2, scaleY: 1.2 }, 300).to({ scaleX: 1, scaleY: 1 }, 200)
    }

    /***------------------------------------------ 动画 end ------------------------------------------- */
}