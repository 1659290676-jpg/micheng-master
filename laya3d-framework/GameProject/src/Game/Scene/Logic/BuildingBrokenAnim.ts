import UIUtils from "../../../XYFrame/Utils/UIUtils";

const { regClass } = Laya

/**
 * @ Author: XXL
 * @ Date: 2026-03-31 20:56
 * @ Description: 建筑破碎动画
*/
@regClass()
export default class BuildingBrokenAnim extends Laya.Script {
    declare owner: Laya.Sprite3D;

    public camera: Laya.Camera;
    private flySprites: Laya.Sprite3D[];
    /** 节点飞出的方向向量 */
    private flyDirs: number[][];
    private meshRenderers: Laya.MeshRenderer[];
    // private delay = 0;

    onAwake(): void {
        let _t = this;
        let owner = _t.owner;
        let y = 0.8;
        // _t.delay = 300;
        _t.meshRenderers = [];
        _t.flyDirs = [];
        if (owner.numChildren > 1) {
            _t.flySprites = <any>owner.children.concat();
            for (let i = 0; i < _t.flySprites.length; i++) {
                let renderer = UIUtils.findComponent(_t.flySprites[i], Laya.MeshRenderer);
                _t.meshRenderers.push(renderer);
                // 要向四周飞出，向量向上反向要随机四周
                _t.flyDirs.push([Math.random() * 2 - 1, y, -0.3 - Math.random() * 0.1]);
            }
        } else {
            _t.flySprites = [];
            _t.flySprites.push(owner);
            let renderer = UIUtils.findComponent(owner, Laya.MeshRenderer);
            if (renderer) {
                _t.meshRenderers.push(renderer);
            }
            _t.flyDirs.push([0, y, 0]);
        }
    }

    onUpdate(): void {
        let _t = this;
        // _t.delay -= Laya.timer.delta;
        // if(_t.delay > 0) {
        //     return;
        // }
        // 每帧往上四周并加旋转，飞出视野消失，判断所有子节点飞出视野则移除
        for (let i = _t.flySprites.length - 1; i >= 0; i--) {
            let sprite = _t.flySprites[i];
            let dir = _t.flyDirs[i];
            sprite.transform.translate(Laya.Vector3.TEMP.setValue(dir[0], dir[1], dir[2]), false);
            sprite.transform.rotate(Laya.Vector3.TEMP.setValue(2, 0, 2), false, false);
            if (!_t.isInCamera(_t.meshRenderers[i])) {
                _t.flySprites.splice(i, 1);
                _t.meshRenderers.splice(i, 1);
                _t.flyDirs.splice(i, 1);
                sprite.destroy();
            }
        }
        if (_t.flySprites.length == 0) {
            _t.owner.destroy();
        }

    }

    onReset(): void {
        let _t = this;
        _t.flySprites = _t.meshRenderers = _t.camera = _t.flyDirs = null;
    }

    onDestroy(): void {
        this.onReset();
    }

    private isInCamera(renderer: Laya.MeshRenderer) {
        if (renderer) {
            return this.camera.boundFrustum.intersects(renderer.bounds);
        }
        return false;
    }



}