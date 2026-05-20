/**
 * @ Author: XXL
 * @ Date: 2026-04-09 14:43
 * @ Description: Spine动画渲染节点。
*/
export default class SpineRender extends Laya.Spine2DRenderNode {

    /** 是否使用原生时间 */
    public isOrg = true;

    onUpdate(): void {
        if (this.isOrg) {
            super.onUpdate();
        }
    }


    protected _update(): void {
        if (this.isOrg) {
            super._update();
            return;
        } else {
            this.tick(0)
        }

    }

    public set ratio(v: number) {
        if (v < 0) v = 0;
        else if (v > 1) v = 1;
        let time = this._duration * v;
        if (time >= this._currentPlayTime) {
            time -= this._currentPlayTime;
        } else {
            time += this._duration - this._currentPlayTime % this._duration;
        }
        this.tick(time);
    }

    public tick(delta: number) {
        // spine在state.apply中发送事件，开发者可能会在事件中进行destory等操作，导致无法继续执行
        if (!this._state || !this._skeleton || this.destroyed) {
            return;
        }

        let state = this._state;
        // 在游戏循环中，update被调用，这样AnimationState就可以跟踪时间
        state.update(delta);

        let currentPlayTime = 0;
        let enableCache = this.spineItem.enableCache;
        if (enableCache) {
            //@ts-ignore
            currentPlayTime = state.getCurrentPlayTimeByCache(this.trackIndex);
        } else {
            //@ts-ignore
            currentPlayTime = state.getCurrentPlayTime(this.trackIndex);
        }

        this._currentPlayTime = currentPlayTime;

        // 使用当前动画和事件设置骨架
        if (!enableCache) {
            state.apply(this._skeleton);
        }


        if (!enableCache) {
            if (Laya.SpineTemplet.VersionFirst >= 4 && Laya.SpineTemplet.VersionSecond >= 2) {
                this._skeleton.update(delta);
            }
            // 计算骨骼的世界SRT(world SRT)
            this._skeleton.updateWorldTransform(this.physicsUpdate);// spine.Physics.update;
        }

        this.spineItem.render(currentPlayTime);
        this.owner.repaint(Laya.RepaintFlag.UpdateRT);
    }

}