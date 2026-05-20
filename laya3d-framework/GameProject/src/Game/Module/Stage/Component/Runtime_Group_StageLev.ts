import Config_stage_001 from "../../../../DataStock/ConfigData/Ts/Config_stage_001";
import ResPath from "../../../../XYFrame/Resource/ResPath";
import { EnumAltas } from "../../../EnumAtlas";
import Game from "../../../Game";
import { Runtime_Group_StageLevBase } from "./Runtime_Group_StageLev.generated";

const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/4/23 10:47:14
 * @ Description: 
*/
@regClass()
export default class Runtime_Group_StageLev extends Runtime_Group_StageLevBase {

    public itemList: Laya.GButton[];

    onConstruct(): void {
        let _t = this;
        _t.itemList = [
            _t.item0,
            _t.item1,
            _t.item2,
            _t.item3,
            _t.item4,
            _t.item5,
            _t.item6,
            _t.item7,
            _t.item8,
            _t.item9,
        ];
    }

    public setData(bgType: number, index: number, start: number, pass: number) {
        let _t = this;
        let bg = bgType * 10 + index;
        let posList = Game.Model.stage.posMap && Game.Model.stage.posMap[bg];
        _t.bg.src = ResPath.getImgPath("stage/" + bg + ResPath.EXT_JPG);

        for (let i = 0, len = _t.itemList.length; i < len; i++) {
            let item = _t.itemList[i];
            let lev = start + i;
            // let name = Config_stage_001.getNameByKey(lev) || LanguageMgr.getTxt(425, lev);
            let nandu = Config_stage_001.getNdByKey(lev) || 1;
            let pos = posList && posList[i];
            let imgSelect: Laya.GImage = item.getChildByName("imgSelect");
            let img: Laya.GImage = item.getChildByName("right");
            item.icon = ResPath.getAtlasImgPath(EnumAltas.Main, "dian" + nandu);
            item.selectedIcon = ResPath.getAtlasImgPath(EnumAltas.Main, "dian" + nandu + "_1");
            imgSelect.src = ResPath.getAtlasImgPath(EnumAltas.Main, "dian" + nandu + "_2");
            item.selected = lev <= pass;
            item.title = lev + "";
            imgSelect.visible = lev == pass + 1;
            // item.titleWidget.y = nandu > 2 ? 107 : 7;
            // img.y = nandu > 2 ? 107 : 6;
            if (nandu > 2) {
                item.titleWidget.y = 107;
                img.y = 107;
                if (nandu == 3) {
                    imgSelect.pos(-13, -13);
                } else {
                    imgSelect.pos(-7, -12);
                }
            } else {
                item.titleWidget.y = 7;
                img.y = 6;
                imgSelect.pos(5, -12);
            }
            if (pos) {
                item.pos(pos.x, pos.y);
            } else {
                item.pos(360, 1000 - i * 100);
            }
        }

    }
}
