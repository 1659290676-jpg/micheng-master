//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**R_501_任务类型汇总.xlsx*/
export default class Config_taskType_501 {

    public static readonly Key = "taskType_501";
    /**
     * 获取对应key数据的 Config_taskType_501 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_taskType_501 {
        return ConfigData.getTaskType_501(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 任务名称<已抽字> */
    public static readonly Idx_M: number = 0;
    /**
     * 根据对应表数据获取任务名称<已抽字>
     * @param data 对应表数据
     * @param args 替换参数
     */
    public static getM(data: any[], ...args: any[]): string {
        return LanguageMgr.getLngTxt(data[Config_taskType_501.Idx_M], ...args);
    }
    /**
     * 根据key获取任务名称<已抽字>
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getMByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_taskType_501.Key, key);
        if (!data) {
            console.error(Config_taskType_501.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_taskType_501.Idx_M], ...args);
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**任务名称<已抽字>*/
    public get m(): string {
        return LanguageMgr.getLngTxt(this._data[Config_taskType_501.Idx_M]);
    }
	/**
     * 任务名称<已抽字>
     * @param args 替换参数
     */
    public getM(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_taskType_501.Idx_M], ...args);
    }
    //#endregion

}
