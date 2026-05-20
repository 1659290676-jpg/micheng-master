/**
 * @ Author: XXL
 * @ Date: 2026-02-04
 * @ Description: 缓动函数
 */
export class Ease {
    /** 线性 */
    static linear(t: number): number {
        return t;
    }

    /** 二次方缓入 */
    static quadIn(t: number): number {
        return t * t;
    }

    /** 二次方缓出 */
    static quadOut(t: number): number {
        return t * (2 - t);
    }

    /** 二次方缓入缓出 */
    static quadInOut(t: number): number {
        return t < 0.5 ? 2 * t * t : -1 + (4 - 2 * t) * t;
    }

    /** 三次方缓入 */
    static cubicIn(t: number): number {
        return t * t * t;
    }

    /** 三次方缓出 */
    static cubicOut(t: number): number {
        return (--t) * t * t + 1;
    }

    /** 三次方缓入缓出 */
    static cubicInOut(t: number): number {
        return t < 0.5 ? 4 * t * t * t : (t - 1) * (2 * t - 2) * (2 * t - 2) + 1;
    }

    /** 四次方缓入 */
    static quartIn(t: number): number {
        return t * t * t * t;
    }

    /** 四次方缓出 */
    static quartOut(t: number): number {
        return 1 - (--t) * t * t * t;
    }

    /** 四次方缓入缓出 */
    static quartInOut(t: number): number {
        return t < 0.5 ? 8 * t * t * t * t : 1 - 8 * (--t) * t * t * t;
    }

    /** 五次方缓入 */
    static quintIn(t: number): number {
        return t * t * t * t * t;
    }

    /** 五次方缓出 */
    static quintOut(t: number): number {
        return 1 + (--t) * t * t * t * t;
    }

    /** 五次方缓入缓出 */
    static quintInOut(t: number): number {
        return t < 0.5 ? 16 * t * t * t * t * t : 1 + 16 * (--t) * t * t * t * t;
    }

    /** 正弦缓入 */
    static sineIn(t: number): number {
        return 1 - Math.cos(t * Math.PI / 2);
    }

    /** 正弦缓出 */
    static sineOut(t: number): number {
        return Math.sin(t * Math.PI / 2);
    }

    /** 正弦缓入缓出 */
    static sineInOut(t: number): number {
        return 0.5 * (1 - Math.cos(Math.PI * t));
    }

    /** 指数缓入 */
    static expoIn(t: number): number {
        return t === 0 ? 0 : Math.pow(2, 10 * (t - 1));
    }

    /** 指数缓出 */
    static expoOut(t: number): number {
        return t === 1 ? 1 : 1 - Math.pow(2, -10 * t);
    }

    /** 指数缓入缓出 */
    static expoInOut(t: number): number {
        if (t === 0 || t === 1) return t;
        if (t < 0.5) {
            return 0.5 * Math.pow(2, 20 * t - 10);
        }
        return 1 - 0.5 * Math.pow(2, -20 * t + 10);
    }

    /** 圆形缓入 */
    static circIn(t: number): number {
        return 1 - Math.sqrt(1 - t * t);
    }

    /** 圆形缓出 */
    static circOut(t: number): number {
        return Math.sqrt(1 - (--t) * t);
    }

    /** 圆形缓入缓出 */
    static circInOut(t: number): number {
        if (t < 0.5) {
            return 0.5 * (1 - Math.sqrt(1 - 4 * t * t));
        }
        return 0.5 * (Math.sqrt(1 - (2 * t - 2) * (2 * t - 2)) + 1);
    }

    /** 回弹缓入 */
    static backIn(t: number): number {
        const s = 1.70158;
        return t * t * ((s + 1) * t - s);
    }

    /** 回弹缓出 */
    static backOut(t: number): number {
        const s = 1.70158;
        return --t * t * ((s + 1) * t + s) + 1;
    }

    /** 回弹缓入缓出 */
    static backInOut(t: number): number {
        const s = 1.70158 * 1.525;
        if ((t *= 2) < 1) {
            return 0.5 * (t * t * ((s + 1) * t - s));
        }
        return 0.5 * ((t -= 2) * t * ((s + 1) * t + s) + 2);
    }

    /** 弹性缓入 */
    static elasticIn(t: number): number {
        if (t === 0 || t === 1) return t;
        return -Math.pow(2, 10 * (t - 1)) * Math.sin((t - 1.1) * 5 * Math.PI);
    }

    /** 弹性缓出 */
    static elasticOut(t: number): number {
        if (t === 0 || t === 1) return t;
        return Math.pow(2, -10 * t) * Math.sin((t - 0.1) * 5 * Math.PI) + 1;
    }

    /** 弹性缓入缓出 */
    static elasticInOut(t: number): number {
        if (t === 0 || t === 1) return t;
        t *= 2;
        if (t < 1) {
            return -0.5 * Math.pow(2, 10 * (t - 1)) * Math.sin((t - 1.1) * 5 * Math.PI);
        }
        return 0.5 * Math.pow(2, -10 * (t - 1)) * Math.sin((t - 1.1) * 5 * Math.PI) + 1;
    }

    /** 弹跳缓入 */
    static bounceIn(t: number): number {
        return 1 - Ease.bounceOut(1 - t);
    }

    /** 弹跳缓出 */
    static bounceOut(t: number): number {
        if (t < 1 / 2.75) {
            return 7.5625 * t * t;
        } else if (t < 2 / 2.75) {
            return 7.5625 * (t -= 1.5 / 2.75) * t + 0.75;
        } else if (t < 2.5 / 2.75) {
            return 7.5625 * (t -= 2.25 / 2.75) * t + 0.9375;
        } else {
            return 7.5625 * (t -= 2.625 / 2.75) * t + 0.984375;
        }
    }

    /** 弹跳缓入缓出 */
    static bounceInOut(t: number): number {
        if (t < 0.5) {
            return Ease.bounceIn(t * 2) * 0.5;
        }
        return Ease.bounceOut(t * 2 - 1) * 0.5 + 0.5;
    }

    /**
     * 贝塞尔曲线缓动
     * @param t 进度 0-1
     * @param p0 起点
     * @param p1 控制点1
     * @param p2 控制点2
     * @param p3 终点
     */
    static bezier(t: number, p0: number, p1: number, p2: number, p3: number): number {
        const t2 = t * t;
        const t3 = t2 * t;
        const mt = 1 - t;
        const mt2 = mt * mt;
        const mt3 = mt2 * mt;
        return p0 * mt3 + 3 * p1 * mt2 * t + 3 * p2 * mt * t2 + p3 * t3;
    }
}
