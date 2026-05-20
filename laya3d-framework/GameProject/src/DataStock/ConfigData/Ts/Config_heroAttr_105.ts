//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**J_005_角色属性.xlsx*/
export default class Config_heroAttr_105 {

    public static readonly Key = "heroAttr_105";
    /**
     * 获取对应key数据的 Config_heroAttr_105 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_heroAttr_105 {
        return ConfigData.getHeroAttr_105(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 属性名<已抽字> */
    public static readonly Idx_N: number = 0;
    /**
     * 根据对应表数据获取属性名<已抽字>
     * @param data 对应表数据
     * @param args 替换参数
     */
    public static getN(data: any[], ...args: any[]): string {
        return LanguageMgr.getLngTxt(data[Config_heroAttr_105.Idx_N], ...args);
    }
    /**
     * 根据key获取属性名<已抽字>
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getNByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_heroAttr_105.Key, key);
        if (!data) {
            console.error(Config_heroAttr_105.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_heroAttr_105.Idx_N], ...args);
    }

    /** 索引 排序 */
    public static readonly Idx_Px: number = 1;
    /**
     * 根据对应表数据获取排序
     * @param data 对应表数据
     */
    public static getPx(data: any[]): number {
        return data[Config_heroAttr_105.Idx_Px];
    }
    /**
     * 根据key获取排序
     * @param key 配置表key
     */
    public static getPxByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_heroAttr_105.Key, key);
        if (!data) {
            console.error(Config_heroAttr_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_heroAttr_105.Idx_Px];
    }

    /** 索引 配置类型
	 ** 作者:
	 ** 1 直接数值
	 ** 2 百分比 配置值/100
	 ** 3 万分比 配置值/10000
	 ** 4 直接数值 配置值/10000 */
    public static readonly Idx_Lx: number = 2;
    /**
     * 根据对应表数据获取配置类型
	 ** 作者:
	 ** 1 直接数值
	 ** 2 百分比 配置值/100
	 ** 3 万分比 配置值/10000
	 ** 4 直接数值 配置值/10000
     * @param data 对应表数据
     */
    public static getLx(data: any[]): number {
        return data[Config_heroAttr_105.Idx_Lx];
    }
    /**
     * 根据key获取配置类型
	 ** 作者:
	 ** 1 直接数值
	 ** 2 百分比 配置值/100
	 ** 3 万分比 配置值/10000
	 ** 4 直接数值 配置值/10000
     * @param key 配置表key
     */
    public static getLxByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_heroAttr_105.Key, key);
        if (!data) {
            console.error(Config_heroAttr_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_heroAttr_105.Idx_Lx];
    }

    /** 索引 品质
	 ** 作者:
	 ** 1 白色
	 ** 2 绿色
	 ** 3 蓝色
	 ** 4 紫色
	 ** 5 橙色
	 ** 6 红色
	 ** 7 彩色 */
    public static readonly Idx_P: number = 3;
    /**
     * 根据对应表数据获取品质
	 ** 作者:
	 ** 1 白色
	 ** 2 绿色
	 ** 3 蓝色
	 ** 4 紫色
	 ** 5 橙色
	 ** 6 红色
	 ** 7 彩色
     * @param data 对应表数据
     */
    public static getP(data: any[]): number {
        return data[Config_heroAttr_105.Idx_P];
    }
    /**
     * 根据key获取品质
	 ** 作者:
	 ** 1 白色
	 ** 2 绿色
	 ** 3 蓝色
	 ** 4 紫色
	 ** 5 橙色
	 ** 6 红色
	 ** 7 彩色
     * @param key 配置表key
     */
    public static getPByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_heroAttr_105.Key, key);
        if (!data) {
            console.error(Config_heroAttr_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_heroAttr_105.Idx_P];
    }

    /** 索引 图标 */
    public static readonly Idx_I: number = 4;
    /**
     * 根据对应表数据获取图标
     * @param data 对应表数据
     */
    public static getI(data: any[]): string {
        return data[Config_heroAttr_105.Idx_I];
    }
    /**
     * 根据key获取图标
     * @param key 配置表key
     */
    public static getIByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_heroAttr_105.Key, key);
        if (!data) {
            console.error(Config_heroAttr_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_heroAttr_105.Idx_I];
    }

    /** 索引 获取途径 */
    public static readonly Idx_Tj: number = 5;
    /**
     * 根据对应表数据获取获取途径
     * @param data 对应表数据
     */
    public static getTj(data: any[]): number[] {
        return data[Config_heroAttr_105.Idx_Tj];
    }
    /**
     * 根据key获取获取途径
     * @param key 配置表key
     */
    public static getTjByKey(key: number | string): number[] {
        let data = ConfigData.getCfgData(Config_heroAttr_105.Key, key);
        if (!data) {
            console.error(Config_heroAttr_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_heroAttr_105.Idx_Tj];
    }

    /** 索引 物品标识
	 ** 作者:
	 ** 1.物品
	 ** 2.货币 */
    public static readonly Idx_Bs: number = 6;
    /**
     * 根据对应表数据获取物品标识
	 ** 作者:
	 ** 1.物品
	 ** 2.货币
     * @param data 对应表数据
     */
    public static getBs(data: any[]): number {
        return data[Config_heroAttr_105.Idx_Bs];
    }
    /**
     * 根据key获取物品标识
	 ** 作者:
	 ** 1.物品
	 ** 2.货币
     * @param key 配置表key
     */
    public static getBsByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_heroAttr_105.Key, key);
        if (!data) {
            console.error(Config_heroAttr_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_heroAttr_105.Idx_Bs];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**属性名<已抽字>*/
    public get n(): string {
        return LanguageMgr.getLngTxt(this._data[Config_heroAttr_105.Idx_N]);
    }
	/**
     * 属性名<已抽字>
     * @param args 替换参数
     */
    public getN(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_heroAttr_105.Idx_N], ...args);
    }
	/**排序*/
    public get px(): number {
        return this._data[Config_heroAttr_105.Idx_Px];
    }
	/**配置类型
	 ** 作者:
	 ** 1 直接数值
	 ** 2 百分比 配置值/100
	 ** 3 万分比 配置值/10000
	 ** 4 直接数值 配置值/10000*/
    public get lx(): number {
        return this._data[Config_heroAttr_105.Idx_Lx];
    }
	/**品质
	 ** 作者:
	 ** 1 白色
	 ** 2 绿色
	 ** 3 蓝色
	 ** 4 紫色
	 ** 5 橙色
	 ** 6 红色
	 ** 7 彩色*/
    public get p(): number {
        return this._data[Config_heroAttr_105.Idx_P];
    }
	/**图标*/
    public get i(): string {
        return this._data[Config_heroAttr_105.Idx_I];
    }
	/**获取途径*/
    public get tj(): number[] {
        return this._data[Config_heroAttr_105.Idx_Tj];
    }
	/**物品标识
	 ** 作者:
	 ** 1.物品
	 ** 2.货币*/
    public get bs(): number {
        return this._data[Config_heroAttr_105.Idx_Bs];
    }
    //#endregion

}
