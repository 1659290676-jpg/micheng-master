import { EnumBridgeResult } from "../EnumBridgeResult";

/**
 * @ Author: XXL
 * @ Date: 2026-02-28 14:18
 * @ Description: SDK基类
*/
export default class SDKBase {
    /**
     * 初始化SDK
     * @param data 初始化数据
     * @param call 初始化回调
     */
    public init(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        call && call({ code: EnumBridgeResult.SUCCESS });
    }
    /**
     * 登录
     * @param data 登录数据
     * @param call 登录回调
     */
    public login(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        call && call({ code: EnumBridgeResult.SUCCESS });
    }
    /**
     * 登出
     * @param call 
     */
    public logout(call: (data: { code: number, msg?: string, data?: any }) => any) {
        call && call({ code: EnumBridgeResult.SUCCESS });
    }

    /**
     * 授权
     * @param data 授权数据
     * @param call 授权回调
     */
    public auth(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        call && call({ code: EnumBridgeResult.SUCCESS });
    }

    /**
     * 支付
     * @param data 支付数据
     * @param call 支付回调
     */
    public pay(data: any, call: (data: { code: number, msg?: string, data?: any }) => any) {
        call && call({ code: EnumBridgeResult.SUCCESS });
    }

    /**
     * 上报
     * @param type 上报类型
     * @param data 上报数据
     */
    public report(data: { type: number, data: any }) { }

    /**
     * 检查字符是否违规
     * @param str 
     * @param call 
     */
    public checkMsg(str: string, call: (data: { code: number, msg?: string, data?: any }) => any) {
        call && call({ code: EnumBridgeResult.SUCCESS });
    }

    /**
     * 是否显示客服按钮
     * @param type 1登录页 2选服页 3设置页
     * @returns 
     */
    public isCustomer(type: number) {
        if(DEBUG) return true;
        return false;
    }

    /**
     * 是否显示隐私设置按钮
     * @param type
     * @returns 
     */
    public isPrivacy(data: any) {
        if(DEBUG) return true;
        return false;
    }

    /**
     * 是否显示个人中心按钮
     * @param type
     * @returns 
     */
    public isCenter(data: any) {
        if(DEBUG) return true;
        return false;
    }

    /**
     * 是否显示恢复购买按钮
     * @param type
     * @returns 
     */
    public isRestore(data: any) {
        return false;
    }

    /**
     * 调用SDK桥中的方法
     * @param obj 
     * @returns 
     */
    public invokeMethod(obj: { method: string, data?: any, call?: (data: { code: number, msg?: string, data?: any }) => any, other?: any }) {
        if (!obj) return;
        let method = obj.method;
        let _t: any = this;
        if (method && _t[method]) {
            return _t[method](obj.data, obj.call, obj.other);
        } else {
            console.warn("Undefined SDK method: " + method);
            if (DEBUG) {
                obj.call && obj.call({ code: EnumBridgeResult.SUCCESS });
            } else {
                obj.call && obj.call({ code: EnumBridgeResult.FAIL, msg: "sdk method not found" });
            }
        }
    }

    /**
     * 判断方法是否存在
     * @param method 
     * @returns 
     */
    public isMethod(method: string) {
        return (<any>this)[method] !== undefined;
    }
}