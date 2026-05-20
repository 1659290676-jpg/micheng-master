//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**Z_104_战令奖励.xlsx*/
export default class Config_zl_104 {

    public static readonly Key = "zl_104";
    /**
     * 获取对应key数据的 Config_zl_104 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_zl_104 {
        return ConfigData.getZl_104(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 编号
	 ** 序号 */
    public static readonly Idx_Id: number = 0;
    /**
     * 根据对应表数据获取编号
	 ** 序号
     * @param data 对应表数据
     */
    public static getId(data: any[]): number {
        return data[Config_zl_104.Idx_Id];
    }
    /**
     * 根据key获取编号
	 ** 序号
     * @param key 配置表key
     */
    public static getIdByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_zl_104.Key, key);
        if (!data) {
            console.error(Config_zl_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_zl_104.Idx_Id];
    }

    /** 索引 战令类型
	 ** admin:
	 ** 战令 */
    public static readonly Idx_Type: number = 1;
    /**
     * 根据对应表数据获取战令类型
	 ** admin:
	 ** 战令
     * @param data 对应表数据
     */
    public static getType(data: any[]): number {
        return data[Config_zl_104.Idx_Type];
    }
    /**
     * 根据key获取战令类型
	 ** admin:
	 ** 战令
     * @param key 配置表key
     */
    public static getTypeByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_zl_104.Key, key);
        if (!data) {
            console.error(Config_zl_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_zl_104.Idx_Type];
    }

    /** 索引 期数 */
    public static readonly Idx_Issue: number = 2;
    /**
     * 根据对应表数据获取期数
     * @param data 对应表数据
     */
    public static getIssue(data: any[]): number {
        return data[Config_zl_104.Idx_Issue];
    }
    /**
     * 根据key获取期数
     * @param key 配置表key
     */
    public static getIssueByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_zl_104.Key, key);
        if (!data) {
            console.error(Config_zl_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_zl_104.Idx_Issue];
    }

    /** 索引 免费 */
    public static readonly Idx_Free: number = 3;
    /**
     * 根据对应表数据获取免费
     * @param data 对应表数据
     */
    public static getFree(data: any[]): number[][] {
        return data[Config_zl_104.Idx_Free];
    }
    /**
     * 根据key获取免费
     * @param key 配置表key
     */
    public static getFreeByKey(key: number | string): number[][] {
        let data = ConfigData.getCfgData(Config_zl_104.Key, key);
        if (!data) {
            console.error(Config_zl_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_zl_104.Idx_Free];
    }

    /** 索引 进阶版奖励 */
    public static readonly Idx_Advance: number = 4;
    /**
     * 根据对应表数据获取进阶版奖励
     * @param data 对应表数据
     */
    public static getAdvance(data: any[]): number[][] {
        return data[Config_zl_104.Idx_Advance];
    }
    /**
     * 根据key获取进阶版奖励
     * @param key 配置表key
     */
    public static getAdvanceByKey(key: number | string): number[][] {
        let data = ConfigData.getCfgData(Config_zl_104.Key, key);
        if (!data) {
            console.error(Config_zl_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_zl_104.Idx_Advance];
    }

    /** 索引 等级 */
    public static readonly Idx_Lv: number = 5;
    /**
     * 根据对应表数据获取等级
     * @param data 对应表数据
     */
    public static getLv(data: any[]): number {
        return data[Config_zl_104.Idx_Lv];
    }
    /**
     * 根据key获取等级
     * @param key 配置表key
     */
    public static getLvByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_zl_104.Key, key);
        if (!data) {
            console.error(Config_zl_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_zl_104.Idx_Lv];
    }

    /** 索引 免费奖励图标 */
    public static readonly Idx_Icon1: number = 6;
    /**
     * 根据对应表数据获取免费奖励图标
     * @param data 对应表数据
     */
    public static getIcon1(data: any[]): string {
        return data[Config_zl_104.Idx_Icon1];
    }
    /**
     * 根据key获取免费奖励图标
     * @param key 配置表key
     */
    public static getIcon1ByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_zl_104.Key, key);
        if (!data) {
            console.error(Config_zl_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_zl_104.Idx_Icon1];
    }

    /** 索引 进阶版图标 */
    public static readonly Idx_Icon2: number = 7;
    /**
     * 根据对应表数据获取进阶版图标
     * @param data 对应表数据
     */
    public static getIcon2(data: any[]): string {
        return data[Config_zl_104.Idx_Icon2];
    }
    /**
     * 根据key获取进阶版图标
     * @param key 配置表key
     */
    public static getIcon2ByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_zl_104.Key, key);
        if (!data) {
            console.error(Config_zl_104.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_zl_104.Idx_Icon2];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**编号
	 ** 序号*/
    public get id(): number {
        return this._data[Config_zl_104.Idx_Id];
    }
	/**战令类型
	 ** admin:
	 ** 战令*/
    public get type(): number {
        return this._data[Config_zl_104.Idx_Type];
    }
	/**期数*/
    public get Issue(): number {
        return this._data[Config_zl_104.Idx_Issue];
    }
	/**免费*/
    public get free(): number[][] {
        return this._data[Config_zl_104.Idx_Free];
    }
	/**进阶版奖励*/
    public get advance(): number[][] {
        return this._data[Config_zl_104.Idx_Advance];
    }
	/**等级*/
    public get lv(): number {
        return this._data[Config_zl_104.Idx_Lv];
    }
	/**免费奖励图标*/
    public get icon1(): string {
        return this._data[Config_zl_104.Idx_Icon1];
    }
	/**进阶版图标*/
    public get icon2(): string {
        return this._data[Config_zl_104.Idx_Icon2];
    }
    //#endregion

}
