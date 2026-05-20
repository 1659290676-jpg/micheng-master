const { regClass } = Laya;
import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import ResPath from "../../../XYFrame/Resource/ResPath";
import { EnumAltas } from "../../EnumAtlas";
import Game from "../../Game";
import { Item_RoleBase } from "./Item_Role.generated";

@regClass()
export class Item_Role extends Item_RoleBase {
    public static readonly PREFAB = "role/Item_Role";

    public setData(id: number) {
        let t = this;
        let cfg = ConfigData.getSkin_301(id), res: string;
        if (cfg.icon) {
            res = ResPath.getAtlasImgPath(EnumAltas.Role, cfg.mat);
        }
        t.imgHead.src = res;
        let vo = Game.Model.hero.vo;
        t.imgCur.visible = vo.headId == id;
        t.imgLock.visible = !vo.skin[id];
    }
}