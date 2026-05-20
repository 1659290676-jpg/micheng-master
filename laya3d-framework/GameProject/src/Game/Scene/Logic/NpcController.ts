// import UIUtils from "../../../XYFrame/Utils/UIUtils";
// import { EnumStageScene } from "../Define/EnumStageScene";
// import SceneDefine from "../Define/SceneDefine";
// import { AnimatorCtl } from "./AnimatorCtl";
// import { PlayerController } from "./PlayerController";
// import SpatialPartition from "./SpatialPartition";

// const { regClass } = Laya;

// /**
//  * NPC
//  */
// @regClass()
// export class NpcController extends Laya.Script {

//     declare owner: Laya.Sprite3D;
//     /** 标签 */
//     public tag: string;

//     public scene: Laya.Scene3D;
//     public spatial: SpatialPartition;

//     /** 移动速度 */
//     public mspeed = EnumStageScene.NPC_SPEED;

//     public anim: AnimatorCtl;

//     private target: Laya.Sprite3D;
//     public targetTF: Laya.Transform3D;
//     // private targetRig: Laya.Rigidbody3D;

//     /** 是否移动中 */
//     private isMove: boolean;
//     /** 前进向量 */
//     private forwardlenth: Laya.Vector3;

//     /** 销毁获得经验 */
//     public exp: number;
//     /** 死亡特效 */
//     public effect: string;

//     /** 是否死亡 */
//     public isDead: boolean;

//     /** 当前方向角度 */
//     private angle: number;

//     // public isRemove: boolean;
//     // private nearTime: number;
//     // private nearTF: Laya.Transform3D;

//     onAwake(): void {
//         const _t = this;
//         const target = _t.target = <Laya.Sprite3D>_t.owner;
//         _t.targetTF = target.transform;
//         // _t.targetRig = UIUtils.findComponent(target, Laya.Rigidbody3D);
//         _t.anim = UIUtils.findComponent(target, AnimatorCtl);

//         _t.forwardlenth = new Laya.Vector3();

//         // _t.isDead = _t.isRemove = false;
//         this.angle = null;
//         _t.isDead = false;
//         _t.isMove = false;
//     }

//     onDisable(): void {
//         const _t = this;
//         _t.spatial && _t.spatial.remove(_t.target);
//         // _t.nearTF = null;
//     }

//     onReset(): void {
//         this.angle = null;
//     }

//     public setData(scene: Laya.Scene3D, spatial: SpatialPartition, exp: number, effect: string) {
//         this.scene = scene;
//         this.spatial = spatial;
//         this.exp = exp;
//         this.effect = effect;
//     }

//     // onCollisionEnter(collision: Laya.Collision): void {
//     //     let owner = collision.other.owner;
//     //     if (owner.layer == EnumRenderLayer.Range) {
//     //         this.setDirect(this.angle + 180);
//     //     }
//     // }

//     private change_time = 0;
//     /**
//      * 帧频更新
//      * @param delta 
//      * @returns 
//      */
//     onTick(delta: number) {
//         // if (this.nearTime > 0) {
//         //     this.checkNearDead(Laya.timer.delta);
//         //     return;
//         // }
//         // return;

//         if (this.isDead) return;
//         if (this.isMove) {
//             let _t = this;
//             let curpos = _t.targetTF.position;
//             const vec = Laya.Vector3.TEMP.setValue(0, 0, 0);
//             Laya.Vector3.scale(_t.forwardlenth, delta, vec);
//             vec.y = 0;
//             vec.vadd(curpos, vec);

//             let ray = SceneDefine.Ray;
//             let hitInfo = SceneDefine.HitInfo;
//             Laya.Vector3.add(vec, SceneDefine.Offset, ray.origin);
//             ray.direction = SceneDefine.Down;

//             _t.scene.physicsSimulation.rayCast(ray, hitInfo);
//             if (hitInfo.succeeded) {
//                 // _t.targetRig.isKinematic = true;
//                 _t.targetTF.position = vec;
//                 // _t.targetRig.isKinematic = false;

//                 _t.spatial.updateObjGrid(_t.target);
//             } else {
//                 // 改变方向
//                 _t.change_time += delta;
//                 if (_t.change_time > 500) {
//                     _t.change_time = 0;
//                     _t.setDirect(_t.angle + Math.random() * 360);
//                 }
//             }


//         }
//     }

//     // /**
//     //  * 检测靠近死亡
//     //  * @param delta 
//     //  * @param player 
//     //  */
//     // private checkNearDead(delta: number) {
//     //     let _t = this;
//     //     _t.nearTime -= delta;
//     //     let r = 1 - _t.nearTime / EnumStageScene.NPC_NEAR_TIME;
//     //     let playerPos = _t.nearTF.position;
//     //     if (r >= 1) {
//     //         _t.targetTF.position = playerPos;
//     //         _t.nearTF = null;
//     //         _t.isRemove = true;
//     //     } else {
//     //         let curpos = _t.targetTF.position;
//     //         let temp = Laya.Vector3.TEMP.setValue(0, 0, 0);
//     //         Laya.Vector3.lerp(curpos, playerPos, r, temp);
//     //         // _t.targetRig.isKinematic = true;
//     //         _t.targetTF.position = temp;
//     //         // _t.targetRig.isKinematic = false;
//     //     }
//     // }

//     /**
//      * 检测威胁，npc在角色周围要反方向逃脱
//      * @param hero 
//      * @param enemies 
//      */
//     public checkThreat(hero: PlayerController, enemies: PlayerController[]) {
//         if (this.isDead) return;
//         let _t = this;
//         let vec1 = _t.targetTF.position;
//         let vec2 = hero.targetTF.position;
//         let dist = Laya.Vector3.distance(vec2, vec1);
//         let range = Math.max(hero.atk_range * 1.5, EnumStageScene.NPC_FLEE_DIST);
//         if (dist < range) {
//             // 反方向移动
//             const bounceDir = Laya.Vector3.TEMP.setValue(0, 0, 0);
//             Laya.Vector3.subtract(vec1, vec2, bounceDir);
//             const angle = Math.atan2(bounceDir.z, bounceDir.x) * 180 / Math.PI;
//             _t.directMove(angle);
//         } else {
//             for (let i = 0; i < enemies.length; i++) {
//                 let enemy = enemies[i];
//                 vec2 = enemy.targetTF.position;
//                 dist = Laya.Vector3.distance(vec2, vec1);
//                 range = Math.max(enemy.atk_range * 1.5, EnumStageScene.NPC_FLEE_DIST);
//                 if (dist < range) {
//                     // 反方向移动
//                     const bounceDir = Laya.Vector3.TEMP.setValue(0, 0, 0);
//                     Laya.Vector3.subtract(vec1, vec2, bounceDir);
//                     const angle = Math.atan2(bounceDir.z, bounceDir.x) * 180 / Math.PI;
//                     _t.directMove(angle);
//                     break;
//                 }
//             }
//         }
//     }

//     /**
//      * 设置位置
//      * @param x 
//      * @param y 
//      * @param z 
//      */
//     public setPos(x: number, y: number, z: number) {
//         let _t = this;
//         var curpos = _t.targetTF.localPosition;
//         curpos.setValue(x, y, z);
//         // _t.targetRig.isKinematic = true;
//         _t.targetTF.localPosition = curpos;
//         // _t.targetRig.isKinematic = false;
//         _t.spatial.updateObjGrid(_t.target);
//     }

//     /**
//      * 设置移动速度
//      * @param val 
//      */
//     public setSpeed(val: number) {
//         let _t = this;
//         if (_t.mspeed != val) {
//             _t.mspeed = val;
//             let forward = Laya.Vector3.TEMP.setValue(0, 0, 0);
//             _t.targetTF.getForward(forward);// 获取方向
//             forward.y = 0;
//             Laya.Vector3.normalize(forward, forward);// 归一
//             Laya.Vector3.scale(forward, _t.mspeed / 1000, _t.forwardlenth);// 还原长度
//         }
//     }

//     /**
//      * 设置方向
//      * @param angle 
//      * @returns 
//      */
//     public setDirect(angle: number) {
//         let _t = this;
//         angle = angle % 360;
//         if (_t.angle == angle) return;
//         _t.angle = angle;
//         angle = -angle - 90;

//         // _t.targetRig.isKinematic = true;
//         _t.targetTF.localRotationEulerY = angle;
//         _t.targetTF.localRotationEulerX = 0;
//         _t.targetTF.localRotationEulerZ = 0;
//         // _t.targetRig.isKinematic = false;

//         let forward = Laya.Vector3.TEMP.setValue(0, 0, 0);
//         _t.targetTF.getForward(forward);// 获取方向
//         forward.y = 0;
//         Laya.Vector3.normalize(forward, forward);// 归一
//         Laya.Vector3.scale(forward, _t.mspeed / 1000, _t.forwardlenth);// 还原长度

//         return angle;
//     }


//     /**
//      * 方向移动
//      * @param angle 
//      */
//     public directMove(angle: number) {
//         this.setDirect(angle);
//         this.startMove();
//     }

//     /**
//      * 开始移动
//      */
//     public startMove() {
//         let _t = this;
//         if (!_t.isMove) {
//             _t.isMove = true;
//             if (_t.anim) {
//                 _t.anim.playAnim("run", true);
//             }
//         }
//     }

//     /**
//      * 停止移动
//      */
//     public stopMove() {
//         const _t = this;
//         _t.isMove = false;
//         if (_t.anim) {
//             _t.anim.playAnim("idle", true);
//         }
//     }

//     /**
//      * 附近死亡
//      */
//     public nearDead(tf: Laya.Transform3D) {
//         let _t = this;
//         _t.isDead = true;
//         // _t.nearTF = tf;
//         // _t.nearTime = EnumStageScene.NPC_NEAR_TIME;
//         _t.spatial.remove(_t.target);
//     }

//     /**
//      * 清理
//      */
//     public clear() {
//         const _t = this;
//         // _t.isRemove = false;
//         // _t.nearTime = null;
//         _t.spatial.remove(_t.target);
//         _t.spatial = _t.angle = null;
//         _t.stopMove();
//     }


// }