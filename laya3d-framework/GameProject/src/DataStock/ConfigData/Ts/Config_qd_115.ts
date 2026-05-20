//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**Q_115_渠道表.xlsx*/
export default class Config_qd_115 {

    public static readonly Key = "qd_115";
    /**
     * 获取对应key数据的 Config_qd_115 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_qd_115 {
        return ConfigData.getQd_115(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 游戏圈链接 */
    public static readonly Idx_Link: number = 0;
    /**
     * 根据对应表数据获取游戏圈链接
     * @param data 对应表数据
     */
    public static getLink(data: any[]): string {
        return data[Config_qd_115.Idx_Link];
    }
    /**
     * 根据key获取游戏圈链接
     * @param key 配置表key
     */
    public static getLinkByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_qd_115.Key, key);
        if (!data) {
            console.error(Config_qd_115.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_qd_115.Idx_Link];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**游戏圈链接*/
    public get link(): string {
        return this._data[Config_qd_115.Idx_Link];
    }
    //#endregion

}
