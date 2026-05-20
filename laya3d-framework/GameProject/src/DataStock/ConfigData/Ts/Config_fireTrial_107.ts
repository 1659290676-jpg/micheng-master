//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**H_107_火焰试炼连胜表.xlsx*/
export default class Config_fireTrial_107 {

    public static readonly Key = "fireTrial_107";
    /**
     * 获取对应key数据的 Config_fireTrial_107 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_fireTrial_107 {
        return ConfigData.getFireTrial_107(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 最小人数,最大人数 */
    public static readonly Idx_Human: number = 0;
    /**
     * 根据对应表数据获取最小人数,最大人数
     * @param data 对应表数据
     */
    public static getHuman(data: any[]): string {
        return data[Config_fireTrial_107.Idx_Human];
    }
    /**
     * 根据key获取最小人数,最大人数
     * @param key 配置表key
     */
    public static getHumanByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_fireTrial_107.Key, key);
        if (!data) {
            console.error(Config_fireTrial_107.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_fireTrial_107.Idx_Human];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**最小人数,最大人数*/
    public get human(): string {
        return this._data[Config_fireTrial_107.Idx_Human];
    }
    //#endregion

}
