//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**P_301_皮肤头像表.xlsx*/
export default class Config_skin_301 {

    public static readonly Key = "skin_301";
    /**
     * 获取对应key数据的 Config_skin_301 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_skin_301 {
        return ConfigData.getSkin_301(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 头像 */
    public static readonly Idx_Icon: number = 0;
    /**
     * 根据对应表数据获取头像
     * @param data 对应表数据
     */
    public static getIcon(data: any[]): string {
        return data[Config_skin_301.Idx_Icon];
    }
    /**
     * 根据key获取头像
     * @param key 配置表key
     */
    public static getIconByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_skin_301.Key, key);
        if (!data) {
            console.error(Config_skin_301.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_skin_301.Idx_Icon];
    }

    /** 索引 皮肤材质名 */
    public static readonly Idx_Mat: number = 1;
    /**
     * 根据对应表数据获取皮肤材质名
     * @param data 对应表数据
     */
    public static getMat(data: any[]): string {
        return data[Config_skin_301.Idx_Mat];
    }
    /**
     * 根据key获取皮肤材质名
     * @param key 配置表key
     */
    public static getMatByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_skin_301.Key, key);
        if (!data) {
            console.error(Config_skin_301.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_skin_301.Idx_Mat];
    }

    /** 索引 光环色值 */
    public static readonly Idx_Halo: number = 2;
    /**
     * 根据对应表数据获取光环色值
     * @param data 对应表数据
     */
    public static getHalo(data: any[]): string {
        return data[Config_skin_301.Idx_Halo];
    }
    /**
     * 根据key获取光环色值
     * @param key 配置表key
     */
    public static getHaloByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_skin_301.Key, key);
        if (!data) {
            console.error(Config_skin_301.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_skin_301.Idx_Halo];
    }

    /** 索引 名字<已抽字> */
    public static readonly Idx_Name: number = 3;
    /**
     * 根据对应表数据获取名字<已抽字>
     * @param data 对应表数据
     * @param args 替换参数
     */
    public static getName(data: any[], ...args: any[]): string {
        return LanguageMgr.getLngTxt(data[Config_skin_301.Idx_Name], ...args);
    }
    /**
     * 根据key获取名字<已抽字>
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getNameByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_skin_301.Key, key);
        if (!data) {
            console.error(Config_skin_301.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_skin_301.Idx_Name], ...args);
    }

    /** 索引 排序 */
    public static readonly Idx_Sort: number = 4;
    /**
     * 根据对应表数据获取排序
     * @param data 对应表数据
     */
    public static getSort(data: any[]): number {
        return data[Config_skin_301.Idx_Sort];
    }
    /**
     * 根据key获取排序
     * @param key 配置表key
     */
    public static getSortByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_skin_301.Key, key);
        if (!data) {
            console.error(Config_skin_301.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_skin_301.Idx_Sort];
    }

    /** 索引 激活类型
	 ** 和激活道具2选1
	 ** 类型1：通关关卡10
	 ** 类型2：看广告获得 */
    public static readonly Idx_Condi: number = 5;
    /**
     * 根据对应表数据获取激活类型
	 ** 和激活道具2选1
	 ** 类型1：通关关卡10
	 ** 类型2：看广告获得
     * @param data 对应表数据
     */
    public static getCondi(data: any[]): number {
        return data[Config_skin_301.Idx_Condi];
    }
    /**
     * 根据key获取激活类型
	 ** 和激活道具2选1
	 ** 类型1：通关关卡10
	 ** 类型2：看广告获得
     * @param key 配置表key
     */
    public static getCondiByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_skin_301.Key, key);
        if (!data) {
            console.error(Config_skin_301.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_skin_301.Idx_Condi];
    }

    /** 索引 条件目标 */
    public static readonly Idx_Target: number = 6;
    /**
     * 根据对应表数据获取条件目标
     * @param data 对应表数据
     */
    public static getTarget(data: any[]): number {
        return data[Config_skin_301.Idx_Target];
    }
    /**
     * 根据key获取条件目标
     * @param key 配置表key
     */
    public static getTargetByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_skin_301.Key, key);
        if (!data) {
            console.error(Config_skin_301.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_skin_301.Idx_Target];
    }

    /** 索引 激活道具
	 ** 激活使用的道具id */
    public static readonly Idx_Item: number = 7;
    /**
     * 根据对应表数据获取激活道具
	 ** 激活使用的道具id
     * @param data 对应表数据
     */
    public static getItem(data: any[]): string {
        return data[Config_skin_301.Idx_Item];
    }
    /**
     * 根据key获取激活道具
	 ** 激活使用的道具id
     * @param key 配置表key
     */
    public static getItemByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_skin_301.Key, key);
        if (!data) {
            console.error(Config_skin_301.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_skin_301.Idx_Item];
    }

    /** 索引 是否不出现在关卡 */
    public static readonly Idx_ForLevel: number = 8;
    /**
     * 根据对应表数据获取是否不出现在关卡
     * @param data 对应表数据
     */
    public static getForLevel(data: any[]): number {
        return data[Config_skin_301.Idx_ForLevel];
    }
    /**
     * 根据key获取是否不出现在关卡
     * @param key 配置表key
     */
    public static getForLevelByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_skin_301.Key, key);
        if (!data) {
            console.error(Config_skin_301.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_skin_301.Idx_ForLevel];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**头像*/
    public get icon(): string {
        return this._data[Config_skin_301.Idx_Icon];
    }
	/**皮肤材质名*/
    public get mat(): string {
        return this._data[Config_skin_301.Idx_Mat];
    }
	/**光环色值*/
    public get halo(): string {
        return this._data[Config_skin_301.Idx_Halo];
    }
	/**名字<已抽字>*/
    public get name(): string {
        return LanguageMgr.getLngTxt(this._data[Config_skin_301.Idx_Name]);
    }
	/**
     * 名字<已抽字>
     * @param args 替换参数
     */
    public getName(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_skin_301.Idx_Name], ...args);
    }
	/**排序*/
    public get sort(): number {
        return this._data[Config_skin_301.Idx_Sort];
    }
	/**激活类型
	 ** 和激活道具2选1
	 ** 类型1：通关关卡10
	 ** 类型2：看广告获得*/
    public get condi(): number {
        return this._data[Config_skin_301.Idx_Condi];
    }
	/**条件目标*/
    public get target(): number {
        return this._data[Config_skin_301.Idx_Target];
    }
	/**激活道具
	 ** 激活使用的道具id*/
    public get item(): string {
        return this._data[Config_skin_301.Idx_Item];
    }
	/**是否不出现在关卡*/
    public get forLevel(): number {
        return this._data[Config_skin_301.Idx_ForLevel];
    }
    //#endregion

}
