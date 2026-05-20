//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**S_105_恐龙属性养成.xlsx*/
export default class Config_AttributeGrowth_105 {

    public static readonly Key = "AttributeGrowth_105";
    /**
     * 获取对应key数据的 Config_AttributeGrowth_105 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_AttributeGrowth_105 {
        return ConfigData.getAttributeGrowth_105(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 攻击系数万分比 */
    public static readonly Idx_Atk: number = 0;
    /**
     * 根据对应表数据获取攻击系数万分比
     * @param data 对应表数据
     */
    public static getAtk(data: any[]): number {
        return data[Config_AttributeGrowth_105.Idx_Atk];
    }
    /**
     * 根据key获取攻击系数万分比
     * @param key 配置表key
     */
    public static getAtkByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_AttributeGrowth_105.Key, key);
        if (!data) {
            console.error(Config_AttributeGrowth_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_AttributeGrowth_105.Idx_Atk];
    }

    /** 索引 攻击系数消耗金币 */
    public static readonly Idx_AtkCost: number = 1;
    /**
     * 根据对应表数据获取攻击系数消耗金币
     * @param data 对应表数据
     */
    public static getAtkCost(data: any[]): number {
        return data[Config_AttributeGrowth_105.Idx_AtkCost];
    }
    /**
     * 根据key获取攻击系数消耗金币
     * @param key 配置表key
     */
    public static getAtkCostByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_AttributeGrowth_105.Key, key);
        if (!data) {
            console.error(Config_AttributeGrowth_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_AttributeGrowth_105.Idx_AtkCost];
    }

    /** 索引 速度（每秒移动的厘米） */
    public static readonly Idx_Speed: number = 2;
    /**
     * 根据对应表数据获取速度（每秒移动的厘米）
     * @param data 对应表数据
     */
    public static getSpeed(data: any[]): number {
        return data[Config_AttributeGrowth_105.Idx_Speed];
    }
    /**
     * 根据key获取速度（每秒移动的厘米）
     * @param key 配置表key
     */
    public static getSpeedByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_AttributeGrowth_105.Key, key);
        if (!data) {
            console.error(Config_AttributeGrowth_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_AttributeGrowth_105.Idx_Speed];
    }

    /** 索引 速度消耗金币 */
    public static readonly Idx_SpeedCost: number = 3;
    /**
     * 根据对应表数据获取速度消耗金币
     * @param data 对应表数据
     */
    public static getSpeedCost(data: any[]): number {
        return data[Config_AttributeGrowth_105.Idx_SpeedCost];
    }
    /**
     * 根据key获取速度消耗金币
     * @param key 配置表key
     */
    public static getSpeedCostByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_AttributeGrowth_105.Key, key);
        if (!data) {
            console.error(Config_AttributeGrowth_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_AttributeGrowth_105.Idx_SpeedCost];
    }

    /** 索引 关卡攻击成长系数 */
    public static readonly Idx_Growth: number = 4;
    /**
     * 根据对应表数据获取关卡攻击成长系数
     * @param data 对应表数据
     */
    public static getGrowth(data: any[]): number {
        return data[Config_AttributeGrowth_105.Idx_Growth];
    }
    /**
     * 根据key获取关卡攻击成长系数
     * @param key 配置表key
     */
    public static getGrowthByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_AttributeGrowth_105.Key, key);
        if (!data) {
            console.error(Config_AttributeGrowth_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_AttributeGrowth_105.Idx_Growth];
    }

    /** 索引 成长消耗金币 */
    public static readonly Idx_GrowthCost: number = 5;
    /**
     * 根据对应表数据获取成长消耗金币
     * @param data 对应表数据
     */
    public static getGrowthCost(data: any[]): number {
        return data[Config_AttributeGrowth_105.Idx_GrowthCost];
    }
    /**
     * 根据key获取成长消耗金币
     * @param key 配置表key
     */
    public static getGrowthCostByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_AttributeGrowth_105.Key, key);
        if (!data) {
            console.error(Config_AttributeGrowth_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_AttributeGrowth_105.Idx_GrowthCost];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**攻击系数万分比*/
    public get atk(): number {
        return this._data[Config_AttributeGrowth_105.Idx_Atk];
    }
	/**攻击系数消耗金币*/
    public get atkCost(): number {
        return this._data[Config_AttributeGrowth_105.Idx_AtkCost];
    }
	/**速度（每秒移动的厘米）*/
    public get speed(): number {
        return this._data[Config_AttributeGrowth_105.Idx_Speed];
    }
	/**速度消耗金币*/
    public get speedCost(): number {
        return this._data[Config_AttributeGrowth_105.Idx_SpeedCost];
    }
	/**关卡攻击成长系数*/
    public get growth(): number {
        return this._data[Config_AttributeGrowth_105.Idx_Growth];
    }
	/**成长消耗金币*/
    public get growthCost(): number {
        return this._data[Config_AttributeGrowth_105.Idx_GrowthCost];
    }
    //#endregion

}
