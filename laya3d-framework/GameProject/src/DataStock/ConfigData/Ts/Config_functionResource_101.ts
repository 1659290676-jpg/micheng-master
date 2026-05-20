//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**X_101_系统开启表.xlsx*/
export default class Config_functionResource_101 {

    public static readonly Key = "functionResource_101";
    /**
     * 获取对应key数据的 Config_functionResource_101 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_functionResource_101 {
        return ConfigData.getFunctionResource_101(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 系统名称<已抽字> */
    public static readonly Idx_N: number = 0;
    /**
     * 根据对应表数据获取系统名称<已抽字>
     * @param data 对应表数据
     * @param args 替换参数
     */
    public static getN(data: any[], ...args: any[]): string {
        return LanguageMgr.getLngTxt(data[Config_functionResource_101.Idx_N], ...args);
    }
    /**
     * 根据key获取系统名称<已抽字>
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getNByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_functionResource_101.Key, key);
        if (!data) {
            console.error(Config_functionResource_101.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_functionResource_101.Idx_N], ...args);
    }

    /** 索引 注册天数开启
	 ** 开服和开区天数不能一起配
	 **  */
    public static readonly Idx_Kf: number = 1;
    /**
     * 根据对应表数据获取注册天数开启
	 ** 开服和开区天数不能一起配
	 ** 
     * @param data 对应表数据
     */
    public static getKf(data: any[]): number {
        return data[Config_functionResource_101.Idx_Kf];
    }
    /**
     * 根据key获取注册天数开启
	 ** 开服和开区天数不能一起配
	 ** 
     * @param key 配置表key
     */
    public static getKfByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_functionResource_101.Key, key);
        if (!data) {
            console.error(Config_functionResource_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_functionResource_101.Idx_Kf];
    }

    /** 索引 通关关卡数 */
    public static readonly Idx_Gq: number = 2;
    /**
     * 根据对应表数据获取通关关卡数
     * @param data 对应表数据
     */
    public static getGq(data: any[]): number {
        return data[Config_functionResource_101.Idx_Gq];
    }
    /**
     * 根据key获取通关关卡数
     * @param key 配置表key
     */
    public static getGqByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_functionResource_101.Key, key);
        if (!data) {
            console.error(Config_functionResource_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_functionResource_101.Idx_Gq];
    }

    /** 索引 条件类型
	 ** 不配则前面配置的条件为且的关系，需要满足配置的所有参数才会开启系统
	 ** 配1则前面配置的条件为或的关系，需要满足配置参数其中1条即可开启 */
    public static readonly Idx_T: number = 3;
    /**
     * 根据对应表数据获取条件类型
	 ** 不配则前面配置的条件为且的关系，需要满足配置的所有参数才会开启系统
	 ** 配1则前面配置的条件为或的关系，需要满足配置参数其中1条即可开启
     * @param data 对应表数据
     */
    public static getT(data: any[]): number {
        return data[Config_functionResource_101.Idx_T];
    }
    /**
     * 根据key获取条件类型
	 ** 不配则前面配置的条件为且的关系，需要满足配置的所有参数才会开启系统
	 ** 配1则前面配置的条件为或的关系，需要满足配置参数其中1条即可开启
     * @param key 配置表key
     */
    public static getTByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_functionResource_101.Key, key);
        if (!data) {
            console.error(Config_functionResource_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_functionResource_101.Idx_T];
    }

    /** 索引 是否显示
	 ** DELL:
	 ** 1：ios提审是不显示
	 ** 2：分享关闭时不显示
	 ** 统一提示9999关开启 */
    public static readonly Idx_X: number = 4;
    /**
     * 根据对应表数据获取是否显示
	 ** DELL:
	 ** 1：ios提审是不显示
	 ** 2：分享关闭时不显示
	 ** 统一提示9999关开启
     * @param data 对应表数据
     */
    public static getX(data: any[]): number {
        return data[Config_functionResource_101.Idx_X];
    }
    /**
     * 根据key获取是否显示
	 ** DELL:
	 ** 1：ios提审是不显示
	 ** 2：分享关闭时不显示
	 ** 统一提示9999关开启
     * @param key 配置表key
     */
    public static getXByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_functionResource_101.Key, key);
        if (!data) {
            console.error(Config_functionResource_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_functionResource_101.Idx_X];
    }

    /** 索引 显示关卡数
	 ** admin:
	 ** 填具体关卡ID
	 **  */
    public static readonly Idx_Xsgq: number = 5;
    /**
     * 根据对应表数据获取显示关卡数
	 ** admin:
	 ** 填具体关卡ID
	 ** 
     * @param data 对应表数据
     */
    public static getXsgq(data: any[]): number {
        return data[Config_functionResource_101.Idx_Xsgq];
    }
    /**
     * 根据key获取显示关卡数
	 ** admin:
	 ** 填具体关卡ID
	 ** 
     * @param key 配置表key
     */
    public static getXsgqByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_functionResource_101.Key, key);
        if (!data) {
            console.error(Config_functionResource_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_functionResource_101.Idx_Xsgq];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**系统名称<已抽字>*/
    public get n(): string {
        return LanguageMgr.getLngTxt(this._data[Config_functionResource_101.Idx_N]);
    }
	/**
     * 系统名称<已抽字>
     * @param args 替换参数
     */
    public getN(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_functionResource_101.Idx_N], ...args);
    }
	/**注册天数开启
	 ** 开服和开区天数不能一起配
	 ** */
    public get kf(): number {
        return this._data[Config_functionResource_101.Idx_Kf];
    }
	/**通关关卡数*/
    public get gq(): number {
        return this._data[Config_functionResource_101.Idx_Gq];
    }
	/**条件类型
	 ** 不配则前面配置的条件为且的关系，需要满足配置的所有参数才会开启系统
	 ** 配1则前面配置的条件为或的关系，需要满足配置参数其中1条即可开启*/
    public get t(): number {
        return this._data[Config_functionResource_101.Idx_T];
    }
	/**是否显示
	 ** DELL:
	 ** 1：ios提审是不显示
	 ** 2：分享关闭时不显示
	 ** 统一提示9999关开启*/
    public get x(): number {
        return this._data[Config_functionResource_101.Idx_X];
    }
	/**显示关卡数
	 ** admin:
	 ** 填具体关卡ID
	 ** */
    public get xsgq(): number {
        return this._data[Config_functionResource_101.Idx_Xsgq];
    }
    //#endregion

}
