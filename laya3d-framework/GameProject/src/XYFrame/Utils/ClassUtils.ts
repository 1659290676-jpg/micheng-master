/**
 * @ Author: XXL
 * @ Date: 2026-02-03 15:27
 * @ Description: 类工具
*/
export default class ClassUtils {
    
    /** 类全局ID */
    private static _gid = 0;

    /**
     * 获取类名
     * @param value 类或对象
     */
    public static getName(value: any) {
        let type = typeof value;
        if (!value || (type != "object" && !value.prototype)) {
            return type;
        }
        let prototype = value.prototype ? value.prototype : Object.getPrototypeOf(value);
        if (prototype.hasOwnProperty("__class__")) {
            return prototype["__class__"];
        }
        let className = prototype.constructor.name + "_" + ClassUtils._gid++;
        Object.defineProperty(prototype, "__class__", {
            value: className,
            enumerable: false,
            writable: false,
            configurable: false
        });
        return className;
    }
}