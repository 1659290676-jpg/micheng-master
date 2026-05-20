import ResPath from "../../../XYFrame/Resource/ResPath";
import { EnumAltas } from "../../EnumAtlas";
import { Item_GridBase } from "./Item_Grid.generated";

const { regClass } = Laya;


@regClass()
export class Item_Grid extends Item_GridBase {
    public static readonly PREFAB = "common/Item_Grid";

    public setData(data: number[]) {
        let t = this
        if (data[0] > 1) {
            t.bg.src = ResPath.getAtlasImgPath(EnumAltas.Item, data[0] + "");
        } else {
            t.bg.src = ResPath.getAtlasImgPath(EnumAltas.Item, data[1] + "");
        }
        let num = data[2]
        let first = data[3] ? data[3] + "" : ""
        t.lbCnt.text = first + num
        // t.lbCnt.text = num == 1 ? "X" + num : num + "";
    }

    public static create(parent?: any, x?: number, y?: number, data?: number[]) {
        // let grid = Frame.Pool.getUi(Item_Grid);
        let prefab:Laya.PrefabImpl = Laya.loader.getRes(ResPath.getUIPrefab(Item_Grid.PREFAB + ResPath.EXT_PREFAB));
        let grid:Item_Grid = prefab.create() as Item_Grid;
        if (parent) {
            parent.addChild(grid);
        }
        if (x && y) {
            grid.pos(x, y);
        }
        if (data) {
            grid.setData(data);
        }
        return grid
    }
}