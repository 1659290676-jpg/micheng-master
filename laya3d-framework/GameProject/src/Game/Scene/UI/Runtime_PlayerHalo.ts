const { regClass } = Laya;
import { Runtime_PlayerHaloBase } from "./Runtime_PlayerHalo.generated";

@regClass()
export class Runtime_PlayerHalo extends Runtime_PlayerHaloBase {

    public setColor(color: string) {
        let _t = this;
        let grap = _t.halo.graphics;
        grap.clear();
        let w = _t.halo.width;
        let h = _t.halo.height;
        grap.drawCircle(w / 2, h / 2, w / 2, null, color, 10);

        let img = <Laya.GImage>_t.pb.hBar;
        img.color = color;
    }

    /**
     * 设置经验值
     * @param exp 
     */
    public setExp(exp: number, max: number) {
        let _t = this;
        if (!max || max < 0) {
            max = 100;
            exp = 100;
        }
        _t.pb.max = max;
        _t.pb.value = exp;
        _t.pb.visible = exp > 0;
    }
}