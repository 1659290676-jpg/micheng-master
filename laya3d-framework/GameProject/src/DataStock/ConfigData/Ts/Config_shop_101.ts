//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**S_101_商店.xlsx*/
export default class Config_shop_101 {

    public static readonly Key = "shop_101";
    /**
     * 获取对应key数据的 Config_shop_101 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_shop_101 {
        return ConfigData.getShop_101(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 商会类型
	 ** 对应商会重置表内的类型：
	 ** 1.特权卡
	 ** 2.金币商店
	 ** 3.广告礼包
	 ** 4.道具礼包
	 ** 5.关卡道具
	 **  */
    public static readonly Idx_Type: number = 0;
    /**
     * 根据对应表数据获取商会类型
	 ** 对应商会重置表内的类型：
	 ** 1.特权卡
	 ** 2.金币商店
	 ** 3.广告礼包
	 ** 4.道具礼包
	 ** 5.关卡道具
	 ** 
     * @param data 对应表数据
     */
    public static getType(data: any[]): number {
        return data[Config_shop_101.Idx_Type];
    }
    /**
     * 根据key获取商会类型
	 ** 对应商会重置表内的类型：
	 ** 1.特权卡
	 ** 2.金币商店
	 ** 3.广告礼包
	 ** 4.道具礼包
	 ** 5.关卡道具
	 ** 
     * @param key 配置表key
     */
    public static getTypeByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_shop_101.Key, key);
        if (!data) {
            console.error(Config_shop_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_shop_101.Idx_Type];
    }

    /** 索引 排序 */
    public static readonly Idx_Sort: number = 1;
    /**
     * 根据对应表数据获取排序
     * @param data 对应表数据
     */
    public static getSort(data: any[]): number {
        return data[Config_shop_101.Idx_Sort];
    }
    /**
     * 根据key获取排序
     * @param key 配置表key
     */
    public static getSortByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_shop_101.Key, key);
        if (!data) {
            console.error(Config_shop_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_shop_101.Idx_Sort];
    }

    /** 索引 商城名字<已抽字> */
    public static readonly Idx_Name: number = 2;
    /**
     * 根据对应表数据获取商城名字<已抽字>
     * @param data 对应表数据
     * @param args 替换参数
     */
    public static getName(data: any[], ...args: any[]): string {
        return LanguageMgr.getLngTxt(data[Config_shop_101.Idx_Name], ...args);
    }
    /**
     * 根据key获取商城名字<已抽字>
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getNameByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_shop_101.Key, key);
        if (!data) {
            console.error(Config_shop_101.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_shop_101.Idx_Name], ...args);
    }

    /** 索引 出售道具
	 ** 道具类型,道具ID，道具数量 */
    public static readonly Idx_Item: number = 3;
    /**
     * 根据对应表数据获取出售道具
	 ** 道具类型,道具ID，道具数量
     * @param data 对应表数据
     */
    public static getItem(data: any[]): string {
        return data[Config_shop_101.Idx_Item];
    }
    /**
     * 根据key获取出售道具
	 ** 道具类型,道具ID，道具数量
     * @param key 配置表key
     */
    public static getItemByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_shop_101.Key, key);
        if (!data) {
            console.error(Config_shop_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_shop_101.Idx_Item];
    }

    /** 索引 解锁关卡 */
    public static readonly Idx_Unlock: number = 4;
    /**
     * 根据对应表数据获取解锁关卡
     * @param data 对应表数据
     */
    public static getUnlock(data: any[]): number {
        return data[Config_shop_101.Idx_Unlock];
    }
    /**
     * 根据key获取解锁关卡
     * @param key 配置表key
     */
    public static getUnlockByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_shop_101.Key, key);
        if (!data) {
            console.error(Config_shop_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_shop_101.Idx_Unlock];
    }

    /** 索引 金币价格 */
    public static readonly Idx_GoldPrice: number = 5;
    /**
     * 根据对应表数据获取金币价格
     * @param data 对应表数据
     */
    public static getGoldPrice(data: any[]): string {
        return data[Config_shop_101.Idx_GoldPrice];
    }
    /**
     * 根据key获取金币价格
     * @param key 配置表key
     */
    public static getGoldPriceByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_shop_101.Key, key);
        if (!data) {
            console.error(Config_shop_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_shop_101.Idx_GoldPrice];
    }

    /** 索引 充值ID */
    public static readonly Idx_RechargeId: number = 6;
    /**
     * 根据对应表数据获取充值ID
     * @param data 对应表数据
     */
    public static getRechargeId(data: any[]): number {
        return data[Config_shop_101.Idx_RechargeId];
    }
    /**
     * 根据key获取充值ID
     * @param key 配置表key
     */
    public static getRechargeIdByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_shop_101.Key, key);
        if (!data) {
            console.error(Config_shop_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_shop_101.Idx_RechargeId];
    }

    /** 索引 是否看广告获得 */
    public static readonly Idx_FromAds: number = 7;
    /**
     * 根据对应表数据获取是否看广告获得
     * @param data 对应表数据
     */
    public static getFromAds(data: any[]): number {
        return data[Config_shop_101.Idx_FromAds];
    }
    /**
     * 根据key获取是否看广告获得
     * @param key 配置表key
     */
    public static getFromAdsByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_shop_101.Key, key);
        if (!data) {
            console.error(Config_shop_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_shop_101.Idx_FromAds];
    }

    /** 索引 功能id */
    public static readonly Idx_FunctionId: number = 8;
    /**
     * 根据对应表数据获取功能id
     * @param data 对应表数据
     */
    public static getFunctionId(data: any[]): number {
        return data[Config_shop_101.Idx_FunctionId];
    }
    /**
     * 根据key获取功能id
     * @param key 配置表key
     */
    public static getFunctionIdByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_shop_101.Key, key);
        if (!data) {
            console.error(Config_shop_101.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_shop_101.Idx_FunctionId];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**商会类型
	 ** 对应商会重置表内的类型：
	 ** 1.特权卡
	 ** 2.金币商店
	 ** 3.广告礼包
	 ** 4.道具礼包
	 ** 5.关卡道具
	 ** */
    public get type(): number {
        return this._data[Config_shop_101.Idx_Type];
    }
	/**排序*/
    public get sort(): number {
        return this._data[Config_shop_101.Idx_Sort];
    }
	/**商城名字<已抽字>*/
    public get name(): string {
        return LanguageMgr.getLngTxt(this._data[Config_shop_101.Idx_Name]);
    }
	/**
     * 商城名字<已抽字>
     * @param args 替换参数
     */
    public getName(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_shop_101.Idx_Name], ...args);
    }
	/**出售道具
	 ** 道具类型,道具ID，道具数量*/
    public get item(): string {
        return this._data[Config_shop_101.Idx_Item];
    }
	/**解锁关卡*/
    public get unlock(): number {
        return this._data[Config_shop_101.Idx_Unlock];
    }
	/**金币价格*/
    public get goldPrice(): string {
        return this._data[Config_shop_101.Idx_GoldPrice];
    }
	/**充值ID*/
    public get rechargeId(): number {
        return this._data[Config_shop_101.Idx_RechargeId];
    }
	/**是否看广告获得*/
    public get fromAds(): number {
        return this._data[Config_shop_101.Idx_FromAds];
    }
	/**功能id*/
    public get functionId(): number {
        return this._data[Config_shop_101.Idx_FunctionId];
    }
    //#endregion

}
