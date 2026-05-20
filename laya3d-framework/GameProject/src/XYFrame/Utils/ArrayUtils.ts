/**
 * @ Author: XXL
 * @ Date: 2026-01-30 16:21
 * @ Description: 数组工具类
*/
export default class ArrayUtils {
    /**
     * 清理数组中的null元素
     * @param arr 
     */
    public static cleanNull(arr: any[]) {
        let last = 0;
        for (let i = 0, len = arr.length; i < len; i++) {
            let item = arr[i];
            if (item !== null && item !== undefined) {
                arr[last] = item;
                last++;
            }
        }
        arr.length = last;
    }

    /**
     * 移除数组中的元素
     * @param arr 数组
     * @param item 待移除的元素
     */
    public static remove(arr: any[], item: any) {
        if (arr) {
            for (let i = arr.length - 1; i >= 0; i--) {
                if (arr[i] === item) {
                    arr.splice(i, 1);
                }
            }
        }
    }

    /**
     * 数组排序（原地排序）
     * @param arr 数组
     * @param order 排序方向（1:升序，-1:降序，默认升序）
     * @param key 排序字段（可选，用于对象数组排序）
     * @returns 排序后的数组（返回原数组引用）
     * 
     * @example
     * // 数字数组升序
     * ArrayUtils.sort([3, 1, 2]); // [1, 2, 3]
     * 
     * // 数字数组降序
     * ArrayUtils.sort([3, 1, 2], SortOrder.DESC); // [3, 2, 1]
     * 
     * // 对象数组按字段升序
     * ArrayUtils.sort([{age: 30}, {age: 20}], SortOrder.ASC, "age"); // [{age: 20}, {age: 30}]
     * 
     * // 对象数组按字段降序
     * ArrayUtils.sort([{age: 20}, {age: 30}], SortOrder.DESC, "age"); // [{age: 30}, {age: 20}]
     */
    public static sort<T>(arr: T[], order: -1 | 1 = 1, key?: string): T[] {
        if (!arr || arr.length <= 1) {
            return arr;
        }

        if (key) {
            // 对象数组按字段排序
            arr.sort((a: any, b: any) => {
                let aVal = a[key];
                let bVal = b[key];

                if (aVal === bVal) return 0;
                if (aVal === null || aVal === undefined) return 1;
                if (bVal === null || bVal === undefined) return -1;

                return (aVal > bVal ? 1 : -1) * order;
            });
        } else {
            // 基本类型数组排序
            arr.sort((a: any, b: any) => {
                if (a === b) return 0;
                if (a === null || a === undefined) return 1;
                if (b === null || b === undefined) return -1;

                return (a > b ? 1 : -1) * order;
            });
        }

        return arr;
    }

    /**
     * 数组排序（返回新数组）
     * @param arr 数组
     * @param order 排序方向（1:升序，-1:降序，默认升序）
     * @param key 排序字段（可选，用于对象数组排序）
     * @returns 排序后的新数组
     * 
     * @example
     * let arr = [3, 1, 2];
     * let sorted = ArrayUtils.sortCopy(arr); // [1, 2, 3]
     * console.log(arr); // [3, 1, 2] 原数组不变
     */
    public static sortCopy<T>(arr: T[], order: -1 | 1 = 1, key?: string): T[] {
        if (!arr) {
            return [];
        }
        return ArrayUtils.sort(arr.slice(), order, key);
    }

    /**
     * 自定义比较函数排序（原地排序）
     * @param arr 数组
     * @param compareFn 比较函数，返回负数表示a<b，0表示a=b，正数表示a>b
     * @returns 排序后的数组（返回原数组引用）
     * 
     * @example
     * // 按多个字段排序
     * ArrayUtils.sortBy(users, (a, b) => {
     *     if (a.level !== b.level) return b.level - a.level; // 等级降序
     *     return a.name.localeCompare(b.name); // 名字升序
     * });
     */
    public static sortBy<T>(arr: T[], compareFn: (a: T, b: T) => number): T[] {
        if (!arr || arr.length <= 1) {
            return arr;
        }
        return arr.sort(compareFn);
    }

    /**
     * 自定义比较函数排序（返回新数组）
     * @param arr 数组
     * @param compareFn 比较函数
     * @returns 排序后的新数组
     */
    public static sortByCopy<T>(arr: T[], compareFn: (a: T, b: T) => number): T[] {
        if (!arr) {
            return [];
        }
        return arr.slice().sort(compareFn);
    }


    /**
     * 查找满足条件的元素索引
     */
    public static findIndex<T>(arr: T[], predicate: (item: T, index: number) => boolean): number {
        if (!arr) {
            return -1;
        }
        for (let i = 0, len = arr.length; i < len; i++) {
            if (predicate(arr[i], i)) {
                return i;
            }
        }
        return -1;
    }

    /**
     * 查找满足条件的元素
     */
    public static find<T>(arr: T[], predicate: (item: T, index: number) => boolean): T | undefined {
        if (!arr) {
            return undefined;
        }
        for (let i = 0, len = arr.length; i < len; i++) {
            if (predicate(arr[i], i)) {
                return arr[i];
            }
        }
        return undefined;
    }

    /**
     * 判断数组是否包含元素
     */
    public static contains<T>(arr: T[], item: T): boolean {
        return arr ? arr.indexOf(item) !== -1 : false;
    }

    /**
     * 判断数组是否包含满足条件的元素
     */
    public static some<T>(arr: T[], predicate: (item: T, index: number) => boolean): boolean {
        if (!arr) {
            return false;
        }
        for (let i = 0, len = arr.length; i < len; i++) {
            if (predicate(arr[i], i)) {
                return true;
            }
        }
        return false;
    }

    /**
     * 判断数组所有元素是否都满足条件
     */
    public static every<T>(arr: T[], predicate: (item: T, index: number) => boolean): boolean {
        if (!arr) {
            return false;
        }
        for (let i = 0, len = arr.length; i < len; i++) {
            if (!predicate(arr[i], i)) {
                return false;
            }
        }
        return true;
    }

    /**
     * 过滤数组
     */
    public static filter<T>(arr: T[], predicate: (item: T, index: number) => boolean): T[] {
        if (!arr) {
            return [];
        }
        let result: T[] = [];
        for (let i = 0, len = arr.length; i < len; i++) {
            if (predicate(arr[i], i)) {
                result.push(arr[i]);
            }
        }
        return result;
    }

    /**
     * 映射数组
     */
    public static map<T, R>(arr: T[], mapper: (item: T, index: number) => R): R[] {
        if (!arr) {
            return [];
        }
        let result: R[] = [];
        for (let i = 0, len = arr.length; i < len; i++) {
            result.push(mapper(arr[i], i));
        }
        return result;
    }

    /**
     * 数组去重，返回新数组
     */
    public static unique<T>(arr: T[]): T[] {
        if (!arr) {
            return [];
        }
        let result: T[] = [];
        for (let i = 0, len = arr.length; i < len; i++) {
            if (result.indexOf(arr[i]) === -1) {
                result.push(arr[i]);
            }
        }
        return result;
    }

    /**
     * 对象数组按字段去重
     */
    public static uniqueBy<T>(arr: T[], key: string): T[] {
        if (!arr) {
            return [];
        }
        let result: T[] = [];
        let seen: any[] = [];
        for (let i = 0, len = arr.length; i < len; i++) {
            let val = (arr[i] as any)[key];
            if (seen.indexOf(val) === -1) {
                seen.push(val);
                result.push(arr[i]);
            }
        }
        return result;
    }

    /**
     * 数组扁平化（一层）
     */
    public static flatten<T>(arr: T[][]): T[] {
        if (!arr) {
            return [];
        }
        let result: T[] = [];
        for (let i = 0, len = arr.length; i < len; i++) {
            if (Array.isArray(arr[i])) {
                for (let j = 0, jlen = arr[i].length; j < jlen; j++) {
                    result.push(arr[i][j]);
                }
            }
        }
        return result;
    }

    /**
     * 数组分组
     */
    public static groupBy<T>(arr: T[], key: string): { [key: string]: T[] } {
        if (!arr) {
            return {};
        }
        let result: { [key: string]: T[] } = {};
        for (let i = 0, len = arr.length; i < len; i++) {
            let val = (arr[i] as any)[key];
            if (!result[val]) {
                result[val] = [];
            }
            result[val].push(arr[i]);
        }
        return result;
    }

    /**
     * 数组分块
     */
    public static chunk<T>(arr: T[], size: number): T[][] {
        if (!arr || size <= 0) {
            return [];
        }
        let result: T[][] = [];
        for (let i = 0, len = arr.length; i < len; i += size) {
            result.push(arr.slice(i, i + size));
        }
        return result;
    }

    /**
     * 获取数组的前N个元素
     */
    public static take<T>(arr: T[], count: number): T[] {
        if (!arr || count <= 0) {
            return [];
        }
        return arr.slice(0, count);
    }

    /**
     * 跳过数组的前N个元素
     */
    public static skip<T>(arr: T[], count: number): T[] {
        if (!arr || count <= 0) {
            return arr.slice();
        }
        return arr.slice(count);
    }

    /**
     * 获取数组的第一个元素
     */
    public static first<T>(arr: T[]): T | undefined {
        return arr && arr.length > 0 ? arr[0] : undefined;
    }

    /**
     * 获取数组的最后一个元素
     */
    public static last<T>(arr: T[]): T | undefined {
        return arr && arr.length > 0 ? arr[arr.length - 1] : undefined;
    }

    /**
     * 获取数组的随机元素
     */
    public static random<T>(arr: T[]): T | undefined {
        if (!arr || arr.length === 0) {
            return undefined;
        }
        return arr[Math.floor(Math.random() * arr.length)];
    }

    /**
     * 打乱数组（原地打乱）
     */
    public static shuffle<T>(arr: T[]): T[] {
        if (!arr || arr.length <= 1) {
            return arr;
        }
        for (let i = arr.length - 1; i > 0; i--) {
            let j = Math.floor(Math.random() * (i + 1));
            let temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
        }
        return arr;
    }

    /**
     * 打乱数组（返回新数组）
     */
    public static shuffleCopy<T>(arr: T[]): T[] {
        if (!arr) {
            return [];
        }
        return ArrayUtils.shuffle(arr.slice());
    }

    /**
     * 数组求和
     */
    public static sum(arr: number[]): number {
        if (!arr) {
            return 0;
        }
        let sum = 0;
        for (let i = 0, len = arr.length; i < len; i++) {
            sum += arr[i];
        }
        return sum;
    }

    /**
     * 对象数组按字段求和
     */
    public static sumBy<T>(arr: T[], key: string): number {
        if (!arr) {
            return 0;
        }
        let sum = 0;
        for (let i = 0, len = arr.length; i < len; i++) {
            sum += (arr[i] as any)[key] || 0;
        }
        return sum;
    }

    /**
     * 数组求平均值
     */
    public static average(arr: number[]): number {
        if (!arr || arr.length === 0) {
            return 0;
        }
        return ArrayUtils.sum(arr) / arr.length;
    }

    /**
     * 获取数组最大值
     */
    public static max(arr: number[]): number {
        if (!arr || arr.length === 0) {
            return 0;
        }
        let max = arr[0];
        for (let i = 1, len = arr.length; i < len; i++) {
            if (arr[i] > max) {
                max = arr[i];
            }
        }
        return max;
    }

    /**
     * 获取数组最小值
     */
    public static min(arr: number[]): number {
        if (!arr || arr.length === 0) {
            return 0;
        }
        let min = arr[0];
        for (let i = 1, len = arr.length; i < len; i++) {
            if (arr[i] < min) {
                min = arr[i];
            }
        }
        return min;
    }

    /**
     * 对象数组按字段获取最大值元素
     */
    public static maxBy<T>(arr: T[], key: string): T | undefined {
        if (!arr || arr.length === 0) {
            return undefined;
        }
        let maxItem = arr[0];
        let maxVal = (maxItem as any)[key];
        for (let i = 1, len = arr.length; i < len; i++) {
            let val = (arr[i] as any)[key];
            if (val > maxVal) {
                maxVal = val;
                maxItem = arr[i];
            }
        }
        return maxItem;
    }

    /**
     * 对象数组按字段获取最小值元素
     */
    public static minBy<T>(arr: T[], key: string): T | undefined {
        if (!arr || arr.length === 0) {
            return undefined;
        }
        let minItem = arr[0];
        let minVal = (minItem as any)[key];
        for (let i = 1, len = arr.length; i < len; i++) {
            let val = (arr[i] as any)[key];
            if (val < minVal) {
                minVal = val;
                minItem = arr[i];
            }
        }
        return minItem;
    }

    /**
     * 数组是否为空
     */
    public static isEmpty<T>(arr: T[]): boolean {
        return !arr || arr.length === 0;
    }

    /**
     * 数组是否不为空
     */
    public static isNotEmpty<T>(arr: T[]): boolean {
        return arr && arr.length > 0;
    }

    /**
     * 清空数组
     */
    public static clear<T>(arr: T[]): void {
        if (arr) {
            arr.length = 0;
        }
    }

    /**
     * 数组转Map
     */
    public static toMap<T>(arr: T[], key: string): Map<any, T> {
        let map = new Map<any, T>();
        if (!arr) {
            return map;
        }
        for (let i = 0, len = arr.length; i < len; i++) {
            let k = (arr[i] as any)[key];
            map.set(k, arr[i]);
        }
        return map;
    }

    /**
     * 数组差集（返回在arr1中但不在arr2中的元素）
     */
    public static difference<T>(arr1: T[], arr2: T[]): T[] {
        if (!arr1) {
            return [];
        }
        if (!arr2) {
            return arr1.slice();
        }
        let result: T[] = [];
        for (let i = 0, len = arr1.length; i < len; i++) {
            if (arr2.indexOf(arr1[i]) === -1) {
                result.push(arr1[i]);
            }
        }
        return result;
    }

    /**
     * 数组交集
     */
    public static intersection<T>(arr1: T[], arr2: T[]): T[] {
        if (!arr1 || !arr2) {
            return [];
        }
        let result: T[] = [];
        for (let i = 0, len = arr1.length; i < len; i++) {
            if (arr2.indexOf(arr1[i]) !== -1 && result.indexOf(arr1[i]) === -1) {
                result.push(arr1[i]);
            }
        }
        return result;
    }

    /**
     * 数组并集
     */
    public static union<T>(arr1: T[], arr2: T[]): T[] {
        if (!arr1 && !arr2) {
            return [];
        }
        if (!arr1) {
            return arr2.slice();
        }
        if (!arr2) {
            return arr1.slice();
        }
        return ArrayUtils.unique([...arr1, ...arr2]);
    }

}