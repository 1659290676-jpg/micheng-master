//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**G_gmLink_下拉列表.xlsx*/
export default class Config_gm_link {

    public static readonly Key = "gm_link";
    /**
     * 获取对应key数据的 Config_gm_link 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_gm_link {
        return ConfigData.getGm_link(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 链接其他表内容 */
    public static readonly Idx_LinkCfg: number = 0;
    /**
     * 根据对应表数据获取链接其他表内容
     * @param data 对应表数据
     */
    public static getLinkCfg(data: any[]): any {
        return data[Config_gm_link.Idx_LinkCfg];
    }
    /**
     * 根据key获取链接其他表内容
     * @param key 配置表key
     */
    public static getLinkCfgByKey(key: number | string): any {
        let data = ConfigData.getCfgData(Config_gm_link.Key, key);
        if (!data) {
            console.error(Config_gm_link.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_gm_link.Idx_LinkCfg];
    }

    /** 索引 链接内容 */
    public static readonly Idx_List: number = 1;
    /**
     * 根据对应表数据获取链接内容
     * @param data 对应表数据
     */
    public static getList(data: any[]): any {
        return data[Config_gm_link.Idx_List];
    }
    /**
     * 根据key获取链接内容
     * @param key 配置表key
     */
    public static getListByKey(key: number | string): any {
        let data = ConfigData.getCfgData(Config_gm_link.Key, key);
        if (!data) {
            console.error(Config_gm_link.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_gm_link.Idx_List];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**链接其他表内容*/
    public get linkCfg(): any {
        return this._data[Config_gm_link.Idx_LinkCfg];
    }
	/**链接内容*/
    public get list(): any {
        return this._data[Config_gm_link.Idx_List];
    }
    //#endregion

}
