//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**L_106_连胜排名奖励表.xlsx*/
export default class Config_streakRank_106 {

    public static readonly Key = "streakRank_106";
    /**
     * 获取对应key数据的 Config_streakRank_106 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_streakRank_106 {
        return ConfigData.getStreakRank_106(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 排名奖励 */
    public static readonly Idx_Reward: number = 0;
    /**
     * 根据对应表数据获取排名奖励
     * @param data 对应表数据
     */
    public static getReward(data: any[]): string {
        return data[Config_streakRank_106.Idx_Reward];
    }
    /**
     * 根据key获取排名奖励
     * @param key 配置表key
     */
    public static getRewardByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_streakRank_106.Key, key);
        if (!data) {
            console.error(Config_streakRank_106.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_streakRank_106.Idx_Reward];
    }

    /** 索引 积分范围 */
    public static readonly Idx_Point: number = 1;
    /**
     * 根据对应表数据获取积分范围
     * @param data 对应表数据
     */
    public static getPoint(data: any[]): string {
        return data[Config_streakRank_106.Idx_Point];
    }
    /**
     * 根据key获取积分范围
     * @param key 配置表key
     */
    public static getPointByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_streakRank_106.Key, key);
        if (!data) {
            console.error(Config_streakRank_106.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_streakRank_106.Idx_Point];
    }

    /** 索引 图标 */
    public static readonly Idx_Icon: number = 2;
    /**
     * 根据对应表数据获取图标
     * @param data 对应表数据
     */
    public static getIcon(data: any[]): string {
        return data[Config_streakRank_106.Idx_Icon];
    }
    /**
     * 根据key获取图标
     * @param key 配置表key
     */
    public static getIconByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_streakRank_106.Key, key);
        if (!data) {
            console.error(Config_streakRank_106.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_streakRank_106.Idx_Icon];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**排名奖励*/
    public get reward(): string {
        return this._data[Config_streakRank_106.Idx_Reward];
    }
	/**积分范围*/
    public get point(): string {
        return this._data[Config_streakRank_106.Idx_Point];
    }
	/**图标*/
    public get icon(): string {
        return this._data[Config_streakRank_106.Idx_Icon];
    }
    //#endregion

}
