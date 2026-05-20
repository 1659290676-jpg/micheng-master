/**
 * @ Author: XXL
 * @ Date: 2025-06-11 09:26
 * @ Description: 正则表达式工具类
*/
export default class RegExpUtils {
    /**系统的emoji表情*/
    public static readonly regSysEmoji = /(?:[\u2700-\u27bf]|(?:\ud83c[\udde6-\uddff]){2}|[\ud800-\udbff][\udc00-\udfff]|[\u0023-\u0039]\ufe0f?\u20e3|\u3299|\u3297|\u303d|\u3030|\u24c2|\[\^_\]\ud83c\udc04|\u23cf|\u23e9|\u231a|\u303b|\u239a|\u231b|\u2328|\u23ea|\u2312|\u233b|\ud83c\udccf|\u2934|\u2935|[\u2190-\u21ff])/g;
    /**中文正则*/
    public static readonly regCHN = /[\u4E00-\u9FA5]|[\uFE30-\uFFA0]/gi;
    /**空格正则*/
    public static readonly regSpace = /\s+/g;
    /**表情 */
    public static readonly regEmoji = /(\#[0-9]{3}\#)|(\$[0-9]{3}\$)/g;
    /**数字字母 */
    public static readonly regNumEnglish = /[0-9]|[A-z]/g;
    /**文本格式化*/
    public static readonly regFormatStr = /{[0-9:.]*}/gm;

    /**
     * 过滤系统的emoji表情
     * @param str 
     * @param re 
     */
    public static replaceEmoji(str: string, re = "*") {
        return str.replace(RegExpUtils.regSysEmoji, re);
    }

    /**
     * 替换空格
     * @param name 
     * @param re 
     */
    public static replaceSpace(name: string, re = "") {
        if (name && name.length > 0) {
            name = name.replace(RegExpUtils.regSpace, "");//先替换空格
        }
        return name;
    }

    private static _patternBuffer: RegExp[] = [];
    public static getRegExp(index: number | string): RegExp {
        var ret: RegExp = RegExpUtils._patternBuffer[+index];
        if (ret == null) {
            var rg: string = "[{{]" + index + "[}}]";
            ret = RegExpUtils._patternBuffer[+index] = new RegExp(rg, "g");
        }
        return ret;
    }

    /**
     * 替换文本，{0}替换成对应的文本
     * @param char 
     * @param param 
     * @returns 
     */
    public static reTxt(char: string, ...param:any[]): string {
        var len: number = param.length;
        if (len == 0) return char;
        for (var i: number = 0; i < len; i++) {
            var d: string = param[i];
            char = char.replace(RegExpUtils.getRegExp(i), d);
        }
        return char;
    }
    /**
     * 正则检测是否包含
     * @param str 
     * @param reg 
     * @returns 
     */
    public static test(str: string, reg: RegExp) {
        if (!str) return false;
        reg.lastIndex = 0;
        return reg.test(str);
    }

    /**
     * 格式化文本
     * @param format 格式化的样式 {0:000.000}：{第几个参数:整形的长度.小数点的长度}
     * @param args 替换的文本列表
     * @returns 
     */
    public static formatStr(format: string, ...args:any[]) {
        if (!format) return "";
        let matches = format.match(RegExpUtils.regFormatStr);
        if (matches == null || matches.length == 0 || args.length == 0) return format;
        let len = matches.length;
        for (let i = 0; i < len; i++) {
            var m = matches[i];
            var para = m.substring(1, m.length - 1);
            var temps = para.split(":");
            var index = +temps[0];
            var arg = args[index];
            if (arg == null) {
                continue;
            }
            let argReq = temps[1];
            if (argReq != null) {
                var reqs = argReq.split('.');
                var intLen = reqs[0]?.length;
                var floatLen = reqs[1]?.length;
                var number = +arg;
                if (number != null && !Number.isNaN(number)) {
                    if (floatLen != null) {
                        arg = number.toFixed(floatLen)
                    }
                    var intPart = Math.floor(+arg)
                    var intStr = intPart.toString()
                    if (intLen != null) {
                        var mis = intLen - intStr.length
                        if (mis > 0) {
                            arg = reqs[0].substring(0, mis) + arg.toString();
                        }
                    }
                }
            }
            format = format.replace(RegExpUtils.getRegExp(para), arg);
        }
        return format;
    }
}