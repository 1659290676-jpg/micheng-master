//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

import LanguageMgr from '../../LanguageMgr';
import ConfigData from '../ConfigData';

/**C_011_充值总表.xlsx*/
export default class Config_recharge_011 {

    public static readonly Key = "recharge_011";
    /**
     * 获取对应key数据的 Config_recharge_011 实例
     * @param key 配置表key
     */
    public static getIns(key: string | number): Config_recharge_011 {
        return ConfigData.getRecharge_011(key);
    }
    

    //#region 生成对应静态的get方法 getXxx(data: any[]): xxx getXxxByKey(key: number | string): xxx

    /** 索引 充值类型
	 ** 1:战令
	 ** 2：广告卡
	 ** 3：商店-金币
	 ** 4：商店-礼包
	 ** 5:
	 ** 6：关卡失败礼包 */
    public static readonly Idx_Type: number = 0;
    /**
     * 根据对应表数据获取充值类型
	 ** 1:战令
	 ** 2：广告卡
	 ** 3：商店-金币
	 ** 4：商店-礼包
	 ** 5:
	 ** 6：关卡失败礼包
     * @param data 对应表数据
     */
    public static getType(data: any[]): number {
        return data[Config_recharge_011.Idx_Type];
    }
    /**
     * 根据key获取充值类型
	 ** 1:战令
	 ** 2：广告卡
	 ** 3：商店-金币
	 ** 4：商店-礼包
	 ** 5:
	 ** 6：关卡失败礼包
     * @param key 配置表key
     */
    public static getTypeByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_Type];
    }

    /** 索引 额度 */
    public static readonly Idx_Money: number = 1;
    /**
     * 根据对应表数据获取额度
     * @param data 对应表数据
     */
    public static getMoney(data: any[]): number {
        return data[Config_recharge_011.Idx_Money];
    }
    /**
     * 根据key获取额度
     * @param key 配置表key
     */
    public static getMoneyByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_Money];
    }

    /** 索引 美元（100倍） */
    public static readonly Idx_M_usa: number = 2;
    /**
     * 根据对应表数据获取美元（100倍）
     * @param data 对应表数据
     */
    public static getM_usa(data: any[]): number {
        return data[Config_recharge_011.Idx_M_usa];
    }
    /**
     * 根据key获取美元（100倍）
     * @param key 配置表key
     */
    public static getM_usaByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_M_usa];
    }

    /** 索引 看广告次数 */
    public static readonly Idx_Adv: number = 3;
    /**
     * 根据对应表数据获取看广告次数
     * @param data 对应表数据
     */
    public static getAdv(data: any[]): number {
        return data[Config_recharge_011.Idx_Adv];
    }
    /**
     * 根据key获取看广告次数
     * @param key 配置表key
     */
    public static getAdvByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_Adv];
    }

    /** 索引 广告表Id */
    public static readonly Idx_AdId: number = 4;
    /**
     * 根据对应表数据获取广告表Id
     * @param data 对应表数据
     */
    public static getAdId(data: any[]): number {
        return data[Config_recharge_011.Idx_AdId];
    }
    /**
     * 根据key获取广告表Id
     * @param key 配置表key
     */
    public static getAdIdByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_AdId];
    }

    /** 索引 名称<已抽字>
	 ** 关联的货币类型
	 ** 元宝需把绑定跟非绑定都填上 */
    public static readonly Idx_N: number = 5;
    /**
     * 根据对应表数据获取名称<已抽字>
	 ** 关联的货币类型
	 ** 元宝需把绑定跟非绑定都填上
     * @param data 对应表数据
     * @param args 替换参数
     */
    public static getN(data: any[], ...args: any[]): string {
        return LanguageMgr.getLngTxt(data[Config_recharge_011.Idx_N], ...args);
    }
    /**
     * 根据key获取名称<已抽字>
	 ** 关联的货币类型
	 ** 元宝需把绑定跟非绑定都填上
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getNByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_recharge_011.Idx_N], ...args);
    }

    /** 索引 描述<已抽字> */
    public static readonly Idx_Desc: number = 6;
    /**
     * 根据对应表数据获取描述<已抽字>
     * @param data 对应表数据
     * @param args 替换参数
     */
    public static getDesc(data: any[], ...args: any[]): string {
        return LanguageMgr.getLngTxt(data[Config_recharge_011.Idx_Desc], ...args);
    }
    /**
     * 根据key获取描述<已抽字>
     * @param key 配置表key
     * @param args 替换参数
     */
    public static getDescByKey(key: number | string, ...args: any[]): string {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return LanguageMgr.getLngTxt(data[Config_recharge_011.Idx_Desc], ...args);
    }

    /** 索引 首冲赠送钻石 */
    public static readonly Idx_Zs: number = 7;
    /**
     * 根据对应表数据获取首冲赠送钻石
     * @param data 对应表数据
     */
    public static getZs(data: any[]): number {
        return data[Config_recharge_011.Idx_Zs];
    }
    /**
     * 根据key获取首冲赠送钻石
     * @param key 配置表key
     */
    public static getZsByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_Zs];
    }

    /** 索引 充值返还钻石 */
    public static readonly Idx_Fh: number = 8;
    /**
     * 根据对应表数据获取充值返还钻石
     * @param data 对应表数据
     */
    public static getFh(data: any[]): number {
        return data[Config_recharge_011.Idx_Fh];
    }
    /**
     * 根据key获取充值返还钻石
     * @param key 配置表key
     */
    public static getFhByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_Fh];
    }

    /** 索引 充值返还道具 */
    public static readonly Idx_Dj: number = 9;
    /**
     * 根据对应表数据获取充值返还道具
     * @param data 对应表数据
     */
    public static getDj(data: any[]): number[][] {
        return data[Config_recharge_011.Idx_Dj];
    }
    /**
     * 根据key获取充值返还道具
     * @param key 配置表key
     */
    public static getDjByKey(key: number | string): number[][] {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_Dj];
    }

    /** 索引 可充次数
	 ** 
	 ** 只充值一次还是可循环充值
	 ** 0为无限次 */
    public static readonly Idx_C: number = 10;
    /**
     * 根据对应表数据获取可充次数
	 ** 
	 ** 只充值一次还是可循环充值
	 ** 0为无限次
     * @param data 对应表数据
     */
    public static getC(data: any[]): number {
        return data[Config_recharge_011.Idx_C];
    }
    /**
     * 根据key获取可充次数
	 ** 
	 ** 只充值一次还是可循环充值
	 ** 0为无限次
     * @param key 配置表key
     */
    public static getCByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_C];
    }

    /** 索引 关联 */
    public static readonly Idx_G: number = 11;
    /**
     * 根据对应表数据获取关联
     * @param data 对应表数据
     */
    public static getG(data: any[]): number {
        return data[Config_recharge_011.Idx_G];
    }
    /**
     * 根据key获取关联
     * @param key 配置表key
     */
    public static getGByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_G];
    }

    /** 索引 代币购买
	 ** Administrator:
	 ** 0：不可代币购买
	 ** 1：可代币购买、代币不够则直接充值 */
    public static readonly Idx_Db: number = 12;
    /**
     * 根据对应表数据获取代币购买
	 ** Administrator:
	 ** 0：不可代币购买
	 ** 1：可代币购买、代币不够则直接充值
     * @param data 对应表数据
     */
    public static getDb(data: any[]): number {
        return data[Config_recharge_011.Idx_Db];
    }
    /**
     * 根据key获取代币购买
	 ** Administrator:
	 ** 0：不可代币购买
	 ** 1：可代币购买、代币不够则直接充值
     * @param key 配置表key
     */
    public static getDbByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_Db];
    }

    /** 索引 必须首充才能充值
	 ** DELL:
	 ** 0或不填：不需要
	 ** 1：需要 */
    public static readonly Idx_Sc: number = 13;
    /**
     * 根据对应表数据获取必须首充才能充值
	 ** DELL:
	 ** 0或不填：不需要
	 ** 1：需要
     * @param data 对应表数据
     */
    public static getSc(data: any[]): number {
        return data[Config_recharge_011.Idx_Sc];
    }
    /**
     * 根据key获取必须首充才能充值
	 ** DELL:
	 ** 0或不填：不需要
	 ** 1：需要
     * @param key 配置表key
     */
    public static getScByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_Sc];
    }

    /** 索引 标签
	 ** admin:
	 ** 1：必备
	 ** 2：超值
	 ** 3：限时
	 ** 4：首充双倍 */
    public static readonly Idx_Bq: number = 14;
    /**
     * 根据对应表数据获取标签
	 ** admin:
	 ** 1：必备
	 ** 2：超值
	 ** 3：限时
	 ** 4：首充双倍
     * @param data 对应表数据
     */
    public static getBq(data: any[]): number {
        return data[Config_recharge_011.Idx_Bq];
    }
    /**
     * 根据key获取标签
	 ** admin:
	 ** 1：必备
	 ** 2：超值
	 ** 3：限时
	 ** 4：首充双倍
     * @param key 配置表key
     */
    public static getBqByKey(key: number | string): number {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_Bq];
    }

    /** 索引 跳转链接
	 ** 
	 ** 用于判断活动充值 */
    public static readonly Idx_Tz: number = 15;
    /**
     * 根据对应表数据获取跳转链接
	 ** 
	 ** 用于判断活动充值
     * @param data 对应表数据
     */
    public static getTz(data: any[]): number[] {
        return data[Config_recharge_011.Idx_Tz];
    }
    /**
     * 根据key获取跳转链接
	 ** 
	 ** 用于判断活动充值
     * @param key 配置表key
     */
    public static getTzByKey(key: number | string): number[] {
        let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
        if (!data) {
            console.error(Config_recharge_011.Key + "配置数据不存在: " + key);
            return;
        }
        return data[Config_recharge_011.Idx_Tz];
    }
    //#endregion


    /**数据*/
    private _data: any[];
    public constructor(data: any[]) {
        this._data = data;
    }


    //#region 生成对应的get方法 get xxx()

	/**充值类型
	 ** 1:战令
	 ** 2：广告卡
	 ** 3：商店-金币
	 ** 4：商店-礼包
	 ** 5:
	 ** 6：关卡失败礼包*/
    public get type(): number {
        return this._data[Config_recharge_011.Idx_Type];
    }
	/**额度*/
    public get money(): number {
        return this._data[Config_recharge_011.Idx_Money];
    }
	/**美元（100倍）*/
    public get m_usa(): number {
        return this._data[Config_recharge_011.Idx_M_usa];
    }
	/**看广告次数*/
    public get adv(): number {
        return this._data[Config_recharge_011.Idx_Adv];
    }
	/**广告表Id*/
    public get adId(): number {
        return this._data[Config_recharge_011.Idx_AdId];
    }
	/**名称<已抽字>
	 ** 关联的货币类型
	 ** 元宝需把绑定跟非绑定都填上*/
    public get n(): string {
        return LanguageMgr.getLngTxt(this._data[Config_recharge_011.Idx_N]);
    }
	/**
     * 名称<已抽字>
	 ** 关联的货币类型
	 ** 元宝需把绑定跟非绑定都填上
     * @param args 替换参数
     */
    public getN(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_recharge_011.Idx_N], ...args);
    }
	/**描述<已抽字>*/
    public get desc(): string {
        return LanguageMgr.getLngTxt(this._data[Config_recharge_011.Idx_Desc]);
    }
	/**
     * 描述<已抽字>
     * @param args 替换参数
     */
    public getDesc(...args: any[]): string {
        return LanguageMgr.getLngTxt(this._data[Config_recharge_011.Idx_Desc], ...args);
    }
	/**首冲赠送钻石*/
    public get zs(): number {
        return this._data[Config_recharge_011.Idx_Zs];
    }
	/**充值返还钻石*/
    public get fh(): number {
        return this._data[Config_recharge_011.Idx_Fh];
    }
	/**充值返还道具*/
    public get dj(): number[][] {
        return this._data[Config_recharge_011.Idx_Dj];
    }
	/**可充次数
	 ** 
	 ** 只充值一次还是可循环充值
	 ** 0为无限次*/
    public get c(): number {
        return this._data[Config_recharge_011.Idx_C];
    }
	/**关联*/
    public get g(): number {
        return this._data[Config_recharge_011.Idx_G];
    }
	/**代币购买
	 ** Administrator:
	 ** 0：不可代币购买
	 ** 1：可代币购买、代币不够则直接充值*/
    public get db(): number {
        return this._data[Config_recharge_011.Idx_Db];
    }
	/**必须首充才能充值
	 ** DELL:
	 ** 0或不填：不需要
	 ** 1：需要*/
    public get sc(): number {
        return this._data[Config_recharge_011.Idx_Sc];
    }
	/**标签
	 ** admin:
	 ** 1：必备
	 ** 2：超值
	 ** 3：限时
	 ** 4：首充双倍*/
    public get bq(): number {
        return this._data[Config_recharge_011.Idx_Bq];
    }
	/**跳转链接
	 ** 
	 ** 用于判断活动充值*/
    public get tz(): number[] {
        return this._data[Config_recharge_011.Idx_Tz];
    }
    //#endregion

}
