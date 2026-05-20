import { XYFrame } from "../../../XYFrame/XYFrame";
import { ButtonBaseBase } from "./ButtonBase.generated";

const { regClass, property } = Laya;

/**
 * 按钮基类
 */
@regClass()
export class ButtonBase extends ButtonBaseBase {

    /** 绑定数据 */
    public bindData:any;

    protected _btnTouchBegin(evt: Laya.Event): void {
        super._btnTouchBegin(evt);
        // XYFrame.AudioMgr.playClick();
    }

    /**
     * 显示红点
     * @param vis 
     */
    public setRed(vis: boolean) {

    }


}