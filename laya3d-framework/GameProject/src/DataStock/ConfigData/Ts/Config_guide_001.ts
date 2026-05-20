//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**Z_001_指引.xlsx*/
export default class Config_guide_001 {

    public static readonly Key = "guide_001";
    /**
     * 获取对应key数据的 Config_guide_001 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_guide_001 {
        return ConfigData.getGuide_001(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 ui编号 */
    public static readonly Idx_UiId: number = 0;
    /**
     * 根据对应表数据获取ui编号
     * @param data 对应表数据
     */
    public static getUiId(data: any[]): number {
        return data[Config_guide_001.Idx_UiId];
    }
    /**
     * 根据key获取ui编号
     * @param key 配置表key
     */
    public static getUiIdByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_guide_001.Key, key);
        if (!data) {
            console.error(Config_guide_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_guide_001.Idx_UiId];
    }

    /** 索引 点击组件 */
    public static readonly Idx_Target: number = 1;
    /**
     * 根据对应表数据获取点击组件
     * @param data 对应表数据
     */
    public static getTarget(data: any[]): string {
        return data[Config_guide_001.Idx_Target];
    }
    /**
     * 根据key获取点击组件
     * @param key 配置表key
     */
    public static getTargetByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_guide_001.Key, key);
        if (!data) {
            console.error(Config_guide_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_guide_001.Idx_Target];
    }

    /** 索引 获取界面需要指引的组件 */
    public static readonly Idx_GetVwGuideTarget: number = 2;
    /**
     * 根据对应表数据获取获取界面需要指引的组件
     * @param data 对应表数据
     */
    public static getGetVwGuideTarget(data: any[]): string {
        return data[Config_guide_001.Idx_GetVwGuideTarget];
    }
    /**
     * 根据key获取获取界面需要指引的组件
     * @param key 配置表key
     */
    public static getGetVwGuideTargetByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_guide_001.Key, key);
        if (!data) {
            console.error(Config_guide_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_guide_001.Idx_GetVwGuideTarget];
    }

    /** 索引 自定义点击函数 */
    public static readonly Idx_ClickFun: number = 3;
    /**
     * 根据对应表数据获取自定义点击函数
     * @param data 对应表数据
     */
    public static getClickFun(data: any[]): string {
        return data[Config_guide_001.Idx_ClickFun];
    }
    /**
     * 根据key获取自定义点击函数
     * @param key 配置表key
     */
    public static getClickFunByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_guide_001.Key, key);
        if (!data) {
            console.error(Config_guide_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_guide_001.Idx_ClickFun];
    }

    /** 索引 手指方向
	 ** Administrator:
	 ** 0:没有手指
	 ** 1:在点击组件上面
	 ** 2:在点击组件右面
	 ** 3:在点击组件下面
	 ** 4:在点击组件左面 */
    public static readonly Idx_HandDir: number = 4;
    /**
     * 根据对应表数据获取手指方向
	 ** Administrator:
	 ** 0:没有手指
	 ** 1:在点击组件上面
	 ** 2:在点击组件右面
	 ** 3:在点击组件下面
	 ** 4:在点击组件左面
     * @param data 对应表数据
     */
    public static getHandDir(data: any[]): number {
        return data[Config_guide_001.Idx_HandDir];
    }
    /**
     * 根据key获取手指方向
	 ** Administrator:
	 ** 0:没有手指
	 ** 1:在点击组件上面
	 ** 2:在点击组件右面
	 ** 3:在点击组件下面
	 ** 4:在点击组件左面
     * @param key 配置表key
     */
    public static getHandDirByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_guide_001.Key, key);
        if (!data) {
            console.error(Config_guide_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_guide_001.Idx_HandDir];
    }

    /** 索引 自定义参数 */
    public static readonly Idx_Arg: number = 5;
    /**
     * 根据对应表数据获取自定义参数
     * @param data 对应表数据
     */
    public static getArg(data: any[]): string {
        return data[Config_guide_001.Idx_Arg];
    }
    /**
     * 根据key获取自定义参数
     * @param key 配置表key
     */
    public static getArgByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_guide_001.Key, key);
        if (!data) {
            console.error(Config_guide_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_guide_001.Idx_Arg];
    }

    /** 索引 指引说明<已抽字> */
    public static readonly Idx_Des: number = 6;
    /**
     * 根据对应表数据获取指引说明<已抽字>
     * @param data 对应表数据
     * @param args 替换参数
     */
    public static getDes(data: any[], ...args: any[]): string {
        return LanguageMgr.getLngTxt(data[Config_guide_001.Idx_Des], ...args);
    }
    /**
     * 根据key获取指引说明<已抽字>
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getDesByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_guide_001.Key, key);
        if (!data) {
            console.error(Config_guide_001.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_guide_001.Idx_Des], ...args);
    }

    /** 索引 需要监听的事件
	 ** Administrator:
	 ** 有多个事件时用,分割 */
    public static readonly Idx_Evt: number = 7;
    /**
     * 根据对应表数据获取需要监听的事件
	 ** Administrator:
	 ** 有多个事件时用,分割
     * @param data 对应表数据
     */
    public static getEvt(data: any[]): string {
        return data[Config_guide_001.Idx_Evt];
    }
    /**
     * 根据key获取需要监听的事件
	 ** Administrator:
	 ** 有多个事件时用,分割
     * @param key 配置表key
     */
    public static getEvtByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_guide_001.Key, key);
        if (!data) {
            console.error(Config_guide_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_guide_001.Idx_Evt];
    }

    /** 索引 完成的事件
	 ** Administrator:
	 ** 有多个事件时用,分割 */
    public static readonly Idx_Fevt: number = 8;
    /**
     * 根据对应表数据获取完成的事件
	 ** Administrator:
	 ** 有多个事件时用,分割
     * @param data 对应表数据
     */
    public static getFevt(data: any[]): string {
        return data[Config_guide_001.Idx_Fevt];
    }
    /**
     * 根据key获取完成的事件
	 ** Administrator:
	 ** 有多个事件时用,分割
     * @param key 配置表key
     */
    public static getFevtByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_guide_001.Key, key);
        if (!data) {
            console.error(Config_guide_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_guide_001.Idx_Fevt];
    }

    /** 索引 自定义检测函数 */
    public static readonly Idx_CheckFun: number = 9;
    /**
     * 根据对应表数据获取自定义检测函数
     * @param data 对应表数据
     */
    public static getCheckFun(data: any[]): string {
        return data[Config_guide_001.Idx_CheckFun];
    }
    /**
     * 根据key获取自定义检测函数
     * @param key 配置表key
     */
    public static getCheckFunByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_guide_001.Key, key);
        if (!data) {
            console.error(Config_guide_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_guide_001.Idx_CheckFun];
    }

    /** 索引 指引步骤开始函数 */
    public static readonly Idx_Enf: number = 10;
    /**
     * 根据对应表数据获取指引步骤开始函数
     * @param data 对应表数据
     */
    public static getEnf(data: any[]): string {
        return data[Config_guide_001.Idx_Enf];
    }
    /**
     * 根据key获取指引步骤开始函数
     * @param key 配置表key
     */
    public static getEnfByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_guide_001.Key, key);
        if (!data) {
            console.error(Config_guide_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_guide_001.Idx_Enf];
    }

    /** 索引 指引步骤结束函数 */
    public static readonly Idx_Exf: number = 11;
    /**
     * 根据对应表数据获取指引步骤结束函数
     * @param data 对应表数据
     */
    public static getExf(data: any[]): string {
        return data[Config_guide_001.Idx_Exf];
    }
    /**
     * 根据key获取指引步骤结束函数
     * @param key 配置表key
     */
    public static getExfByKey(key: number | string): string {
        let data = ConfigData.getCfgData(Config_guide_001.Key, key);
        if (!data) {
            console.error(Config_guide_001.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_guide_001.Idx_Exf];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**ui编号*/
    public get uiId(): number {
        return this._data[Config_guide_001.Idx_UiId];
    }
	/**点击组件*/
    public get target(): string {
        return this._data[Config_guide_001.Idx_Target];
    }
	/**获取界面需要指引的组件*/
    public get getVwGuideTarget(): string {
        return this._data[Config_guide_001.Idx_GetVwGuideTarget];
    }
	/**自定义点击函数*/
    public get clickFun(): string {
        return this._data[Config_guide_001.Idx_ClickFun];
    }
	/**手指方向
	 ** Administrator:
	 ** 0:没有手指
	 ** 1:在点击组件上面
	 ** 2:在点击组件右面
	 ** 3:在点击组件下面
	 ** 4:在点击组件左面*/
    public get handDir(): number {
        return this._data[Config_guide_001.Idx_HandDir];
    }
	/**自定义参数*/
    public get arg(): string {
        return this._data[Config_guide_001.Idx_Arg];
    }
	/**指引说明<已抽字>*/
    public get des(): string {
        return LanguageMgr.getLngTxt(this._data[Config_guide_001.Idx_Des]);
    }
	/**
     * 指引说明<已抽字>
     * @param args 替换参数
     */
    public getDes(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_guide_001.Idx_Des], ...args);
    }
	/**需要监听的事件
	 ** Administrator:
	 ** 有多个事件时用,分割*/
    public get evt(): string {
        return this._data[Config_guide_001.Idx_Evt];
    }
	/**完成的事件
	 ** Administrator:
	 ** 有多个事件时用,分割*/
    public get fevt(): string {
        return this._data[Config_guide_001.Idx_Fevt];
    }
	/**自定义检测函数*/
    public get checkFun(): string {
        return this._data[Config_guide_001.Idx_CheckFun];
    }
	/**指引步骤开始函数*/
    public get enf(): string {
        return this._data[Config_guide_001.Idx_Enf];
    }
	/**指引步骤结束函数*/
    public get exf(): string {
        return this._data[Config_guide_001.Idx_Exf];
    }
    //#endregion

}
