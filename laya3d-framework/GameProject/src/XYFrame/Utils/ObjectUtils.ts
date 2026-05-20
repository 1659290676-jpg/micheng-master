import ClassUtils from "./ClassUtils";

/**
 * @ Author: XXL
 * @ Date: 2025-06-10 14:58
 * @ Description: 对象工具
*/
export default class ObjectUtils {

    public static readonly NUMBER = "[object Number]";
    public static readonly STRING = "[object String]";
    public static readonly BOOLEAN = "[object Boolean]";
    public static readonly ARRAY = "[object Array]";
    public static readonly OBJECT = "[object Object]";
    public static readonly FUNCTION = "[object Function]";
    public static readonly NULL = "[object Null]";

    /**获取对象对应的类型*/
    public static getObjType(obj: any) {
        let type = Object.prototype.toString.call(obj);
        return type;
    }

    /**
     * 清理Object
     * @param obj 
     * @returns 
     */
    public static cleanObj<T>(obj: T): T {
        if (obj) {
            for (let key in obj) {
                delete obj[key];
            }
        }
        return obj || <T>{};
    }

    /**
     * 对象是否为空或已回收
     * @param obj 
     * @returns 
     */
    public static isNull(obj: any) {
        if (!obj) return true;
        return !!obj.destroyed;
    }

    /**
     * 返回 value 参数指定的对象的基类的完全限定类名。
     * @param value 
     * @returns 
     */
    public static getSuperClassName(value: any) {
        if (!value || (typeof value != "object" && !value.prototype)) {
            return null;
        }
        var prototype = value.prototype ? value.prototype : Object.getPrototypeOf(value);
        var superProto = Object.getPrototypeOf(prototype);
        if (!superProto) {
            return null;
        }
        var superClass = ClassUtils.getName(superProto.constructor);
        if (!superClass) {
            return null;
        }
        return superClass;
    }

    /**
     * 返回 name 参数指定的类的类对象引用。
     * @param name 类的名称。
     * @returns 
     */
    public static getDefinitionByName(name: string) {
        if (!name)
            return null;
        var paths = name.split(".");
        var length = paths.length;
        var definition: any = window;
        for (var i = 0; i < length; i++) {
            var path = paths[i];
            definition = definition[path];
            if (!definition) {
                return null;
            }
        }
        return definition;
    }

}