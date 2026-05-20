/**
 * @ Author: XXL
 * @ Date: 2025-06-11 09:50
 * @ Description: html工具
*/
export default class HtmlUtils {
    /**
     * 设置字体颜色
     * @param text 文本
     * @param color 颜色
     * @returns 
     */
    public static font(text: string | number, color: string) {
        return `<font color="${color}">${text}</font>`;
    }

    public static fontSize(text: string | number, size: number) {
        return `<font size="${size}">${text}</font>`;
    }

    /**
     * 设置字体颜色和大小
     * @param text 文本
     * @param color 颜色
     * @param size 大小
     * @returns 
     */
    public static font2(text: string | number, color?: string, size?: number) {
        if (color || size) {
            let ret = "<span style=\"";
            if (color) {
                ret += `color:${color};`;
            }
            if (size) {
                ret += `font-size:${size};`;
            }
            ret += "\">" + text + "</span>";
            return ret;
        }
        return text.toString();
    }

    /**
     * 设置下划线
     * @param text 文本
     * @returns 
     */
    public static underline(text: string) {
        return `<a href="event:void(0)">${text}</a>`;
    }

    /**
     * 设置超链接
     * @param text 文本
     * @param event 事件
     * @returns 
     */
    public static link(text: string, event: string) {
        return `<a href="event:${event}">${text}</a>`;
    }

    /**返回空格 */
    public static space(num: number) {
        num = num || 1
        let ret = ""
        for (let i = 0; i < num; i++) {
            ret += "&nbsp;"
        }
        return ret
    }
}