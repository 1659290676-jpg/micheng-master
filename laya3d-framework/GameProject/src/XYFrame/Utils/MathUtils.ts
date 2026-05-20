/**
 * @ Author: XXL
 * @ Date: 2026-03-23 18:03
 * @ Description: 计算工具类
*/
export default class MathUtils {
    // 随机范围值整形
    public static getRandomInt(min: number, max: number) {
        if (min > max) {
            let value: number = min;
            value = max;
            max = min;
            min = value;
        }
        min = Math.ceil(min);
        max = Math.floor(max);
        return Math.floor(Math.random() * (max - min + 1)) + min;
    }

    /**
     * 计算两点之间的距离
     * @param x1 1点x坐标
     * @param y1 1点y坐标
     * @param x2 2点x坐标
     * @param y2 2点y坐标
     * @returns 两点之间的距离
     */
    public static getDistance(x1: number, y1: number, x2: number, y2: number) {
        return Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
    }

    /**
     * 计算两点之间的角度
     * @param x1 1点x坐标
     * @param y1 1点y坐标
     * @param x2 2点x坐标
     * @param y2 2点y坐标
     * @returns 两点之间的角度
     */
    public static getAngle(x1: number, y1: number, x2?: number, y2?: number) {
        let x = 0, y = 0;
        if (x2 != null) {
            x = x2 - x1;
            y = y2 - y1;
        } else {
            x = x1;
            y = y1;
        }
        let radian = Math.atan2(y, x);
        let angle = Math.round(57.295779 * radian);
        return angle;
    }
}