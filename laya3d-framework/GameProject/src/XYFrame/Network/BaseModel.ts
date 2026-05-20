import Game from "../../Game/Game";
import { XYFrame } from "../XYFrame";
import BaseBytes from "./BaseBytes";
import { SocketMgr } from "./SocketMgr";
import Vo_CacheData from "./Vo_CacheData";

/**
* @Author: XXL
* @Date: 2022-07-12 20:19
* @Description: 类注释
*/
export default class BaseModel {
    /**系统缓存的数据，掉线时会清理*/
    protected _cacheData: Vo_CacheData;

    protected socket: SocketMgr;
    public constructor(socket: SocketMgr) {
        let _t = this;
        _t.socket = socket;
        _t.registerCmd(_t, socket);
    }

    // todo ====================== 缓存数据 start =============================
    //#region 缓存数据
    /**
     * 获取缓存的总数据
     * @returns 
     */
    protected get cacheVo(): Vo_CacheData {
        return this._cacheData || (this._cacheData = new Vo_CacheData());
    }

    /**
     * 登录时要上报服务器数据，需要重载定义
     * @param isReconnect 是否重连
     */
    public getOfflineData?(isReconnect?: boolean): any;

    /**
     * 清理数据
     */
    public clearData() {
        // this.saveStorage();
        if (this._cacheData)
            this._cacheData.clear();
    }

    /**掉线后保存到本地*/
    public saveStorage() {
        if (DEBUG) {
            if (!Game.isSaveCache) return;
        }
        let key = this.getStorageKey();
        if (key) {
            let data = this.getStorageData();
            if (!Number.isNaN(data)) {
                XYFrame.StorageMgr.setModelVal(key, data);
            }
        }
    }

    /**
     * 获取缓存数据key，需要重装处理
     * @returns 
     */
    public getStorageKey(): string {
        return "";
    }

    /**
     * 获取缓存数据，需要重装处理
     * @returns 
     */
    protected getStorageData(): any {
        if (this._cacheData) {
            return this._cacheData.toStorage();
        }
        return NaN;
    }

    /**
     * 读取缓存数据
     */
    protected readStorage() {
        let key = this.getStorageKey();
        if (key)
            return XYFrame.StorageMgr.getModelVal<any>(key);
        return;
    }

    /**
     * 获取缓存数据的数值
     * @param key 
     * @returns 
     */
    protected getCacheNum(key: string | number) {
        return this.cacheVo.getNum(key);
    }

    /**
     * 设置缓存数据的数值
     * @param key 
     * @param value 
     * @param isSave 是否保存到本地，默认true
     */
    protected setCacheNum(key: string | number, value: number, isSave = true) {
        this.cacheVo.setNum(key, value);
        isSave && this.saveStorage();
    }

    /**
     * 获取缓存数据的布尔值
     * @param key 
     * @returns 
     */
    protected getCacheBool(key: string | number) {
        return this.cacheVo.getBool(key);
    }

    /**
     * 设置缓存数据的布尔值
     * @param key 
     * @param value 
     * @param isSave 是否保存到本地，默认true
     */
    protected setCacheBool(key: string | number, value: boolean, isSave = true) {
        this.cacheVo.setBool(key, value);
        isSave && this.saveStorage();
    }

    /**
     * 获取缓存数据的字符串
     * @param key 
     * @returns 
     */
    protected getCacheStr(key: string | number) {
        return this.cacheVo.getStr(key);
    }

    /**
     * 设置缓存数据的字符串
     * @param key 
     * @param value 
     * @param isSave 是否保存到本地，默认true
     */
    protected setCacheStr(key: string | number, value: string, isSave = true) {
        this.cacheVo.setStr(key, value);
        isSave && this.saveStorage();
    }

    /**
     * 获取缓存数据的数组
     * @param key 
     * @returns 
     */
    protected getCacheArr<T>(key: string | number): T[] {
        return this.cacheVo.getArr(key);
    }

    /**
     * 设置缓存数据的数组
     * @param key 
     * @param value 
     * @param isSave 是否保存到本地，默认true
     */
    protected setCacheArr(key: string | number, value: any[], isSave = true) {
        this.cacheVo.setArr(key, value);
        isSave && this.saveStorage();
    }

    /**
     * 获取缓存数据的映射表
     * @param key 
     * @returns 
     */
    protected getCacheMap(key: string | number, isCreate?: boolean): Record<string | number, any> {
        return this.cacheVo.getMap(key, isCreate);
    }

    /**
     * 设置缓存数据的映射表
     * @param key 
     * @param value 
     * @param isSave 是否保存到本地，默认true
     */
    protected setCacheMap(key: string | number, value: Record<string | number, any>, isSave = true) {
        this.cacheVo.setMap(key, value);
        isSave && this.saveStorage();
    }

    /**
     * 获取缓存数据的Vo
     * @param key 
     * @returns 
     */
    protected getCacheVo(key: string | number) {
        return this.cacheVo.getVo(key);
    }

    /**
     * 设置缓存数据的Vo
     * @param key 
     * @param value 
     * @param isSave 是否保存到本地，默认true
     */
    protected setCacheVo<T extends ICacheData>(key: string | number, value: T, isSave = true) {
        this.cacheVo.setVo(key, value);
        isSave && this.saveStorage();
    }

    //#endregion
    // todo ====================== 缓存数据 end =============================

    /** 缓存数据初始化函数，需要重装处理 */
    public initCache?(): any;
    /** 缓存数据初始化完成函数，需要重装处理，需要在缓存数据初始化完成后调用 */
    public initCacheEnd?(): any;
    /** 进入服务器前初始化数据，连接socket前 */
    public initBeforeEnter?(): any;
    /** 完全进入游戏初始化 */
    public initAfterEnter?(): any;
    /** 0点处理 */
    public onZero?(): any;
    /** 掉线处理 */
    public onOfflineHandle?(): any;

    /**
     * 销毁
     */
    public destroy(): void {
        this.clear();
    }

    /**
     * 清理数据
     */
    public clear(): void {
        this.clearData();
    }

    /**
     * 注册协议
     * @param _t 
     * @param mgr 
     */
    protected registerCmd(self: this, mgr: SocketMgr) { }

    /**
     * 发送协议
     * @param cmd 协议号
     * @param b 协议内容
     * @param type 发送的对应socket
     */
    public sendCmd(cmd: number, b: BaseBytes, type?: 1 | 2 | 3) {
        this.socket.sendCmd(cmd, b);
    }

    /**
     * 模拟接收到协议
     * @param cmd 
     * @param b 
     */
    public simulateCmd(cmd: number, b: BaseBytes) {
        this.socket.simulateRecive(cmd, b);
    }

    /** 获取BYTEBUFF*/
    public getBytes() {
        return this.socket.sendByte.clear();
    }

    /**
     * 派发事件
     * @param msg 
     * @param arg 
     */
    public emit(msg: string | number, ...arg: unknown[]) {
        XYFrame.Msg.emit(msg, ...arg);
    }
}