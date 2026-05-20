import Config_human_105 from "../../../DataStock/ConfigData/Ts/Config_human_105";
import HashObject from "../../../XYFrame/Define/HashObject";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Game from "../../Game";
import { StageSceneCtrl } from "../Ctrl/StageSceneCtrl";
import { EnumStageScene } from "../Define/EnumStageScene";
import SceneDefine from "../Define/SceneDefine";
import { AnimatorCtl } from "../Logic/AnimatorCtl";
import SpatialPartition from "../Logic/SpatialPartition";

/**
 * @ Author: XXL
 * @ Date: 2026-04-15 10:24
 * @ Description: Npc单位
*/
export default class NpcUnit implements IPool {
    /** 单位id */
    public readonly id = HashObject.getCount();
    /** 表id */
    public cfgId: number;
    /** 资源id */
    public res: number | string;

    public scene: Laya.Scene3D;
    public spatial: SpatialPartition;
    /** 父节点 */
    public parent: Laya.Sprite3D;

    /** 移动速度 */
    public mspeed = EnumStageScene.NPC_SPEED;

    /** 显示的模型 */
    public target: Laya.Sprite3D;
    private targetTf: Laya.Transform3D;
    private renderer: Laya.MeshRenderer;
    private material: Laya.BlinnPhongMaterial;
    /** 动画控制器 */
    private anim: AnimatorCtl;

    /** 位置 */
    public position: Laya.Vector3 = new Laya.Vector3();

    /** 是否移动中 */
    private isMove: boolean;
    /** 前进向量 */
    private forwardlenth: Laya.Vector3 = new Laya.Vector3();

    /** npc类型 */
    public npcType: number;
    /** 销毁获得经验 */
    public exp: number;
    /** 经验类型 */
    public expType: number;
    /** 死亡特效 */
    public effect: string;

    /** 是否死亡 */
    public isDead: boolean;

    /** 当前方向角度 */
    private angle: number;

    private matTime = 0;
    private matColor: Laya.Color = new Laya.Color(1, 1, 1, 1);
    /** 加速时间 */
    public speedUpTime = 0;

    /**
     * 初始化
     * @param scene 
     * @param spatial 
     * @param exp 
     * @param effect 
     */
    public onInit(npcType: number, cfgId: number, res: number | string, scene: Laya.Scene3D, parent: Laya.Sprite3D, spatial: SpatialPartition, exp: number, expType: number, effect: string) {
        let _t = this;
        _t.npcType = npcType;
        _t.cfgId = cfgId;
        _t.angle = null;
        _t.isDead = false;
        _t.isMove = false;
        _t.res = res;
        _t.exp = exp;
        _t.expType = expType;
        _t.effect = effect;
        _t.scene = scene;
        _t.spatial = spatial;
        _t.parent = parent;
        let speed = Config_human_105.getSpeedByKey(cfgId) || 160;
        _t.mspeed = speed / 100 / 1000;
    }

    private change_time = 0;
    /**
     * 帧频更新
     * @param delta 
     */
    public onTick(_t: this, delta: number) {
        if (_t.isDead) return;
        // let _t = this;
        if (_t.isMove) {
            let curpos = _t.position;
            const vec = Laya.Vector3.TEMP.setValue(0, 0, 0);
            let scale = delta * _t.mspeed;
            if (_t.speedUpTime > 0) {
                _t.speedUpTime -= delta;
                scale *= 2;
            }
            Laya.Vector3.scale(_t.forwardlenth, scale, vec);
            vec.y = 0;
            vec.vadd(curpos, vec);

            // let ray = SceneDefine.Ray;
            // let hitInfo = SceneDefine.HitInfo;
            // Laya.Vector3.add(vec, SceneDefine.Offset, ray.origin);
            // ray.direction = SceneDefine.Down;

            // _t.scene.physicsSimulation.rayCast(ray, hitInfo);
            const ctrl = <StageSceneCtrl>Game.SceneMgr.ctrl;
            // if (hitInfo.succeeded && !(ctrl && ctrl.isPosInCrater && ctrl.isPosInCrater(vec))) {
            if ((ctrl && ctrl.checkInRange && ctrl.checkInRange(vec)) && !(ctrl && ctrl.isPosInCrater && ctrl.isPosInCrater(vec))) {
                _t.position.setValue(vec.x, vec.y, vec.z);
                _t.spatial.addNpc(_t.position, _t);
                if (_t.targetTf) {
                    _t.targetTf.position = _t.position;
                }
                // _t.spatial.updateObjGrid(_t.target);
            } else {
                // 改变方向
                _t.change_time += delta;
                if (_t.change_time > 500) {
                    _t.change_time = 0;
                    _t.setDirect(_t.angle + Math.random() * 360);
                }
            }
        }
        if (_t.material && _t.npcType == 2) {
            _t.matTime += delta * 3;
            let time = _t.matTime / 1000;
            let r = Math.abs(Math.sin(time));
            let g = Math.abs(Math.sin(time + 1));
            let b = Math.abs(Math.sin(time + 2));

            _t.material.albedoColor = _t.matColor.setValue(r, g, b, 1);
            _t.renderer.material = _t.material;
        }
    }

    /**
     * 检测威胁，npc在角色周围要反方向逃脱
     * @param hero 
     * @param enemies 
     */
    public checkThreat(poses: any[]) {
        if (this.isDead) return;
        let _t = this;
        let vec1 = _t.position;
        for (let i = 0, len = poses.length; i < len; i++) {
            let enemy = poses[i];
            let dist = Laya.Vector3.distance(enemy[0], vec1);
            let range = Math.max(enemy[1] + 4, EnumStageScene.NPC_FLEE_DIST);
            if (dist < range) {
                // 反方向移动
                const bounceDir = Laya.Vector3.TEMP.setValue(0, 0, 0);
                Laya.Vector3.subtract(vec1, enemy[0], bounceDir);
                const angle = Math.atan2(bounceDir.z, bounceDir.x) * 180 / Math.PI;
                _t.directMove(angle);
                break;
            }
        }
    }

    public checkInFrustum(frustum: Laya.BoundFrustum) {
        if (frustum.containsPoint(this.position) != 0) {
            this.createTarget();
        } else {
            this.removeTarget();
        }
    }

    /**
     * 设置位置
     * @param x 
     * @param y 
     * @param z 
     */
    public setPos(x: number, y: number, z: number) {
        let _t = this;
        _t.position.setValue(x, y, z);
        if (_t.targetTf) {
            _t.targetTf.position = _t.position;
        }
        _t.spatial.addNpc(_t.position, _t);
        // var curpos = _t.targetTF.localPosition;
        // curpos.setValue(x, y, z);
        // _t.targetTF.localPosition = curpos;
        // _t.spatial.updateObjGrid(_t.target);
    }

    /**
     * 设置方向
     * @param angle 
     * @returns 
     */
    public setDirect(angle: number) {
        let _t = this;
        angle = angle % 360;
        if (_t.angle == angle) return;
        _t.angle = angle;
        angle = -angle - 90;

        if (_t.targetTf) {
            _t.targetTf.localRotationEulerY = angle;
            _t.targetTf.localRotationEulerX = 0;
            _t.targetTf.localRotationEulerZ = 0;
        }

        // let forward = Laya.Vector3.TEMP.setValue(0, 0, 0);

        let rad = (angle + 180) * Math.PI / 180;
        _t.forwardlenth.x = Math.sin(rad);
        _t.forwardlenth.z = Math.cos(rad);
        _t.forwardlenth.y = 0;
        // Laya.Vector3.normalize(forward, forward);// 归一
        // Laya.Vector3.scale(forward, _t.mspeed / 1000, _t.forwardlenth);// 还原长度
    }


    /**
     * 方向移动
     * @param angle 
     */
    public directMove(angle: number) {
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
        const _t = this;
        _t.isMove = false;
        if (_t.anim) {
            _t.anim.playAnim("idle", true);
        }
    }

    /**
     * 附近死亡
     */
    public nearDead(tf: Laya.Transform3D) {
        let _t = this;
        if (!_t.isDead) {
            _t.isDead = true;
            _t.spatial.removeNpc(_t);
        }
    }

    /**
     * 移除目标
     */
    public removeTarget() {
        let _t = this;
        if (_t.target) {
            _t.anim.playAnim("idle", true);
            let sp = _t.target;
            _t.target = null;
            _t.targetTf = null;
            _t.anim = null;
            _t.renderer = null;
            _t.material = null;
            Game.SceneMgr.factory.putNpcUnit(_t.res, sp);
        }
    }

    /**
     * 创建目标
     */
    public createTarget() {
        if (this.target || !this.parent) return;
        let _t = this;
        let sp = Game.SceneMgr.factory.getNpcUnit(_t.res, _t.npcType);
        if (sp) {
            sp.name = "NpcUnit_" + _t.id;
            _t.anim = UIUtils.findComponent(sp, AnimatorCtl);
            _t.target = sp;
            _t.parent.addChild(sp);
            let renderer = UIUtils.findComponent(sp, Laya.MeshRenderer);
            if (renderer) {
                _t.material = <Laya.BlinnPhongMaterial>renderer.material;
            }
            _t.renderer = renderer;
            let tf = _t.targetTf = sp.transform;
            tf.position = _t.position;
            tf.localRotationEulerY = -_t.angle - 90;
            tf.localRotationEulerX = 0;
            tf.localRotationEulerZ = 0;

            if (_t.isMove) {
                _t.anim.playAnim("run", true);
            } else {
                _t.anim.playAnim("idle", true);
            }
        }
    }

    public clear() {
        let _t = this;
        _t.removeTarget();
        _t.spatial && _t.spatial.removeNpc(_t);
        _t.scene = null;
        _t.spatial = null;
        _t.parent = null;
        _t.position.set(0, 0, 0);
        _t.isDead = false;
        _t.isMove = false;
        _t.angle = null;
        _t.exp = 0;
        _t.effect = null;
        _t.speedUpTime = 0;
    }

    public destroy() {
        this.clear();
    }

    public recover() {
        XYFrame.PoolMgr.releaseCls(this);
    }

}