import Game from "../Game/Game";
import Vw_Msg from "../Game/Module/Tip/Vw_Msg";
import ResPath from "../XYFrame/Resource/ResPath";
import ColorUtil from "../XYFrame/Utils/ColorUtil";
import HtmlUtils from "../XYFrame/Utils/HtmlUtils";
import ConfigData from "./ConfigData/ConfigData";
import EnumKey from "./GameData/EnumKey";
import LanguageMgr from "./LanguageMgr";

/**
 * @ Author: XXL
 * @ Date: 2025-06-13 14:12
 * @ Description: 表数据工具类
*/
export default class ConfigUtils {
    /**解析字符的分割*/
    private static readonly _inter: string[] = [',', ';', '|'];
    /**存储已获取的常量值*/
    private static valueDict: { [key: number]: number[] } = {};

    /**
     * 分割字符串为数组，支持多层嵌套数组解析
     * @param str 需要解析的字段
     * @param layer 解析几重数组，默认1
     * @param exNum 是否是否转化为number类型，默认true
     * @returns 
     */
    public static splitStr(str: string, layer = 1, exNum = true) {
        if (str == "" || !str) return [];
        let list: any[] = str.split(ConfigUtils._inter[layer - 1]);
        if (layer > 1) {
            for (let i = 0, len = list.length; i < len; i++) {
                list[i] = ConfigUtils.splitStr(list[i], layer - 1, exNum);
            }
        } else if (exNum) {
            for (let i = 0, len = list.length; i < len; i++) {
                list[i] = +(list[i]);
            }
        }
        return list;
    }

    /**
     * 获取常量表 1维number常量数组
     * @param sid 系统id
     * @param index 第几个常量，从1开始，默认1
     */
    public static getConstList(sid: number, index: number = 1): number[] | null {
        let t = this;
        if (index <= 0) {
            index = 1;
        }

        let key = sid * 100 + index;
        if (t.valueDict[key]) {
            return t.valueDict[key];
        }

        let cfg = ConfigData.common_002[key];
        if (!cfg) {
            return null;
        }

        t.valueDict[key] = t.splitStr(cfg, 1);
        return t.valueDict[key];
    }

    /**
     * 获取常量表 number 类型的常量值
     * @param sid 系统id
     * @param index 第几个常量，从1开始，默认1
     * @param order 对应参数的下标，默认值为 1
     */
    public static getConst(sid: number, index: number = 1, order: number = 1): number {
        if (index <= 0) {
            index = 1;
        }
        if (order <= 0) {
            order = 1;
        }

        let key = sid * 100 + index;
        if (this.valueDict[key]) {
            return this.valueDict[key][order - 1] || 0;
        }

        let cfg = ConfigData.common_002[key];
        if (!cfg) {
            return 0;
        }

        this.valueDict[key] = this.splitStr(cfg, 1);
        return this.valueDict[key][order - 1] || 0;
    }

    /**
     * 获取常量表的原始数据
     * @param sid 系统id
     * @param index 第几个常量，从1开始，默认1
     */
    public static getConstStr(sid: number, index: number = 1): string | null {
        if (index <= 0) {
            index = 1;
        }

        let key = sid * 100 + index;
        return ConfigData.common_002[key];
    }

    /**
     * 获取属性名称
     * @param type 属性类型
     * @returns 
     */
    public static getAttrName(type: number | string) {
        let ns = "";
        let c = ConfigData.getHeroAttr_105(type);
        if (c && c.n) {
            ns = c.getN();
        }
        return ns;
    }

    public static getItemIconPath(type: number, id: number) {
        let icon = "", path = "item";
        if (type == EnumKey.ITEM) {
            let cfg = ConfigData.getDaoju_102(id);
            if (cfg) {
                icon = cfg.ic+"";
            }
        } else {
            let cfg = ConfigData.getHeroAttr_105(type);
            if (cfg) {
                icon = cfg.i + "";
            }
        }
        if(icon) {
            return ResPath.getAtlasImgPath(path, icon);
        }
        return "";
        // return PathUtils.Combine(PathUtils.UI_Icon, path, icon + "") + this.EXT_PNG;
    }

    /**
     * 获取道具名字
     * @param type 道具类型
     * @param id 道具表id
     * @param isColor 是否包含颜色，默认true
     * @param prefix 前缀
     * @param suffix 后缀
     */
    public static getGoodName(
        type: number,
        id?: number,
        isColor: boolean = true,
        prefix?: string,
        suffix?: string
    ): string {
        let t = this;
        let name: string;
        let pz: number = 0;
        let cfg = t.getGoodCfg(type, id);

        if (cfg) {
            switch (Number(type)) {
                case EnumKey.ITEM:
                    let c = cfg as Struct_daoju_102;
                    name = c.n;
                    pz = c.p;
                    break;
                default:
                    let c4 = cfg as Struct_heroAttr_105;
                    name = c4.n;
                    pz = c4.p;
            }
        }

        if (name) {
            name = LanguageMgr.getLngTxt(name);
            if (prefix) name = prefix + name;
            if (suffix) name = name + suffix;
            if (isColor) name = HtmlUtils.font(name, ColorUtil.getColor(pz));
            return name;
        }

        return "";
    }


    /**
     * 获取物品的配置
     */
    public static getGoodCfg(type: number, id?: number) {
        switch (type) {
            case EnumKey.ITEM:
                return ConfigData.getDaoju_102(id);
            default:
                return ConfigData.getHeroAttr_105(type);
        }
    }

    /**
     * 检测是否有足够的物品或属性值
     * @param type 物品或属性类型
     * @param id 物品或属性id
     * @param need 需要的数量
     * @param isMsg 是否显示提示，默认true
     * @returns 
     */
    public static checkEnough(type: number, id: number, need: number, isMsg = true) {
        let n = 0;
        if (type == EnumKey.ITEM) {
            n = Game.Model.bag.getItemCount(id);
        } else {
            n = Game.Model.hero.vo.getVal(type);
        }
        if (n < need && isMsg) {
            let ns = this.getGoodName(type, id);
            Vw_Msg.setCfgTxt(701, ns);
        }
        return n >= need;
    }
    
}