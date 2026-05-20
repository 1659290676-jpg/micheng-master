import { EnumUILayer } from "./EnumUILayer";

const { regClass, property } = Laya;
/**
 * @ Author: XXL
 * @ Date: 2026-02-02 20:18
 * @ Description: ui层级
*/
@regClass()
export class UILayer extends Laya.Script {

    @property({ type: EnumUILayer })
    public layer = EnumUILayer.Normal;
}