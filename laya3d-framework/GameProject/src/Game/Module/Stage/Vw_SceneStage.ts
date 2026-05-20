import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_skill_105 from "../../../DataStock/ConfigData/Ts/Config_skill_105";
import EnumKey from "../../../DataStock/GameData/EnumKey";
import LanguageMgr from "../../../DataStock/LanguageMgr";
import { GameDesign } from "../../../XYFrame/Design/GameDesign";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { Ease } from "../../../XYFrame/Tween/Ease";
import { UIBase } from "../../../XYFrame/UI/Base/UIBase";
import DateUtils from "../../../XYFrame/Utils/DateUtils";
import MathUtils from "../../../XYFrame/Utils/MathUtils";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumAltas } from "../../EnumAtlas";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import Vo_StageScene from "./Vo_StageScene";
import Vw_Setting from "../Setting/Vw_Setting";
import Vw_Msg from "../Tip/Vw_Msg";
import Runtime_Btn_StageSkill from "./Component/Runtime_Btn_StageSkill";
import Runtime_Stage_HurtFly from "./Component/Runtime_Stage_HurtFly";
import Runtime_Stage_PlayerDir from "./Component/Runtime_Stage_PlayerDir";
import { EnumStageSkill } from "./EnumStageSkill";
import Runtime_Vw_SceneStage from "./Runtime_Vw_SceneStage";
import Vw_ShopAlone from "../Shop/Vw_ShopAlone";
import Vw_BuySkill from "./Vw_BuySkill";
import Config_stage_001 from "../../../DataStock/ConfigData/Ts/Config_stage_001";
import Vw_Fail from "./Vw_Fail";
import Vw_Pass from "./Vw_Pass";
import Vw_GmBtn from "../Gm/Vw_GmBtn";


/**
 * @ Author: 
 * @ Date: 2026/3/16 17:43:58
 * @ Description: 关卡场景ui
*/
export default class Vw_SceneStage extends UIBase {
    /** 自动生成，预设体路径 */
    public static readonly prefab: string = "stage/Vw_SceneStage";
    public static readonly preloads: string[] = [
        ResPath.UI_PREFAB2 + "stage/component/Stage_PlayerDir.lh",
        ResPath.UI_PREFAB2 + "stage/component/Stage_HurtFly.lh",
        ResPath.UI_PREFAB2 + Vw_Fail.prefab + ResPath.EXT_PREFAB,
        ResPath.UI_PREFAB2 + Vw_Pass.prefab + ResPath.EXT_PREFAB,
        "spine/effect/fx_KL_jinbishouji" + ResPath.EXT_SKEL,             //通关界面金币动画
        "spine/effect/fx_KL_chenggongjiangbei" + ResPath.EXT_SKEL,    //通关界面标题动画
        "effect/2D_Prefab/fx_shijiantingzhu_zidan_2.lh",
        "spine/effect/fx_KL_pingmu" + ResPath.EXT_SKEL];
    public static readonly altas: string[] = [EnumAltas.Stage];
    /** 自动生成，ui根节点 */
    protected _owner: Runtime_Vw_SceneStage;

    private _mouseDown: boolean = false;
    private _downPos: Laya.Point = Laya.Point.create();
    private vo: Vo_StageScene;

    /** 其他玩家方向 */
    private otherDirs: Runtime_Stage_PlayerDir[] = [];
    /** 当前播放的飘字 */
    private flyTxts: Runtime_Stage_HurtFly[] = [];

    private hander_eff: number;

    public get owner() {
        return this._owner;
    }

    protected inited(_t: this): void {
        let owner = _t.owner;
        let skillCfg = ConfigData.skill_105;
        let index = 0;
        for (let k in skillCfg) {
            let skill = owner.skillBtns[index];
            if (!skill) {
                break;
            }
            skill.initData(+k);
            index++;
        }
        owner.lbGuide.text = LanguageMgr.getTxt(402);//滑动屏幕来控制移动
        owner.lbTarget.text = LanguageMgr.getTxt(426);//关卡目标

        UIUtils.setList(owner.targetList);
    }

    protected initListener(): void {
        const _t = this;
        const owner = _t.owner;
        _t.onClick(owner.btnSeting, _t.touchSetting);
        _t.onClick(owner.btnGold, _t.touchGold);
        _t.onEvent(_t.owner.area, Laya.Event.MOUSE_DOWN, _t.mouseDown);
        _t.onMsg(EnumMsg.SCENE_ENTER, _t.onMsgEnter);
        _t.onMsg(EnumMsg.STAGE_UI_ENEMY_DIR, _t.onMsgOtherDir);
        _t.onMsg(EnumMsg.BAG_ITEM_UPDATE, _t.onMsgSkill);
        _t.onMsg(EnumMsg.STAGE_ADD_EXP, _t.onMsgExpFly);
        _t.onMsg(EnumMsg.STAGE_USE_SKILL, _t.onMsgUseSkill);
        _t.onMsg(EnumMsg.STAGE_SKILL_END, _t.onMsgSkillEnd);
        _t.onMsg(EnumMsg.STAGE_TARGET, _t.onMsgTarget);
        _t.onMsg(EnumMsg.Role_Val, _t.onMsgMoney);
        _t.onMsg(EnumMsg.GOLD_EFF_SCALE, _t.onMsgGoldEff);

        for (let i = 0; i < owner.skillBtns.length; i++) {
            let btn = owner.skillBtns[i];
            _t.onClick(btn, _t.touchSkill);
        }
        Laya.stage.on(Laya.Event.KEY_DOWN, _t, _t.onKeyDownHandler);
    }

    private isShowVis = true;

    private onKeyDownHandler(evt: Laya.Event): void {
        let t = this;
        // 示例：按下 "v" 键 (键码86)
        if (evt.keyCode === 86) {
            console.log("v键被按下！");
            t.isShowVis = !t.isShowVis;
            t.owner.visible = t.isShowVis;
            if (t.isShowVis) {
                XYFrame.UIMgr.open(Vw_GmBtn);
            } else {
                XYFrame.UIMgr.close(Vw_GmBtn);
            }
        }
    }

    public onOpen(...args: any[]): void {
        super.onOpen();
        const _t = this;
        const owner = _t.owner;
        _t.vo = Game.Model.stage.stageVo;
        owner.imgGold.scale(1, 1);
        _t.mouseUp();
        _t.onMsgEnter(_t);
        _t.onMsgSkill(_t);
        _t.onMsgMoney(_t);
        _t.showTarget(_t);
        owner.lbTime.text = DateUtils.formatToMinSec(_t.vo.playTime, true);
        owner.startGp.visible = false;
        let name = Config_stage_001.getNameByKey(_t.vo.level);
        owner.lbStage.text = name || LanguageMgr.getTxt(401, _t.vo.level);

        owner.guideGp.visible = true;
        _t.hander_eff = _t.addSpine("effect/fx_KL_shouzhizhuandong", owner.guideGp, 0, 0, 3000).eid;
    }

    public onClose(): void {
        super.onClose();
        const _t = this;
        _t.mouseUp();
        for (let item of _t.otherDirs) {
            item.removeSelf();
        }
        for (let i = 0, len = _t.flyTxts.length; i < len; i++) {
            XYFrame.PoolMgr.releasePrefabInst(_t.flyTxts[i]);
        }
        _t.flyTxts.length = 0;
        _t.owner.targetList.source = null;
    }

    /**
     * 显示目标
     * @param _t 
     */
    private showTarget(_t: this) {
        let target = Config_stage_001.getTargetByKey(_t.vo.level);
        let owner = _t.owner;
        let bo = owner.targetGp.visible = target != null && target.length > 0;
        owner.targetList.source = target;
        if (bo) {
            owner.targetList.resizeToFit();
        }
    }

    private onTick(dt: number, _t: this) {
        _t.owner.lbTime.text = DateUtils.formatToMinSec(_t.vo.playTime, true);

    }

    public onSceneTick(dt: number, _t: this) {
        let lbCountDown = _t.owner.lbCountDown;
        let playTime = _t.vo.playTime;
        if (playTime > 10000 || playTime <= 0) {
            lbCountDown.visible = false;
        } else {
            lbCountDown.visible = true;
            let num = Math.ceil(playTime / 1000) + "";
            if (lbCountDown.text != num) {
                lbCountDown.text = num;
                lbCountDown.alpha = 1;
                XYFrame.Tween.kill(lbCountDown);
                _t.tweenDelay(lbCountDown, 250).to({ alpha: 0 }, 650);
            }
        }
    }

    /**
     * 点击技能
     */
    private touchSkill(e: Laya.Event) {
        if (!this.vo.isStart) {
            Vw_Msg.setText("游戏未开始");
            return;
        }
        let target: Runtime_Btn_StageSkill = e.target;
        let index: number = target.sid;
        let itemId = Config_skill_105.getItemByKey(index);
        if (itemId) {
            if (Game.Model.bag.checkUse(EnumKey.ITEM, itemId, 1, false)) {
                Game.Model.stage.CG453(index);
            } else {
                XYFrame.UIMgr.open(Vw_BuySkill, index);
            }
        }
        // XYFrame.Msg.emit(EnumMsg.STAGE_USE_SKILL, index);
    }

    /**
     * 点击设置
     * @param e 
     */
    private touchSetting(e: Laya.Event) {
        XYFrame.UIMgr.open(Vw_Setting);
    }

    private touchGold() {
        XYFrame.UIMgr.open(Vw_ShopAlone);
    }

    private mouseDown(e: Laya.Event) {
        const _t = this;
        if (!_t._mouseDown) {
            _t.onEvent(Laya.stage, Laya.Event.MOUSE_MOVE, _t.mouseMove);
            _t.onEvent(Laya.stage, Laya.Event.MOUSE_UP, _t.mouseUp);
            _t.onEvent(Laya.stage, Laya.Event.MOUSE_OUT, _t.mouseUp);
        }
        _t._mouseDown = true;
        _t._downPos.setTo(e.stageX, e.stageY);
    }

    private mouseMove(e: Laya.Event) {
        if (!this.vo.isStart || this.vo.isResult) return;
        const _t = this;
        const distX = e.stageX - _t._downPos.x;
        const distY = e.stageY - _t._downPos.y;
        if (Math.abs(distX) <= 0.01 && Math.abs(distY) <= 0.01) return;
        let angle = Math.atan2(distY, distX) * 180 / Math.PI;
        XYFrame.Msg.emit(EnumMsg.HERO_MOVE_DIR, angle);

        if (_t.hander_eff) {
            _t.removeSpineById(_t.hander_eff);
            _t.hander_eff = null;
            _t.owner.guideGp.visible = false;
        }
    }

    private mouseUp() {
        const _t = this;
        _t.offEvent(Laya.stage, Laya.Event.MOUSE_MOVE, _t.mouseMove);
        _t.offEvent(Laya.stage, Laya.Event.MOUSE_UP, _t.mouseUp);
        _t.offEvent(Laya.stage, Laya.Event.MOUSE_OUT, _t.mouseUp);
        _t._mouseDown = false;
    }

    /**
     * 进入场景
     */
    private onMsgEnter(_t: this) {
        if (Game.SceneMgr.isReady) {

            _t.owner.startGp.visible = true;
            let imgStart = _t.owner.imgStart;
            imgStart.alpha = 1;
            imgStart.src = ResPath.getAtlasImgPath(EnumAltas.Stage, "Big_3");
            _t.tweenDelay(imgStart, 300).to({ alpha: 0 }, 800).call((img) => {
                img.alpha = 1;
                img.src = ResPath.getAtlasImgPath(EnumAltas.Stage, "Big_2");
            }, imgStart).to({ alpha: 0 }, 800).call((img) => {
                img.alpha = 1;
                img.src = ResPath.getAtlasImgPath(EnumAltas.Stage, "Big_1");
            }, imgStart).to({ alpha: 0 }, 800).call((t, img) => {
                t.addLoop(300, t.onTick);
                img.alpha = 1;
                img.src = ResPath.getAtlasImgPath(EnumAltas.Stage, "Big_GO");
                // XYFrame.Msg.emit(EnumMsg.START_PLAY);
                Game.Model.stage.CG455();
                t.addSpine("effect/fx_KL_pingmu", t.owner, t.owner.width / 2, t.owner.height / 2, 1000, 1000, false, null, 0.8, 0.8);
            }, _t, imgStart).to({ alpha: 0 }, 800).call((t) => {
                t.owner.startGp.visible = false;
            }, _t);
        }
    }

    /**
     * 其他玩家方向
     * @param _t 
     * @param data 
     */
    private onMsgOtherDir(_t: this, data: { root: { x: number, y: number }, others: { type: number, level: number, x: number, y: number, angle: number }[] }) {
        let root = data.root;
        let others = data.others;
        let owner = _t.owner;
        // 先转本地坐标
        let pos = Laya.Point.create().setTo(root.x, root.y);
        owner.globalToLocal(pos);
        let px = pos.x;
        let py = pos.y;
        let count = 0;
        // 计算显示范围
        let left = 20;
        let right = owner.width - 20;
        let top = GameDesign.topNotch + 30;
        let bottom = owner.height - 200;

        for (let i = 0; i < others.length; i++) {
            let dir = others[i];
            let dist = MathUtils.getDistance(root.x, root.y, dir.x, dir.y);
            if (dist <= 300) continue;// 距离小于等于200，不显示
            // 计算角度
            let angle = Math.atan2(dir.y - root.y, dir.x - root.x) * 180 / Math.PI;
            // 转本地坐标
            pos.setTo(dir.x, dir.y);
            _t.owner.globalToLocal(pos);
            // 计算位置，要根据显示范围，判断是否超出范围，超出要根据方向计算位置，在显示镜头范围内，不显示
            if (pos.x >= left && pos.x <= right && pos.y >= top && pos.y <= bottom) continue;
            if (pos.x < left) {
                // 要根据角度计算位置
                pos.x = left;
                pos.y = py + Math.tan(angle * Math.PI / 180) * (left - px);
            } else if (pos.x > right) {
                // 要根据角度计算位置
                pos.x = right;
                pos.y = py + Math.tan(angle * Math.PI / 180) * (right - px);
            }
            if (pos.y < top) {
                // 要根据角度计算位置
                pos.y = top;
                pos.x = px + (top - py) / Math.tan(angle * Math.PI / 180);
            } else if (pos.y > bottom) {
                // 要根据角度计算位置
                pos.y = bottom;
                pos.x = px + (bottom - py) / Math.tan(angle * Math.PI / 180);
            }
            let item = _t.otherDirs[count];
            if (!item) {
                item = UIUtils.createByUrl(ResPath.getUIPrefab("stage/component/Stage_PlayerDir.lh"), Runtime_Stage_PlayerDir);
                if (!item) return;
                _t.otherDirs[count] = item;
            }
            if (!item.parent) {
                owner.addChild(item);
            }
            item.pos(pos.x, pos.y);
            item.setData(dir.angle, dir);
            count++;
        }
        pos.recover();
        // 移除多余的item
        for (let i = count; i < _t.otherDirs.length; i++) {
            let item = _t.otherDirs[i];
            if (item.parent) {
                item.parent.removeChild(item);
            }
        }
    }

    /**
     * 技能更新显示
     * @param _t 
     */
    private onMsgSkill(_t: this) {
        for (let skill of _t.owner.skillBtns) {
            skill.updateCount();
        }
    }

    //#region 目标值更新
    // private 
    //#endregion

    private onMsgMoney(_t: this) {
        _t.owner.lbGold.text = Game.Model.hero.vo.gold + "";
    }

    private onMsgGoldEff(_t: this) {
        let time = 100;
        let scale = 1.7;
        _t.tweenTo(_t.owner.imgGold, { scaleX: 1, scaleY: 1 }, 50).to({ scaleX: scale, scaleY: scale }, time).to({ scaleX: 1, scaleY: 1 }, time);
    }

    /**
     * 增加经验飘字
     * @param _t 
     * @param obj 
     */
    private onMsgExpFly(_t: this, obj: { type: number, exp: number, x: number, y: number }) {
        if (!obj) return;
        let owner = _t.owner;
        let item = XYFrame.PoolMgr.getPrefabInst(ResPath.getUIPrefab("stage/component/Stage_HurtFly.lh"), Runtime_Stage_HurtFly);
        let pos = Laya.Point.create().setTo(obj.x, obj.y);
        owner.globalToLocal(pos);
        item.pos(pos.x, pos.y);
        pos.recover();
        item.showTxt(obj.type, obj.exp);
        owner.flyBase.addChild(item);
        item.alpha = 1;
        _t.flyTxts.push(item);
        _t.tweenDelay(item, 300).to({ y: obj.y - 20 }, 200).to({ alpha: 0 }, 200).call((t, comp) => {
            let index = t.flyTxts.indexOf(comp);
            if (index >= 0) {
                t.flyTxts.splice(index, 1);
            }
            XYFrame.PoolMgr.releasePrefabInst(comp);
        }, _t, item)
    }

    private _skill_stopTm: number;
    /**
     * 使用技能
     */
    private onMsgUseSkill(_t: this, index: number) {
        if (index == EnumStageSkill.SKILL_3) {
            // 时间禁止
            if (_t._skill_stopTm) {
                _t.removeSpineById(_t._skill_stopTm);
            }
            _t._skill_stopTm = _t.addSpine("effect/fx_KL_shijianjingzhi", _t.owner.topCenter, 1, 75).eid;

            XYFrame.ResMgr.load(ResPath.getResPath("effect/2D_Prefab/fx_shijiantingzhu_zidan_2.lh"), (asset: Laya.PrefabImpl, url: string, t) => {
                if (asset && t.isOpen) {
                    let owner = t.owner;
                    let x = owner.btnSkill2.x + owner.btmGp.x;
                    let y = owner.btnSkill2.y + owner.btmGp.y - 10;
                    owner.moveEff.pos(x, y);
                    let sp = asset.create();
                    owner.moveEff.addChild(sp);
                    let ex = owner.topCenter.x;
                    let ey = owner.topCenter.y + owner.lbTime.y + 20;
                    t.tweenTo(owner.moveEff, { x: ex, y: ey }, 800, Ease.cubicIn).call((t, sp) => {
                        sp.destroy();
                    }, t, sp);
                }
            }, _t);
        }
    }

    /**
     * 技能时间到期
     * @param _t 
     * @param index 
     */
    private onMsgSkillEnd(_t: this, index: number) {
        if (index == EnumStageSkill.SKILL_3) {
            // 时间禁止
            if (_t._skill_stopTm) {
                _t.removeSpineById(_t._skill_stopTm);
                _t._skill_stopTm = null;
            }
        }
    }

    /**
     * 目标更新
     * @param _t 
     */
    private onMsgTarget(_t: this) {
        _t.owner.targetList.refresh();
    }

}