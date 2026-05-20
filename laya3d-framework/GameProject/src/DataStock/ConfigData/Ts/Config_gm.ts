//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**G_gm表.xlsx*/
export default class Config_gm {

    public static readonly Key = "gm";
    /**
     * 获取对应key数据的 Config_gm 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_gm {
        return ConfigData.getGm(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 样式
	 ** 作者:
	 ** 1:物品链接库（自定义） 
	 ** 2.无连接 有输入框 
	 ** 3：没有输入框，不显示文本
	 ** 4：没有输入框，显示文本 */
    public static readonly Idx_Ys: number = 0;
    /**
     * 根据对应表数据获取样式
	 ** 作者:
	 ** 1:物品链接库（自定义） 
	 ** 2.无连接 有输入框 
	 ** 3：没有输入框，不显示文本
	 ** 4：没有输入框，显示文本
     * @param data 对应表数据
     */
    public static getYs(data: any[]): number {
        return data[Config_gm.Idx_Ys];
    }
    /**
     * 根据key获取样式
	 ** 作者:
	 ** 1:物品链接库（自定义） 
	 ** 2.无连接 有输入框 
	 ** 3：没有输入框，不显示文本
	 ** 4：没有输入框，显示文本
     * @param key 配置表key
     */
    public static getYsByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_gm.Key, key);
        if (!data) {
            console.error(Config_gm.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_gm.Idx_Ys];
    }

    /** 索引 大类型 */
    public static readonly Idx_Dlx: number = 1;
    /**
     * 根据对应表数据获取大类型
     * @param data 对应表数据
     */
    public static getDlx(data: any[]): number {
        return data[Config_gm.Idx_Dlx];
    }
    /**
     * 根据key获取大类型
     * @param key 配置表key
     */
    public static getDlxByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_gm.Key, key);
        if (!data) {
            console.error(Config_gm.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_gm.Idx_Dlx];
    }

    /** 索引 小类型 */
    public static readonly Idx_Xlx: number = 2;
    /**
     * 根据对应表数据获取小类型
     * @param data 对应表数据
     */
    public static getXlx(data: any[]): number {
        return data[Config_gm.Idx_Xlx];
    }
    /**
     * 根据key获取小类型
     * @param key 配置表key
     */
    public static getXlxByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_gm.Key, key);
        if (!data) {
            console.error(Config_gm.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_gm.Idx_Xlx];
    }

    /** 索引 标题描述
	 ** 作者:
	 ** 最多2个(,)逗号分开 */
    public static readonly Idx_Bt: number = 3;
    /**
     * 根据对应表数据获取标题描述
	 ** 作者:
	 ** 最多2个(,)逗号分开
     * @param data 对应表数据
     */
    public static getBt(data: any[]): string {
        return data[Config_gm.Idx_Bt];
    }
    /**
     * 根据key获取标题描述
	 ** 作者:
	 ** 最多2个(,)逗号分开
     * @param key 配置表key
     */
    public static getBtByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_gm.Key, key);
        if (!data) {
            console.error(Config_gm.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_gm.Idx_Bt];
    }

    /** 索引 对应的初始值
	 ** 作者:
	 ** 最多2个，逗号分开 */
    public static readonly Idx_T: number = 4;
    /**
     * 根据对应表数据获取对应的初始值
	 ** 作者:
	 ** 最多2个，逗号分开
     * @param data 对应表数据
     */
    public static getT(data: any[]): string {
        return data[Config_gm.Idx_T];
    }
    /**
     * 根据key获取对应的初始值
	 ** 作者:
	 ** 最多2个，逗号分开
     * @param key 配置表key
     */
    public static getTByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_gm.Key, key);
        if (!data) {
            console.error(Config_gm.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_gm.Idx_T];
    }

    /** 索引 链接下拉框 */
    public static readonly Idx_Lj: number = 5;
    /**
     * 根据对应表数据获取链接下拉框
     * @param data 对应表数据
     */
    public static getLj(data: any[]): string {
        return data[Config_gm.Idx_Lj];
    }
    /**
     * 根据key获取链接下拉框
     * @param key 配置表key
     */
    public static getLjByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_gm.Key, key);
        if (!data) {
            console.error(Config_gm.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_gm.Idx_Lj];
    }

    /** 索引 链接下拉框2 */
    public static readonly Idx_Lj2: number = 6;
    /**
     * 根据对应表数据获取链接下拉框2
     * @param data 对应表数据
     */
    public static getLj2(data: any[]): string {
        return data[Config_gm.Idx_Lj2];
    }
    /**
     * 根据key获取链接下拉框2
     * @param key 配置表key
     */
    public static getLj2ByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_gm.Key, key);
        if (!data) {
            console.error(Config_gm.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_gm.Idx_Lj2];
    }

    /** 索引 查询时间用到 */
    public static readonly Idx_Tc: number = 7;
    /**
     * 根据对应表数据获取查询时间用到
     * @param data 对应表数据
     */
    public static getTc(data: any[]): number {
        return data[Config_gm.Idx_Tc];
    }
    /**
     * 根据key获取查询时间用到
     * @param key 配置表key
     */
    public static getTcByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_gm.Key, key);
        if (!data) {
            console.error(Config_gm.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_gm.Idx_Tc];
    }

    /** 索引 特殊处理的函数 */
    public static readonly Idx_Hs: number = 8;
    /**
     * 根据对应表数据获取特殊处理的函数
     * @param data 对应表数据
     */
    public static getHs(data: any[]): string {
        return data[Config_gm.Idx_Hs];
    }
    /**
     * 根据key获取特殊处理的函数
     * @param key 配置表key
     */
    public static getHsByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_gm.Key, key);
        if (!data) {
            console.error(Config_gm.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_gm.Idx_Hs];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**样式
	 ** 作者:
	 ** 1:物品链接库（自定义） 
	 ** 2.无连接 有输入框 
	 ** 3：没有输入框，不显示文本
	 ** 4：没有输入框，显示文本*/
    public get ys(): number {
        return this._data[Config_gm.Idx_Ys];
    }
	/**大类型*/
    public get dlx(): number {
        return this._data[Config_gm.Idx_Dlx];
    }
	/**小类型*/
    public get xlx(): number {
        return this._data[Config_gm.Idx_Xlx];
    }
	/**标题描述
	 ** 作者:
	 ** 最多2个(,)逗号分开*/
    public get bt(): string {
        return this._data[Config_gm.Idx_Bt];
    }
	/**对应的初始值
	 ** 作者:
	 ** 最多2个，逗号分开*/
    public get t(): string {
        return this._data[Config_gm.Idx_T];
    }
	/**链接下拉框*/
    public get lj(): string {
        return this._data[Config_gm.Idx_Lj];
    }
	/**链接下拉框2*/
    public get lj2(): string {
        return this._data[Config_gm.Idx_Lj2];
    }
	/**查询时间用到*/
    public get tc(): number {
        return this._data[Config_gm.Idx_Tc];
    }
	/**特殊处理的函数*/
    public get hs(): string {
        return this._data[Config_gm.Idx_Hs];
    }
    //#endregion

}
