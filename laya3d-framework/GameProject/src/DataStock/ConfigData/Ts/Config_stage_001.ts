//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**G_001_关卡.xlsx*/
export default class Config_stage_001 {

    public static readonly Key = "stage_001";
    /**
     * 获取对应key数据的 Config_stage_001 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_stage_001 {
        return ConfigData.getStage_001(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 场景资源 */
    public static readonly Idx_Map: number = 0;
    /**
     * 根据对应表数据获取场景资源
     * @param data 对应表数据
     */
    public static getMap(data: any[]): string {
        return data[Config_stage_001.Idx_Map];
    }
    /**
     * 根据key获取场景资源
     * @param key 配置表key
     */
    public static getMapByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_Map];
    }

    /** 索引 奖励 */
    public static readonly Idx_Reward: number = 1;
    /**
     * 根据对应表数据获取奖励
     * @param data 对应表数据
     */
    public static getReward(data: any[]): number[][] {
        return data[Config_stage_001.Idx_Reward];
    }
    /**
     * 根据key获取奖励
     * @param key 配置表key
     */
    public static getRewardByKey(key: number | string): number[][] {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_Reward];
    }

    /** 索引 关卡时间 */
    public static readonly Idx_Time: number = 2;
    /**
     * 根据对应表数据获取关卡时间
     * @param data 对应表数据
     */
    public static getTime(data: any[]): number {
        return data[Config_stage_001.Idx_Time];
    }
    /**
     * 根据key获取关卡时间
     * @param key 配置表key
     */
    public static getTimeByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_Time];
    }

    /** 索引 难度
	 ** 1困难2噩梦
	 **  */
    public static readonly Idx_Nd: number = 3;
    /**
     * 根据对应表数据获取难度
	 ** 1困难2噩梦
	 ** 
     * @param data 对应表数据
     */
    public static getNd(data: any[]): number {
        return data[Config_stage_001.Idx_Nd];
    }
    /**
     * 根据key获取难度
	 ** 1困难2噩梦
	 ** 
     * @param key 配置表key
     */
    public static getNdByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_Nd];
    }

    /** 索引 关卡界面背景图片类型 */
    public static readonly Idx_Bg: number = 4;
    /**
     * 根据对应表数据获取关卡界面背景图片类型
     * @param data 对应表数据
     */
    public static getBg(data: any[]): number {
        return data[Config_stage_001.Idx_Bg];
    }
    /**
     * 根据key获取关卡界面背景图片类型
     * @param key 配置表key
     */
    public static getBgByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_Bg];
    }

    /** 索引 战令钥匙 */
    public static readonly Idx_Key: number = 5;
    /**
     * 根据对应表数据获取战令钥匙
     * @param data 对应表数据
     */
    public static getKey(data: any[]): number {
        return data[Config_stage_001.Idx_Key];
    }
    /**
     * 根据key获取战令钥匙
     * @param key 配置表key
     */
    public static getKeyByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_Key];
    }

    /** 索引 连胜排行盾牌 */
    public static readonly Idx_Shield: number = 6;
    /**
     * 根据对应表数据获取连胜排行盾牌
     * @param data 对应表数据
     */
    public static getShield(data: any[]): number {
        return data[Config_stage_001.Idx_Shield];
    }
    /**
     * 根据key获取连胜排行盾牌
     * @param key 配置表key
     */
    public static getShieldByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_Shield];
    }

    /** 索引 建筑血量(建筑类型,血量) */
    public static readonly Idx_Hp: number = 7;
    /**
     * 根据对应表数据获取建筑血量(建筑类型,血量)
     * @param data 对应表数据
     */
    public static getHp(data: any[]): number[][] {
        return data[Config_stage_001.Idx_Hp];
    }
    /**
     * 根据key获取建筑血量(建筑类型,血量)
     * @param key 配置表key
     */
    public static getHpByKey(key: number | string): number[][] {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_Hp];
    }

    /** 索引 关卡目标（目标类型,建筑类型,数量）
	 ** DELL:
	 ** 任务类型,建筑或人类型,数量;任务类型,建筑或人类型,数量
	 ** 目标类型
	 ** 1：摧毁建筑
	 ** 2：击杀小人和小恐龙
	 ** 3：击杀机器恐龙
	 **  */
    public static readonly Idx_Target: number = 8;
    /**
     * 根据对应表数据获取关卡目标（目标类型,建筑类型,数量）
	 ** DELL:
	 ** 任务类型,建筑或人类型,数量;任务类型,建筑或人类型,数量
	 ** 目标类型
	 ** 1：摧毁建筑
	 ** 2：击杀小人和小恐龙
	 ** 3：击杀机器恐龙
	 ** 
     * @param data 对应表数据
     */
    public static getTarget(data: any[]): number[][] {
        return data[Config_stage_001.Idx_Target];
    }
    /**
     * 根据key获取关卡目标（目标类型,建筑类型,数量）
	 ** DELL:
	 ** 任务类型,建筑或人类型,数量;任务类型,建筑或人类型,数量
	 ** 目标类型
	 ** 1：摧毁建筑
	 ** 2：击杀小人和小恐龙
	 ** 3：击杀机器恐龙
	 ** 
     * @param key 配置表key
     */
    public static getTargetByKey(key: number | string): number[][] {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_Target];
    }

    /** 索引 小人上限 */
    public static readonly Idx_Npc: number = 9;
    /**
     * 根据对应表数据获取小人上限
     * @param data 对应表数据
     */
    public static getNpc(data: any[]): number {
        return data[Config_stage_001.Idx_Npc];
    }
    /**
     * 根据key获取小人上限
     * @param key 配置表key
     */
    public static getNpcByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_Npc];
    }

    /** 索引 机器恐龙上限
	 ** DELL:
	 ** 不配默认14 */
    public static readonly Idx_AiMax: number = 10;
    /**
     * 根据对应表数据获取机器恐龙上限
	 ** DELL:
	 ** 不配默认14
     * @param data 对应表数据
     */
    public static getAiMax(data: any[]): number {
        return data[Config_stage_001.Idx_AiMax];
    }
    /**
     * 根据key获取机器恐龙上限
	 ** DELL:
	 ** 不配默认14
     * @param key 配置表key
     */
    public static getAiMaxByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_AiMax];
    }

    /** 索引 成长高机器恐龙数量
	 ** DELL:
	 ** 不配默认2 */
    public static readonly Idx_AiUp: number = 11;
    /**
     * 根据对应表数据获取成长高机器恐龙数量
	 ** DELL:
	 ** 不配默认2
     * @param data 对应表数据
     */
    public static getAiUp(data: any[]): number {
        return data[Config_stage_001.Idx_AiUp];
    }
    /**
     * 根据key获取成长高机器恐龙数量
	 ** DELL:
	 ** 不配默认2
     * @param key 配置表key
     */
    public static getAiUpByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_AiUp];
    }

    /** 索引 关卡名字<已抽字> */
    public static readonly Idx_Name: number = 12;
    /**
     * 根据对应表数据获取关卡名字<已抽字>
     * @param data 对应表数据
     * @param args 替换参数
     */
    public static getName(data: any[], ...args: any[]): string {
        return LanguageMgr.getLngTxt(data[Config_stage_001.Idx_Name], ...args);
    }
    /**
     * 根据key获取关卡名字<已抽字>
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getNameByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_stage_001.Idx_Name], ...args);
    }

    /** 索引 关闭陨石功能 */
    public static readonly Idx_Meteor: number = 13;
    /**
     * 根据对应表数据获取关闭陨石功能
     * @param data 对应表数据
     */
    public static getMeteor(data: any[]): number {
        return data[Config_stage_001.Idx_Meteor];
    }
    /**
     * 根据key获取关闭陨石功能
     * @param key 配置表key
     */
    public static getMeteorByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_stage_001.Key, key);
        if (!data) {
            console.error(Config_stage_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_stage_001.Idx_Meteor];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**场景资源*/
    public get map(): string {
        return this._data[Config_stage_001.Idx_Map];
    }
	/**奖励*/
    public get reward(): number[][] {
        return this._data[Config_stage_001.Idx_Reward];
    }
	/**关卡时间*/
    public get time(): number {
        return this._data[Config_stage_001.Idx_Time];
    }
	/**难度
	 ** 1困难2噩梦
	 ** */
    public get nd(): number {
        return this._data[Config_stage_001.Idx_Nd];
    }
	/**关卡界面背景图片类型*/
    public get bg(): number {
        return this._data[Config_stage_001.Idx_Bg];
    }
	/**战令钥匙*/
    public get key(): number {
        return this._data[Config_stage_001.Idx_Key];
    }
	/**连胜排行盾牌*/
    public get shield(): number {
        return this._data[Config_stage_001.Idx_Shield];
    }
	/**建筑血量(建筑类型,血量)*/
    public get hp(): number[][] {
        return this._data[Config_stage_001.Idx_Hp];
    }
	/**关卡目标（目标类型,建筑类型,数量）
	 ** DELL:
	 ** 任务类型,建筑或人类型,数量;任务类型,建筑或人类型,数量
	 ** 目标类型
	 ** 1：摧毁建筑
	 ** 2：击杀小人和小恐龙
	 ** 3：击杀机器恐龙
	 ** */
    public get target(): number[][] {
        return this._data[Config_stage_001.Idx_Target];
    }
	/**小人上限*/
    public get npc(): number {
        return this._data[Config_stage_001.Idx_Npc];
    }
	/**机器恐龙上限
	 ** DELL:
	 ** 不配默认14*/
    public get aiMax(): number {
        return this._data[Config_stage_001.Idx_AiMax];
    }
	/**成长高机器恐龙数量
	 ** DELL:
	 ** 不配默认2*/
    public get aiUp(): number {
        return this._data[Config_stage_001.Idx_AiUp];
    }
	/**关卡名字<已抽字>*/
    public get name(): string {
        return LanguageMgr.getLngTxt(this._data[Config_stage_001.Idx_Name]);
    }
	/**
     * 关卡名字<已抽字>
     * @param args 替换参数
     */
    public getName(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_stage_001.Idx_Name], ...args);
    }
	/**关闭陨石功能*/
    public get meteor(): number {
        return this._data[Config_stage_001.Idx_Meteor];
    }
    //#endregion

}
