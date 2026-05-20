import ClassUtils from "../Utils/ClassUtils";

const { regClass, property } = Laya;


/**
 * @ Author: XXL
 * @ Date: 2026-01-23 18:01
 * @ Description: 单例基类
 * 
 * @example
 * class MyClass extends Singleton<MyClass>() {}
 * const instance = MyClass.getInst<MyClass>();
*/
@regClass()
export default class Singleton implements IDestory {

    private static _inst: Singleton;
    private static _class: Record<string, boolean> = {};

    /**
     * 获取单例
     * @param args 初始化的参数
     * @returns 
     */
    public static getInst<T extends Singleton>(...args: any[]): T {
        if (!this._inst) {
            this._inst = new this();
            Singleton._class[ClassUtils.getName(this)] = true;
            this._inst.onInit(...args);
        }
        return <any>this._inst;
    }

    public constructor() {
        let name = ClassUtils.getName(this);
        if (Singleton._class[name]) {
            throw new Error("单例类不能重复创建");
        }
    }

    /**
     * 创建是初始化，需要重新处理
     */
    protected onInit(...args: any[]) { }

    /**
     * 销毁单例
     */
    public destroy(): void {
        delete Singleton._class[ClassUtils.getName(this)];
    }

    /**
     * 清空单例
     */
    public clear(): void { }
}