import ConfigUtils from "../../DataStock/ConfigUtils";
import LanguageMgr from "../../DataStock/LanguageMgr";
import HtmlUtils from "./HtmlUtils";

/**
 * @ Author: XXL
 * @ Date: 2023-10-18 15:25
 * @ Description: 颜色公共类
*/
export default class ColorUtil {
    /**品质色值*/
    public static readonly Q_C = ["#37bd9a", "#37bd9a", "#2082db", "#b768e5"];
    /**品质描边色值*/
    public static readonly Q_C_S = ["#0f3120", "#0f3120", "#0f1b31", "#220f31"];
    /**品质描边色值*/
    public static readonly Q_C_S1 = ["#0f6d4b", "##0f6d4b", "#143f96", "#8e16af"];
    /**品质名称*/
    public static readonly Q_T: string[];

    /**
     * 获取品质对于颜色
     * @param q 
     */
    public static getColor(q: number) {
        let c = ColorUtil.Q_C[q] || "#FFFFFF";
        return c;
    }

    /**
     * 获取品质对于描边颜色
     * @param q 
     */
    public static getStrokeColor(q: number) {
        let c = ColorUtil.Q_C_S[q] || "#FFFFFF";
        return c;
    }

    /**
     * 获取品质对于描边颜色
     * @param q 
     */
    public static getStrokeColor1(q: number) {
        let c = ColorUtil.Q_C_S1[q] || "#FFFFFF";
        return c;
    }

    /**
     * 获取品质文本
     * @param q 
     */
    public static getColorT(q: number) {
        let t = this;
        if (!t.Q_T) {
            let s = LanguageMgr.getTxt(246);
            let sl = ConfigUtils.splitStr(s, 1, false);
            sl.unshift("");
            (t as any).Q_T = sl;
        }
        let c = t.Q_T[q] || "";
        return c;
    }

    /**
     * 根据品质转化为富文本
     * @param text 显示的文本
     * @param quality 品质
     */
    public static getText(text: string | number, quality: number) {
        return HtmlUtils.font(text, ColorUtil.getColor(quality));
    }
}