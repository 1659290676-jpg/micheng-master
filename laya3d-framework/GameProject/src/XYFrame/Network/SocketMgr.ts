import Singleton from "../Base/Singleton";
import Logger from "../Logger/Logger";
import { SocketClient, ISocketConfig, SocketState } from "./SocketClient";
import { ProtocolHandler } from "./ProtocolHandler";
import { EnumSocket, SocketSendMode } from "./EnumSocket";
import BaseBytes from "./BaseBytes";

const { regClass } = Laya;

/**
 * @ Author: XXL
 * @ Date: 2026-02-04
 * @ Description: 网络管理器，支持多Socket连接
 */
@regClass()
export class SocketMgr extends Singleton {
    /**发送协议的byte*/
    public readonly sendByte: BaseBytes = new BaseBytes(null, true);
    /** Socket连接映射 */
    private readonly socketMap: Map<number, SocketClient> = new Map();
    /** 协议处理器 */
    private handler: ProtocolHandler;

    protected onInit(): void {
        // 创建协议处理器
        this.handler = new ProtocolHandler();
    }

    /**
     * 获取协议处理器
     */
    public getHandler(): ProtocolHandler {
        return this.handler;
    }

    /**
     * 创建Socket连接
     * @param id socket id（唯一标识）
     * @param config Socket配置
     * @param autoBind 是否自动绑定到协议处理器（默认true）
     * @returns Socket客户端实例
     */
    public getSocket(id: EnumSocket, config?: ISocketConfig, autoBind: boolean = true): SocketClient {
        let _t = this;

        // 检查是否已存在
        if (_t.socketMap.has(id)) {
            let socket = _t.socketMap.get(id);
            config && socket.setConfig(config);
            return socket;
        }

        // 创建Socket客户端
        let socket = new SocketClient(id, config || <any>{});
        _t.socketMap.set(id, socket);

        // 自动绑定到协议处理器
        if (autoBind && _t.handler) {
            _t.handler.bindSocket(id, socket);
        }

        Logger.log("创建Socket连接", id, config && config.url);
        return socket;
    }

    // /**
    //  * 获取Socket连接
    //  * @param id socket id
    //  * @returns Socket客户端实例
    //  */
    // public getSocket(id: EnumSocket): SocketClient {
    //     return this.socketMap.get(id) || null;
    // }

    /**
     * 获取Socket连接
     * @param id socket id
     * @returns Socket客户端实例
     */
    private _getSocket(id: EnumSocket): SocketClient {
        return this.socketMap.get(id) || null;
    }

    /**
     * 移除Socket连接
     * @param id socket id
     */
    public removeSocket(id: EnumSocket): void {
        let _t = this;
        let socket = _t.socketMap.get(id);

        if (socket) {
            // 从协议处理器解绑
            if (_t.handler) {
                _t.handler.unbindSocket(id);
            }

            socket.destroy();
            _t.socketMap.delete(id);
            Logger.log("移除Socket连接", id);
        }
    }

    /**
     * 连接Socket
     * @param id socket id
     */
    public connect(id: EnumSocket): void {
        let socket = this._getSocket(id);
        if (socket) {
            socket.connect();
        } else {
            Logger.warn("Socket连接不存在", id);
        }
    }

    /**
     * 断开Socket连接
     * @param id socket id
     */
    public disconnect(id: EnumSocket): void {
        let socket = this._getSocket(id);
        if (socket) {
            socket.disconnect();
        } else {
            Logger.warn("Socket连接不存在", id);
        }
    }

    /**
     * 注册协议。
     * @param cmd 协议号。
     * @param callBack 回调。
     * @param thisObj 回调主体。
     */
    public listen<T>(cmd: number, callBack: (thisObj: T, byte: BaseBytes, socketId?: number, isSimulate?: boolean) => any, thisObj: T) {
        // if (this.cmdMap[cmd]) {
        //     Logger.error("重复注册协议", cmd);
        // }
        // this.cmdMap[cmd] = { fun: callBack, obj: thisObj };
        this.handler.register(cmd, callBack, thisObj);
    }

    /**
     * 发送消息
     * @param id 消息id
     * @param data 消息数据
     * @param socketIds socket id
     * @param mode 发送模式
     */
    public sendCmd(id: number, data: BaseBytes, socketId?: number | number[], mode?: SocketSendMode): boolean {
        return this.handler.send(id, data, socketId, mode);
    }

    /**
     * 模拟接收到协议
     * @param cmd 
     * @param bytes 
     */
    public simulateRecive(cmd: any, bytes: BaseBytes) {
        this.handler.simulateRecive(cmd, bytes);
    }

    /**
     * 检查Socket是否已连接
     * @param id socket id
     */
    public isConnected(id: EnumSocket): boolean {
        let socket = this._getSocket(id);
        return socket ? socket.isConnected() : false;
    }

    /**
     * 获取Socket状态
     * @param id socket id
     */
    public getState(id: EnumSocket): SocketState {
        let socket = this._getSocket(id);
        return socket ? socket.getState() : SocketState.CLOSED;
    }

    /**
     * 断开所有连接
     */
    public disconnectAll(): void {
        let _t = this;
        _t.socketMap.forEach((socket) => {
            socket.disconnect();
        });
    }

    /**
     * 销毁所有连接
     */
    public destroy(): void {
        super.destroy();
        let _t = this;

        // 销毁所有Socket
        _t.socketMap.forEach((socket) => {
            socket.destroy();
        });
        _t.socketMap.clear();

        // 销毁协议处理器
        if (_t.handler) {
            _t.handler.destroy();
            _t.handler = null;
        }
    }

    /**
     * 获取Socket连接数量
     */
    public getSocketCount(): number {
        return this.socketMap.size;
    }
}
