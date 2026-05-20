import UIUtils from "../../../XYFrame/Utils/UIUtils";

const { regClass, property } = Laya;

/**
 * 控制动画播放
 */
@regClass()
export class AnimatorCtl extends Laya.Script {
    @property({ type: Laya.Animator })
    private anim: Laya.Animator;

    public onAwake(): void {
        let _t = this;
        if (!_t.anim) {
            let owner = _t.owner;
            let com = UIUtils.findComponent(owner, Laya.Animator);
            _t.anim = com;
        }
    }

    private isPlayanimaByName(layerIndex: number = 0): boolean {
        let layer: Laya.AnimatorControllerLayer = this.anim.getControllerLayer(layerIndex);
        if (layer == undefined) {
            return false;
        }
        let state = layer.getCurrentPlayState()
        if (state == undefined) {
            return false;
        }
        if (state.animatorState.clip.islooping) {
            return true;
        }
        //@ts-ignore
        return state._finish;
    }

    /**
     * 检查是否正在播放制动动画
     * @param	name 名字播放动画。
     */
    private isSameByName(name: string, layerIndex: number = 0): boolean {
        let layer: Laya.AnimatorControllerLayer = this.anim.getControllerLayer(layerIndex);
        if (layer == undefined) {
            return false;
        }
        let state = layer.getCurrentPlayState()
        if (state == undefined) {
            return false;
        }
        if (state.animatorState.name == name) {
            return true;
        }
    }

    private isAttacking(): boolean {
        let layer: Laya.AnimatorControllerLayer = this.anim.getControllerLayer(1);
        if (layer == undefined) {
            return false;
        }
        let state = layer.getCurrentPlayState()
        if (state == undefined) {
            return false;
        }
        if(state._finish || state.animatorState.name.indexOf("attack") >= 0) {
            return true
        }
        return false
    }

    /**
     * 攻击动作
     * @param name 
     * @returns 
     */
    public playAttack(name:string) {
        this.anim.play(name, 1, 0)
    }

    /**
     * 播放动画
     * @param name 动画名称
     * @param isForce 是否强指替换动作
     */
    public playAnim(name: string, isForce: boolean = false) {
        if (isForce) {
            // if (this.isSameByName(name)) {
            //     return;
            // } else {
            // }
            this.anim.play(name, 0, 0)
            return;
        }
        if (this.isPlayanimaByName()) {
            return;
        } else {
            this.anim.play(name, 0, 0)
        }
    }

    public onReset(): void {
        this.anim = null;
    }
}