import ResPath from "../../../XYFrame/Resource/ResPath";
import { EnumAltas } from "../../EnumAtlas";
import { Item_Arena_AddBase } from "./Item_Arena_Add.generated";

const { regClass } = Laya;


export interface Item_Arena_Add_Data {
    /**加成 */
    add: number
    /**位置 0第一个 1中间 2最后 */
    pos: number
    /**是否选中 */
    isSelect: boolean
}



/**
 * @ Author: lwl
 * @ Date: 2026-03-24 15:42
 * @ Description:竞技场加成
*/
@regClass()
export default class Item_Arena_Add extends Item_Arena_AddBase {

    private iconMap: Record<number, string[]> = {
        0: ["bg_4", "bg10"],
        1: ["bg_12", "bg_5"],
        2: ["bg_12", "bg_5"],
    }

    public setData(data: Item_Arena_Add_Data) {
        let t = this
        let arr = t.iconMap[data.pos]
        if (data.isSelect) {
            t.imgSelect.src = ResPath.getAtlasImgPath(EnumAltas.Arena, arr[1])
        } else {
            t.imgSelect.src = ResPath.getAtlasImgPath(EnumAltas.Arena, arr[0])
        }

        t.lbAdd.text = "x" + data.add;
        t.lbAdd.color = data.pos == 2 ? "#ffef40" : "#f3f3f3"
    }

    public clear() {

    }
}