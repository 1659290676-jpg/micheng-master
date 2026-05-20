import { Level_Scene } from "../Components/Level_Scene";
import { Point_NpcBorn } from "../Components/Point_NpcBorn";
import { Unit_Building } from "../Components/Unit_Building";
import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_human_105 from "../../../DataStock/ConfigData/Ts/Config_human_105";
import MathUtils from "../../../XYFrame/Utils/MathUtils";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { Ease } from "../../../XYFrame/Tween/Ease";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import Vw_Main from "../../Module/Main/Vw_Main";
import { EnumRenderLayer } from "../Define/EnumRenderLayer";
import { PlayerController } from "../Logic/PlayerController";
import SpatialPartition from "../Logic/SpatialPartition";
import { EnumStageScene } from "../Define/EnumStageScene";
import Vw_SceneStage from "../../Module/Stage/Vw_SceneStage";
import Vo_StageScene from "../../Module/Stage/Vo_StageScene";
import Vw_Fail from "../../Module/Stage/Vw_Fail";
import { EnumStageSkill } from "../../Module/Stage/EnumStageSkill";
import BuildingBrokenAnim from "../Logic/BuildingBrokenAnim";
import PullNpcSkill from "../Skill/PullNpcSkill";
import StopTimeSkill from "../Skill/StopTimeSkill";
import SpeedUpSkill from "../Skill/SpeedUpSkill";
import SkillBase from "../Skill/SkillBase";
import SceneCtrlBase from "./SceneCtrlBase";
import NpcUnit from "../Unit/NpcUnit";
import Logger from "../../../XYFrame/Logger/Logger";
import Config_stage_001 from "../../../DataStock/ConfigData/Ts/Config_stage_001";
import Config_skill_105 from "../../../DataStock/ConfigData/Ts/Config_skill_105";
import Vw_ExitStage from "../../Module/Stage/Vw_ExitStage";
import Vw_Pass from "../../Module/Stage/Vw_Pass";
import ItemsUnit from "../Unit/ItemsUnit";
import AerolithUnit from "../Unit/AerolithUnit";
import { GameDesign } from "../../../XYFrame/Design/GameDesign";
import CarBrokenAnim from "../Logic/CarBrokenAnim";

const { regClass, property } = Laya;

/**
 * 关卡场景控制
 */
@regClass()
export class StageSceneCtrl extends SceneCtrlBase {
    declare owner: Laya.Sprite3D;

    private isEnter: boolean;

    /** 是否是调试场景 */
    public isDebugScene: boolean;

    /** 场景 */
    public scene: Laya.Scene3D;
    /** 相机 */
    public camera: Laya.Camera;
    /** 关卡组件 */
    public levelComp: Level_Scene;
    /** 玩家容器 */
    public playerBase: Laya.Sprite3D;
    /** NPC容器 */
    public npcBase: Laya.Sprite3D;

    /** 是否初始化 */
    protected isInit: boolean;


    /** 相机默认的偏移 */
    // @property({ type: Laya.Vector3, tip: "摄像机偏移值（米）" })
    public offset: Laya.Vector3;
    /** 相机平滑移动速度 */
    public smoothSpeed: number;
    /** 变化平滑移动速度量 */
    private _changeSmooth: number;
    /** 开始变化平滑移动速度 */
    private _startSmooth: number;
    /** 平滑变化移动时间 */
    private _smoothTime = 0;
    // /** 相机正交变化速度 */
    // private _orthographicChange: number;
    // /** 开始相机正交大小 */
    // private _startOrthographicSize: number;
    // private _fieldOfViewChange: number;
    // private _startFieldOfView: number;
    /** 摄像机位置 */
    public curpos: Laya.Vector3;

    /** 震屏 - 缓动控制对象 */
    private _camShakeObj: { v: number } = { v: 0 };
    /** 震屏 - 最大角度(度) */
    private _camShakeAngle: number = 2.5;
    /** 击退 - 缓动控制对象 */
    private _camKnockbackObj: { v: number } = { v: 0 };
    /** 击退 - 前移距离 */
    private _camKnockbackDist: number = 0.1;

    // ========== 遮挡处理核心变量 ==========
    private currentObstacle: Laya.Sprite3D; // 缓存当前遮挡的建筑（防闪烁）
    // private obstacleRenderers: Laya.MeshRenderer[] = [];// 当前遮挡建筑的渲染器列表
    private obstacleMaterial: Map<Laya.MeshRenderer, Laya.Material[]> = new Map();

    private ray: Laya.Ray; // 射线对象（复用，提升性能）
    private hitInfo: Laya.HitResult = new Laya.HitResult(); // 射线碰撞信息

    /** 出生点列表 */
    private playerBorns: Laya.Transform3D[] = [];
    /** 复活点列表 */
    private reliveBorns: Laya.Transform3D[];
    /** NPC出生点 */
    private npcInitBorns: Point_NpcBorn[];
    private npcInitIndex: number;
    private npc_check_tm = 0;

    /** 空间管理 */
    public spatial: SpatialPartition;

    /** 玩家角色 */
    public hero: PlayerController;
    /** 敌人列表 */
    private enemies: PlayerController[] = [];
    // /** NPC列表 */
    // public readonly npcs: NpcController[] = [];
    /** NPC单位列表 */
    public readonly npcUnits: NpcUnit[] = [];
    /**场景范围碰撞盒形状列表 */
    private sceneColliders: Laya.BoxColliderShape[] = [];
    private rangeOriginPos: Laya.Vector3;
    /** 最大NPC数量 */
    private npcMaxCount: number = 0;

    private npc_batchIndex = 0;
    private npc_batch_index1 = 0;

    /** 道具单位列表 */
    public readonly itemUnits: ItemsUnit[] = [];
    /** 陨石单位列表 */
    public readonly aerolithUnits: AerolithUnit[] = [];

    // 保存地标建筑，以便显示到ui上位置
    private landmarkBuild: Unit_Building;

    // ====== 陨石事件 ======
    /** 是否开启陨石事件 */
    private _is_aerolith = true;
    private _aerolith_elapsed = 0;
    private _aerolith_cd = 0;
    private _aerolith_started = false;
    private _craters: { x: number, z: number, r: number }[] = [];

    /** 游戏数据 */
    private vo: Vo_StageScene;

    // /** 技能使用列表 */
    // private useSkillMap: Record<number, Vo_UseSkill> = {};

    /** 其他恐龙移动检查间隔 */
    private check_enemy_move = 0;
    /** 其他恐龙方向检查间隔 */
    private check_enemy_dir = 0;

    private _vw_scene: Vw_SceneStage;

    public onAwake(): void {
        let _t = this;
        _t.scene = Game.SceneMgr.stage;
        _t.initCamera();
        _t.initColliderShapes();

        _t.playerBase = _t.owner.getChildByName("Players");
        _t.npcBase = _t.owner.getChildByName("Npcs");

        if (_t.spatial) {
            _t.spatial.clear();
        } else {
            _t.spatial = new SpatialPartition(EnumStageScene.SCENE_GRID_SIZE);
        }

        !_t.ray && (_t.ray = new Laya.Ray(new Laya.Vector3(), new Laya.Vector3()));
        _t.levelComp = _t.owner.getComponent(Level_Scene);

        // 玩家出生点
        let playerBorns = _t.levelComp.playerBorns;
        _t.playerBorns.length = 0;
        for (let born of playerBorns) {
            _t.playerBorns.push(born.owner.transform);
        }
        _t.reliveBorns = _t.playerBorns.slice();
        // NPC出生点
        let npcBorns = _t.levelComp.npcBorns;
        for (let born of npcBorns) {
            born.init();
        }
        _t.npcInitBorns = npcBorns.sort();
        _t.npcInitIndex = 0;
        _t.npc_batchIndex = 0;

    }

    /**初始化场景范围碰撞形状 */
    private initColliderShapes() {
        let _t = this;
        _t.sceneColliders.length = 0;
        _t.rangeOriginPos = _t.owner.transform.position.clone();
        let sprite3D = _t.owner.getChildByName("Range");
        let component = sprite3D.getComponent(Laya.PhysicsCollider);
        if (!component) {
            if (sprite3D.children.length > 0) {
                for (let child of sprite3D.children) {
                    component = child.getComponent(Laya.PhysicsCollider);
                    if (component) {
                        //@ts-ignore
                        if (child.transform) {
                            //@ts-ignore
                            _t.rangeOriginPos.vadd(child.transform.position, _t.rangeOriginPos);
                        }
                        break;
                    }
                }
            }
        } else {
            _t.rangeOriginPos.vadd(sprite3D.transform.position, _t.rangeOriginPos);
        }
        if (component) {
            let shape = component.colliderShape as Laya.CompoundColliderShape;
            if (shape && shape.shapes) {
                //@ts-ignore 
                _t.sceneColliders.push(...shape.shapes); // 默认都是盒子碰撞形状
            }
        }
    }

    /**
     * 初始化摄像机
     */
    private initCamera() {
        let _t = this;
        _t.camera = Game.SceneMgr.camera;
        if (_t.offset) {
            _t.offset.setValue(EnumStageScene.CAMERA_OFFSET_X, EnumStageScene.CAMERA_OFFSET_Y, EnumStageScene.CAMERA_OFFSET_Z);
        } else {
            _t.offset = new Laya.Vector3(EnumStageScene.CAMERA_OFFSET_X, EnumStageScene.CAMERA_OFFSET_Y, EnumStageScene.CAMERA_OFFSET_Z);
        }
        if (_t.curpos) {
            _t.curpos.setValue(0, 0, 0);
        } else {
            _t.curpos = new Laya.Vector3();
        }
        _t.smoothSpeed = EnumStageScene.CAMERA_SMOOTH;
        _t._changeSmooth = _t._smoothTime = 0;
        _t.camera.orthographicVerticalSize = EnumStageScene.CAMERA_ORTHOGRAPHIC_SIZE;
        _t.camera.fieldOfView = EnumStageScene.CAMERA_FIELD_OF_VIEW;
    }

    /**
     * 进入
     */
    public async enter() {
        await super.enter();
        let _t = this;
        _t.isInit = false;
        _t.isEnter = true;
        _t.vo = Game.Model.stage.stageVo;
        _t.vo.init(Game.Model.stage.challengeLev);
        let bo = await _t.initEnter();
        if (bo) {

            // 设置建筑
            _t.landmarkBuild = null;
            let buildings = _t.levelComp.buildings;
            for (let building of buildings) {
                if (building.isLandmark) {
                    _t.landmarkBuild = building;
                }
                if (building.childBuildings) {
                    for (let child of building.childBuildings) {
                        _t.spatial.addBuilding(child.owner.transform.position, child);
                    }
                } else {
                    _t.spatial.addBuilding(building.owner.transform.position, building);
                }
            }

            _t.onMsg(EnumMsg.START_PLAY, _t.onStartMsg);
            _t.onMsg(EnumMsg.HERO_MOVE_DIR, _t.onMoveDirMsg);
            // _t.onMsg(EnumMsg.STAGE_DEL_PLAYER, _t.onDelPlayerMsg);
            // _t.onMsg(EnumMsg.STAGE_KILL_NPC, _t.onKillNpcMsg);
            _t.onMsg(EnumMsg.STAGE_KILL_BUILD, _t.onKillBuildMsg);
            _t.onMsg(EnumMsg.STAGE_HERO_UPGRADE, _t.onHeroUpgradeMsg);
            _t.onMsg(EnumMsg.STAGE_FAIL, _t.onFailMsg);
            _t.onMsg(EnumMsg.STAGE_SUCCESS, _t.onSuccessMsg);
            _t.onMsg(EnumMsg.STAGE_REVIVE, _t.onReliveMsg);
            _t.onMsg(EnumMsg.STAGE_USE_SKILL, _t.onUseSkillMsg);
            _t.onMsg(EnumMsg.Open_Error, _t.onOpenErrorMsg);
            _t.onMsg(EnumMsg.LOGIN_STEP_FINISH, _t.onLoginFinishMsg);
            _t.onMsg(EnumMsg.STAGE_TARGET, _t.onTargetMsg);
            _t.onMsg(EnumMsg.STAGE_ITEMS_PICK_UP, _t.onPickItem);
            // _t.onMsg(EnumMsg.ene)
            XYFrame.Timer.loop(33, _t.onTick, _t);
        }
        return bo;
    }

    /**
     * 退出
     */
    public exit() {
        super.exit();
        let _t = this;
        _t.isEnter = false;
        _t.vo.clear();
        _t.vo = null;
        _t.landmarkBuild = null;
        if (_t.hero) {
            Game.SceneMgr.factory.putPlayer(_t.hero);
            _t.hero = null;
        }
        _t.restoreObstacle();

        _t.spatial.clear();
        // _t.clearUseSkill();

        XYFrame.UIMgr.close(Vw_SceneStage);
        XYFrame.UIMgr.close(Vw_Fail);
        XYFrame.UIMgr.close(Vw_Pass);
        _t._vw_scene = null;

        // 释放敌人
        for (let enemy of _t.enemies) {
            Game.SceneMgr.factory.putPlayer(enemy);
        }
        _t.enemies.length = _t.playerBorns.length = 0;
        _t.reliveBorns = null;
        for (let npcUnit of _t.npcUnits) {
            npcUnit.recover();
        }
        _t.npcUnits.length = 0;

        for (let itemUnit of _t.itemUnits) {
            Game.SceneMgr.factory.putItem(itemUnit);
        }
        _t.itemUnits.length = 0;

        // 释放陨石
        for (let unit of _t.aerolithUnits) {
            let sp = unit && unit.owner;
            sp && Game.SceneMgr.factory.putInst("Aerolith", sp);
        }
        _t.aerolithUnits.length = 0;
        _t._craters.length = 0;
        _t._aerolith_elapsed = 0;
        _t._aerolith_cd = 0;
        _t._aerolith_started = false;

        // for (let npc of _t.npcs) {
        //     Game.SceneMgr.factory.putNpc(npc);
        // }
        // _t.npcs.length = 0;
        _t.playerBase = null;
        _t.playerBorns.length = 0;
        _t.sceneColliders.length = 0;
        XYFrame.Timer.clearTimer(_t.onTick, _t);
        XYFrame.AudioMgr.playMusic(0);
        // 恢复背景音量
        Laya.SoundManager.musicVolume = XYFrame.AudioMgr.musicVolume;
        _t._bigBgMusicTm = null;
        _t.isDebugScene = null;
    }

    /**
     * 进入初始化
     */
    private async initEnter() {
        let _t = this;
        let flag = Game.SceneMgr.flag;

        let cfg = ConfigData.stage_001[_t.vo.level];
        if (!cfg) {
            Logger.error("关卡配置不存在: " + + _t.vo.level);
            return;
        }
        _t._is_aerolith = Config_stage_001.getMeteor(cfg) != 1;

        // 建筑气血初始化
        let buildings = _t.levelComp.buildings;
        let hps = Config_stage_001.getHp(cfg);
        let hpMap: any = {};
        if (hps) {
            for (let i = 0, len = hps.length; i < len; i++) {
                let hp = hps[i];
                hpMap[hp[0]] = hp[1];
            }
        } else {
            Logger.error("没有建筑气血配置: " + _t.vo.level);
        }
        for (let building of buildings) {
            building.init(hpMap[building.type]);
        }

        _t.npcMaxCount = Config_stage_001.getNpc(cfg) || 1000;

        XYFrame.UIMgr.close(Vw_Main);
        // await Game.SceneMgr.factory.initAsset();
        if (flag != Game.SceneMgr.flag) return false;
        _t._vw_scene = await XYFrame.UIMgr.open(Vw_SceneStage);
        if (flag != Game.SceneMgr.flag) return false;
        _t.initHero();
        _t.camera.active = true;
        _t.createEnemy(Config_stage_001.getAiMax(cfg) || 14, Config_stage_001.getAiUp(cfg) || 2);

        await _t.initNpc(_t, flag);
        if (flag != Game.SceneMgr.flag) return false;

        await _t.initItems(_t, flag);
        if (flag != Game.SceneMgr.flag) return false;
        return true;
    }

    onTick(delta: number, _t: this) {
        if (_t.vo.pause) return;
        // if (_t.vo.isResult) return;//已出结果不处理
        let dt = delta;
        if (delta > 100) delta = 100;

        if (_t._bigBgMusicTm != null) {
            _t._bigBgMusicTm -= delta;
            if (_t._bigBgMusicTm <= 0) {
                _t.setSmallBgMusic();
            }
        }

        if (_t.vo.isStart) {
            // 保存位置
            let poses: any[] = [];

            if (_t.hero && !_t.vo.isResult) {
                poses.push([_t.hero.targetTF.position, _t.hero.atk_range]);
                _t.hero.onTick(delta);

                let result = _t.hero.checkAttack(delta);
                _t.dealKill(_t, result, true, _t.hero);
            }
            let selfLv = _t.hero ? _t.hero.playerLev : 0;

            for (let i = _t.enemies.length - 1; i >= 0; i--) {
                if (_t.isDebugScene) break;
                const enemy = _t.enemies[i];
                // poses.push(enemy.targetTF.position);
                poses.push([enemy.targetTF.position, enemy.atk_range]);
                enemy.onTick(delta);
                let result = enemy.checkAttack(delta);
                _t.dealKill(_t, result, false, enemy);
                if (enemy.isRemove()) {
                    _t.enemies.splice(i, 1);
                    Game.SceneMgr.factory.putPlayer(enemy);
                }
                enemy.upNameColor(enemy.playerLev > selfLv ? "#f84326" : enemy.playerLev == selfLv ? "#F3F3F3" : "#2fdd25")
            }

            for (let i = _t.npcUnits.length - 1; i >= 0; i--) {
                const npcUnit = _t.npcUnits[i];
                npcUnit.onTick(npcUnit, delta);
            }

            let end = Math.min(_t.npc_batchIndex + EnumStageScene.NPC_BATCH_UPDATE, _t.npcUnits.length);
            let frustum = _t.camera.boundFrustum;
            for (let i = _t.npc_batchIndex; i < end; i++) {
                const npcUnit = _t.npcUnits[i];
                npcUnit.checkThreat(poses);
                npcUnit.checkInFrustum(frustum);
            }
            _t.npc_batchIndex = end >= _t.npcUnits.length ? 0 : end;

            if (!_t.vo.isResult && _t.vo.reduceTime(dt)) {
                // XYFrame.Msg.emit(EnumMsg.STAGE_FAIL, 1);
                Game.Model.stage.onFail(1);
            }
            if (_t._vw_scene) {
                _t._vw_scene.onSceneTick(delta, _t._vw_scene);
            }
        } else {
            if (_t.hero) {
                _t.hero.onNoStartTick(delta);
            }
            for (let i = _t.enemies.length - 1; i >= 0; i--) {
                const enemy = _t.enemies[i];
                enemy.onNoStartTick(delta);
            }

        }

        let end = Math.min(_t.npc_batch_index1 + EnumStageScene.NPC_BATCH_UPDATE, _t.npcUnits.length);
        let frustum = _t.camera.boundFrustum;
        for (let i = _t.npc_batch_index1; i < end; i++) {
            const npcUnit = _t.npcUnits[i];
            npcUnit.checkInFrustum(frustum);
        }
        _t.npc_batch_index1 = end >= _t.npcUnits.length ? 0 : end;

        Game.SceneMgr.particle.update(delta);

    }

    onLateUpdate(): void {
        // if (this.vo.isResult) return;//已出结果不处理
        if (this.vo.pause || !this.hero) {
            return;
        }
        const _t = this;
        let dt = Laya.timer.delta;
        let delta = dt > 100 ? 100 : dt;

        if (_t._changeSmooth) {
            // 平滑移动，每帧计算变化量
            _t._smoothTime += 100;
            if (_t._smoothTime > 200) {
                if (_t._smoothTime >= 400) {
                    _t.smoothSpeed = _t._changeSmooth + _t._startSmooth;
                    _t._changeSmooth = 0;
                    // _t.camera.orthographicVerticalSize = _t._orthographicChange + _t._startOrthographicSize;
                } else {
                    let time = _t._smoothTime - 200;
                    _t.smoothSpeed = _t._startSmooth + _t._changeSmooth * time / 200;
                    // _t.camera.orthographicVerticalSize = _t._startOrthographicSize + _t._orthographicChange * time / 200;
                }
            }
        }

        _t.lookAtHero();

        if (_t.vo.isStart) {
            _t.checkObstacle();

            // 检查敌人移动
            _t.checkEnemysMove(_t, delta);

            _t.checkCreateNpc(_t, delta);

            _t.checkEnemysToUI(_t, delta);

            if (_t._is_aerolith && !_t.vo.isResult) {
                _t.checkAerolith(_t, dt);
            }

        }
    }

    // todo ===================== 陨石事件 start ===========================
    //#region 陨石事件 start
    /**
     * 陨石事件：关卡开始60秒后，每4秒在玩家附近随机落陨石
     */
    private checkAerolith(_t: this, dt: number) {
        if (!_t.hero || _t.hero.isDead) return;
        _t._aerolith_elapsed += dt;
        if (!_t._aerolith_started) {
            if (_t._aerolith_elapsed < 40000) return;
            _t._aerolith_started = true;
            _t._aerolith_cd = 0;
        }
        _t._aerolith_cd += dt;
        if (_t._aerolith_cd < 15000) return;
        _t._aerolith_cd = 0;
        _t.spawnAerolith();
    }

    private spawnAerolith() {
        const _t = this;
        const heroPos = _t.hero.targetTF.position;

        // 直径16米内随机点：半径8米
        const radius = 8;
        const a = Math.random() * Math.PI * 2;
        const r = Math.sqrt(Math.random()) * radius;
        const x = heroPos.x + Math.cos(a) * r;
        const z = heroPos.z + Math.sin(a) * r;

        // 陨石直径：11.2米，随机80%-150%
        const diameter = 11.2 * (0.8 + Math.random() * 0.7);

        const sp = Game.SceneMgr.factory.getInst("Aerolith");
        if (!sp) return;
        sp.name = "Aerolith";
        _t.owner.addChild(sp);

        let unit = sp.getComponent(AerolithUnit);
        if (!unit) {
            unit = sp.addComponent(AerolithUnit);
        }

        unit.initFall(_t, x, z, diameter);
        _t.aerolithUnits.push(unit);
    }

    /**
     * 陨石落地回调
     * @param unit
     * @param pos 落地点
     * @param diameter 直径（米）
     */
    public onAerolithHit(unit: AerolithUnit, pos: Laya.Vector3, diameter: number) {
        XYFrame.AudioMgr.playUI("yunshi");
        const _t = this;
        const r = Math.max(0.1, diameter / 2);

        // 形成永久坑洞（不可走区域）
        _t._craters.push({ x: pos.x, z: pos.z, r });

        // 检测复活点是否在陨石范围内，需要删除
        if (_t.reliveBorns) {
            const r2 = r * r;
            for (let i = _t.reliveBorns.length - 1; i >= 0; i--) {
                const born = _t.reliveBorns[i];
                const p = born.position;
                const dx = p.x - pos.x;
                const dz = p.z - pos.z;
                if (dx * dx + dz * dz <= r2) {
                    _t.reliveBorns.splice(i, 1);
                }
            }
        }
        if (_t.npcInitBorns) {
            for (let i = _t.npcInitBorns.length - 1; i >= 0; i--) {
                const born = _t.npcInitBorns[i];
                const owner = born.owner;
                const p = owner.transform.position;
                const dx = p.x - pos.x;
                const dz = p.z - pos.z;
                const r2 = (r + owner.transform.localScaleX / 2) * (r + owner.transform.localScaleX / 2);
                if (dx * dx + dz * dz <= r2) {
                    _t.npcInitBorns.splice(i, 1);
                }
            }
        }

        // 落地致死：玩家/敌人/NPC（含npc单位）
        _t.killInAerolithRange(pos.x, pos.z, r);
    }

    /**
     * 陨石范围内致死
     * @param x 
     * @param z 
     * @param r 
     */
    private killInAerolithRange(x: number, z: number, r: number) {
        const _t = this;
        const r2 = r * r;

        // 玩家与敌人（PlayerController在spatial.grid）
        const center = Laya.Vector3.TEMP.setValue(x, 0, z);
        const rangeGrid = Math.ceil(r / EnumStageScene.SCENE_GRID_SIZE);
        const units = _t.spatial.getNearbyPlayer(center, rangeGrid);
        const npcs: NpcUnit[] = _t.spatial.getNearByNpc(center, rangeGrid);
        const buildings: Unit_Building[] = _t.spatial.getNearbyBuilding(center, rangeGrid + 1);

        for (let i = 0; i < units.length; i++) {
            const sp = units[i];
            const pc = sp && sp.getComponent(PlayerController);
            if (!pc || pc.isDead) continue;
            const p = pc.targetTF.position;
            const dx = p.x - x;
            const dz = p.z - z;
            if (dx * dx + dz * dz <= r2) {
                if (pc.isHero) {
                    if (_t.vo.isResult) continue;// 已出结果不处理
                    pc.playDie();
                    _t.vo.setDead();
                    _t.clearUseSkill(true);
                    Game.Model.stage.onFail(2);
                } else {
                    pc.playDie();
                }
            }
        }

        // npc单位（在spatial.objMap + _t.npcUnits维护）
        for (let i = npcs.length - 1; i >= 0; i--) {
            const npc = npcs[i];
            if (!npc || npc.isDead) continue;
            const p = npc.position;
            const dx = p.x - x;
            const dz = p.z - z;
            if (dx * dx + dz * dz <= r2) {
                npc.nearDead(null);
                let index = _t.npcUnits.indexOf(npc);
                if (index != -1) {
                    _t.npcUnits.splice(index, 1);
                }
                npc.recover();
            }
        }

        // 建筑
        // 将范围转成一个Bound
        for (let build of buildings) {
            if (!build || build.isDead) continue;
            if (_t.landmarkBuild == build) {
                _t.landmarkBuild = null;
            }
            let buildOwner = build.owner;
            let pos = buildOwner.transform.position;
            let dx = pos.x - x;
            let dz = pos.z - z;
            if (dx * dx + dz * dz <= r2) {
                _t.spatial.removeBuilding(build);
                build.isDead = true;
                if (buildOwner == _t.currentObstacle) {
                    _t.restoreObstacle();
                }
                // 判断是否在摄像机范围内，范围内需要添加破碎动画，不在直接移除
                if (Game.SceneMgr.isInCamera(buildOwner)) {
                    if (build.effect) {
                        let pos = buildOwner.transform.localPosition;
                        if (!build.isCar) {
                            pos.y = 2;
                        }
                        Game.SceneMgr.particle.play(buildOwner.parent, pos, build.effect);
                    }
                    if (build.isCar) {
                        let anim = buildOwner.addComponent(CarBrokenAnim);
                        anim.camera = _t.camera;
                    } else {
                        let anim = buildOwner.addComponent(BuildingBrokenAnim);
                        anim.camera = _t.camera;
                    }
                } else {
                    buildOwner.destroy();
                }
            } else {
                // 获取建筑的范围，判断两个范围是否相交
                // let renderer = UIUtils.findComponent(buildOwner, Laya.MeshRenderer);
                // if(renderer) {
                //     let bounds = renderer.bounds;

                // }
            }
        }

    }

    /**
     * 是否在坑洞内（用于移动阻挡）
     */
    public isPosInCrater(pos: Laya.Vector3): boolean {
        if (!pos) return false;
        return this.isXZInCrater(pos.x, pos.z);
    }

    public isXZInCrater(x: number, z: number): boolean {
        const list = this._craters;
        for (let i = 0; i < list.length; i++) {
            const c = list[i];
            const dx = x - c.x;
            const dz = z - c.z;
            if (dx * dx + dz * dz <= c.r * c.r) return true;
        }
        return false;
    }

    //#endregion
    // todo ===================== 陨石事件 end ===========================

    /**
     * 摄像机lookAt
     */
    private lookAtHero() {
        if (DEBUG) {
            if (Game.SceneMgr.noLock) return;
        }
        const _t = this;
        const vec = Laya.Vector3.TEMP.setValue(0, 0, 0);
        const localPos = _t.hero.targetTF.position;
        Laya.Vector3.add(localPos, _t.offset, vec);
        Laya.Vector3.lerp(localPos, vec, _t.smoothSpeed, _t.curpos);

        // 击退前移
        let kb = _t._camKnockbackObj.v;
        if (kb !== 0) {
            const dir = Laya.Vector3.TEMP.setValue(0, 0, 0);
            Laya.Vector3.subtract(localPos, _t.curpos, dir);
            dir.y = 0;
            Laya.Vector3.normalize(dir, dir);
            _t.curpos.x += dir.x * kb * _t._camKnockbackDist;
            _t.curpos.z += dir.z * kb * _t._camKnockbackDist;
        }

        _t.camera.transform.position = _t.curpos;
        _t.camera.transform.lookAt(localPos, Laya.Vector3.Up);

        // 震屏旋转
        let sv = _t._camShakeObj.v;
        if (sv !== 0) {
            let euler = _t.camera.transform.localRotationEuler;
            euler.z += sv * _t._camShakeAngle;
            _t.camera.transform.localRotationEuler = euler;
        }
    }

    /** 触发震屏效果 - 建筑破坏时调用 */
    public triggerCameraShake() {
        const _t = this;
        XYFrame.Tween.kill(_t._camShakeObj);
        _t._camShakeObj.v = 0;
        const half = 100;
        XYFrame.Tween.to(_t._camShakeObj, { v: 1 }, half, Ease.quadOut)
            .to({ v: -1 }, half, Ease.linear)
            .to({ v: 0 }, half, Ease.quadOut);
    }

    /** 触发击退摄像机前移效果 - 碰撞未破坏建筑时调用 */
    public triggerCameraKnockback() {
        const _t = this;
        XYFrame.Tween.kill(_t._camKnockbackObj);
        _t._camKnockbackObj.v = 0;
        XYFrame.Tween.to(_t._camKnockbackObj, { v: 1 }, 50, Ease.quadOut)
            .to({ v: 0 }, 100, Ease.quadOut);
    }

    //todo ===================== 事件处理 start ===========================
    //#region 事件处理 start

    /**
     * 处理击杀
     * @param _t 
     * @param result 
     * @returns 
     */
    private dealKill(_t: this, result: any[], isHero?: boolean, player?: PlayerController) {
        if (!result) return;

        if (isHero) {
            let expMap = result[2];
            if (expMap) {
                for (let k in expMap) {
                    let info = expMap[k];
                    let target = info.target;
                    let exp = info.exp;
                    if (exp && exp > 0) {
                        let pos: Laya.Vector3 = target.position || target.transform?.position;
                        if (!pos) {
                            pos = _t.hero.targetTF.position;
                        }
                        // 转换ui位置
                        let temp = Laya.Vector4.TEMP;
                        _t.camera.worldToViewportPoint(pos, temp);
                        let type = +k || 1;
                        if (type == 1 && exp > 3) {
                            while (exp > 0) {
                                let e = Math.min(Math.ceil(Math.random() * 3), exp);
                                exp -= e;
                                let obj: { type: number, exp: number, x: number, y: number } = XYFrame.PoolMgr.getObj();
                                obj.type = type;
                                obj.exp = e;
                                obj.x = temp.x + Math.random() * 150 * (Math.random() < 0.5 ? -1 : 1);
                                obj.y = temp.y + Math.random() * 100 * (Math.random() < 0.5 ? -1 : 1);
                                XYFrame.Msg.emit(EnumMsg.STAGE_ADD_EXP, obj);
                                XYFrame.PoolMgr.releaseObj(obj);
                            }
                        } else {
                            let obj: { type: number, exp: number, x: number, y: number } = XYFrame.PoolMgr.getObj();
                            obj.type = type;
                            obj.exp = exp;
                            obj.x = temp.x;
                            obj.y = temp.y;
                            XYFrame.Msg.emit(EnumMsg.STAGE_ADD_EXP, obj);
                            XYFrame.PoolMgr.releaseObj(obj);
                        }
                    }
                }
            }

        }

        let players: PlayerController[] = result[0];
        let npcs: NpcUnit[] = result[1];

        let isVibrate = false;
        if (players) {
            for (let player of players) {
                player.playDie();
                if (player.isHero) {
                    // 是角色
                    _t.vo.setDead();
                    _t.clearUseSkill(true);
                    Game.Model.stage.onFail(2);
                }
                isVibrate = true;
            }
        }

        if (npcs) {
            let killTypes: Record<number, number> = {};
            let temp = Laya.Vector3.TEMP.setValue(0, 0, 0);
            let len = 0;
            for (let npc of npcs) {
                let index = _t.npcUnits.indexOf(npc);
                if (index == -1) continue;
                _t.npcUnits.splice(index, 1);
                killTypes[npc.npcType] = (killTypes[npc.npcType] || 0) + 1;
                Laya.Vector3.add(temp, npc.position, temp);
                len++;
                // if (npc.effect && npc.target != null) {
                //     Game.SceneMgr.particle.play(_t.npcBase, npc.position, npc.effect);
                // }
                npc.recover();
                isVibrate = true;
            }
            temp.x /= len;
            temp.z /= len;
            temp.y = 0;
            if (Game.SceneMgr.isInCamera2(temp)) {
                Game.SceneMgr.particle.play(_t.npcBase, temp, "fx_yaoren_B", player?.targetTF.localScaleX || 1);
            }
            if (isHero) {
                _t.vo.addNpcs(killTypes);
            }
        }
        if (isHero && isVibrate) {
            Game.Model.setting.vibrate(0);
        }

        _t.checkKing();
    }

    /**
     * 检查皇冠特效
     * @param _t 
     */
    public checkKing() {
        let _t = this;
        let level = _t.hero.playerLev;
        let exp = _t.hero.playerExp;
        let bo = true;
        for (let enemy of _t.enemies) {
            if (enemy.playerLev > level) {
                bo = false;
                break;
            } else if (enemy.playerLev == level) {
                if (enemy.playerExp > exp) {
                    bo = false;
                    break;
                }
            }
        }
        _t.hero.playKing(bo);
    }

    private _bigBgMusicTm: number = 0;
    /**设置大背景音乐 */
    public setBigBgMusic() {
        let _t = this;
        _t._bigBgMusicTm = 3000;
        let volume = XYFrame.AudioMgr.musicVolume;
        Laya.SoundManager.musicVolume = volume * 0.5;
    }

    /**设置小背景音乐 */
    public setSmallBgMusic() {
        this._bigBgMusicTm = null;
        let volume = XYFrame.AudioMgr.musicVolume;
        Laya.SoundManager.musicVolume = volume * 0.2;
    }

    /**
     * 开始游戏
     */
    private onStartMsg(_t: this) {
        XYFrame.AudioMgr.playMusic(1);
        XYFrame.AudioMgr.playUI("paoxiao");
        Game.Model.setting.vibrate(1);
        _t.setBigBgMusic();
        _t.vo.isStart = true;
        for (let enemy of _t.enemies) {
            enemy.startMove();
        }
        for (let npcUnit of _t.npcUnits) {
            npcUnit.startMove();
        }
    }

    /**
     * 移动方向
     */
    private onMoveDirMsg(_t: this, dir: number) {
        if (!_t.hero) return;
        _t.hero.directMove(dir);
    }


    /**
     * 建筑击破
     * @param _t 
     * @param build 
     * @returns 
     */
    private onKillBuildMsg(_t: this, build: Unit_Building, isHero: boolean) {
        if (!build) return;
        if (_t.landmarkBuild == build) {
            _t.landmarkBuild = null;
        }
        _t.spatial.removeBuilding(build);
        let buildOwner = build.owner;
        let phy = UIUtils.findComponent(buildOwner, Laya.PhysicsCollider);
        if (phy) {
            phy.isTrigger = true;
            phy.canCollideWith = 0;
        }
        build.isDead = true;
        let type = build.npcType;
        if (isHero) {
            _t.vo.addBuild(build.type);
            if (!build.isCar) {
                _t.triggerCameraShake();
            }
        }
        let data = ConfigData.human_105[type];
        if (data) {
            let pos = buildOwner.transform;
            let postion = buildOwner.transform.position;
            let rangeWidth = pos.localScaleX;
            let rangeHeight = pos.localScaleZ;
            if (rangeWidth <= 1) {
                rangeWidth = 3;
            }
            if (rangeHeight <= 1) {
                rangeHeight = 3;
            }
            let left = postion.x - rangeWidth / 2;
            let top = postion.z - rangeHeight / 2;
            let count = Config_human_105.getSl(data);
            let exp = Config_human_105.getJy(data);
            let npcType = Config_human_105.getType(data);
            let expType = Config_human_105.getExpType(data);
            let mx = Config_human_105.getMx(data);
            let effect = Config_human_105.getEffect(data);
            let angleList = Config_human_105.getCx(data).split(",");
            let angle = +angleList[MathUtils.getRandomInt(0, angleList.length - 1)];
            let frustum = _t.camera.boundFrustum;
            for (let i = 0; i < count; i++) {
                let x = left + Math.random() * rangeWidth;
                let z = top + Math.random() * rangeHeight;
                let npcUnit = XYFrame.PoolMgr.getCls(NpcUnit);
                npcUnit.onInit(npcType, type, mx, _t.scene, _t.npcBase, _t.spatial, exp, expType, effect);
                npcUnit.setPos(x, 0, z);
                npcUnit.directMove(angle);
                _t.npcUnits.push(npcUnit);
                npcUnit.checkInFrustum(frustum);
            }
            // }
        }
        if (buildOwner == _t.currentObstacle) {
            _t.restoreObstacle();
        }
        // 判断是否在摄像机范围内，范围内需要添加破碎动画，不在直接移除
        if (Game.SceneMgr.isInCamera(buildOwner)) {
            if (build.effect) {
                let pos = buildOwner.transform.localPosition;
                if (!build.isCar) {
                    pos.y = 2;
                }
                Game.SceneMgr.particle.play(buildOwner.parent, pos, build.effect);
            }
            if (build.isCar) {
                let anim = buildOwner.addComponent(CarBrokenAnim);
                anim.camera = _t.camera;
            } else {
                let anim = buildOwner.addComponent(BuildingBrokenAnim);
                anim.camera = _t.camera;
            }
        } else {
            buildOwner.destroy();
        }
    }

    /**
     * 英雄升级
     * @param _t 
     */
    private onHeroUpgradeMsg(_t: this) {
        let scale = _t.hero.scale - 1;
        let smooth = EnumStageScene.CAMERA_SMOOTH + scale * 0.5;
        // let orthographicSize = EnumStageScene.CAMERA_ORTHOGRAPHIC_SIZE + scale * 8;
        _t._smoothTime = 0;
        _t._changeSmooth = smooth - _t.smoothSpeed;
        _t._startSmooth = _t.smoothSpeed;

        // _t._startOrthographicSize = _t.camera.orthographicVerticalSize;
        // _t._orthographicChange = orthographicSize - _t._startOrthographicSize;
    }

    /**
     * 失败
     * @param _t 
     */
    private onFailMsg(_t: this, value: number) {
        if (value == 1) {
            _t.vo.setTimeout();
            XYFrame.AudioMgr.playUI("timeout");
        } else {
            _t.vo.setDead();
        }
        // 失败震动
        Game.Model.setting.vibrate(1);
        _t.clearUseSkill(true);
        XYFrame.UIMgr.close(Vw_ExitStage);
        // 没有复活点不能复活
        XYFrame.UIMgr.open(Vw_Fail, value, _t.vo.hasRelive && _t.reliveBorns != null && _t.reliveBorns.length > 0);
    }

    /**
     * 成功
     * @param _t 
     */
    private onSuccessMsg(_t: this) {
        _t.vo.setWin();
    }

    /**
     * 复活
     * @param _t 
     */
    private onReliveMsg(_t: this) {
        _t.vo.relive();
        _t.hero.onRelive();
        // 判断是否在陨石坑内，如果在，需要随机个复活点复活
        if (_t.isXZInCrater(_t.hero.targetTF.position.x, _t.hero.targetTF.position.z)) {
            let index = MathUtils.getRandomInt(0, _t.reliveBorns.length - 1);
            let born = _t.reliveBorns[index];
            _t.hero.setPos(born.position.x, 0, born.position.z);
        }
    }

    /**
     * 使用技能
     * @param _t 
     * @param index 
     */
    private onUseSkillMsg(_t: this, index: number) {
        if (index == EnumStageSkill.SKILL_1) {
            let exp = Config_skill_105.getXgByKey(index);
            if (exp > 0) {
                _t.hero.addExp(exp);

                let temp = Laya.Vector4.TEMP;
                Game.SceneMgr.camera.worldToViewportPoint(_t.hero.targetTF.position, temp);
                let obj: { type: number, exp: number, x: number, y: number } = XYFrame.PoolMgr.getObj();
                obj.type = 2;
                obj.exp = exp;
                obj.x = temp.x + Math.random() * 100 * (Math.random() < 0.5 ? -1 : 1);
                obj.y = temp.y - 200 + Math.random() * 100 * (Math.random() < 0.5 ? -1 : 1);
                XYFrame.Msg.emit(EnumMsg.STAGE_ADD_EXP, obj);
                XYFrame.PoolMgr.releaseObj(obj);

                _t.checkKing();
            }
        } else if (index == EnumStageSkill.SKILL_2) {
            // 吸npc
            let skill = _t.hero.owner.getComponent(PullNpcSkill);
            if (!skill) {
                skill = _t.hero.owner.addComponent(PullNpcSkill);
            }
            skill.setData(index, 6000, _t);
        } else if (index == EnumStageSkill.SKILL_3) {
            // 停止时间
            let skill = _t.hero.owner.getComponent(StopTimeSkill);
            if (!skill) {
                skill = _t.hero.owner.addComponent(StopTimeSkill);
            }
            skill.setData(index, 10000, _t.vo);
        } else if (index == EnumStageSkill.SKILL_4) {
            // 加速
            let skill = _t.hero.owner.getComponent(SpeedUpSkill);
            if (!skill) {
                skill = _t.hero.owner.addComponent(SpeedUpSkill);
            }
            skill.setData(index, 5000);
        }
    }

    /**
     * socket 断开处理
     */
    private onOpenErrorMsg(_t: this, bo: boolean) {
        if (bo) {
            if (!Game.isNetEnter) {
                _t.vo.pause = true;
            }
        } else {
            _t.vo.pause = false;
        }
    }

    /**
     * 登录完成
     * @param _t 
     */
    private onLoginFinishMsg(_t: this) {
        _t.vo.pause = false;
    }

    /**
     * 完成目标
     * @param _t 
     * @param bo 
     */
    private onTargetMsg(_t: this, bo: boolean) {
        if (bo)
            Game.Model.stage.onPass();
    }

    /**
     * 拾取物品
     * @param _t 
     * @param item s
     */
    private onPickItem(_t: this, item: ItemsUnit) {
        let index = _t.itemUnits.indexOf(item);
        if (index >= 0) {
            _t.itemUnits.splice(index, 1);
        }
        Game.SceneMgr.factory.putItem(item);
    }

    //#endregion
    //todo ===================== 事件处理 end ===========================

    /**
     * 初始化玩家角色
     * @returns 
     */
    private initHero() {
        let _t = this;
        let hero = Game.SceneMgr.factory.getPlayer();
        if (_t.hero) {
            hero && Game.SceneMgr.factory.putPlayer(hero);
            return;
        }
        if (!hero) {
            return;
        }
        hero.owner.name = "Player";
        _t.playerBase.addChild(hero.owner);
        let skin = Game.Model.hero.vo.headId || 1001;
        hero.setData(3, skin, _t.scene, _t.spatial, Game.Model.hero.vo.name || "Player", 1, true, _t.camera);
        hero.setDirect(134);
        let pos = _t.getPlayerBornPos();
        let temp = Laya.Vector3.TEMP;
        temp.setValue(pos[0], pos[1], pos[2]);
        // _t.playerBase.transform.globalToLocal(temp, temp);
        hero.setPos(temp.x, temp.y, temp.z);
        // hero.setExp(0);
        _t.hero = hero;
        _t.lookAtHero();

    }

    /**
     * 初始化npc
     */
    private async initNpc(_t: this, flag: number) {
        while (flag == Game.SceneMgr.flag && _t.npcUnits.length < _t.npcMaxCount && _t.npcInitBorns.length > 0) {
            let num = _t.npcMaxCount - _t.npcUnits.length;
            for (let i = 0; i < num; i++) {
                let born = _t.npcInitBorns[_t.npcInitIndex % _t.npcInitBorns.length];
                _t.npcInitIndex++;
                if (!born.angle || born.angle.length == 0) {
                    i += born.count;
                    continue;
                }
                let angle = born.angle[Math.floor(Math.random() * born.angle.length)];
                for (let j = 0; j < born.count && i < num; j++) {
                    let npc = XYFrame.PoolMgr.getCls(NpcUnit);
                    let pos = born.getPos();
                    npc.onInit(born.npcType, born.type, born.mx, _t.scene, _t.npcBase, _t.spatial, born.exp, born.expType, born.effect);
                    npc.speedUpTime = 2000;
                    npc.setDirect(angle);
                    npc.setPos(pos[0], pos[1], pos[2]);
                    _t.npcUnits.push(npc);
                    i++;
                }
            }
        }
    }

    /**
     * 初始化场景中道具
     * @param _t 
     * @param flag 
     */
    private async initItems(_t: this, flag: number) {
        let num = Math.min(2, _t.levelComp.itemBorns.length);
        let borns = _t.levelComp.itemBorns.concat();
        while (num > 0) {
            num--;
            let born = borns.splice(Math.floor(Math.random() * borns.length), 1)[0];
            if (!born) {
                continue;
            }
            let item = Game.SceneMgr.factory.getItem();
            _t.npcBase.addChild(item.owner);
            let pos = born.transform.position;
            item.setPos(pos.x, pos.y, pos.z);
            _t.itemUnits.push(item);
        }
    }


    /** 检查时间 */
    private _obsTime = 0;
    /**
     * 遮挡检测与显隐控制
     */
    private checkObstacle() {
        const _t = this;
        _t._obsTime += Laya.timer.delta;
        if (_t._obsTime < 500) {
            return;
        }
        _t._obsTime = 0;
        // let pos = _t.hero.targetTF.position;
        let pos = _t.camera.transform.position;
        _t.ray.origin.setValue(pos.x, pos.y, pos.z);
        Laya.Vector3.subtract(_t.hero.targetTF.position, _t.ray.origin, _t.ray.direction);
        _t.ray.direction.normalize();

        _t.scene.physicsSimulation.rayCast(_t.ray, _t.hitInfo);
        // 检查是否有遮挡
        if (_t.hitInfo.succeeded) {
            const hit = <Laya.Sprite3D>_t.hitInfo.collider.owner;
            if (hit.layer == EnumRenderLayer.Building) {
                if (_t.currentObstacle !== hit) {
                    _t.restoreObstacle();
                    _t.currentObstacle = hit;
                    const renders = UIUtils.getChildsComponent(hit, Laya.MeshRenderer);
                    let alphaMat = [Game.SceneMgr.factory.getBlueAlpha()];
                    for (let render of renders) {
                        if (render.enabled) {
                            let mat = render.materials;
                            if (mat && mat.length > 0) {
                                _t.obstacleMaterial.set(render, mat);
                                render.materials = alphaMat;
                            }
                            // _t.obstacleRenderers.push(render);
                            // render.enabled = false;
                        }
                    }
                }
                return;
            }
        }
        _t.restoreObstacle();

    }

    /** 恢复遮挡建筑（避免建筑永久隐藏） */
    private restoreObstacle(): void {
        if (this.currentObstacle) {
            this.currentObstacle = null;
        }
        this.obstacleMaterial.forEach((mat, renderer) => {
            renderer.materials = mat;
        });
        this.obstacleMaterial.clear();
        // for (const renderer of this.obstacleRenderers) {
        //     renderer.enabled = true;
        // }
        // this.obstacleRenderers.length = 0;
    }

    /** 检查NPC */
    private checkCreateNpc(_t: this, delta: number) {
        _t.npc_check_tm += delta;
        if (_t.npc_check_tm < EnumStageScene.NPC_CHECK_CREATE) return;
        _t.npc_check_tm = 0;
        if (!_t.vo.isStart || _t.npcUnits.length >= _t.npcMaxCount || _t.npcInitBorns.length <= 0) {
            return;
        }
        let num = _t.npcMaxCount - _t.npcUnits.length;
        for (let i = 0; i < num && i < EnumStageScene.NPC_CREATE_COUNT; i++) {
            let index = Math.floor(Math.random() * _t.npcInitBorns.length);
            let born = _t.npcInitBorns[index];
            if (!born || !born.angle || born.angle.length == 0 || born.count <= 0) return;
            let angle = born.angle[Math.floor(Math.random() * born.angle.length)];
            // let temp = Laya.Vector3.TEMP;
            // let parentTf = _t.npcBase.transform;
            for (let j = 0; j < born.count && i < num; j++) {
                let pos = born.getPos();
                let npc = XYFrame.PoolMgr.getCls(NpcUnit);
                npc.onInit(born.npcType, born.type, born.mx, _t.scene, _t.npcBase, _t.spatial, born.exp, born.expType, born.effect);
                npc.setPos(pos[0], pos[1], pos[2]);
                _t.npcUnits.push(npc);
                npc.directMove(angle);
                i++;
            }
        }
        // _t.npc_check_tm += delta;
        // if (_t.npc_check_tm < EnumStageScene.NPC_CHECK_CREATE) return;
        // _t.npc_check_tm = 0;
        // if (!_t.vo.isStart || _t.npcs.length >= _t.levelComp.npcMaxCount) {
        //     return;
        // }
        // let num = _t.levelComp.npcMaxCount - _t.npcs.length;
        // for (let i = 0; i < num && i < EnumStageScene.NPC_CREATE_COUNT; i++) {
        //     let index = Math.floor(Math.random() * _t.levelComp.npcBorns.length);
        //     let born = _t.levelComp.npcBorns[index];
        //     if (!born || !born.angle || born.angle.length == 0 || born.count <= 0) return;
        //     let angle = born.angle[Math.floor(Math.random() * born.angle.length)];
        //     // let temp = Laya.Vector3.TEMP;
        //     // let parentTf = _t.npcBase.transform;
        //     for (let j = 0; j < born.count && i < num; j++) {
        //         let npc = Game.SceneMgr.factory.getNpc();
        //         let pos = born.getPos();
        //         _t.npcs.push(npc);
        //         _t.npcBase.addChild(npc.owner);
        //         npc.setData(_t.scene, _t.spatial, born.exp, born.effect);
        //         // temp.setValue(pos[0], pos[1], pos[2]);
        //         // parentTf.globalToLocal(temp, temp);
        //         // npc.setPos(temp.x, 0, temp.z);
        //         npc.setPos(pos[0], pos[1], pos[2]);
        //         npc.directMove(angle);
        //         npc.owner.name = "Npc" + _t.npcs.length;
        //         i++;
        //     }
        // }
    }

    // 检测敌人移动
    private checkEnemysMove(_t: this, delta: number) {
        _t.check_enemy_move += delta;
        if (_t.check_enemy_move < 5000) {
            return;
        }
        _t.check_enemy_move = 0;
        if (_t.enemies.length == 0 || _t.hero.isDead) return;
        // 先获取比玩家等级大的
        let enemys: PlayerController[] = [];
        for (let e of _t.enemies) {
            if (!e.isDead && e.playerLev > _t.hero.playerLev) {
                enemys.push(e);
            }
        }
        // 随机2个
        let num = 0;
        let pos = _t.hero.targetTF.position;
        while (enemys.length > 0 && num < 2) {
            let index = Math.floor(Math.random() * enemys.length);
            let e = enemys.splice(index, 1)[0];
            e.checkMove(pos);
            num++;
        }
    }

    /**
     * 更新敌人方向到ui上显示
     * @param _t 
     * @param delta 
     */
    private checkEnemysToUI(_t: this, delta: number) {
        _t.check_enemy_dir += delta;
        if (_t.check_enemy_dir < 100) {
            return;
        }
        _t.check_enemy_dir = 0;
        // 先将角色位置转ui坐标
        let temp = Laya.Vector4.TEMP.setValue(0, 0, 0, 0);
        let pos = _t.hero.targetTF.position;
        let px = pos.x;
        let pz = pos.z;
        _t.camera.worldToViewportPoint(pos, temp);
        let root: any = XYFrame.PoolMgr.getObj();
        root.x = temp.x;
        root.y = temp.y;
        let others: any[] = [];
        let enemys = _t.enemies;
        for (let e of enemys) {
            if (!e.isDead) {
                temp.setValue(0, 0, 0, 0);
                let epos = e.targetTF.position;
                _t.camera.worldToViewportPoint(epos, temp);
                if (px > epos.x) {
                    if (root.x < temp.x) {
                        temp.x = root.x - GameDesign.showWidth;
                    }
                } else if (px < epos.x) {
                    if (root.x > temp.x) {
                        temp.x = root.x + GameDesign.showWidth;
                    }
                }
                if (pz > epos.z) {
                    if (root.y < temp.y) {
                        temp.y = root.y - GameDesign.showHeight;
                    }
                } else if (pz < epos.z) {
                    if (root.y > temp.y) {
                        temp.y = root.y + GameDesign.showHeight;
                    }
                }
                let other: any = XYFrame.PoolMgr.getObj();
                other.x = temp.x;
                other.y = temp.y;
                other.type = e.style;
                other.level = e.playerLev;
                other.angle = e.angle;
                others.push(other);
            }
        }
        // 添加地标建筑
        if (_t.landmarkBuild) {
            temp.setValue(0, 0, 0, 0);
            let epos = _t.landmarkBuild.owner.transform.position;
            _t.camera.worldToViewportPoint(epos, temp);
            if (px > epos.x) {
                if (root.x < temp.x) {
                    temp.x = root.x - GameDesign.showWidth;
                }
            } else if (px < epos.x) {
                if (root.x > temp.x) {
                    temp.x = root.x + GameDesign.showWidth;
                }
            }
            if (pz > epos.z) {
                if (root.y < temp.y) {
                    temp.y = root.y - GameDesign.showHeight;
                }
            } else if (pz < epos.z) {
                if (root.y > temp.y) {
                    temp.y = root.y + GameDesign.showHeight;
                }
            }
            let other: any = XYFrame.PoolMgr.getObj();
            other.x = temp.x;
            other.y = temp.y;
            other.type = 0;
            other.level = _t.landmarkBuild.type;
            others.push(other);
        }
        let data: any = XYFrame.PoolMgr.getObj();
        data.root = root;
        data.others = others;
        XYFrame.Msg.emit(EnumMsg.STAGE_UI_ENEMY_DIR, data);

        // 释放
        XYFrame.PoolMgr.releaseObjs(others);
        XYFrame.PoolMgr.releaseObj(root);
        XYFrame.PoolMgr.releaseObj(data);
    }

    // // todo 技能
    // //#region 技能逻辑

    /**
     * 清理使用技能
     */
    private clearUseSkill(isEnd?: boolean) {
        let _t = this;
        if (_t.hero) {
            let target = _t.hero.owner;
            let components = target.components;
            for (let comp of components) {
                if (comp instanceof SkillBase) {
                    comp.destroy();
                }
            }
        }
        // for (let k in _t.useSkillMap) {
        //     let vo = _t.useSkillMap[k];
        //     delete _t.useSkillMap[k];
        //     if (isEnd) {
        //         vo.endFun && vo.endFun(_t);
        //     }
        //     XYFrame.PoolMgr.releaseObj(vo);
        // }
    }

    // /**
    //  * 使用技能，提高等级，经验加成
    //  */
    // private useSkill_CheckAddExp(_t: this, delta: number, vo: Vo_UseSkill) {

    // }

    // /**
    //  * 使用技能，拉近npc
    //  */
    // private useSkill_CheckNearNpc(_t: this, delta: number, vo: Vo_UseSkill) {
    //     vo.checkTime += delta;
    //     if (vo.checkTime <= 200) return;
    //     let range = Math.ceil(EnumStageScene.SKILL_NEAR_DIST / EnumStageScene.SCENE_GRID_SIZE);
    //     let nearbyUnits = _t.spatial.getNearbyUnits(_t.hero.targetTF.position, range);
    //     if (!nearbyUnits) {
    //         return;
    //     }

    //     let pos = _t.hero.targetTF.position;
    //     let npcs: NpcController[] = [];
    //     for (let i = 0, len = nearbyUnits.length; i < len; i++) {
    //         let unit = nearbyUnits[i];
    //         if (unit.layer != EnumRenderLayer.Npc) continue;
    //         let ctrl: NpcController = unit.getComponent(NpcController);
    //         if (!ctrl || ctrl.isDead) continue;
    //         // 判断是否在范围内
    //         let dist = Laya.Vector3.distance(pos, unit.transform.position);
    //         if (dist <= EnumStageScene.SKILL_NEAR_DIST) {
    //             npcs.push(ctrl);
    //         }
    //     }

    //     if (npcs.length == 0) return;
    //     // 移到我攻击范围
    //     let addExp = 0;
    //     for (let i = 0, len = npcs.length; i < len; i++) {
    //         let npc = npcs[i];
    //         npc.nearDead();
    //         addExp += npc.exp;
    //     }
    //     _t.hero.addExp(addExp);
    // }

    // /**
    //  * 使用技能，停止时间
    //  */
    // private useSkill_CheckStopTime(_t: this, delta: number, vo: Vo_UseSkill) {

    // }

    // /**
    //  * 技能结束，停止时间
    //  * @param _t 
    //  */
    // private useSkill_EndStopTime(_t: this) {

    // }

    // /**
    //  * 开始使用技能，增加速度
    //  */
    // private useSkill_StartAddSpeed(_t: this) {
    //     _t.hero && _t.hero.setAppendSpeed(5);
    // }

    // /**
    //  * 技能结束，增加速度
    // */
    // private useSkill_EndAddSpeed(_t: this) {
    //     _t.hero && _t.hero.setAppendSpeed(0);

    // }
    // //#endregion

    // todo 敌人逻辑
    //#region 敌人逻辑

    /**
     * 创建敌人
     * @returns 
     */
    private createEnemy(count: number, upCount: number) {
        let _t = this;
        let types = [1001, 1002, 1003, 1004, 1005, 1006, 1007];
        let nameIds = Game.Model.stage.nameIds.slice();
        // 打乱顺序
        types.sort(() => Math.random() - 0.5);
        let type_len = types.length;
        for (let i = 0; i < count; i++) {
            let pos = _t.getPlayerBornPos();
            if (!pos) return;
            let enemy = Game.SceneMgr.factory.getPlayer();
            if (!enemy) {
                return;
            }
            let name = nameIds.splice(Math.floor(Math.random() * nameIds.length), 1)[0];
            name = ConfigData.name_105[name];
            const angle = Math.random() * 360;
            enemy.owner.name = "Enemy" + _t.enemies.length;
            _t.playerBase.addChild(enemy.owner);
            enemy.setData(upCount > i ? 1 : 2, types[i % type_len], _t.scene, _t.spatial, name, 1, false, _t.camera);
            enemy.setPos(pos[0], pos[1], pos[2]);
            _t.enemies.push(enemy);
            enemy.setDirect(angle);
        }
    }

    /**
     * 获取出生点
     * @returns 
     */
    private getPlayerBornPos() {
        let len = this.playerBorns.length;
        if (len == 0) {
            return null;
        }
        let index = (Math.random() * len) >> 0;
        let tf = this.playerBorns[index];
        let pos = tf.position;
        this.playerBorns.splice(index, 1);
        let sx = tf.localScaleX;
        let sz = tf.localScaleZ;
        let x = pos.x - sx / 2;
        let z = pos.z - sz / 2;
        return [x + Math.random() * sx, 0, z + Math.random() * sz];
    }
    //#endregion

    /**
     * 检测是否在场景可走区域范围内
     * @param pos 
     */
    public checkInRange(pos: Laya.Vector3): boolean {
        if (!pos || !this.sceneColliders.length) return false;
        let _t = this;
        let list = _t.sceneColliders;
        let x = pos.x, z = pos.z;
        let shapeX: number, shapeZ: number, shapeSizeX: number, shapeSizeZ: number;
        for (let shape of list) {
            shapeX = shape.localOffset.x + _t.rangeOriginPos.x;
            shapeZ = shape.localOffset.z + _t.rangeOriginPos.z;
            shapeSizeX = shape.size.x;
            shapeSizeZ = shape.size.z;
            if (x >= shapeX - shapeSizeX / 2 && z >= shapeZ - shapeSizeZ / 2 && x <= shapeX + shapeSizeX / 2 && z <= shapeZ + shapeSizeZ / 2) {
                return true;
            }
        }
        return false;
    }
}