import ResPath from "../../../XYFrame/Resource/ResPath";
import { Item_Shop_Base } from "./Item_Shop_Base";
import { Shop_Data } from "./Vw_Shop";
const { regClass } = Laya;


/**
 * 商店类型1
*/
@regClass()
export class Item_Shop1 extends Item_Shop_Base {
    public static readonly PREFAB = "shop/Item_Shop1";


    public refreshSize(len: number) {
        this.list.height = this.height = len * 208 + (len - 1) * 30;
    }
}

