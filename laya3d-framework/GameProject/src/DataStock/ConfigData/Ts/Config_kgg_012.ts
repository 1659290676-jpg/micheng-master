//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**G_112_看广告总表.xlsx*/
export default class Config_kgg_012 {

    public static readonly Key = "kgg_012";
    /**
     * 获取对应key数据的 Config_kgg_012 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_kgg_012 {
        return ConfigData.getKgg_012(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 微信小游戏1广告id */
    public static readonly Idx_Aid1: number = 0;
    /**
     * 根据对应表数据获取微信小游戏1广告id
     * @param data 对应表数据
     */
    public static getAid1(data: any[]): string {
        return data[Config_kgg_012.Idx_Aid1];
    }
    /**
     * 根据key获取微信小游戏1广告id
     * @param key 配置表key
     */
    public static getAid1ByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_kgg_012.Key, key);
        if (!data) {
            console.error(Config_kgg_012.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_kgg_012.Idx_Aid1];
    }

    /** 索引 抖音小游戏1广告id */
    public static readonly Idx_Aid2: number = 1;
    /**
     * 根据对应表数据获取抖音小游戏1广告id
     * @param data 对应表数据
     */
    public static getAid2(data: any[]): string {
        return data[Config_kgg_012.Idx_Aid2];
    }
    /**
     * 根据key获取抖音小游戏1广告id
     * @param key 配置表key
     */
    public static getAid2ByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_kgg_012.Key, key);
        if (!data) {
            console.error(Config_kgg_012.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_kgg_012.Idx_Aid2];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**微信小游戏1广告id*/
    public get aid1(): string {
        return this._data[Config_kgg_012.Idx_Aid1];
    }
	/**抖音小游戏1广告id*/
    public get aid2(): string {
        return this._data[Config_kgg_012.Idx_Aid2];
    }
    //#endregion

}
