import ResPath from "../../../XYFrame/Resource/ResPath";
import { Item_Shop_Base } from "./Item_Shop_Base";
import { Shop_Data } from "./Vw_Shop";
const { regClass } = Laya;
/**
 * 商店类型3（一行有多个格子）
 */
@regClass()
export class Item_Shop3 extends Item_Shop_Base {
    public static readonly PREFAB = "shop/Item_Shop3";


    public refreshSize(len: number) {
        let row = Math.ceil(len / 3);
        this.list.height = row * 288 + (row - 1) * 25;
        this.height = this.list.height + this.list.y
    }

}

