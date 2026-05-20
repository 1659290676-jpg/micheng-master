
import ObjectCompressor from "../XYFrame/Network/ObjectCompressor";
import RegExpUtils from "../XYFrame/Utils/RegExpUtils";
import ConfigData from "./ConfigData/ConfigData";
import { EnumLanguage } from "./EnumLanguage";

/**
 * @ Author: XXL
 * @ Date: 2025-11-26 17:51
 * @ Description: 语言管理
*/
export default class LanguageMgr {
    /**地区*/
    public static readonly region: EnumLanguage;
    /**地区名称*/
    public static readonly regionName: string = "";
    /**语言包类型*/
    public static readonly lngType: EnumLanguage = EnumLanguage.ZHCN;
    /**语言包名称*/
    public static readonly lngName: string = "";
    /**本地化资源目录*/
    public static readonly localDir = "localize/";
    /** 本地化资源标识 */
    public static readonly localVal = 1;
    /**加密语言包的字符集合*/
    private static _en_lngTxtMap: Record<string, Uint8Array> = {};
    /**语言包的字符集合*/
    private static _lngTxtMap: Record<string, any> = {};
    /**本地化资源，key:资源res下路径,value:语言包类型集合*/
    private static _resMap: Record<string, number>;

    /**
     * 初始化语言包类型和后缀
     * @param region 地区
     * @param lngType 语言包类型
     * @param lngNameMap 
     */
    public static initLng(region: number, lngType: number, regionMap: Record<string, string>, lngNameMap: Record<string, string>) {
        let _t = <any>LanguageMgr;
        window.setLangType && window.setLangType(lngType);
        region = +region||0;
        lngType = +lngType||0;
        _t.region = region;
        _t.lngType = lngType;
        _t.localVal = Math.pow(2, lngType);
        if (regionMap && region && regionMap[region]) {
            _t.regionName = regionMap[region];
        }
        if (lngNameMap && lngType && lngNameMap[lngType]) {
            _t.lngName = lngNameMap[lngType];
        }
    }

    /**
     * 设置本地化资源
     * @param map 
     */
    public static setLocal(map: Record<string, number>) {
        LanguageMgr._resMap = map;
        Laya.URL.customFormat = LanguageMgr.getResPath;
    }

    /**
     * 获取地区文件
     * @param name 文件初始名
     */
    public static getRegionFile(name: string) {
        if (LanguageMgr.regionName && LanguageMgr.regionName != "zhcn" && LanguageMgr.regionName != "0")
            return name + "_" + LanguageMgr.regionName;
        return name;
    }


    /**
     * 设置语言包字符
     * @param map 
     */
    public static setLngMap(map: Record<string, Uint8Array>) {
        if (map) LanguageMgr._en_lngTxtMap = map;
        LanguageMgr._lngTxtMap = {};
    }

    /**
     * 获取C_100_抽字.xlsx表中文本
     * @param txtId 文本编号
     * @param arg 需要替换{0}{1}...的参数
     * @returns 
     */
    public static getTxt(txtId: number | string, ...arg: any) {
        if (!ConfigData.text_100) return "";
        let str = ConfigData.text_100[txtId];
        if (str) {
            return LanguageMgr.getLngTxt(str, ...arg);
        }
        return txtId + "";
    }

    /**
     * 获取语言包中文本
     * @param lngKey 语言包中key
     * @param arg 需要替换{0}{1}...的参数
     * @returns 
     */
    public static getLngTxt(lngKey: string, ...arg: any) {
        if (!lngKey) return "";
        let l = lngKey.split("&");
        let name = l.shift();
        //todo 先解密
        if (LanguageMgr._en_lngTxtMap[name]) {
            LanguageMgr._lngTxtMap[name] = <any>ObjectCompressor.decompress(LanguageMgr._en_lngTxtMap[name]) || {};
            delete LanguageMgr._en_lngTxtMap[name];
        }
        if (LanguageMgr._lngTxtMap[name]) {
            let key = l.join("&");
            return RegExpUtils.reTxt(LanguageMgr._lngTxtMap[name][key] || lngKey, ...arg);
        }
        return lngKey;
    }

    /**
     * 获取本地化资源路径
     * @param res 
     */
    public static getResPath(res: string) {
        if (LanguageMgr._resMap) {
            let val = LanguageMgr._resMap[res];
            if (val && (val & LanguageMgr.localVal) > 0) {
                res = LanguageMgr.localDir + LanguageMgr.lngName + "/" + res.replace(/\bresources\/\b/g, "resource/");
            }
        }
        return res;
    }
}