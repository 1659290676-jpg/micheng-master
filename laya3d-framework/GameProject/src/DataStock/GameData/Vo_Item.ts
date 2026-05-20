import { XYFrame } from "../../XYFrame/XYFrame";
import ConfigData from "../ConfigData/ConfigData";
import Config_daoju_102 from "../ConfigData/Ts/Config_daoju_102";
import EnumKey from "./EnumKey";
import Vo_GoodBase from "./Vo_GoodBase";

/**
 * @ Author: XXL
 * @ Date: 2026-03-06 09:55
 * @ Description: 道具数据
*/
export default class Vo_Item extends Vo_GoodBase {

    /** 数据 */
    private _data: any[];

    public init(id: number | string): void {
        super.init(id);
        this._data = ConfigData.daoju_102 && ConfigData.daoju_102[id];
    }

    public get Name(): string {
        return Config_daoju_102.getN(this._data);
    }

    public get Quality(): number {
        return Config_daoju_102.getP(this._data);
    }

    public get Icon(): number | string {
        return Config_daoju_102.getIc(this._data);
    }

    public clear(): void {
        this._data = null;
        super.clear();
    }

    /**
     * 创建一个实例
     * @param id 道具id
     * @param count 道具数量
     */
    public static create(id: number, count: number) {
        let vo = XYFrame.PoolMgr.getCls(Vo_Item);
        vo.type = EnumKey.ITEM;
        vo.count = count;
        vo.init(id);
        return vo;
    }

}