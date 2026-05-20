//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**G_105_关卡技能.xlsx*/
export default class Config_skill_105 {

    public static readonly Key = "skill_105";
    /**
     * 获取对应key数据的 Config_skill_105 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_skill_105 {
        return ConfigData.getSkill_105(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 名字<已抽字> */
    public static readonly Idx_N: number = 0;
    /**
     * 根据对应表数据获取名字<已抽字>
     * @param data 对应表数据
     * @param args 替换参数
     */
    public static getN(data: any[], ...args: any[]): string {
        return LanguageMgr.getLngTxt(data[Config_skill_105.Idx_N], ...args);
    }
    /**
     * 根据key获取名字<已抽字>
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getNByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_skill_105.Key, key);
        if (!data) {
            console.error(Config_skill_105.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_skill_105.Idx_N], ...args);
    }

    /** 索引 消耗道具id */
    public static readonly Idx_Item: number = 1;
    /**
     * 根据对应表数据获取消耗道具id
     * @param data 对应表数据
     */
    public static getItem(data: any[]): number {
        return data[Config_skill_105.Idx_Item];
    }
    /**
     * 根据key获取消耗道具id
     * @param key 配置表key
     */
    public static getItemByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_skill_105.Key, key);
        if (!data) {
            console.error(Config_skill_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_skill_105.Idx_Item];
    }

    /** 索引 对应购买的商店id */
    public static readonly Idx_ShopId: number = 2;
    /**
     * 根据对应表数据获取对应购买的商店id
     * @param data 对应表数据
     */
    public static getShopId(data: any[]): number {
        return data[Config_skill_105.Idx_ShopId];
    }
    /**
     * 根据key获取对应购买的商店id
     * @param key 配置表key
     */
    public static getShopIdByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_skill_105.Key, key);
        if (!data) {
            console.error(Config_skill_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_skill_105.Idx_ShopId];
    }

    /** 索引 持续时间
	 ** 作者:
	 ** 毫秒 */
    public static readonly Idx_Time: number = 3;
    /**
     * 根据对应表数据获取持续时间
	 ** 作者:
	 ** 毫秒
     * @param data 对应表数据
     */
    public static getTime(data: any[]): number {
        return data[Config_skill_105.Idx_Time];
    }
    /**
     * 根据key获取持续时间
	 ** 作者:
	 ** 毫秒
     * @param key 配置表key
     */
    public static getTimeByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_skill_105.Key, key);
        if (!data) {
            console.error(Config_skill_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_skill_105.Idx_Time];
    }

    /** 索引 效果 */
    public static readonly Idx_Xg: number = 4;
    /**
     * 根据对应表数据获取效果
     * @param data 对应表数据
     */
    public static getXg(data: any[]): number {
        return data[Config_skill_105.Idx_Xg];
    }
    /**
     * 根据key获取效果
     * @param key 配置表key
     */
    public static getXgByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_skill_105.Key, key);
        if (!data) {
            console.error(Config_skill_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_skill_105.Idx_Xg];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**名字<已抽字>*/
    public get n(): string {
        return LanguageMgr.getLngTxt(this._data[Config_skill_105.Idx_N]);
    }
	/**
     * 名字<已抽字>
     * @param args 替换参数
     */
    public getN(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_skill_105.Idx_N], ...args);
    }
	/**消耗道具id*/
    public get item(): number {
        return this._data[Config_skill_105.Idx_Item];
    }
	/**对应购买的商店id*/
    public get shopId(): number {
        return this._data[Config_skill_105.Idx_ShopId];
    }
	/**持续时间
	 ** 作者:
	 ** 毫秒*/
    public get time(): number {
        return this._data[Config_skill_105.Idx_Time];
    }
	/**效果*/
    public get xg(): number {
        return this._data[Config_skill_105.Idx_Xg];
    }
    //#endregion

}
