//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**G_105_关卡建筑表.xlsx*/
export default class Config_building_105 {

    public static readonly Key = "building_105";
    /**
     * 获取对应key数据的 Config_building_105 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_building_105 {
        return ConfigData.getBuilding_105(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 图标 */
    public static readonly Idx_Icon: number = 0;
    /**
     * 根据对应表数据获取图标
     * @param data 对应表数据
     */
    public static getIcon(data: any[]): string {
        return data[Config_building_105.Idx_Icon];
    }
    /**
     * 根据key获取图标
     * @param key 配置表key
     */
    public static getIconByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_building_105.Key, key);
        if (!data) {
            console.error(Config_building_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_building_105.Idx_Icon];
    }

    /** 索引 建筑类型
	 ** DELL:
	 ** 1:联排建筑
	 ** 2:车
	 ** 3：地标建筑（配了不会被其他AI恐龙撞） */
    public static readonly Idx_Lx: number = 1;
    /**
     * 根据对应表数据获取建筑类型
	 ** DELL:
	 ** 1:联排建筑
	 ** 2:车
	 ** 3：地标建筑（配了不会被其他AI恐龙撞）
     * @param data 对应表数据
     */
    public static getLx(data: any[]): number {
        return data[Config_building_105.Idx_Lx];
    }
    /**
     * 根据key获取建筑类型
	 ** DELL:
	 ** 1:联排建筑
	 ** 2:车
	 ** 3：地标建筑（配了不会被其他AI恐龙撞）
     * @param key 配置表key
     */
    public static getLxByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_building_105.Key, key);
        if (!data) {
            console.error(Config_building_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_building_105.Idx_Lx];
    }

    /** 索引 血量 */
    public static readonly Idx_Xl: number = 2;
    /**
     * 根据对应表数据获取血量
     * @param data 对应表数据
     */
    public static getXl(data: any[]): number {
        return data[Config_building_105.Idx_Xl];
    }
    /**
     * 根据key获取血量
     * @param key 配置表key
     */
    public static getXlByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_building_105.Key, key);
        if (!data) {
            console.error(Config_building_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_building_105.Idx_Xl];
    }

    /** 索引 经验 */
    public static readonly Idx_Jy: number = 3;
    /**
     * 根据对应表数据获取经验
     * @param data 对应表数据
     */
    public static getJy(data: any[]): number {
        return data[Config_building_105.Idx_Jy];
    }
    /**
     * 根据key获取经验
     * @param key 配置表key
     */
    public static getJyByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_building_105.Key, key);
        if (!data) {
            console.error(Config_building_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_building_105.Idx_Jy];
    }

    /** 索引 破坏后刷新人类id */
    public static readonly Idx_Jg: number = 4;
    /**
     * 根据对应表数据获取破坏后刷新人类id
     * @param data 对应表数据
     */
    public static getJg(data: any[]): number {
        return data[Config_building_105.Idx_Jg];
    }
    /**
     * 根据key获取破坏后刷新人类id
     * @param key 配置表key
     */
    public static getJgByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_building_105.Key, key);
        if (!data) {
            console.error(Config_building_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_building_105.Idx_Jg];
    }

    /** 索引 碰撞不后退
	 ** DELL:
	 ** 1:碰撞不后腿 */
    public static readonly Idx_Back: number = 5;
    /**
     * 根据对应表数据获取碰撞不后退
	 ** DELL:
	 ** 1:碰撞不后腿
     * @param data 对应表数据
     */
    public static getBack(data: any[]): number {
        return data[Config_building_105.Idx_Back];
    }
    /**
     * 根据key获取碰撞不后退
	 ** DELL:
	 ** 1:碰撞不后腿
     * @param key 配置表key
     */
    public static getBackByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_building_105.Key, key);
        if (!data) {
            console.error(Config_building_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_building_105.Idx_Back];
    }

    /** 索引 受击特效 */
    public static readonly Idx_Effect: number = 6;
    /**
     * 根据对应表数据获取受击特效
     * @param data 对应表数据
     */
    public static getEffect(data: any[]): string {
        return data[Config_building_105.Idx_Effect];
    }
    /**
     * 根据key获取受击特效
     * @param key 配置表key
     */
    public static getEffectByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_building_105.Key, key);
        if (!data) {
            console.error(Config_building_105.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_building_105.Idx_Effect];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**图标*/
    public get icon(): string {
        return this._data[Config_building_105.Idx_Icon];
    }
	/**建筑类型
	 ** DELL:
	 ** 1:联排建筑
	 ** 2:车
	 ** 3：地标建筑（配了不会被其他AI恐龙撞）*/
    public get lx(): number {
        return this._data[Config_building_105.Idx_Lx];
    }
	/**血量*/
    public get xl(): number {
        return this._data[Config_building_105.Idx_Xl];
    }
	/**经验*/
    public get jy(): number {
        return this._data[Config_building_105.Idx_Jy];
    }
	/**破坏后刷新人类id*/
    public get jg(): number {
        return this._data[Config_building_105.Idx_Jg];
    }
	/**碰撞不后退
	 ** DELL:
	 ** 1:碰撞不后腿*/
    public get back(): number {
        return this._data[Config_building_105.Idx_Back];
    }
	/**受击特效*/
    public get effect(): string {
        return this._data[Config_building_105.Idx_Effect];
    }
    //#endregion

}
