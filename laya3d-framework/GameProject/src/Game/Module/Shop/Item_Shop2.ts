import ResPath from "../../../XYFrame/Resource/ResPath";
import { Item_Shop_Base } from "./Item_Shop_Base";
import { Shop_Data } from "./Vw_Shop";
const { regClass } = Laya;
/**
 * 商店类型2
 */
@regClass()
export class Item_Shop2 extends Item_Shop_Base {
    public static readonly PREFAB = "shop/Item_Shop2";


    public refreshSize(len: number) {
        this.list.height = len * 257 + (len - 1) * 15;
        this.height = this.list.height + this.list.y
    }

}

