//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**G_105_关卡人类属性表.xlsx*/
export default class Config_human_105 {

    public static readonly Key = "human_105";
    /**
     * 获取对应key数据的 Config_human_105 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_human_105 {
        return ConfigData.getHuman_105(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 朝向 */
    public static readonly Idx_Cx: number = 0;
    /**
     * 根据对应表数据获取朝向
     * @param data 对应表数据
     */
    public static getCx(data: any[]): string {
        return data[Config_human_105.Idx_Cx];
    }
    /**
     * 根据key获取朝向
     * @param key 配置表key
     */
    public static getCxByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_human_105.Key, key);
        if (!data) {
            console.error(Config_human_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_human_105.Idx_Cx];
    }

    /** 索引 数量 */
    public static readonly Idx_Sl: number = 1;
    /**
     * 根据对应表数据获取数量
     * @param data 对应表数据
     */
    public static getSl(data: any[]): number {
        return data[Config_human_105.Idx_Sl];
    }
    /**
     * 根据key获取数量
     * @param key 配置表key
     */
    public static getSlByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_human_105.Key, key);
        if (!data) {
            console.error(Config_human_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_human_105.Idx_Sl];
    }

    /** 索引 经验 */
    public static readonly Idx_Jy: number = 2;
    /**
     * 根据对应表数据获取经验
     * @param data 对应表数据
     */
    public static getJy(data: any[]): number {
        return data[Config_human_105.Idx_Jy];
    }
    /**
     * 根据key获取经验
     * @param key 配置表key
     */
    public static getJyByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_human_105.Key, key);
        if (!data) {
            console.error(Config_human_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_human_105.Idx_Jy];
    }

    /** 索引 类型，区分目标 */
    public static readonly Idx_Type: number = 3;
    /**
     * 根据对应表数据获取类型，区分目标
     * @param data 对应表数据
     */
    public static getType(data: any[]): number {
        return data[Config_human_105.Idx_Type];
    }
    /**
     * 根据key获取类型，区分目标
     * @param key 配置表key
     */
    public static getTypeByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_human_105.Key, key);
        if (!data) {
            console.error(Config_human_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_human_105.Idx_Type];
    }

    /** 索引 类型区分增加经验显示 */
    public static readonly Idx_ExpType: number = 4;
    /**
     * 根据对应表数据获取类型区分增加经验显示
     * @param data 对应表数据
     */
    public static getExpType(data: any[]): number {
        return data[Config_human_105.Idx_ExpType];
    }
    /**
     * 根据key获取类型区分增加经验显示
     * @param key 配置表key
     */
    public static getExpTypeByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_human_105.Key, key);
        if (!data) {
            console.error(Config_human_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_human_105.Idx_ExpType];
    }

    /** 索引 移动速度
	 ** DELL:
	 ** 每秒移动的厘米 */
    public static readonly Idx_Speed: number = 5;
    /**
     * 根据对应表数据获取移动速度
	 ** DELL:
	 ** 每秒移动的厘米
     * @param data 对应表数据
     */
    public static getSpeed(data: any[]): number {
        return data[Config_human_105.Idx_Speed];
    }
    /**
     * 根据key获取移动速度
	 ** DELL:
	 ** 每秒移动的厘米
     * @param key 配置表key
     */
    public static getSpeedByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_human_105.Key, key);
        if (!data) {
            console.error(Config_human_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_human_105.Idx_Speed];
    }

    /** 索引 模型 */
    public static readonly Idx_Mx: number = 6;
    /**
     * 根据对应表数据获取模型
     * @param data 对应表数据
     */
    public static getMx(data: any[]): string {
        return data[Config_human_105.Idx_Mx];
    }
    /**
     * 根据key获取模型
     * @param key 配置表key
     */
    public static getMxByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_human_105.Key, key);
        if (!data) {
            console.error(Config_human_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_human_105.Idx_Mx];
    }

    /** 索引 受击特效 */
    public static readonly Idx_Effect: number = 7;
    /**
     * 根据对应表数据获取受击特效
     * @param data 对应表数据
     */
    public static getEffect(data: any[]): string {
        return data[Config_human_105.Idx_Effect];
    }
    /**
     * 根据key获取受击特效
     * @param key 配置表key
     */
    public static getEffectByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_human_105.Key, key);
        if (!data) {
            console.error(Config_human_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_human_105.Idx_Effect];
    }

    /** 索引 关卡目标头像 */
    public static readonly Idx_Icon: number = 8;
    /**
     * 根据对应表数据获取关卡目标头像
     * @param data 对应表数据
     */
    public static getIcon(data: any[]): string {
        return data[Config_human_105.Idx_Icon];
    }
    /**
     * 根据key获取关卡目标头像
     * @param key 配置表key
     */
    public static getIconByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_human_105.Key, key);
        if (!data) {
            console.error(Config_human_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_human_105.Idx_Icon];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**朝向*/
    public get cx(): string {
        return this._data[Config_human_105.Idx_Cx];
    }
	/**数量*/
    public get sl(): number {
        return this._data[Config_human_105.Idx_Sl];
    }
	/**经验*/
    public get jy(): number {
        return this._data[Config_human_105.Idx_Jy];
    }
	/**类型，区分目标*/
    public get type(): number {
        return this._data[Config_human_105.Idx_Type];
    }
	/**类型区分增加经验显示*/
    public get expType(): number {
        return this._data[Config_human_105.Idx_ExpType];
    }
	/**移动速度
	 ** DELL:
	 ** 每秒移动的厘米*/
    public get speed(): number {
        return this._data[Config_human_105.Idx_Speed];
    }
	/**模型*/
    public get mx(): string {
        return this._data[Config_human_105.Idx_Mx];
    }
	/**受击特效*/
    public get effect(): string {
        return this._data[Config_human_105.Idx_Effect];
    }
	/**关卡目标头像*/
    public get icon(): string {
        return this._data[Config_human_105.Idx_Icon];
    }
    //#endregion

}
