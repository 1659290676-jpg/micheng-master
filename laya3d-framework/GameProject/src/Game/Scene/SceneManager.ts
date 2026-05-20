import Singleton from "../../XYFrame/Base/Singleton";
import Logger from "../../XYFrame/Logger/Logger";
import ResPath from "../../XYFrame/Resource/ResPath";
import UIUtils from "../../XYFrame/Utils/UIUtils";
import { XYFrame } from "../../XYFrame/XYFrame";
import { EnumMsg } from "../EnumMsg";
import Vw_Main from "../Module/Main/Vw_Main";
import Vw_SceneLoading from "../Module/Scene/Vw_SceneLoading";
import Vw_Msg from "../Module/Tip/Vw_Msg";
import { StageSceneCtrl } from "./Ctrl/StageSceneCtrl";
import FactoryMgr from "./Logic/FactoryMgr";
import ParticleMgr from "./Logic/ParticleMgr";

const { regClass } = Laya;

/**
 * @ Author: XXL
 * @ Date: 2026-03-16 14:32
 * @ Description: 场景管理器
*/
@regClass()
export default class SceneManager extends Singleton {

    /**
     * 场景根节点
     */
    public readonly stage: Laya.Scene3D;

    /** 场景相机 */
    public readonly camera: Laya.Camera;

    /** 工厂 */
    public readonly factory: FactoryMgr;

    /** 粒子管理器 */
    public readonly particle: ParticleMgr;

    /** 不跟随镜头 */
    public noLock: boolean;

    /** 是否已进入场景 */
    public isEnter: boolean;

    /** 是否就绪 */
    public isReady: boolean;

    /** 场景控制 */
    public ctrl: ISceneCtrl;

    /** 当前场景ID */
    public sceneId: number | string;
    /** 当前场景跟节点 */
    public node: Laya.Sprite3D;
    /** 标识，加载重复回调 */
    private _flag: number;
    /** 标识 */
    public get flag() {
        return this._flag;
    }

    protected onInit(...args: any[]): void {
        let _t = this;
        _t._flag = 0;
        let laya = Laya.stage;
        (<any>_t).stage = laya._scene3Ds[0];
        (<any>_t).camera = _t.stage.getChildByName("Main Camera");
        (<any>_t).factory = new FactoryMgr();
        (<any>_t).particle = new ParticleMgr();
    }

    public destroy(): void {
        let _t = this;
        _t.factory.destroy();
        (<any>_t).stage = null;
        (<any>_t).scene = null;
        (<any>_t).factory = null;
        (<any>_t).particle = null;
        super.destroy();
    }

    /**
     * 进入场景
     * @param res 
     */
    public onEnter(res: number | string) {
        let _t = this;
        if (_t.sceneId) {
            _t.onExit();
        }
        _t.isEnter = true;
        if (_t._flag > 1000000) {
            _t._flag = 0;
        } else {
            _t._flag++;
        }
        _t.sceneId = res;
        XYFrame.UIMgr.open(Vw_SceneLoading);
        XYFrame.ResMgr.load(ResPath.getScenePath(`level/${res}${ResPath.EXT_PREFAB}`), _t.onLoaded, _t, Laya.Loader.HIERARCHY, _t._flag);
    }

    /**
     * 退出场景
     */
    public onExit(clear?: boolean) {
        let _t = this;
        let bo = false;
        _t.isReady = _t.isEnter = false;
        if (_t.sceneId) {
            XYFrame.ResMgr.destroyRes(ResPath.getScenePath(`level/${_t.sceneId}${ResPath.EXT_PREFAB}`));
            _t.sceneId = null;
            bo = true;
        }
        _t._flag++;
        if (_t.ctrl) {
            _t.ctrl.exit();
            _t.ctrl = null;
        }
        if (_t.node) {
            _t.node.destroy();
            _t.node = null;
        }
        _t.camera.active = false;
        if (bo) {
            XYFrame.UIMgr.close(Vw_SceneLoading);
            if(!clear) {
                XYFrame.UIMgr.open(Vw_Main);
            }
            XYFrame.Msg.emit(EnumMsg.SCENE_EXIT);
        }
    }

    /**
     * 加载成功
     * @param asset 
     * @param url 
     * @param _t 
     * @param flag 
     * @returns 
     */
    private async onLoaded(asset: any, url: string, _t: this, flag: number) {
        if (_t._flag != flag) {
            return;
        }
        if (asset) {
            let node = _t.node = asset.create();
            if (node) {
                _t.stage.addChild(node);
                _t.ctrl = _t.node.getComponent(StageSceneCtrl);
                if (!_t.ctrl) {
                    _t.ctrl = _t.node.addComponent(StageSceneCtrl);
                }
                let bo = await _t.ctrl.enter();
                bo && (_t.camera.active = true, _t.isReady = bo, XYFrame.Msg.emit(EnumMsg.SCENE_ENTER));
            }
        } else {
            Logger.error(`加载场景失败，url=${url}`);
            Vw_Msg.setCfgTxt(3);
        }
        XYFrame.UIMgr.close(Vw_SceneLoading);
    }

    /**
     * 判断节点是否在相机内
     * @param sprite 
     */
    public isInCamera(sprite: Laya.Sprite3D) {
        let renderer = UIUtils.findComponent(sprite, Laya.MeshRenderer);
        return this.isInCamera1(renderer);
    }

    /**
     * 判断节点是否在相机内
     * @param renderer 
     * @returns 
     */
    public isInCamera1(renderer: Laya.MeshRenderer) {
        if (renderer) {
            return this.camera.boundFrustum.intersects(renderer.bounds);
        }
        return false;
    }

    /**
     * 判断点是否在相机内
     * @param position 
     * @returns 
     */
    public isInCamera2(position: Laya.Vector3) {
        return this.camera.boundFrustum.containsPoint(position);
    }


}