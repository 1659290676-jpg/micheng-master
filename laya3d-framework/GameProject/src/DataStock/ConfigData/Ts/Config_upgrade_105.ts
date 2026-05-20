//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**G_105_关卡恐龙升级.xlsx*/
export default class Config_upgrade_105 {

    public static readonly Key = "upgrade_105";
    /**
     * 获取对应key数据的 Config_upgrade_105 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_upgrade_105 {
        return ConfigData.getUpgrade_105(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 成长高恐龙经验 */
    public static readonly Idx_HighExp: number = 0;
    /**
     * 根据对应表数据获取成长高恐龙经验
     * @param data 对应表数据
     */
    public static getHighExp(data: any[]): number {
        return data[Config_upgrade_105.Idx_HighExp];
    }
    /**
     * 根据key获取成长高恐龙经验
     * @param key 配置表key
     */
    public static getHighExpByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_HighExp];
    }

    /** 索引 一般成长恐龙经验 */
    public static readonly Idx_LowExp: number = 1;
    /**
     * 根据对应表数据获取一般成长恐龙经验
     * @param data 对应表数据
     */
    public static getLowExp(data: any[]): number {
        return data[Config_upgrade_105.Idx_LowExp];
    }
    /**
     * 根据key获取一般成长恐龙经验
     * @param key 配置表key
     */
    public static getLowExpByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_LowExp];
    }

    /** 索引 经验 */
    public static readonly Idx_Exp: number = 2;
    /**
     * 根据对应表数据获取经验
     * @param data 对应表数据
     */
    public static getExp(data: any[]): number {
        return data[Config_upgrade_105.Idx_Exp];
    }
    /**
     * 根据key获取经验
     * @param key 配置表key
     */
    public static getExpByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_Exp];
    }

    /** 索引 被击杀对方获得经验 */
    public static readonly Idx_Kill: number = 3;
    /**
     * 根据对应表数据获取被击杀对方获得经验
     * @param data 对应表数据
     */
    public static getKill(data: any[]): number {
        return data[Config_upgrade_105.Idx_Kill];
    }
    /**
     * 根据key获取被击杀对方获得经验
     * @param key 配置表key
     */
    public static getKillByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_Kill];
    }

    /** 索引 缩放 */
    public static readonly Idx_Scale: number = 4;
    /**
     * 根据对应表数据获取缩放
     * @param data 对应表数据
     */
    public static getScale(data: any[]): number {
        return data[Config_upgrade_105.Idx_Scale];
    }
    /**
     * 根据key获取缩放
     * @param key 配置表key
     */
    public static getScaleByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_Scale];
    }

    /** 索引 速度
	 ** DELL:
	 ** 每秒移动的厘米 */
    public static readonly Idx_Speed: number = 5;
    /**
     * 根据对应表数据获取速度
	 ** DELL:
	 ** 每秒移动的厘米
     * @param data 对应表数据
     */
    public static getSpeed(data: any[]): number {
        return data[Config_upgrade_105.Idx_Speed];
    }
    /**
     * 根据key获取速度
	 ** DELL:
	 ** 每秒移动的厘米
     * @param key 配置表key
     */
    public static getSpeedByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_Speed];
    }

    /** 索引 攻击长度
	 ** DELL:
	 ** 攻击范围厘米
	 ** 场*宽=攻击范围，从恐龙脚底算起 */
    public static readonly Idx_Range: number = 6;
    /**
     * 根据对应表数据获取攻击长度
	 ** DELL:
	 ** 攻击范围厘米
	 ** 场*宽=攻击范围，从恐龙脚底算起
     * @param data 对应表数据
     */
    public static getRange(data: any[]): number {
        return data[Config_upgrade_105.Idx_Range];
    }
    /**
     * 根据key获取攻击长度
	 ** DELL:
	 ** 攻击范围厘米
	 ** 场*宽=攻击范围，从恐龙脚底算起
     * @param key 配置表key
     */
    public static getRangeByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_Range];
    }

    /** 索引 攻击宽度
	 ** DELL:
	 ** 攻击范围厘米 */
    public static readonly Idx_Wide: number = 7;
    /**
     * 根据对应表数据获取攻击宽度
	 ** DELL:
	 ** 攻击范围厘米
     * @param data 对应表数据
     */
    public static getWide(data: any[]): number {
        return data[Config_upgrade_105.Idx_Wide];
    }
    /**
     * 根据key获取攻击宽度
	 ** DELL:
	 ** 攻击范围厘米
     * @param key 配置表key
     */
    public static getWideByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_Wide];
    }

    /** 索引 拾取物品获得经验 */
    public static readonly Idx_Pick: number = 8;
    /**
     * 根据对应表数据获取拾取物品获得经验
     * @param data 对应表数据
     */
    public static getPick(data: any[]): number {
        return data[Config_upgrade_105.Idx_Pick];
    }
    /**
     * 根据key获取拾取物品获得经验
     * @param key 配置表key
     */
    public static getPickByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_Pick];
    }

    /** 索引 攻击系数 */
    public static readonly Idx_Atk: number = 9;
    /**
     * 根据对应表数据获取攻击系数
     * @param data 对应表数据
     */
    public static getAtk(data: any[]): number {
        return data[Config_upgrade_105.Idx_Atk];
    }
    /**
     * 根据key获取攻击系数
     * @param key 配置表key
     */
    public static getAtkByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_Atk];
    }

    /** 索引 吞噬技能增加范围 */
    public static readonly Idx_Skillrange: number = 10;
    /**
     * 根据对应表数据获取吞噬技能增加范围
     * @param data 对应表数据
     */
    public static getSkillrange(data: any[]): number {
        return data[Config_upgrade_105.Idx_Skillrange];
    }
    /**
     * 根据key获取吞噬技能增加范围
     * @param key 配置表key
     */
    public static getSkillrangeByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_Skillrange];
    }

    /** 索引 加速技能增加速度 */
    public static readonly Idx_Skillspeed: number = 11;
    /**
     * 根据对应表数据获取加速技能增加速度
     * @param data 对应表数据
     */
    public static getSkillspeed(data: any[]): number {
        return data[Config_upgrade_105.Idx_Skillspeed];
    }
    /**
     * 根据key获取加速技能增加速度
     * @param key 配置表key
     */
    public static getSkillspeedByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_Skillspeed];
    }

    /** 索引 升级技能增加经验 */
    public static readonly Idx_Skillexp: number = 12;
    /**
     * 根据对应表数据获取升级技能增加经验
     * @param data 对应表数据
     */
    public static getSkillexp(data: any[]): number {
        return data[Config_upgrade_105.Idx_Skillexp];
    }
    /**
     * 根据key获取升级技能增加经验
     * @param key 配置表key
     */
    public static getSkillexpByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
        if (!data) {
            console.error(Config_upgrade_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_upgrade_105.Idx_Skillexp];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**成长高恐龙经验*/
    public get highExp(): number {
        return this._data[Config_upgrade_105.Idx_HighExp];
    }
	/**一般成长恐龙经验*/
    public get lowExp(): number {
        return this._data[Config_upgrade_105.Idx_LowExp];
    }
	/**经验*/
    public get exp(): number {
        return this._data[Config_upgrade_105.Idx_Exp];
    }
	/**被击杀对方获得经验*/
    public get kill(): number {
        return this._data[Config_upgrade_105.Idx_Kill];
    }
	/**缩放*/
    public get scale(): number {
        return this._data[Config_upgrade_105.Idx_Scale];
    }
	/**速度
	 ** DELL:
	 ** 每秒移动的厘米*/
    public get speed(): number {
        return this._data[Config_upgrade_105.Idx_Speed];
    }
	/**攻击长度
	 ** DELL:
	 ** 攻击范围厘米
	 ** 场*宽=攻击范围，从恐龙脚底算起*/
    public get range(): number {
        return this._data[Config_upgrade_105.Idx_Range];
    }
	/**攻击宽度
	 ** DELL:
	 ** 攻击范围厘米*/
    public get wide(): number {
        return this._data[Config_upgrade_105.Idx_Wide];
    }
	/**拾取物品获得经验*/
    public get pick(): number {
        return this._data[Config_upgrade_105.Idx_Pick];
    }
	/**攻击系数*/
    public get atk(): number {
        return this._data[Config_upgrade_105.Idx_Atk];
    }
	/**吞噬技能增加范围*/
    public get skillrange(): number {
        return this._data[Config_upgrade_105.Idx_Skillrange];
    }
	/**加速技能增加速度*/
    public get skillspeed(): number {
        return this._data[Config_upgrade_105.Idx_Skillspeed];
    }
	/**升级技能增加经验*/
    public get skillexp(): number {
        return this._data[Config_upgrade_105.Idx_Skillexp];
    }
    //#endregion

}
