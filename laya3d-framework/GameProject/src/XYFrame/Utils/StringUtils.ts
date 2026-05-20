/**
 * @ Author: XXL
 * @ Date: 2026-02-04 11:33
 * @ Description: 字符串工具类
*/
export default class StringUtils {

    /**
	 * 将字符串第一个字母转换为大写
	 * @param str 字符串
	 * @returns 
	 */
	public static toFirstUpperCase(str: string) {
		if(!str || str.length <= 0) return str;
		return str.substring(0, 1).toUpperCase() + str.substring(1);
	}

    /**
	 * 给数组或字符串前面补充0
	 * @param num 
	 * @param length 字符串长度
	 * @returns 
	 */
	public static addZero(num: number | string, length = 2): string {
		let s = num + '';
		for (let i = s.length; i < length; i++) {
			s = '0' + s;
		}
		return s;
	}

    /** 中文数字 - 小写 */
    private static readonly CN_NUMS = ["零", "一", "二", "三", "四", "五", "六", "七", "八", "九"];
    /** 中文数字 - 大写 */
    private static readonly CN_NUMS_UPPER = ["零", "壹", "贰", "叁", "肆", "伍", "陆", "柒", "捌", "玖"];
    /** 中文单位 - 小写 */
    private static readonly CN_UNITS = ["", "十", "百", "千"];
    /** 中文单位 - 大写 */
    private static readonly CN_UNITS_UPPER = ["", "拾", "佰", "仟"];
    /** 中文大单位 */
    private static readonly CN_BIG_UNITS = ["", "万", "亿", "兆"];

    /**
     * 将字符串转换为UTF-8字节数组
     * @param str 
     * @returns 
     */
    public static strToBytes(str: string) {
        // let textEncoder = StringUtils.textEncoder;
        // if(textEncoder) {
        // 	return textEncoder.encode(str);
        // }
        let bytes = [];
        let i = 0;
        while (i < str.length) {
            let codePoint = str.codePointAt(i);
            // 处理代理对
            if (codePoint > 0xFFFF) {
                i++; // 跳过代理对的第二个字符
            }
            if (codePoint <= 0x7F) {
                // 单字节字符 (ASCII)
                bytes.push(codePoint);
            } else if (codePoint <= 0x7FF) {
                // 双字节字符
                bytes.push(0xC0 | (codePoint >>> 6));
                bytes.push(0x80 | (codePoint & 0x3F));
            } else if (codePoint <= 0xFFFF) {
                // 三字节字符
                bytes.push(0xE0 | (codePoint >>> 12));
                bytes.push(0x80 | ((codePoint >>> 6) & 0x3F));
                bytes.push(0x80 | (codePoint & 0x3F));
            } else {
                // 四字节字符 (Unicode 补充平面)
                bytes.push(0xF0 | (codePoint >>> 18));
                bytes.push(0x80 | ((codePoint >>> 12) & 0x3F));
                bytes.push(0x80 | ((codePoint >>> 6) & 0x3F));
                bytes.push(0x80 | (codePoint & 0x3F));
            }

            i++;
        }

        return bytes;
    }

    /**
     * 将UTF-8字节数组转换为字符串
     * @param bytes 
     * @returns 
     */
    public static bytesToStr(bytes: Uint8Array) {
        // let textDecoder = StringUtils.textDecoder;
        // if(textDecoder) {
        // 	return textDecoder.decode(bytes);
        // }
        let result = '';
        let i = 0;

        while (i < bytes.length) {
            const byte1 = bytes[i];

            if (byte1 < 0x80) {
                // 单字节字符 (ASCII)
                result += String.fromCodePoint(byte1);
                i++;
            } else if (byte1 < 0xE0) {
                // 双字节字符
                const byte2 = bytes[i + 1];
                const codePoint = ((byte1 & 0x1F) << 6) | (byte2 & 0x3F);
                result += String.fromCodePoint(codePoint);
                i += 2;
            } else if (byte1 < 0xF0) {
                // 三字节字符
                const byte2 = bytes[i + 1];
                const byte3 = bytes[i + 2];
                const codePoint = ((byte1 & 0x0F) << 12) | ((byte2 & 0x3F) << 6) | (byte3 & 0x3F);
                // 处理U+10000到U+10FFFF的Unicode字符（需要代理对）
                if (codePoint > 0xFFFF) {
                    const highSurrogate = Math.floor((codePoint - 0x10000) / 0x400) + 0xD800;
                    const lowSurrogate = ((codePoint - 0x10000) % 0x400) + 0xDC00;
                    result += String.fromCharCode(highSurrogate, lowSurrogate);
                } else {
                    result += String.fromCharCode(codePoint);
                }
                i += 3;
            } else {
                // 四字节字符 (Unicode 补充平面)
                const byte2 = bytes[i + 1];
                const byte3 = bytes[i + 2];
                const byte4 = bytes[i + 3];
                const codePoint = ((byte1 & 0x07) << 18) | ((byte2 & 0x3F) << 12) | ((byte3 & 0x3F) << 6) | (byte4 & 0x3F);
                // 转换为代理对
                const highSurrogate = Math.floor((codePoint - 0x10000) / 0x400) + 0xD800;
                const lowSurrogate = ((codePoint - 0x10000) % 0x400) + 0xDC00;
                result += String.fromCharCode(highSurrogate, lowSurrogate);

                i += 4;
            }
        }

        return result;
    }

    /**
     * 阿拉伯数字转中文数字（小写）
     * @param num 数字（支持0到JavaScript安全整数范围，约9千万亿）
     * @returns 中文数字字符串
     * 
     * @example
     * StringUtils.numberToChinese(0);              // "零"
     * StringUtils.numberToChinese(10);             // "十"
     * StringUtils.numberToChinese(25);             // "二十五"
     * StringUtils.numberToChinese(108);            // "一百零八"
     * StringUtils.numberToChinese(1001);           // "一千零一"
     * StringUtils.numberToChinese(10000);          // "一万"
     * StringUtils.numberToChinese(50203);          // "五万零二百零三"
     * StringUtils.numberToChinese(100000000);      // "一亿"
     * StringUtils.numberToChinese(1000000000000);  // "一兆"
     */
    public static numberToChinese(num: number): string {
        return StringUtils._numberToChinese(num, false);
    }

    /**
     * 阿拉伯数字转中文数字（大写）
     * @param num 数字（支持0到JavaScript安全整数范围，约9千万亿）
     * @returns 中文数字字符串（大写）
     * 
     * @example
     * StringUtils.numberToChineseUpper(0);              // "零"
     * StringUtils.numberToChineseUpper(10);             // "拾"
     * StringUtils.numberToChineseUpper(25);             // "贰拾伍"
     * StringUtils.numberToChineseUpper(108);            // "壹佰零捌"
     * StringUtils.numberToChineseUpper(10000);          // "壹万"
     * StringUtils.numberToChineseUpper(100000000);      // "壹亿"
     * StringUtils.numberToChineseUpper(1000000000000);  // "壹兆"
     */
    public static numberToChineseUpper(num: number): string {
        return StringUtils._numberToChinese(num, true);
    }

    /**
     * 阿拉伯数字转中文数字（内部实现）
     * @param num 数字
     * @param isUpper 是否大写
     * @returns 中文数字字符串
     */
    private static _numberToChinese(num: number, isUpper: boolean): string {
        // 处理负数
        if (num < 0) {
            return "负" + StringUtils._numberToChinese(-num, isUpper);
        }

        // 处理0
        if (num === 0) {
            return StringUtils.CN_NUMS[0];
        }

        // JavaScript 安全整数范围：9007199254740991（约9千万亿）
        if (num > Number.MAX_SAFE_INTEGER) {
            return num.toString();
        }

        let nums = isUpper ? StringUtils.CN_NUMS_UPPER : StringUtils.CN_NUMS;
        let units = isUpper ? StringUtils.CN_UNITS_UPPER : StringUtils.CN_UNITS;
        let result = "";

        // 处理兆（万亿）
        if (num >= 1000000000000) {
            let zhao = Math.floor(num / 1000000000000);
            result += StringUtils._convertSection(zhao, nums, units) + StringUtils.CN_BIG_UNITS[3];
            num = num % 1000000000000;
            if (num > 0 && num < 100000000000) {
                result += nums[0]; // 添加零
            }
        }

        // 处理亿
        if (num >= 100000000) {
            let yi = Math.floor(num / 100000000);
            result += StringUtils._convertSection(yi, nums, units) + StringUtils.CN_BIG_UNITS[2];
            num = num % 100000000;
            if (num > 0 && num < 10000000) {
                result += nums[0]; // 添加零
            }
        }

        // 处理万
        if (num >= 10000) {
            let wan = Math.floor(num / 10000);
            result += StringUtils._convertSection(wan, nums, units) + StringUtils.CN_BIG_UNITS[1];
            num = num % 10000;
            if (num > 0 && num < 1000) {
                result += nums[0]; // 添加零
            }
        }

        // 处理个位到千位
        if (num > 0) {
            result += StringUtils._convertSection(num, nums, units);
        }

        return result;
    }

    /**
     * 转换四位数字段（千百十个）
     * @param num 数字（0-9999）
     * @param nums 数字数组
     * @param units 单位数组
     * @returns 中文数字字符串
     */
    private static _convertSection(num: number, nums: string[], units: string[]): string {
        let result = "";
        let hasZero = false;

        // 千位
        let qian = Math.floor(num / 1000);
        if (qian > 0) {
            result += nums[qian] + units[3];
            hasZero = false;
        }

        // 百位
        num = num % 1000;
        let bai = Math.floor(num / 100);
        if (bai > 0) {
            if (hasZero) {
                result += nums[0];
            }
            result += nums[bai] + units[2];
            hasZero = false;
        } else if (result.length > 0) {
            hasZero = true;
        }

        // 十位
        num = num % 100;
        let shi = Math.floor(num / 10);
        if (shi > 0) {
            if (hasZero) {
                result += nums[0];
            }
            // 特殊处理：10-19 可以省略"一"
            if (shi === 1 && result.length === 0) {
                result += units[1];
            } else {
                result += nums[shi] + units[1];
            }
            hasZero = false;
        } else if (result.length > 0 && num > 0) {
            hasZero = true;
        }

        // 个位
        num = num % 10;
        if (num > 0) {
            if (hasZero) {
                result += nums[0];
            }
            result += nums[num];
        }

        return result;
    }

}