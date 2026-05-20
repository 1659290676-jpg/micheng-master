//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**Z_104_战令购买表.xlsx*/
export default class Config_zlgm_104 {

    public static readonly Key = "zlgm_104";
    /**
     * 获取对应key数据的 Config_zlgm_104 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_zlgm_104 {
        return ConfigData.getZlgm_104(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 战令类型
	 ** 4：神兵寻宝战令
	 ** 5：绘本战令
	 ** 1107：精英战令
	 ** 1108：综合战令
	 ** 1109：飙升战令
	 ** 1111：奇境战令 */
    public static readonly Idx_Type: number = 0;
    /**
     * 根据对应表数据获取战令类型
	 ** 4：神兵寻宝战令
	 ** 5：绘本战令
	 ** 1107：精英战令
	 ** 1108：综合战令
	 ** 1109：飙升战令
	 ** 1111：奇境战令
     * @param data 对应表数据
     */
    public static getType(data: any[]): number {
        return data[Config_zlgm_104.Idx_Type];
    }
    /**
     * 根据key获取战令类型
	 ** 4：神兵寻宝战令
	 ** 5：绘本战令
	 ** 1107：精英战令
	 ** 1108：综合战令
	 ** 1109：飙升战令
	 ** 1111：奇境战令
     * @param key 配置表key
     */
    public static getTypeByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_zlgm_104.Key, key);
        if (!data) {
            console.error(Config_zlgm_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_zlgm_104.Idx_Type];
    }

    /** 索引 期数 */
    public static readonly Idx_Issue: number = 1;
    /**
     * 根据对应表数据获取期数
     * @param data 对应表数据
     */
    public static getIssue(data: any[]): number {
        return data[Config_zlgm_104.Idx_Issue];
    }
    /**
     * 根据key获取期数
     * @param key 配置表key
     */
    public static getIssueByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_zlgm_104.Key, key);
        if (!data) {
            console.error(Config_zlgm_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_zlgm_104.Idx_Issue];
    }

    /** 索引 充值id */
    public static readonly Idx_Chargeid: number = 2;
    /**
     * 根据对应表数据获取充值id
     * @param data 对应表数据
     */
    public static getChargeid(data: any[]): number {
        return data[Config_zlgm_104.Idx_Chargeid];
    }
    /**
     * 根据key获取充值id
     * @param key 配置表key
     */
    public static getChargeidByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_zlgm_104.Key, key);
        if (!data) {
            console.error(Config_zlgm_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_zlgm_104.Idx_Chargeid];
    }

    /** 索引 立即获取奖励 */
    public static readonly Idx_Reward: number = 3;
    /**
     * 根据对应表数据获取立即获取奖励
     * @param data 对应表数据
     */
    public static getReward(data: any[]): number[][] {
        return data[Config_zlgm_104.Idx_Reward];
    }
    /**
     * 根据key获取立即获取奖励
     * @param key 配置表key
     */
    public static getRewardByKey(key: number | string): number[][] {
        let data = ConfigData.getCfgData(Config_zlgm_104.Key, key);
        if (!data) {
            console.error(Config_zlgm_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_zlgm_104.Idx_Reward];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**战令类型
	 ** 4：神兵寻宝战令
	 ** 5：绘本战令
	 ** 1107：精英战令
	 ** 1108：综合战令
	 ** 1109：飙升战令
	 ** 1111：奇境战令*/
    public get type(): number {
        return this._data[Config_zlgm_104.Idx_Type];
    }
	/**期数*/
    public get issue(): number {
        return this._data[Config_zlgm_104.Idx_Issue];
    }
	/**充值id*/
    public get chargeid(): number {
        return this._data[Config_zlgm_104.Idx_Chargeid];
    }
	/**立即获取奖励*/
    public get reward(): number[][] {
        return this._data[Config_zlgm_104.Idx_Reward];
    }
    //#endregion

}
