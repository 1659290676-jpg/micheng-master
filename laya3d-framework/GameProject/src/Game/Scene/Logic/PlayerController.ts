import { Unit_Building } from "../Components/Unit_Building";
import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_dinosaur_105 from "../../../DataStock/ConfigData/Ts/Config_dinosaur_105";
import Config_skin_301 from "../../../DataStock/ConfigData/Ts/Config_skin_301";
import Config_upgrade_105 from "../../../DataStock/ConfigData/Ts/Config_upgrade_105";
import EnumKey from "../../../DataStock/GameData/EnumKey";
import Vo_Attr from "../../../DataStock/GameData/Vo_Attr";
import { EnumUILayer } from "../../../XYFrame/UI/Layer/EnumUILayer";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import Game from "../../Game";
import { EnumRenderLayer } from "../Define/EnumRenderLayer";
import { EnumStageScene } from "../Define/EnumStageScene";
import SceneDefine from "../Define/SceneDefine";
import { Runtime_PlayerHalo } from "../UI/Runtime_PlayerHalo";
import ItemsUnit from "../Unit/ItemsUnit";
import NpcUnit from "../Unit/NpcUnit";
import { AnimatorCtl } from "./AnimatorCtl";
import { BuildingHp } from "./BuildingHp";
import SpatialPartition from "./SpatialPartition";
import { StageSceneCtrl } from "../Ctrl/StageSceneCtrl";

const { regClass, property } = Laya;

/**
 * 角色
 */
@regClass()
export class PlayerController extends Laya.Script {

    /** 临时向量3 */
    public static readonly Vec3_TEMP1 = new Laya.Vector3();
    public static readonly Vec3_TEMP2 = new Laya.Vector3();

    public static readonly Radian = 180 / Math.PI;

    /** 皮肤样式 */
    @property({ type: Number })
    public style: number = 0;
    /** 恐龙类型 */
    @property({ type: Number })
    public type: number = 0;
    /** 场景 */
    public scene: Laya.Scene3D;
    /** 空间分区 */
    public spatial: SpatialPartition;
    /** 动画控制器 */
    public anim: AnimatorCtl;
    /** 是否是英雄 */
    public isHero: boolean;
    /** 是否死亡 */
    public isDead: boolean;

    /** 移动速度 */
    private mspeed = EnumStageScene.PLAYER_SPEED;
    /** 增加的速度 */
    private addSpeed: number = 0;
    /** 前方攻击范围 */
    public atk_range = EnumStageScene.ATTACK_DETECT_RANGE;
    /** 侧面攻击范围 */
    public side_atk_range = EnumStageScene.ATTACK_DETECT_RANGE / 2;
    /** 摄像机 */
    public camera: Laya.Camera;

    private target: Laya.Sprite3D;
    public targetTF: Laya.Transform3D;
    private targetRig: Laya.Rigidbody3D;
    private targetRenderer: Laya.MeshRenderer;

    private haloBoard: Laya.Sprite3D;
    public runtimeHalo: Runtime_PlayerHalo;

    /** 头部的面包 */
    private headBord: Laya.GWidget = new Laya.GWidget();
    /** 名字标签 */
    private lbName: Laya.GTextField;
    private nameHeadOffset: Laya.Vector3 = new Laya.Vector3(0, 3, 0); // 角色头顶3D偏移量

    /** 攻击值 */
    public attackVal = 0;
    /** 角色名字 */
    public playerName = "";
    /** 角色等级 */
    public playerLev = 0;
    /** 经验值 */
    public playerExp = 0;
    /** 最大经验值 */
    private maxExp = 0;
    /** 死亡经验 */
    private dieExp = 0;
    /** 缩放 */
    private _scale = 1;

    /** 当前方向 */
    public angle: number = 0;
    /** 是否移动中 */
    private isMove: boolean;
    /** 前进向量 */
    private forwardlenth: Laya.Vector3;
    /** 后退向量 */
    private backlength: Laya.Vector3;

    /** 是否弹开中 */
    private isBounce: number;

    /** 攻击间隔时间 */
    private attack_cd = 0;

    /** 死亡时间 */
    private die_tm = 0;

    /** 改变方向时间 */
    private change_dir_time = 0;

    /** 移动音效时间 */
    private _move_audio: number = 0;

    /** 皇冠特效 */
    private _kingEff: number;

    /**
     * 保存当前碰撞对象与时间
     */
    private collisionMap: Map<Laya.Sprite3D, number> = new Map();

    public onAwake(): void {
        const _t = this;
        const target = _t.target = <Laya.Sprite3D>_t.owner;
        target.layer = EnumRenderLayer.Player;
        _t.targetTF = target.transform;
        _t.anim = UIUtils.findComponent(target, AnimatorCtl);//target.getComponent(AnimatorCtl);
        _t.targetRig = UIUtils.findComponent(target, Laya.Rigidbody3D);//target.getComponent(Laya.Rigidbody3D);
        _t.targetRig.enabled = true;
        _t.targetRenderer = UIUtils.findComponent(target, Laya.MeshRenderer);
        // _t.targetRig.collisionGroup = EnumCollisonGroup.Player;
        _t.forwardlenth = new Laya.Vector3();
        _t.backlength = new Laya.Vector3();

        const halo = target.getChildByName("halo");
        let d3UI = UIUtils.findComponent(halo, Laya.UI3D);
        _t.haloBoard = halo;
        _t.runtimeHalo = <Runtime_PlayerHalo>d3UI.sprite;

        _t.headBord.mouseEnabled = false;
        if (!_t.lbName) {
            let lb = _t.lbName = new Laya.GTextField();
            lb.fontSize = 36;
            lb.color = "#F3F3F3";
            lb.stroke = 2;
            lb.strokeColor = "#2c2c2c";
            lb.size(200, 70);
            lb.align = "center";
            lb.anchor(0.5, 1);
            _t.headBord.addChild(lb);
        }

    }

    onEnable(): void {
        const _t = this;
        let layer = XYFrame.UIMgr.getLayer(EnumUILayer.Scene);
        layer.addChild(_t.headBord);
        _t.collisionMap.clear();
        _t.lbName.color = "#F3F3F3";
    }

    onDisable(): void {
        const _t = this;
        _t.headBord.removeSelf();
        _t.spatial && _t.spatial.removePlayer(_t.target);
        _t.collisionMap.clear();
    }

    // onLateUpdate(): void {
    //     if (!this.isDead) {
    //         this.spatial.updateObjGrid(this.target);
    //     }
    // }

    /**
     * 碰撞
     * @param collision 
     */
    onCollisionEnter(collision: Laya.Collision) {
        let owner = <Laya.Sprite3D>collision.other.owner;
        this.collisionMap.set(owner, Laya.timer.currTimer);
        if (owner.layer == EnumRenderLayer.Building) {
            this.onCollisionBuilding(owner, collision);
        } else
            if (owner.layer == EnumRenderLayer.Items) {
                // 撞击物品
                this.onCollisioinItem(owner, collision);
            }
        // else if (owner.layer == EnumRenderLayer.Range) {
        //     if (!this.isHero)
        //         this.onCollisionRange(owner, collision);
        // }
    }

    onCollisionStay(collision: Laya.Collision): void {
        let owner = <Laya.Sprite3D>collision.other.owner;
        if (this.collisionMap.has(owner)) {
            let time = this.collisionMap.get(owner);
            if (Laya.timer.currTimer - time <= 500) {
                return;
            }
        }
        if (owner.layer == EnumRenderLayer.Building) {
            this.onCollisionBuilding(owner, collision);
        }
    }

    onCollisionExit(collision: Laya.Collision): void {
        let owner = <Laya.Sprite3D>collision.other.owner;
        this.collisionMap.delete(owner);
    }

    /**
     * 是否可移除
     * @returns 
     */
    public isRemove() {
        return this.isDead && this.die_tm <= 0;
    }

    /**
     * 设置摄像机
     * @param style 皮肤表id
     * @param camera 
     * @param isCollision 是否检测碰撞，弹开逻辑
     */
    public setData(type: number, style: number, scene: Laya.Scene3D, spatial: SpatialPartition, name: string, level: number, isHero: boolean, camera: Laya.Camera) {
        let _t = this;
        _t.type = type;
        _t.style = style;
        _t.scene = scene;
        _t.spatial = spatial;
        _t.playerName = name;
        _t.playerExp = 0;
        _t.isHero = isHero;
        _t.camera = camera;
        _t.die_tm = 0;
        _t.setLev(level);
        _t.attack_cd = EnumStageScene.ATTACK_COOLDOWN * Math.random();
        _t.targetRig.enabled = true;

        _t.runtimeHalo.setExp(_t.playerExp, _t.maxExp);
        _t.updateName();

        // 设置颜色与材质
        let mat = Config_skin_301.getMatByKey(style);
        if (mat) {
            let asset: Laya.Material = Game.SceneMgr.factory.getAsset(mat);
            let meshRender = UIUtils.findComponent(_t.target, Laya.MeshRenderer);
            if (meshRender) {
                meshRender.material = asset;
            }
        }
        let color = Config_skin_301.getHaloByKey(style);
        if (color) {
            _t.runtimeHalo.setColor(color);
        }

        _t.updateAttr();
    }

    /**
     * 更新属性
     */
    public updateAttr() {
        // 恐龙最终攻击 = ((1+等级攻击系数*成长值)*基础攻击) + 玩家攻击系数*基础攻击
        let _t = this;
        let list = Config_dinosaur_105.getSxByKey(_t.type);
        let vo = Vo_Attr.vo.clear().addByList(list);
        let attack = 0;
        let baseAtk = vo.getVal(EnumKey.Attack);
        let baseGrowUp = vo.getVal(EnumKey.GrowUp);

        let levAtk = (Config_upgrade_105.getAtkByKey(_t.playerLev) || 0) / 10000;
        if (_t.isHero) {
            let vo = Game.Model.hero.vo;
            baseGrowUp += vo.getTotalAttr(EnumKey.GrowUp);
            attack += baseAtk * vo.getTotalAttr(EnumKey.Attack) / 10000;
        }

        baseGrowUp /= 10000;

        attack += baseAtk * (1 + baseGrowUp * levAtk);

        _t.attackVal = Math.ceil(attack);

    }


    /**
     * 设置位置
     * @param x 
     * @param y 
     * @param z 
     */
    public setPos(x: number, y: number, z: number) {
        let _t = this;
        var curpos = _t.targetTF.position;
        curpos.setValue(x, y, z);
        _t.targetRig.isKinematic = true;
        _t.targetTF.position = curpos;
        _t.targetRig.isKinematic = false;
        _t.spatial.updatePlayerGrid(_t.target);
    }

    /**
     * 更新速度
     */
    private updateSpeed() {
        let forward = Laya.Vector3.TEMP.setValue(0, 0, 0);
        this.targetTF.getForward(forward);// 获取方向
        forward.y = 0;
        Laya.Vector3.normalize(forward, forward);// 归一
        Laya.Vector3.scale(forward, (this.mspeed + this.addSpeed) / 1000, this.forwardlenth);// 还原长度
    }
    /**
     * 设置移动速度
     * @param val 
     */
    public setSpeed(val: number) {
        if (this.mspeed != val) {
            this.mspeed = val;
            this.updateSpeed();
        }
    }

    /**
     * 设置附加速度
     * @param val 
     */
    public setAppendSpeed(val: number) {
        if (this.addSpeed != val) {
            this.addSpeed = val;
            this.updateSpeed();
        }
    }


    /**
     * 帧频更新
     * @param delta 
     * @returns 
     */
    public onTick(delta: number) {
        let _t = this;
        if (_t.die_tm > 0) {
            _t.die_tm -= delta;
        }
        if (_t.isDead) {
            _t.updateNamePos();
            return;
        }
        const ctrl: StageSceneCtrl = Game.SceneMgr && (Game.SceneMgr as any).ctrl;
        if (_t.isBounce > 0) {
            _t.isBounce -= delta;
            let curpos = _t.targetTF.position;
            let vec = Laya.Vector3.TEMP.setValue(0, 0, 0);
            Laya.Vector3.scale(_t.backlength, delta, vec);
            vec.vadd(curpos, vec);
            vec.y = 0;

            // let ray = SceneDefine.Ray;
            // let hitInfo = SceneDefine.HitInfo;
            // Laya.Vector3.add(vec, SceneDefine.Offset, ray.origin);
            // ray.direction = SceneDefine.Down;
            // _t.scene.physicsSimulation.rayCast(ray, hitInfo);
            if (ctrl.checkInRange(vec) && !ctrl.isPosInCrater(vec)) {
                _t.targetRig.isKinematic = true;
                _t.targetTF.position = vec;
                _t.targetRig.isKinematic = false;
            }

        } else if (_t.isMove) {
            if (_t.isHero) {
                _t._move_audio += delta;
                if (_t._move_audio >= 500) {
                    _t._move_audio = 0;
                    XYFrame.AudioMgr.playUI("walk");
                }
            }
            let curpos = _t.targetTF.position;
            const vec = Laya.Vector3.TEMP.setValue(0, 0, 0);
            Laya.Vector3.scale(_t.forwardlenth, delta, vec);
            vec.vadd(curpos, vec);
            vec.y = 0;
            // let ray = SceneDefine.Ray;
            // let hitInfo = SceneDefine.HitInfo;
            // Laya.Vector3.add(vec, SceneDefine.Offset, ray.origin);
            // ray.direction = SceneDefine.Down;
            // _t.scene.physicsSimulation.rayCast(ray, hitInfo);
            if (ctrl.checkInRange(vec) && !ctrl.isPosInCrater(vec)) {
                _t.targetRig.isKinematic = true;
                _t.targetTF.position = vec;
                _t.targetRig.isKinematic = false;
            } else if (!_t.isHero) {
                // 判断当前位置是否可走，不可走需要往中心移动
                vec.setValue(curpos.x, 0, curpos.z);
                // Laya.Vector3.add(vec, SceneDefine.Offset, ray.origin);
                // _t.scene.physicsSimulation.rayCast(ray, hitInfo);
                if (!ctrl.checkInRange(vec) && !ctrl.isPosInCrater(vec)) {
                    // 往中心移动
                    vec.setValue(-curpos.x, 0, -curpos.z);
                    vec.normalize();
                    Laya.Vector3.scale(vec, delta, vec);
                    vec.vadd(curpos, vec);
                    vec.y = 0;
                    _t.targetRig.isKinematic = true;
                    _t.targetTF.position = vec;
                    _t.targetRig.isKinematic = false;
                }
                // 没碰撞移动反方向移动
                // 改变方向
                _t.change_dir_time += delta;
                if (_t.change_dir_time > 500) {
                    _t.change_dir_time = 0;
                    _t.setDirect(_t.angle + Math.random() * 360);
                }
            } else {
                // 如果是角色，需要判断是否可沿着x或z轴方向走
                // 如果前进方向碰撞，尝试分别沿x和z轴方向单独移动，若有一轴可移动则移动
                let moved = false;
                // 先尝试x轴单独移动
                const vecX = PlayerController.Vec3_TEMP1.setValue(_t.forwardlenth.x, 0, 0);
                Laya.Vector3.scale(vecX, delta, vec);
                vec.vadd(curpos, vec);
                vec.y = 0;
                // Laya.Vector3.add(vec, SceneDefine.Offset, ray.origin);
                // ray.direction = SceneDefine.Down;
                // _t.scene.physicsSimulation.rayCast(ray, hitInfo);
                if (ctrl.checkInRange(vec) && !ctrl.isPosInCrater(vec)) {
                    _t.targetRig.isKinematic = true;
                    _t.targetTF.position = vec;
                    _t.targetRig.isKinematic = false;
                    moved = true;
                }
                // 再尝试z轴单独移动（如果x轴没有移动成功）
                if (!moved) {
                    const vecZ = PlayerController.Vec3_TEMP2.setValue(0, 0, _t.forwardlenth.z);
                    Laya.Vector3.scale(vecZ, delta, vec);
                    vec.vadd(curpos, vec);
                    vec.y = 0;
                    // Laya.Vector3.add(vec, SceneDefine.Offset, ray.origin);
                    // ray.direction = SceneDefine.Down;
                    // _t.scene.physicsSimulation.rayCast(ray, hitInfo);
                    if (ctrl.checkInRange(vec) && !ctrl.isPosInCrater(vec)) {
                        _t.targetRig.isKinematic = true;
                        _t.targetTF.position = vec;
                        _t.targetRig.isKinematic = false;
                        moved = true;
                    }
                }
                if (!moved) {
                    // 往中心移动
                    // 判断当前位置是否可走，不可走需要往中心移动
                    vec.setValue(curpos.x, 0, curpos.z);
                    // Laya.Vector3.add(vec, SceneDefine.Offset, ray.origin);
                    // _t.scene.physicsSimulation.rayCast(ray, hitInfo);
                    if (!ctrl.checkInRange(vec) && !ctrl.isPosInCrater(vec)) {
                        // 往中心移动
                        vec.setValue(-curpos.x, 0, -curpos.z);
                        vec.normalize();
                        Laya.Vector3.scale(vec, delta / 1000, vec);
                        vec.vadd(curpos, vec);
                        vec.y = 0;
                        _t.targetRig.isKinematic = true;
                        _t.targetTF.position = vec;
                        _t.targetRig.isKinematic = false;
                    }
                }

            }
        }
        _t.spatial.updatePlayerGrid(_t.target);
        _t.updateNamePos();
    }

    public onNoStartTick(delta: number) {
        this.updateNamePos();
    }

    /**
     * 机器人恐龙移动
     * @param heroPos 英雄位置
     * @returns 
     */
    public checkMove(heroPos: Laya.Vector3) {
        const _t = this;
        if (_t.isDead) return;

        // 计算与英雄的方向角度，调用directMove接口移动
        const playerPos = _t.targetTF.position;
        const dirVec = Laya.Vector3.TEMP.setValue(0, 0, 0);
        Laya.Vector3.subtract(heroPos, playerPos, dirVec);
        // dirVec.y = 0;
        const angle = Math.atan2(dirVec.z, dirVec.x) * 180 / Math.PI;
        _t.directMove(angle);
    }

    /**
     * 检测攻击
     * @param delta 
     * @returns 
     */
    public checkAttack(delta: number) {
        const _t = this;
        if (_t.isDead) return;
        _t.attack_cd += delta;
        if (_t.attack_cd < EnumStageScene.ATTACK_COOLDOWN) return;
        _t.attack_cd = 0;
        let targetPos = _t.targetTF.position;
        const nearbyUnits = _t.spatial.getNearbyPlayer(targetPos, Math.ceil(_t.atk_range / EnumStageScene.SCENE_GRID_SIZE));
        const nearNpcs = _t.spatial.getNearByNpc(targetPos, Math.ceil(_t.atk_range / EnumStageScene.SCENE_GRID_SIZE));
        let vector = Laya.Vector3.TEMP.setValue(0, 0, 0);
        let target: any = null;
        let minSqrDist = _t.atk_range + 10;
        let addExp = 0;
        let isAdd: boolean;
        let npcs: NpcUnit[];
        let players: PlayerController[];

        let expMap: Record<number, { target: any, exp: number, dist?: number }>;

        // 根据前方攻击范围与侧方攻击范围，计算攻击目标是否在范围中
        // 获取当前朝向
        const forward = _t.forwardlenth.cloneTo(PlayerController.Vec3_TEMP1);
        forward.y = 0;
        Laya.Vector3.normalize(forward, forward);

        // 获取右侧方向
        const right = PlayerController.Vec3_TEMP2.setValue(0, 0, 0);
        Laya.Vector3.cross(forward, Laya.Vector3.Up, right);
        Laya.Vector3.normalize(right, right);

        let playerNum = 0;
        for (let i = nearbyUnits.length - 1; i >= 0; i--) {
            const unit = nearbyUnits[i];
            if (!unit.active || unit === this.owner) {
                continue;
            }
            const layer = unit.layer;
            const isAttackable = layer == EnumRenderLayer.Npc || layer == EnumRenderLayer.Player;

            if (!isAttackable) {
                continue;
            }

            isAdd = false;

            Laya.Vector3.subtract(unit.transform.position, targetPos, vector);
            vector.y = 0;
            const sqrDist = vector.length();

            // 判断是否在攻击范围内，并是否在前方
            if (sqrDist <= _t.atk_range && Laya.Vector3.dot(_t.forwardlenth, vector) > 0) {

                const localX = Laya.Vector3.dot(vector, right);
                const localZ = Laya.Vector3.dot(vector, forward);
                if (Math.abs(localX) > _t.side_atk_range || Math.abs(localZ) > _t.atk_range) continue;

                const player = unit.getComponent(PlayerController);
                if (player) {
                    if (player.isHero && Game.Model.stage.stageVo.isResult) continue;// 有结果不需要攻击玩家
                    // 大于等级才可攻击
                    if (!player.isDead && player.playerLev < _t.playerLev) {
                        isAdd = true;
                        player.isDead = true;
                        addExp += player.dieExp;
                        !players && (players = []);
                        players.push(player);
                        playerNum++;

                        if (_t.isHero) {
                            !expMap && (expMap = {});
                            let obj = (expMap[100] || (expMap[100] = { target: player, exp: 0 }));
                            obj.exp += player.dieExp;
                        }
                    }
                }
                // }
            }

            if (isAdd) {
                if (sqrDist < minSqrDist) {
                    minSqrDist = sqrDist;
                    target = unit;
                }
            }
        }
        if (_t.isHero) {
            Game.Model.stage.stageVo.addKillPlayer(playerNum);
        }

        for (let i = nearNpcs.length - 1; i >= 0; i--) {
            const npc: NpcUnit = nearNpcs[i];
            if (npc.isDead) continue;
            Laya.Vector3.subtract(npc.position, targetPos, vector);
            vector.y = 0;
            const sqrDist = vector.length();
            if (sqrDist <= _t.atk_range && Laya.Vector3.dot(_t.forwardlenth, vector) > 0) {
                const localX = Laya.Vector3.dot(vector, right);
                const localZ = Laya.Vector3.dot(vector, forward);
                if (Math.abs(localX) > _t.side_atk_range || Math.abs(localZ) > _t.atk_range) continue;

                isAdd = true;
                npc.isDead = true;
                addExp += npc.exp;
                !npcs && (npcs = []);
                npcs.push(npc);
                if (sqrDist < minSqrDist) {
                    minSqrDist = sqrDist;
                    target = npc;
                }

                if (_t.isHero) {
                    !expMap && (expMap = {});
                    let npcType = npc.expType || 1;
                    let obj = (expMap[npcType] || (expMap[npcType] = { target: null, exp: 0, dist: Number.MAX_VALUE }));
                    obj.exp += npc.exp;
                    if (obj.dist > sqrDist) {
                        obj.target = npc;
                        obj.dist = sqrDist;
                    }
                }
            }
        }

        _t.addExp(addExp);

        if (target && (!_t.isBounce || _t.isBounce <= 0)) {
            _t.playAttack(target);
            if (_t.isHero) {
                XYFrame.AudioMgr.playUI("eat");
            }
        }
        if (players || npcs) {
            return [players, npcs, expMap];
        }
        return null;
    }


    /**
     * 撞击建筑
     * @param owner 
     */
    private onCollisionBuilding(owner: Laya.Sprite3D, collision: Laya.Collision) {
        const _t = this;
        if (_t.isDead) return;

        let build = owner.getComponent(Unit_Building);
        if (build) {

            if (build.isLandmark && !_t.isHero) {
                // 地标建筑，非英雄不能撞击
                _t.directMove(_t.angle + 180);
                return;
            }
            // 英雄撞击建筑震动
            if (_t.isHero) {
                Game.Model.setting.vibrate(1);
                XYFrame.AudioMgr.playUI("hit", false);
                const ctrl: StageSceneCtrl = Game.SceneMgr && (Game.SceneMgr as any).ctrl;
                if (ctrl) {
                    ctrl.setBigBgMusic();
                }
            }
            // _t.attackOther(owner);
            build.hp -= _t.attackVal;
            if (!build.isCar) {
                let hp = owner.getComponent(BuildingHp);
                if (!hp) {
                    hp = owner.addComponent(BuildingHp);
                    hp.camera = _t.camera;
                }
                hp.setPos(_t.getCollisionPos(collision));
                hp.setHp(build.hp, build.hpMax);
            }

            if (build.hp <= 0 && !build.isDead) {
                _t.isBounce = 0;
                build.isDead = true;
                _t.addExp(build.exp);
                // 销毁
                XYFrame.Msg.emit(EnumMsg.STAGE_KILL_BUILD, build, _t.isHero);
            } else if (build.isBack) {// 车不能后退
                _t.isBounce = 150;
                if (_t.isHero) {
                    const ctrl: StageSceneCtrl = Game.SceneMgr && (Game.SceneMgr as any).ctrl;
                    if (ctrl) {
                        ctrl.triggerCameraKnockback();
                    }
                }
                // 计算弹开方向：角色位置 - 建筑位置 = 远离建筑的反方向
                const playerPos = _t.targetTF.position;
                const buildingPos = owner.transform.position;
                const bounceDir = Laya.Vector3.TEMP.setValue(0, 0, 0);
                Laya.Vector3.subtract(playerPos, buildingPos, bounceDir);
                bounceDir.y = 0;
                Laya.Vector3.normalize(bounceDir, bounceDir);
                Laya.Vector3.scale(bounceDir, _t.mspeed / 1000 * 2.5, _t.backlength);

            }
            // 撞击特效
            if (Game.SceneMgr.isInCamera1(_t.targetRenderer)) {
                let pos = _t.getCollisionPos(collision);
                Game.SceneMgr.particle.play(_t.target.parent, pos, "fx_baopo_c");
            }
        }
    }

    /**
     * 撞击物品
     * @param owner 
     * @param collision 
     */
    private onCollisioinItem(owner: Laya.Sprite3D, collision: Laya.Collision) {
        let unit = owner.getComponent(ItemsUnit);
        if (!unit) return;
        let _t = this;
        owner.active = false;
        let exp = Config_upgrade_105.getPickByKey(_t.playerLev);
        if (exp > 0) {
            _t.addExp(exp);
            if (_t.isHero) {
                let temp = Laya.Vector4.TEMP;
                Game.SceneMgr.camera.worldToViewportPoint(owner.transform.position, temp);
                let obj: { type: number, exp: number, x: number, y: number } = XYFrame.PoolMgr.getObj();
                obj.type = 2;
                obj.exp = exp;
                obj.x = temp.x;
                obj.y = temp.y;
                XYFrame.Msg.emit(EnumMsg.STAGE_ADD_EXP, obj);
                XYFrame.PoolMgr.releaseObj(obj);
            }
        }
        XYFrame.Msg.emit(EnumMsg.STAGE_ITEMS_PICK_UP, unit);
    }

    // /**
    //  * 碰撞了边缘
    //  * @param owner 
    //  * @param collision 
    //  * @returns 
    //  */
    // private onCollisionRange(owner: Laya.Sprite3D, collision: Laya.Collision) {
    //     let _t = this;
    //     if (_t.isDead) return;
    //     // 碰墙，需要计算与碰撞点的方向，然后取反方向，再随机偏移 ±60°
    //     const angle = _t.getRandomAvoidWallAngleByCollision(collision);
    //     _t.directMove(angle);
    // }

    /**
     * 获取碰撞点位置
     * @param collision 
     * @returns 
     */
    private getCollisionPos(collision: Laya.Collision) {
        let contactPos: Laya.Vector3 = null;
        if (collision.contacts && collision.contacts.length > 0) {
            const contact = collision.contacts[0];
            if (contact._colliderA.owner == this.target) {
                contactPos = contact.positionOnA;
            } else {
                contactPos = contact.positionOnB;
            }
            // contactPos = contact.positionOnA || contact.positionOnB || null;
        }
        return contactPos;
    }

    // /**
    //  * 获取避开墙壁的随机方向（基于碰撞点）
    //  */
    // private getRandomAvoidWallAngleByCollision(collision: Laya.Collision): number {
    //     const _t = this;
    //     const playerPos = _t.targetTF.position;
    //     let contactPos: Laya.Vector3 = null;
    //     if (collision.contacts && collision.contacts.length > 0) {
    //         const contact = collision.contacts[0];
    //         if (contact._colliderA.owner == _t.target) {
    //             contactPos = contact.positionOnB;
    //         } else {
    //             contactPos = contact.positionOnA;
    //         }
    //         // contactPos = contact.positionOnA || contact.positionOnB || null;
    //     }
    //     if (!contactPos) {
    //         contactPos = playerPos;
    //     }
    //     const dir = Laya.Vector3.TEMP.setValue(0, 0, 0);
    //     Laya.Vector3.subtract(playerPos, contactPos, dir);
    //     dir.y = 0;
    //     Laya.Vector3.normalize(dir, dir);
    //     if (dir.x === 0 && dir.z === 0) {
    //         dir.setValue(1, 0, 0);
    //     }
    //     const baseAngle = Math.atan2(dir.z, dir.x) * 180 / Math.PI;
    //     const randomOffset = Math.random() * 120 - 60; // 随机偏移 ±60°
    //     return baseAngle + randomOffset;
    // }

    // /**
    //  * 击杀NPC
    //  * @param owner 
    //  * @returns 
    //  */
    // private onKillNpc(owner: Laya.Sprite3D) {
    //     const npc = owner.getComponent(NpcController);
    //     if (!npc) return;
    //     if (npc.isDead) return;// 已死亡
    //     npc.isDead = true;
    //     this.addExp(npc.exp);
    //     this.attackOther(owner);

    //     XYFrame.Msg.emit(EnumMsg.SCENE_KILL_NPC, npc);
    // }


    /**
     * 播放攻击动作
     * @param other 
     */
    private playAttack(other: any) {
        if (!this.anim) return;
        // 播放攻击动作
        // 计算npc是在角色左侧还是右侧
        const npcPos = other.position || other.transform?.position;
        if (!npcPos) return;
        const playerPos = this.targetTF.position;
        const dirToNpc = Laya.Vector3.TEMP.setValue(0, 0, 0);
        Laya.Vector3.subtract(npcPos, playerPos, dirToNpc);

        let right = PlayerController.Vec3_TEMP1.setValue(0, 0, 0);
        this.targetTF.getRight(right);

        const dotProduct = Laya.Vector3.dot(dirToNpc, right);
        const isRight = dotProduct > 0;
        this.anim.playAttack(isRight ? "attack_r" : "attack_l");
    }

    /**
     * 设置方向
     * @param angle 
     * @returns 
     */
    public setDirect(angle: number) {
        let _t = this;
        if (_t.angle == angle) return;
        _t.angle = angle;
        angle = -angle - 90;

        if (_t.camera) {
            angle = angle + _t.camera.transform.localRotationEulerY;
        }

        _t.targetRig.isKinematic = true;
        _t.targetTF.localRotationEulerY = angle;
        _t.targetTF.localRotationEulerX = 0;
        _t.targetTF.localRotationEulerZ = 0;
        _t.haloBoard.transform.localRotationEulerY = -angle;
        _t.targetRig.isKinematic = false;

        // let forward = Laya.Vector3.TEMP.setValue(0, 0, 0);
        // _t.targetTF.getForward(forward);// 获取方向
        // forward.y = 0;
        // Laya.Vector3.normalize(forward, forward);// 归一
        // Laya.Vector3.scale(forward, _t.mspeed / 1000, _t.forwardlenth);// 还原长度

        _t.updateSpeed();

        return angle;
    }

    /**
     * 方向移动
     * @param angle 
     */
    public directMove(angle: number) {
        if (this.isDead) return;
        this.setDirect(angle);
        this.startMove();
    }

    /**
     * 开始移动
     */
    public startMove() {
        let _t = this;
        if (!_t.isMove) {
            _t.isMove = true;
            if (_t.anim) {
                _t.anim.playAnim("run", true);
            }
        }
    }

    /**
     * 停止移动
     */
    public stopMove() {
        let _t = this;
        _t.isMove = false;
        if (_t.anim) {
            _t.anim.playAnim("idle", true);
        }
    }

    /**
     * 播放死亡
     */
    public playDie() {
        let _t = this;
        _t.isDead = true;
        _t.spatial.removePlayer(_t.target);
        _t.die_tm = 2000;
        if (_t.anim) {
            _t.anim.playAnim("dead", true);
        }
        _t.targetRig.enabled = false;
        Game.SceneMgr.particle.play(_t.target.parent, _t.targetTF.localPosition, "fx_siwang", _t.targetTF.localScaleX);
        // _t.targetRig.collisionGroup = EnumCollisonGroup.Player;
    }

    /**
     * 清理
     */
    public clear() {
        const _t = this;
        _t.spatial.removePlayer(_t.target);
        _t.isBounce = 0;
        _t.camera = null;
        _t.playerName = "";
        _t.playerLev = 0;
        _t.playerExp = 0;
        _t.addSpeed = 0;
        _t.scale = 1;
        _t.spatial = _t.angle = null;
        _t.headBord.removeSelf();
        _t.stopMove();
        _t.collisionMap.clear();
        if (_t._kingEff) {
            XYFrame.EffectMgr.removeById(_t._kingEff);
            _t._kingEff = null;
        }
        _t.lbName.color = "#F3F3F3";
    }

    // todo 角色ui主件处理
    //#region 角色ui主件处理

    /**
     * 缩放
     * @param scale 
     */
    public set scale(scale: number) {
        if (this._scale == scale || scale == null) {
            return;
        }
        this._scale = scale;
        let pos = this.targetTF.localScale;
        pos.setValue(scale, scale, scale);
        this.targetTF.localScale = pos;
    }

    public get scale(): number {
        return this._scale;
    }


    /**
     * 设置名字
     * @param name 
     */
    public setName(name: string) {
        this.playerName = name;
        this.updateName();
    }
    /**
     * 设置等级
     * @param lev 
     */
    public setLev(lev: number) {
        if (this.playerLev == lev) return;
        let _t = this;
        _t.playerLev = lev;
        let data = ConfigData.upgrade_105[lev];
        if (data) {
            if (_t.type == 1) {
                // 成长高的
                _t.maxExp = Config_upgrade_105.getHighExp(data);
            } else if (_t.type == 2) {
                _t.maxExp = Config_upgrade_105.getLowExp(data);
            } else {
                _t.maxExp = Config_upgrade_105.getExp(data);
            }
            _t.scale = (Config_upgrade_105.getScale(data) || 100) / 100;
            _t.dieExp = Config_upgrade_105.getKill(data) || 0;
            let speed = Config_upgrade_105.getSpeed(data) || 0;
            let range = Config_upgrade_105.getRange(data) || 0;
            let side = Config_upgrade_105.getWide(data) || 0;
            if (_t.isHero) {
                let sp = Game.Model.hero.vo.getTotalAttr(EnumKey.Speed) || 0;
                speed += sp;
            }
            _t.setSpeed(speed / 100);
            _t.atk_range = range / 100;
            _t.side_atk_range = side / 100;
        } else {
            _t.dieExp = 0;
            _t.maxExp = 0;
            _t.setSpeed(EnumStageScene.PLAYER_SPEED);
            _t.atk_range = EnumStageScene.ATTACK_DETECT_RANGE;
            _t.side_atk_range = _t.atk_range / 2;
        }
        _t.updateName();

        // 计算属性
        _t.updateAttr();
    }

    /**
     * 设置经验值
     * @param exp 
     */
    public setExp(exp: number) {
        this.playerExp = exp;
        this.runtimeHalo.setExp(exp, this.maxExp);
    }

    /**
     * 增加经验
     * @param exp 
     */
    public addExp(exp: number) {
        if (exp <= 0 || !exp) return;
        const _t = this;
        _t.playerExp += exp;
        if (_t.playerExp >= _t.maxExp) {
            const data = ConfigData.upgrade_105;
            let lev = _t.playerLev;
            // let maxExp = 0;
            // let scale = _t._scale * 100;
            // let speed = 0;
            // let range = 0;
            exp = _t.playerExp;
            let e = 0;
            for (let i = lev; ; i++) {
                let d = data[i];
                if (!d) break;
                if (_t.type == 1) {
                    e = Config_upgrade_105.getHighExp(d);
                } else if (_t.type == 2) {
                    e = Config_upgrade_105.getLowExp(d);
                } else {
                    e = Config_upgrade_105.getExp(d);
                }
                // scale = Config_upgrade_105.getScale(d) || 0;
                // speed = Config_upgrade_105.getSpeed(d) || 0;
                // range = Config_upgrade_105.getRange(d) || 0;
                // maxExp = e;
                lev = i;
                if (!e) {
                    break;
                }
                if (exp < e) break;
                exp -= e;
            }
            let bo = _t.playerLev != lev;
            _t.playerExp = exp;
            _t.setLev(lev);
            // _t.maxExp = maxExp;
            // _t.playerLev = lev;
            // _t.atk_range = range / 100 + EnumScene.ATTACK_DETECT_RANGE;
            // _t.updateName();
            // scale /= 100;
            // _t.scale = scale;
            // _t.setSpeed(EnumScene.PLAYER_SPEED + speed / 100);
            if (bo) {
                // 升级特效
                if (_t.isHero || Game.SceneMgr.isInCamera1(_t.targetRenderer)) {
                    Game.SceneMgr.particle.play(_t.haloBoard, Laya.Vector3.ZERO, "fx_shengji");
                }
            }
            if (bo && _t.isHero) {
                // 升级
                XYFrame.Msg.emit(EnumMsg.STAGE_HERO_UPGRADE);
                XYFrame.AudioMgr.playUI("shengji");
                Game.Model.setting.vibrate(1);
            }
        }
        _t.runtimeHalo.setExp(_t.playerExp, _t.maxExp);
    }

    /**
     * 复活
     */
    public onRelive() {
        let _t = this;
        if (_t.isDead) {
            _t.isDead = false;
            _t.die_tm = 0;
            _t.anim.playAnim(_t.isMove ? "run" : "idle", true);
        }
        _t.targetRig.enabled = true;
        _t.spatial.updatePlayerGrid(_t.target);
    }

    /**
     * 播放皇冠特效
     * @param bo 是否播放
     */
    public playKing(bo: boolean) {
        let _t = this;
        if (bo) {
            if (!_t._kingEff) {
                _t._kingEff = XYFrame.EffectMgr.addSpine("effect/fx_huanguan", _t.headBord, 0, -100).eid
            }
        } else {
            if (_t._kingEff) {
                XYFrame.EffectMgr.removeById(_t._kingEff);
                _t._kingEff = null;
            }
        }
    }

    /**
     * 更新名字
     */
    private updateName() {
        this.lbName.text = this.playerName + "\nLv." + this.playerLev;
    }

    /**更新名字颜色 */
    public upNameColor(color: string) {
        this.lbName.color = color;
    }

    /**
     * 更新名字位置
     */
    private updateNamePos() {
        if (this.camera) {
            const headWorldPos = Laya.Vector3.TEMP.setValue(0, 0, 0);
            Laya.Vector3.scale(this.nameHeadOffset, this.scale, headWorldPos);
            Laya.Vector3.add(this.targetTF.position, headWorldPos, headWorldPos);
            const screenPos = Laya.Vector4.TEMP.setValue(0, 0, 0, 0);
            this.camera.worldToViewportPoint(headWorldPos, screenPos);
            this.headBord.pos(screenPos.x >> 0, screenPos.y >> 0);
        }
    }

    //#endregion
}