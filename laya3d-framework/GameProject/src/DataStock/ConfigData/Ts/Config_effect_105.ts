//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**T_105_特效配置.xlsx*/
export default class Config_effect_105 {

    public static readonly Key = "effect_105";
    /**
     * 获取对应key数据的 Config_effect_105 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_effect_105 {
        return ConfigData.getEffect_105(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 播放时长 */
    public static readonly Idx_Time: number = 0;
    /**
     * 根据对应表数据获取播放时长
     * @param data 对应表数据
     */
    public static getTime(data: any[]): number {
        return data[Config_effect_105.Idx_Time];
    }
    /**
     * 根据key获取播放时长
     * @param key 配置表key
     */
    public static getTimeByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_effect_105.Key, key);
        if (!data) {
            console.error(Config_effect_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_effect_105.Idx_Time];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**播放时长*/
    public get time(): number {
        return this._data[Config_effect_105.Idx_Time];
    }
    //#endregion

}
