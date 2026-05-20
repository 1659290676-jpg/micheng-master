import Config_effect_105 from "../../../DataStock/ConfigData/Ts/Config_effect_105";
import HashObject from "../../../XYFrame/Define/HashObject";
import UIUtils from "../../../XYFrame/Utils/UIUtils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import Game from "../../Game";

interface IParticleData {
    id: number;
    name: string;
    sp: Laya.Sprite3D;
    time: number;
}

/**
 * @ Author: XXL
 * @ Date: 2026-04-08 18:00
 * @ Description: 粒子特效管理器
*/
export default class ParticleMgr {
    private list: IParticleData[] = [];
    private _gid: number = 0;

    /**
     * 播放特性
     * @param parent 
     * @param pos 
     * @param effect 
     */
    public play(parent: Laya.Node, pos: Laya.Vector3, effect: string, scale: number = 1, duration?: number) {
        let sp = Game.SceneMgr.factory.getInst(effect);
        if (sp) {
            sp.transform.localPosition = pos;
            parent.addChild(sp);
            let data: IParticleData = XYFrame.PoolMgr.getObj();
            data.id = this._gid++;
            data.name = effect;
            data.sp = sp;
            let tf = sp.transform;
            let localScale = tf.localScale;
            localScale.set(scale, scale, scale);
            tf.localScale = localScale;
            data.time = duration || Config_effect_105.getTimeByKey(effect) || 1000;
            this.list.push(data);
            if (this._gid > 10000000) {
                this._gid = 0;
            }
            return data.id;
        }
    }

    /**
     * 移除特效
     * @param id 
     */
    public remove(id: number) {
        if (!id) return;
        for (let i = this.list.length - 1; i >= 0; i--) {
            let data = this.list[i];
            if (data.id == id) {
                this.list.splice(i, 1);
                this.stopParticle(data.sp);
                Game.SceneMgr.factory.putInst(data.name, data.sp);
                XYFrame.PoolMgr.releaseObj(data);
                break;
            }
        }
    }

    /**
     * 帧频更新
     * @param delta 
     */
    public update(delta: number) {
        for (let i = 0; i < this.list.length; i++) {
            let data = this.list[i];
            data.time -= delta;
            if (data.time <= 0) {
                this.list.splice(i, 1);
                i--;
                this.stopParticle(data.sp);
                Game.SceneMgr.factory.putInst(data.name, data.sp);
                XYFrame.PoolMgr.releaseObj(data);
            }
        }
    }

    private stopParticle(sp: Laya.Sprite3D) {
        let particle = UIUtils.getComponents(sp, Laya.ShurikenParticleRenderer);
        for(let i =0,len = particle.length;i < len;i++) {
            let p = particle[i];
            if(p.particleSystem) {
                p.particleSystem.stop();
                p.particleSystem.simulate(0, true);
            }
        }
    }

    /**
     * 消耗
     */
    public destroy() {
        for (let i = 0; i < this.list.length; i++) {
            let data = this.list[i];
            Game.SceneMgr.factory.putInst(data.name, data.sp);
            XYFrame.PoolMgr.releaseObj(data);
        }
        this.list.length = 0;
    }
}