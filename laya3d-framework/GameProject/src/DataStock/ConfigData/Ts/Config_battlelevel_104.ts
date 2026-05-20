//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**Z_104_战令等级.xlsx*/
export default class Config_battlelevel_104 {

    public static readonly Key = "battlelevel_104";
    /**
     * 获取对应key数据的 Config_battlelevel_104 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_battlelevel_104 {
        return ConfigData.getBattlelevel_104(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 升到下一级所需经验 */
    public static readonly Idx_Exp: number = 0;
    /**
     * 根据对应表数据获取升到下一级所需经验
     * @param data 对应表数据
     */
    public static getExp(data: any[]): number {
        return data[Config_battlelevel_104.Idx_Exp];
    }
    /**
     * 根据key获取升到下一级所需经验
     * @param key 配置表key
     */
    public static getExpByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_battlelevel_104.Key, key);
        if (!data) {
            console.error(Config_battlelevel_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_battlelevel_104.Idx_Exp];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**升到下一级所需经验*/
    public get exp(): number {
        return this._data[Config_battlelevel_104.Idx_Exp];
    }
    //#endregion

}
