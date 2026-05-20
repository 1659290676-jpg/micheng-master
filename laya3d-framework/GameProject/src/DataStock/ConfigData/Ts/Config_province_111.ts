//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**I_111_IP属地.xlsx*/
export default class Config_province_111 {

    public static readonly Key = "province_111";
    /**
     * 获取对应key数据的 Config_province_111 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_province_111 {
        return ConfigData.getProvince_111(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 省份 */
    public static readonly Idx_Pid: number = 0;
    /**
     * 根据对应表数据获取省份
     * @param data 对应表数据
     */
    public static getPid(data: any[]): number {
        return data[Config_province_111.Idx_Pid];
    }
    /**
     * 根据key获取省份
     * @param key 配置表key
     */
    public static getPidByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_province_111.Key, key);
        if (!data) {
            console.error(Config_province_111.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_province_111.Idx_Pid];
    }

    /** 索引 省名<已抽字> */
    public static readonly Idx_Province: number = 1;
    /**
     * 根据对应表数据获取省名<已抽字>
     * @param data 对应表数据
     * @param args 替换参数
     */
    public static getProvince(data: any[], ...args: any[]): string {
        return LanguageMgr.getLngTxt(data[Config_province_111.Idx_Province], ...args);
    }
    /**
     * 根据key获取省名<已抽字>
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getProvinceByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_province_111.Key, key);
        if (!data) {
            console.error(Config_province_111.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_province_111.Idx_Province], ...args);
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**省份*/
    public get pid(): number {
        return this._data[Config_province_111.Idx_Pid];
    }
	/**省名<已抽字>*/
    public get province(): string {
        return LanguageMgr.getLngTxt(this._data[Config_province_111.Idx_Province]);
    }
	/**
     * 省名<已抽字>
     * @param args 替换参数
     */
    public getProvince(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_province_111.Idx_Province], ...args);
    }
    //#endregion

}
