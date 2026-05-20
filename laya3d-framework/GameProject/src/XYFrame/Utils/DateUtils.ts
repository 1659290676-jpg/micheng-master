import LanguageMgr from "../../DataStock/LanguageMgr";
import Game from "../../Game/Game";
import RegExpUtils from "./RegExpUtils";
import StringUtils from "./StringUtils";

/**
 * @ Author: XXL
 * @ Date: 2026-03-25 14:18
 * @ Description: 时间工具类
*/
export default class DateUtils {
    /**实例一个日期*/
    public static readonly date = new Date();

    /** 一天秒数 */
    public static readonly SEC_DAY = 86400;
    /** 一小时秒数 */
    public static readonly SEC_HOUR = 3600;
    /** 一分钟秒数 */
    public static readonly SEC_MIN = 60;
    /** 一秒钟毫秒数 */
    public static readonly MSEC_SEC = 1000;
    /**时区 东区为正，西区为负*/
    public static zone_offset = -DateUtils.date.getTimezoneOffset();


    /**
     * 将毫秒数转换为 00:00（分:秒）格式
     * @param ms 毫秒数
     * @param isCeil 转秒数是否向上取整
     * @returns 格式化后的时间字符串，如 01:23
     */
    public static formatToMinSec(ms: number, isCeil?: boolean): string {
        if (typeof ms !== 'number' || isNaN(ms) || ms < 0) {
            return '00:00';
        }

        ms = Math.floor(ms);
        const totalSeconds = isCeil ? Math.ceil(ms / 1000) : Math.floor(ms / 1000);
        const minutes = Math.floor(totalSeconds / 60);
        const seconds = totalSeconds % 60;

        return `${DateUtils.padStart(minutes, 2, "0")}:${DateUtils.padStart(seconds, 2, "0")}`;
    }

    /**
     * 模拟原生 padStart 函数
     * @param str 原始字符串（会自动转字符串）
     * @param targetLength 目标长度：填充后字符串的总长度
     * @param padString 填充字符（默认空格，支持多字符）
     * @returns 填充后的新字符串
     */
    public static padStart(
        str: string | number,
        targetLength: number,
        padString: string = ' '
    ): string {

        const originStr = String(str);
        const targetLen = Math.floor(targetLength); // 处理非整数/NaN

        if (targetLen <= originStr.length) return originStr;

        const needPadLen = targetLen - originStr.length;

        const padStr = padString === '' ? ' ' : padString;

        // Array(n+1).join(str) 会生成 n 个重复的 str，兼容所有JS环境
        const padContent = Array(needPadLen + 1).join(padStr).slice(0, needPadLen);

        return padContent + originStr;
    }

    /**机器当前时间*/
    public static now() {
        return Date.now();
    }

    /**
     * 机器时区的时间偏移。东区为正，西区为负
     * @returns 秒数
     */
    public static zoneOffset() {
        return DateUtils.zone_offset * 60;
    }

    /**
     * 获取本地的具体时间
     */
    public static getLocalDate() {
        let d = DateUtils.date;
        d.setTime(DateUtils.now());
        return d.toLocaleString('chinese', { hour12: false });
    }

    /**
     * 获取当天零点的时间戳
     * @param tm 时间戳
     * @returns 
     */
    public static getZero(tm: number): number {
        let t = tm % DateUtils.SEC_DAY;
        tm -= t;
        return tm;
    }

    /** 
     * 获取日期之间相距的天数 时间不分先后 时间戳
     * @param fromDate 秒
     * @param toDate 秒
     * @return  
     */
    public static getBetDay(fromDate: number, toDate: number): number {
        return Math.abs(DateUtils.getDays(fromDate) - DateUtils.getDays(toDate));
    }

    /**
     * 获取经过的总天数。距离 1970 年 1 月 1 日  
     * @param date 时间戳（秒数）
     * @param zoneId 时区，默认东八区
     * @returns 
     */
    public static getDays(date: number): number {
        // return Math.floor((date + DateUtil.zone_offset * DateUtil.SEC_HOUR) / (DateUtil.SEC_DAY));
        return Math.floor((date + DateUtils.zone_offset * DateUtils.SEC_MIN) / (DateUtils.SEC_DAY));
    }

    /**
     * 毫秒数转 不足1小时显示00分:00秒，达到1小时00小时:00分
     * @param n 时间毫秒数
     * @returns 
     */
    public static getHM(n: number) {
        n = n / 1000 >> 0;
        let h = (n / DateUtils.SEC_HOUR) >> 0;
        let m = ((n % DateUtils.SEC_HOUR) / DateUtils.SEC_MIN) >> 0;
        let s = n % DateUtils.SEC_MIN;
        if (h > 0)
            return StringUtils.addZero(h) + ":" + StringUtils.addZero(m);
        else
            return StringUtils.addZero(m) + ":" + StringUtils.addZero(s);
    }

    /**
     * 时间戳转换 00:00
     * @param tm 时间戳毫秒数
     * @returns 
     */
    public static getHM2(tm: number) {
        let d = DateUtils.date;
        d.setTime(tm);
        return StringUtils.addZero(d.getHours()) + ":" + StringUtils.addZero(d.getMinutes());
    }

    /**
     * 毫秒数转 00:00:00;
     * @param n 时间毫秒数
     * @returns 
     */
    public static getHMS(n: number) {
        n = n / 1000 >> 0;
        let h = (n / DateUtils.SEC_HOUR) >> 0;
        let m = ((n % DateUtils.SEC_HOUR) / DateUtils.SEC_MIN) >> 0;
        let s = n % DateUtils.SEC_MIN;
        return StringUtils.addZero(h) + ":" + StringUtils.addZero(m) + ":" + StringUtils.addZero(s);
    }
    /**
     * 时间戳 转 00:00:00;
     * @param tm 时间戳毫秒数
     * @returns 
     */
    public static getHMS2(tm: number) {
        let d = this.date;
        d.setTime(tm);
        return d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
    }

    /**
     * 毫秒数转 不足1小时显示00:00，达到1小时00:00:00
     * @param n 时间毫秒数
     * @returns 
     */
    public static getHMS3(n: number) {
        n = n / 1000 >> 0;
        let h = (n / DateUtils.SEC_HOUR) >> 0;
        let m = ((n % DateUtils.SEC_HOUR) / DateUtils.SEC_MIN) >> 0;
        let s = n % DateUtils.SEC_MIN;
        if (h > 0)
            return StringUtils.addZero(h) + ":" + StringUtils.addZero(m) + ":" + StringUtils.addZero(s);
        else
            return StringUtils.addZero(m) + ":" + StringUtils.addZero(s);

    }

    /**
     * 毫秒数转 00:00
     * @param n 毫秒数
     * @returns
     */
    public static getMS(n: number) {
        n = n / 1000 >> 0;
        let m = (n / DateUtils.SEC_MIN) >> 0;
        let s = n % DateUtils.SEC_MIN;
        return StringUtils.addZero(m) + ":" + StringUtils.addZero(s);
    }
    /**
     * 毫秒数转 00:00 (分钟只有一位时左边不加0)
     * @param n 毫秒数
     * @returns
     */
    public static getMS2(n: number) {
        n = n / 1000 >> 0;
        let m = (n / DateUtils.SEC_MIN) >> 0;
        let s = n % DateUtils.SEC_MIN;
        return m + ":" + StringUtils.addZero(s);
    }
    /**获取日期 yyyy/MM/dd hh:mm 
     * @param n 毫秒数
    */
    public static getDate(n: number) {
        let d = this.date;
        d.setTime(n);
        let y = d.getFullYear();
        let m = d.getMonth() + 1;
        let day = d.getDate();
        let h = d.getHours();
        let mm = d.getMinutes();
        return y + "/" + m + "/" + day + " " + StringUtils.addZero(h) + ":" + StringUtils.addZero(mm);
    }
    /**根据毫秒时间戳获取年/月/日 */
    public static getYMD(s: number): string {
        let time: string = DateUtils.getDate(s);
        let times: string[] = time.split(" ");
        return times[0];
    }

    /**获取日期 MM-dd hh:mm 
     * @param n 毫秒数
    */
    public static getDate2(n: number) {
        let d = this.date;
        d.setTime(n);
        let m = d.getMonth() + 1;
        let day = d.getDate();
        let h = d.getHours();
        let mm = d.getMinutes();
        return m + "-" + day + " " + StringUtils.addZero(h) + ":" + StringUtils.addZero(mm);
    }

    /**
     * 获取具体的日期 YYYY-MM-DD 00:00:00
     * @param n 时间戳毫秒数
     * @param symbol 格式{0}年 {1}月 {2}日 {3}时 {4}分 {5}秒，默认{0}-{1}-{2} {3}:{4}:{5}
     */
    public static getDate3(n: number, symbol = "{0}-{1}-{2} {3}:{4}:{5}") {
        let d = DateUtils.date;
        d.setTime(n);
        return RegExpUtils.reTxt(symbol, d.getFullYear(), StringUtils.addZero(d.getMonth() + 1), StringUtils.addZero(d.getDate()), StringUtils.addZero(d.getHours()), StringUtils.addZero(d.getMinutes()), StringUtils.addZero(d.getSeconds()));
    }

    /**
     * 获取时间戳是周几，周日是7
     * @param tm 时间戳(毫秒数)，注意要加上时区的毫秒数
     */
    public static getWeek(tm: number) {
        tm = tm / 1000 >> 0;
        tm += 28800;//加上8小时, 时间戳从1970.1.1 8:00开始      
        // let n = tm % DateUtil.SEC_DAY == 0 ? 1 : 0;
        //1970.1.1是星期四，需要加上前3天
        let y = tm % DateUtils.SEC_DAY;
        tm = Math.ceil(tm / DateUtils.SEC_DAY) + 3;
        y == 0 && tm++;//0点要加上1天
        tm = tm % 7;
        if (tm == 0) tm = 7;//周日用7
        return tm;
    }

    /**根据指定的年月日获取时间戳(毫秒) */
    public static getTime(y: number, m1: number, d: number, h: number, m2: number, s: number): number {
        let date = DateUtils.date;
        date.setFullYear(y, m1, d);
        date.setHours(h, m2, s);
        return date.getTime();
    }

    /**
     * 将配置时间转为具体的时间戳
     * @param time yyyy-mm-dd hh:mm:ss
     * @param zone 时间的时区
     * @returns 时间戳（毫秒）
     */
    public static getTime2(time: string, zone?: number) {
        //todo 和本地时区不一致
        if (zone && zone * DateUtils.SEC_HOUR != DateUtils.zoneOffset()) {
            let z = " GMT";
            if (zone > 0) z += "+";
            else {
                z += "-";
                zone *= -1;
            }
            if (zone < 10) {
                z += "0";
            }
            z += zone + "00";
            return Date.parse(time + z);
        } else {
            return Date.parse(time);
        }
    }

    /**获取当天开始的时间截 多少秒*/
    public static getDateStartTm(totalSeconds: number = 0): number {
        totalSeconds = totalSeconds > 0 ? totalSeconds : Game.Model.global.getSrvTm(false);
        let d: Date = DateUtils.date;
        d.setTime(totalSeconds * 1000 + 1);
        d.setHours(0, 0, 0, 0);
        return Math.ceil(d.getTime() / 1000);
    }

    /**
     * 获取今天指定时间点的时间
     * timeStr 格式：18:30:00;
     * addTime 增加的秒数
     * @returns 时间戳（秒）
     **/
    public static getTodayTm(timeStr: string, addTime: number = 0): number {
        let arr: string[] = timeStr.split(":");
        let seconds: number = parseInt(arr[0]) * 3600 + parseInt(arr[1]) * 60 + parseInt(arr[2]) + addTime;
        let startCount: number = DateUtils.getDateStartTm();
        let time: number = startCount + seconds;
        return time;
    }

    /**
     * 获取下一个时间戳
     * 如果今天没到这个时间,就返回 这个时间的时间戳
     * 否则,就取明天的 这个时间的时间戳
     * timeStr格式：18:30:00;
     **/
    public static getNextTm(timeStr: string): number {
        let tm = this.getTodayTm(timeStr);
        //今天已经过了,取明天的
        if (tm < Game.Model.global.getSrvTm()) {
            tm += 86400;
        }
        return tm;
    }

    /**
     * 格式化时间
     * 大于1天          =>  x天x小时
     * 1天>x>1小时      =>  x小时x分
     * 否则             =>  x分钟x秒
     * @param tm 毫秒数
     */
    public static getDHMS(tm: number): string {
        tm = tm / 1000 >> 0;
        let day = Math.floor(tm / DateUtils.SEC_DAY);
        let hour = Math.floor((tm % DateUtils.SEC_DAY) / DateUtils.SEC_HOUR);
        let min = Math.floor((tm % DateUtils.SEC_HOUR) / DateUtils.SEC_MIN);

        if (day > 0) {
            return LanguageMgr.getTxt(17, day) + LanguageMgr.getTxt(18, hour);
        }

        if (hour > 0) {
            return LanguageMgr.getTxt(18, hour) + LanguageMgr.getTxt(19, min);
        }

        let sec = tm % DateUtils.SEC_MIN;
        return LanguageMgr.getTxt(19, min) + LanguageMgr.getTxt(20, sec);
    }

    /**
     * 将毫秒数转为 大于一天为：{0}天{1}小时时，小于一天：{0}小时{1}分
     * @param tm 毫秒数
     * @returns 时间字符串
     */
    public static getDHM(tm: number): string {
        tm = tm / 1000 >> 0;
        let day = Math.floor(tm / DateUtils.SEC_DAY);
        let hour = Math.floor((tm % DateUtils.SEC_DAY) / DateUtils.SEC_HOUR);
        let min = Math.floor((tm % DateUtils.SEC_HOUR) / DateUtils.SEC_MIN);

        if (day > 0) {
            return LanguageMgr.getTxt(17, day) + LanguageMgr.getTxt(18, hour);
        }
        return LanguageMgr.getTxt(18, hour) + LanguageMgr.getTxt(19, min);
    }

    // /**
    //  * 获取距离当前时间的时间
    //  * @param offTm 偏移时间(毫秒)
    //  * @returns 时间字符串
    //  */
    // public static getOffTm(offTm: number): string {
    //     if (offTm <= 0) {
    //         return LanguageMgr.getTxt(2860);
    //     }
    //     let s = "";
    //     let now = Game.Model.global.getSrvTm();
    //     let tm = Math.floor((now - offTm) / 1000);
    //     let day = Math.floor(tm / DateUtils.SEC_DAY);

    //     if (day > 0) {
    //         if (day > 7) {
    //             day = 7;
    //         }
    //         s = LanguageMgr.getTxt(2848, day);
    //     } else {
    //         let hour = Math.floor(tm / DateUtils.SEC_HOUR);
    //         if (hour > 0) {
    //             s = LanguageMgr.getTxt(2847, hour);
    //         } else {
    //             let min = Math.floor(tm / DateUtils.SEC_MIN);
    //             if (min > 0) {
    //                 s = LanguageMgr.getTxt(2846, min);
    //             } else {
    //                 s = LanguageMgr.getTxt(2845);
    //             }
    //         }
    //     }
    //     return s;
    // }
}