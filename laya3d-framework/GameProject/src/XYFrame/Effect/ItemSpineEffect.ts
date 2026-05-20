import HashObject from "../Define/HashObject";
import EnumAction from "../MovieClip/EnumAction";
import { PoolManager } from "../Pool/PoolManager";
import SpinePart from "../Spine/SpinePart";
import ItemEffectBase from "./ItemEffectBase";

/**
 * @ Author: XXL
 * @ Date: 2025-06-12 16:38
 * @ Description: spine特效
*/
export default class ItemSpineEffect extends ItemEffectBase {
    protected _ani: SpinePart;


    /**
     * 创建一个特效
     * @returns 返回Frame.ItemEffect
     */
    public static create() {
        let item = PoolManager.getInst<PoolManager>().getCls(ItemSpineEffect);
        item._eid = HashObject.getCount();
        return item;
    }

    /**
     * 
     * @param _t 特效this
     * @param url 特效资源路径
     * @param parent 添加parent
     * @param x 水平坐标x轴
     * @param y 垂直坐标y轴
     * @param cyTm 循环时间
     * @param remain 特效时长
     * @param loop 是否循环播放
     * @param actName 动作名称
     * @param scaleX 水平缩放
     * @param scaleY 垂直缩放
     * @param childIndex 添加到parent的索引
     */
    public init(_t: ItemSpineEffect, url: string, parent: Laya.GWidget, x: number, y: number, cyTm: number, remain: number, loop: boolean, actName: string, scaleX: number, scaleY: number, childIndex: number) {
        _t._tm = 0;
        _t._cyTm = cyTm;
        _t._remain = remain;
        _t._loop = loop;
        _t._actList = null;
        let ani = _t._ani;
        if (!ani) {
            ani = _t._ani = SpinePart.create();
            // ani.setCompCall(_t.onLoadComplete, _t);
        }
        _t.addChild(ani);
        _t.pos(x, y);
        _t.scale(scaleX || 1, scaleY || 1);
        if (parent) {
            if (childIndex != null && childIndex >= 0) {
                parent.addChildAt(_t, childIndex);
            } else {
                parent.addChild(_t);
            }
        }
        ani.setData(url, actName || EnumAction.Eff_Str, loop);
    }

    /**
     * 添加步骤
     * @param time 持续时间 <=0为一直显示
     * @param actName 动作名称，默认:animation
     * @param loopTime 循环时长，默认:1000毫秒
     * @param loop 是否循环播放，默认:true
     */
    public addStep(time: number, actName: string = "animation", loopTime?: number, loop?: boolean) {
        return super.addStep(time, actName, loopTime, loop);
    }

    // /**
    //  * 加载完成
    //  * @param _t 
    //  * @param part 
    //  */
    // private onLoadComplete(_t: this, part: SpinePart) {
    //     let skel = part.getSkeleton();
    //     if (skel) {
    //         _t.tick(_t, 0);
    //         _t.displayObject.addChild(skel);
    //     }
    // }
}