//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import ConfigData from '../ConfigData';

/**G_105_关卡恐龙表.xlsx*/
export default class Config_dinosaur_105 {

    public static readonly Key = "dinosaur_105";
    /**
     * 获取对应key数据的 Config_dinosaur_105 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_dinosaur_105 {
        return ConfigData.getDinosaur_105(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 初始等级 */
    public static readonly Idx_Dj: number = 0;
    /**
     * 根据对应表数据获取初始等级
     * @param data 对应表数据
     */
    public static getDj(data: any[]): number {
        return data[Config_dinosaur_105.Idx_Dj];
    }
    /**
     * 根据key获取初始等级
     * @param key 配置表key
     */
    public static getDjByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_dinosaur_105.Key, key);
        if (!data) {
            console.error(Config_dinosaur_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_dinosaur_105.Idx_Dj];
    }

    /** 索引 属性 */
    public static readonly Idx_Sx: number = 1;
    /**
     * 根据对应表数据获取属性
     * @param data 对应表数据
     */
    public static getSx(data: any[]): number[][] {
        return data[Config_dinosaur_105.Idx_Sx];
    }
    /**
     * 根据key获取属性
     * @param key 配置表key
     */
    public static getSxByKey(key: number | string): number[][] {
        let data = ConfigData.getCfgData(Config_dinosaur_105.Key, key);
        if (!data) {
            console.error(Config_dinosaur_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_dinosaur_105.Idx_Sx];
    }

    /** 索引 模型(配了就固定，没配就在恐龙模型随机，优先取和主角不同的) */
    public static readonly Idx_Mx: number = 2;
    /**
     * 根据对应表数据获取模型(配了就固定，没配就在恐龙模型随机，优先取和主角不同的)
     * @param data 对应表数据
     */
    public static getMx(data: any[]): string {
        return data[Config_dinosaur_105.Idx_Mx];
    }
    /**
     * 根据key获取模型(配了就固定，没配就在恐龙模型随机，优先取和主角不同的)
     * @param key 配置表key
     */
    public static getMxByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_dinosaur_105.Key, key);
        if (!data) {
            console.error(Config_dinosaur_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_dinosaur_105.Idx_Mx];
    }

    /** 索引 关卡目标头像 */
    public static readonly Idx_Icon: number = 3;
    /**
     * 根据对应表数据获取关卡目标头像
     * @param data 对应表数据
     */
    public static getIcon(data: any[]): string {
        return data[Config_dinosaur_105.Idx_Icon];
    }
    /**
     * 根据key获取关卡目标头像
     * @param key 配置表key
     */
    public static getIconByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_dinosaur_105.Key, key);
        if (!data) {
            console.error(Config_dinosaur_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_dinosaur_105.Idx_Icon];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**初始等级*/
    public get dj(): number {
        return this._data[Config_dinosaur_105.Idx_Dj];
    }
	/**属性*/
    public get sx(): number[][] {
        return this._data[Config_dinosaur_105.Idx_Sx];
    }
	/**模型(配了就固定，没配就在恐龙模型随机，优先取和主角不同的)*/
    public get mx(): string {
        return this._data[Config_dinosaur_105.Idx_Mx];
    }
	/**关卡目标头像*/
    public get icon(): string {
        return this._data[Config_dinosaur_105.Idx_Icon];
    }
    //#endregion

}
