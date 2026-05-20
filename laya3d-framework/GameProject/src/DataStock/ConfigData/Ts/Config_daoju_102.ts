//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**D_102_道具系统.xlsx*/
export default class Config_daoju_102 {

    public static readonly Key = "daoju_102";
    /**
     * 获取对应key数据的 Config_daoju_102 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_daoju_102 {
        return ConfigData.getDaoju_102(key);
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
        return LanguageMgr.getLngTxt(data[Config_daoju_102.Idx_N], ...args);
    }
    /**
     * 根据key获取名字<已抽字>
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getNByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_daoju_102.Key, key);
        if (!data) {
            console.error(Config_daoju_102.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_daoju_102.Idx_N], ...args);
    }

    /** 索引 icon */
    public static readonly Idx_Ic: number = 1;
    /**
     * 根据对应表数据获取icon
     * @param data 对应表数据
     */
    public static getIc(data: any[]): number {
        return data[Config_daoju_102.Idx_Ic];
    }
    /**
     * 根据key获取icon
     * @param key 配置表key
     */
    public static getIcByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_daoju_102.Key, key);
        if (!data) {
            console.error(Config_daoju_102.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_daoju_102.Idx_Ic];
    }

    /** 索引 堆叠上限
	 ** admin:
	 ** 不填没有上限
	 ** 填了多少就多少 */
    public static readonly Idx_Djsx: number = 2;
    /**
     * 根据对应表数据获取堆叠上限
	 ** admin:
	 ** 不填没有上限
	 ** 填了多少就多少
     * @param data 对应表数据
     */
    public static getDjsx(data: any[]): number {
        return data[Config_daoju_102.Idx_Djsx];
    }
    /**
     * 根据key获取堆叠上限
	 ** admin:
	 ** 不填没有上限
	 ** 填了多少就多少
     * @param key 配置表key
     */
    public static getDjsxByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_daoju_102.Key, key);
        if (!data) {
            console.error(Config_daoju_102.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_daoju_102.Idx_Djsx];
    }

    /** 索引 品质
	 ** 品质类型为
	 ** 1.白
	 ** 2.绿
	 ** 3.蓝
	 ** 4.紫
	 ** 5.橙
	 ** 6.红
	 ** 7.金
	 ** 8.粉
	 **  */
    public static readonly Idx_P: number = 3;
    /**
     * 根据对应表数据获取品质
	 ** 品质类型为
	 ** 1.白
	 ** 2.绿
	 ** 3.蓝
	 ** 4.紫
	 ** 5.橙
	 ** 6.红
	 ** 7.金
	 ** 8.粉
	 ** 
     * @param data 对应表数据
     */
    public static getP(data: any[]): number {
        return data[Config_daoju_102.Idx_P];
    }
    /**
     * 根据key获取品质
	 ** 品质类型为
	 ** 1.白
	 ** 2.绿
	 ** 3.蓝
	 ** 4.紫
	 ** 5.橙
	 ** 6.红
	 ** 7.金
	 ** 8.粉
	 ** 
     * @param key 配置表key
     */
    public static getPByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_daoju_102.Key, key);
        if (!data) {
            console.error(Config_daoju_102.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_daoju_102.Idx_P];
    }

    /** 索引 道具类型
	 ** 1：材料
	 ** 2：随机礼包
	 ** 3：自选礼包
	 ** 4：无限体力
	 ** 5：上限体力
	 ** 6：头像皮肤 */
    public static readonly Idx_L: number = 4;
    /**
     * 根据对应表数据获取道具类型
	 ** 1：材料
	 ** 2：随机礼包
	 ** 3：自选礼包
	 ** 4：无限体力
	 ** 5：上限体力
	 ** 6：头像皮肤
     * @param data 对应表数据
     */
    public static getL(data: any[]): number {
        return data[Config_daoju_102.Idx_L];
    }
    /**
     * 根据key获取道具类型
	 ** 1：材料
	 ** 2：随机礼包
	 ** 3：自选礼包
	 ** 4：无限体力
	 ** 5：上限体力
	 ** 6：头像皮肤
     * @param key 配置表key
     */
    public static getLByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_daoju_102.Key, key);
        if (!data) {
            console.error(Config_daoju_102.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_daoju_102.Idx_L];
    }

    /** 索引 可否快速购买
	 ** 1为快速购买商品类型，不填则不是 */
    public static readonly Idx_Kg: number = 5;
    /**
     * 根据对应表数据获取可否快速购买
	 ** 1为快速购买商品类型，不填则不是
     * @param data 对应表数据
     */
    public static getKg(data: any[]): number {
        return data[Config_daoju_102.Idx_Kg];
    }
    /**
     * 根据key获取可否快速购买
	 ** 1为快速购买商品类型，不填则不是
     * @param key 配置表key
     */
    public static getKgByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_daoju_102.Key, key);
        if (!data) {
            console.error(Config_daoju_102.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_daoju_102.Idx_Kg];
    }

    /** 索引 前端使用参数 */
    public static readonly Idx_Js: number = 6;
    /**
     * 根据对应表数据获取前端使用参数
     * @param data 对应表数据
     */
    public static getJs(data: any[]): any {
        return data[Config_daoju_102.Idx_Js];
    }
    /**
     * 根据key获取前端使用参数
     * @param key 配置表key
     */
    public static getJsByKey(key: number | string): any {
        let data = ConfigData.getCfgData(Config_daoju_102.Key, key);
        if (!data) {
            console.error(Config_daoju_102.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_daoju_102.Idx_Js];
    }

    /** 索引 操作方式
	 ** 1手动使用，显示使用按钮
	 ** 2获得自动使用
	 **  */
    public static readonly Idx_Cz: number = 7;
    /**
     * 根据对应表数据获取操作方式
	 ** 1手动使用，显示使用按钮
	 ** 2获得自动使用
	 ** 
     * @param data 对应表数据
     */
    public static getCz(data: any[]): number {
        return data[Config_daoju_102.Idx_Cz];
    }
    /**
     * 根据key获取操作方式
	 ** 1手动使用，显示使用按钮
	 ** 2获得自动使用
	 ** 
     * @param key 配置表key
     */
    public static getCzByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_daoju_102.Key, key);
        if (!data) {
            console.error(Config_daoju_102.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_daoju_102.Idx_Cz];
    }

    /** 索引 物品描述<已抽字> */
    public static readonly Idx_Ms: number = 8;
    /**
     * 根据对应表数据获取物品描述<已抽字>
     * @param data 对应表数据
     * @param args 替换参数
     */
    public static getMs(data: any[], ...args: any[]): string {
        return LanguageMgr.getLngTxt(data[Config_daoju_102.Idx_Ms], ...args);
    }
    /**
     * 根据key获取物品描述<已抽字>
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getMsByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_daoju_102.Key, key);
        if (!data) {
            console.error(Config_daoju_102.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_daoju_102.Idx_Ms], ...args);
    }

    /** 索引 获取途径
	 ** 配置跳转表id
	 **  */
    public static readonly Idx_Tj: number = 9;
    /**
     * 根据对应表数据获取获取途径
	 ** 配置跳转表id
	 ** 
     * @param data 对应表数据
     */
    public static getTj(data: any[]): number[] {
        return data[Config_daoju_102.Idx_Tj];
    }
    /**
     * 根据key获取获取途径
	 ** 配置跳转表id
	 ** 
     * @param key 配置表key
     */
    public static getTjByKey(key: number | string): number[] {
        let data = ConfigData.getCfgData(Config_daoju_102.Key, key);
        if (!data) {
            console.error(Config_daoju_102.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_daoju_102.Idx_Tj];
    }

    /** 索引 外观展示
	 ** 1 伙伴皮肤
	 ** 后面加逗号为缩放比
	 ** 系统ID类型，模型id，缩放比 */
    public static readonly Idx_Wgzs: number = 10;
    /**
     * 根据对应表数据获取外观展示
	 ** 1 伙伴皮肤
	 ** 后面加逗号为缩放比
	 ** 系统ID类型，模型id，缩放比
     * @param data 对应表数据
     */
    public static getWgzs(data: any[]): string {
        return data[Config_daoju_102.Idx_Wgzs];
    }
    /**
     * 根据key获取外观展示
	 ** 1 伙伴皮肤
	 ** 后面加逗号为缩放比
	 ** 系统ID类型，模型id，缩放比
     * @param key 配置表key
     */
    public static getWgzsByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_daoju_102.Key, key);
        if (!data) {
            console.error(Config_daoju_102.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_daoju_102.Idx_Wgzs];
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
        return LanguageMgr.getLngTxt(this._data[Config_daoju_102.Idx_N]);
    }
	/**
     * 名字<已抽字>
     * @param args 替换参数
     */
    public getN(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_daoju_102.Idx_N], ...args);
    }
	/**icon*/
    public get ic(): number {
        return this._data[Config_daoju_102.Idx_Ic];
    }
	/**堆叠上限
	 ** admin:
	 ** 不填没有上限
	 ** 填了多少就多少*/
    public get djsx(): number {
        return this._data[Config_daoju_102.Idx_Djsx];
    }
	/**品质
	 ** 品质类型为
	 ** 1.白
	 ** 2.绿
	 ** 3.蓝
	 ** 4.紫
	 ** 5.橙
	 ** 6.红
	 ** 7.金
	 ** 8.粉
	 ** */
    public get p(): number {
        return this._data[Config_daoju_102.Idx_P];
    }
	/**道具类型
	 ** 1：材料
	 ** 2：随机礼包
	 ** 3：自选礼包
	 ** 4：无限体力
	 ** 5：上限体力
	 ** 6：头像皮肤*/
    public get l(): number {
        return this._data[Config_daoju_102.Idx_L];
    }
	/**可否快速购买
	 ** 1为快速购买商品类型，不填则不是*/
    public get kg(): number {
        return this._data[Config_daoju_102.Idx_Kg];
    }
	/**前端使用参数*/
    public get js(): any {
        return this._data[Config_daoju_102.Idx_Js];
    }
	/**操作方式
	 ** 1手动使用，显示使用按钮
	 ** 2获得自动使用
	 ** */
    public get cz(): number {
        return this._data[Config_daoju_102.Idx_Cz];
    }
	/**物品描述<已抽字>*/
    public get ms(): string {
        return LanguageMgr.getLngTxt(this._data[Config_daoju_102.Idx_Ms]);
    }
	/**
     * 物品描述<已抽字>
     * @param args 替换参数
     */
    public getMs(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_daoju_102.Idx_Ms], ...args);
    }
	/**获取途径
	 ** 配置跳转表id
	 ** */
    public get tj(): number[] {
        return this._data[Config_daoju_102.Idx_Tj];
    }
	/**外观展示
	 ** 1 伙伴皮肤
	 ** 后面加逗号为缩放比
	 ** 系统ID类型，模型id，缩放比*/
    public get wgzs(): string {
        return this._data[Config_daoju_102.Idx_Wgzs];
    }
    //#endregion

}
