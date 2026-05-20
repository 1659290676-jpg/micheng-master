import Logger from "../Logger/Logger";
import ArrayUtils from "../Utils/ArrayUtils";
import BaseBytes from "./BaseBytes";
import { EnumSocket, SocketSendMode } from "./EnumSocket";
import { SocketClient, SocketEvent } from "./SocketClient";

/**
 * 消息处理器函数类型
 */
type MessageHandler = {
    callback: (ctx: any, data: BaseBytes, socketId: number, isSimulate?: boolean) => void;
    caller: any;
}

/**
 * 协议Socket配置
 */
type CmdSocketConfig = {
    /** Socket列表 */
    sockets: number[];
    /** 发送模式 */
    mode: SocketSendMode;
}

/**
 * 协议处理器 - 所有Socket公用
 */
export class ProtocolHandler {
    /** 消息处理器映射 */
    private readonly handlerMap: Map<number, MessageHandler> = new Map();
    /** 已绑定的Socket列表 */
    private readonly boundSockets: Map<number, SocketClient> = new Map();
    /** 协议号到Socket的映射 - 配置每个协议使用哪些Socket发送（支持多个） */
    private readonly cmdToSocketMap: Map<number, CmdSocketConfig> = new Map();
    /** 临时发送数据缓存 */
    private _sbytes = new BaseBytes(null, true);
    /** 临时接收数据缓存 */
    private _rbytes = new BaseBytes(null, true);
    /** 模拟数据缓存 */
    private _simulateBytes = new BaseBytes(null, true);
    /** 是否启用日志（默认关闭，减少性能消耗） */
    private _enableLog: boolean = false;

    /**
     * 设置是否启用日志
     * @param enable 是否启用（默认false，减少性能消耗）
     */
    public setEnableLog(enable: boolean): void {
        this._enableLog = enable;
    }

    /**
     * 绑定Socket
     * @param socketId Socket协议号
     * @param socket Socket实例
     */
    public bindSocket(socketId: number, socket: SocketClient): void {
        if (this.boundSockets.has(socketId)) {
            Logger.warn("Socket已绑定", socketId);
            return;
        }

        // 监听消息
        socket.on(SocketEvent.MESSAGE, this._onMessage, this);

        this.boundSockets.set(socketId, socket);
        // Logger.log("绑定Socket到协议处理器", socketId);
    }

    /**
     * 解绑Socket
     * @param socketId Socket协议号
     */
    public unbindSocket(socketId: number): void {
        let socket = this.boundSockets.get(socketId);
        if (socket) {
            socket.off(SocketEvent.MESSAGE, this._onMessage, this);
            this.boundSockets.delete(socketId);
            Logger.log("解绑Socket", socketId);
        }
    }

    /**
     * 注册消息处理器
     * @param cmd 消息id
     * @param handler 处理函数
     */
    public register<T>(cmd: number, callback: (caller: T, byte: BaseBytes, socketId?: number) => any, caller: T): void {
        if (this.handlerMap.has(cmd)) {
            Logger.warn("消息处理器已注册", cmd);
            return;
        }
        this.handlerMap.set(cmd, { callback: callback, caller: caller });
    }

    /**
     * 取消注册消息处理器
     * @param cmd 消息类型
     */
    public unregister(cmd: number): void {
        this.handlerMap.delete(cmd);
    }

    /**
     * 处理集合的服务器接收的消息
     * @param data 消息数据
     * @param from 
     * @param socketId 
     */
    public dealFromData(data: BaseBytes, from: number, socketId: number) {
        let len = data.readShort();
        let bytepos = data.pos;
        for (let i: number = 0; i < len; i++) {
            let byteslen = data.readShort();
            bytepos += byteslen + 2;
            let cmd = data.readShort();
            let call = this.handlerMap.get(cmd);
            if (call) {
                Logger.log("from cmd=" + from + ",cmd:" + cmd);
                call.callback(call.caller, data, socketId);
            } else {
                Logger.error("未注册协议：from cmd=" + from + ",cmd=" + cmd);
            }
            data.pos = bytepos;
        }
    }

    /**
     * 批量设置协议使用的Socket，只保存奇数协议号
     * @param startCmd 开始消息协议号
     * @param endCmd 结束消息协议号
     * @param socketId Socket协议号或Socket协议号数组
     * @param mode 发送模式（默认ALL：发送到所有Socket，ANY：任意一个成功即可）
     */
    public setCmdSocket(startCmd: number, endCmd: number, socketId: number | number[], mode: SocketSendMode = SocketSendMode.ALL): void {
        let sockets = Array.isArray(socketId) ? ArrayUtils.sort(socketId, -1) : [socketId];
        let info = { sockets: sockets, mode: mode };
        if (startCmd % 2 == 0) startCmd += 1;
        for (let cmd = startCmd; cmd <= endCmd; cmd += 2) {
            this.cmdToSocketMap.set(cmd, info);
        }
    }

    /**
     * 接收消息
     * @param socketId Socket协议号
     * @param data 消息数据
     */
    private _onMessage(_t: this, socketId: number, data: BaseBytes): void {
        let bytes = _t._rbytes;
        while (data.bytesAvailable > 4) {
            let len = data.readInt32();
            if (len < 0) {
                data.clear();
                Logger.error("接收协议长度错误 len=" + len);
                break;
            }
            if (data.bytesAvailable < len - 4) {
                data.pos -= 4;
                break;
            }
            bytes.clear();
            if (len - 4 > 0) {
                data.readBytes(bytes, 0, len - 4);
                bytes.pos = 0;
            }
            let cmd = bytes.readShort();
            let handler = _t.handlerMap.get(cmd);
            if (handler) {
                if (_t._enableLog)
                    Logger.log("receive socketId:" + socketId + " cmd:" + cmd);
                handler.callback(handler.caller, bytes, socketId);
            } else {
                Logger.error("未注册协议 cmd=" + cmd)
            }
            if (!data.bytesAvailable) {
                data.clear();
                break;
            }
        }
    }

    /**
     * 发送消息到指定Socket
     * @param cmd 消息id
     * @param data 消息数据
     * @param socketId Socket Id（可选，如果不传则使用setCmdSocket配置的Socket，支持发送到多个Socket）
     * @param mode 发送模式（可选，如果不传则使用配置的模式）
     * @returns 是否发送成功（ALL模式：全部成功才返回true，ANY模式：任意一个成功就返回true）
     */
    public send(cmd: number, data: BaseBytes, socketId?: number | number[], mode?: SocketSendMode): boolean {
        // 准备发送数据（复用 _sbytes）
        let bytes = this._sbytes;
        bytes.clear();
        bytes.writeInt32(data.length + 4 + 2);
        bytes.writeShort(cmd);
        bytes.writeBytes(data);

        let socketIds: number[];
        let sendMode: SocketSendMode;

        // 确定要发送到哪些Socket和发送模式
        if (socketId !== undefined && socketId !== null) {
            // 如果传入了socketId参数，使用参数
            if (Array.isArray(socketId)) {
                socketIds = socketId;
                sendMode = mode !== undefined ? mode : SocketSendMode.ALL;
            } else {
                return this._send(cmd, bytes, socketId);
            }
        } else {
            // 否则从配置中获取（只查找一次）
            let config = this.cmdToSocketMap.get(cmd);
            if (!config || config.sockets.length === 0) {
                //没有配置发送动默认socket
                return this._send(cmd, bytes, EnumSocket.DEFAULT);
            }
            socketIds = config.sockets;
            sendMode = mode !== undefined ? mode : config.mode;
        }

        // 根据发送模式发送
        if (sendMode === SocketSendMode.ANY) {
            // ANY模式：任意一个成功就返回true，并停止发送
            return this._sendAnyMode(cmd, bytes, socketIds);
        } else {
            // ALL模式：发送到所有Socket，全部成功才返回true
            return this._sendAllMode(cmd, bytes, socketIds);
        }
    }

    /**
     * 发送指定socket消耗
     * @param cmd 
     * @param bytes 
     * @param socketId 
     * @returns 
     */
    private _send(cmd: number, bytes: BaseBytes, socketId: number) {
        let socket = this.boundSockets.get(socketId);
        if (socket) {
            if (this._enableLog) {
                Logger.log("send socketId:" + socketId + " cmd:" + cmd);
            }
            return socket.send(bytes);
        } else {
            return false;
        }
    }

    /**
     * ALL模式发送：发送到所有Socket
     * @param cmd 消息id
     * @param bytes 发送数据
     * @param socketIds Socket列表
     * @returns 是否有成功
     */
    private _sendAllMode(cmd: number, bytes: BaseBytes, socketIds: number[]): boolean {
        let success = true;

        for (let i = 0, len = socketIds.length; i < len; i++) {
            if (!this._send(cmd, bytes, socketIds[i])) {
                success = false;
            }
        }

        return success;
    }

    /**
     * ANY模式发送：任意一个成功即可
     * @param cmd 消息id
     * @param bytes 发送数据
     * @param socketIds Socket列表
     * @returns 是否有任意一个成功
     */
    private _sendAnyMode(cmd: number, bytes: BaseBytes, socketIds: number[]): boolean {
        for (let i = 0, len = socketIds.length; i < len; i++) {
            if (this._send(cmd, bytes, socketIds[i]))
                return true;
        }

        return false;
    }

    /**
     * 模拟接收到协议
     * @param cmd 
     * @param bytes 
     */
    public simulateRecive(cmd: any, bytes: BaseBytes) {
        let handler = this.handlerMap.get(cmd);
        if (handler) {
            if (this._enableLog)
                Logger.log("simulate receive cmd:" + cmd);
            this._simulateBytes.clear();
            this._simulateBytes.writeBytes(bytes);
            this._simulateBytes.pos = 0;
            handler.callback(handler.caller, this._simulateBytes, EnumSocket.DEFAULT, true);
        } else {
            Logger.error("未注册协议 cmd=" + cmd)
        }
    }

    /**
     * 获取已绑定的Socket
     * @param socketId Socket协议号
     */
    public getSocket(socketId: number): SocketClient {
        return this.boundSockets.get(socketId) || null;
    }

    /**
     * 获取所有已绑定的Socket协议号
     */
    public getBoundSocketIds(): number[] {
        return Array.from(this.boundSockets.keys());
    }

    /**
     * 销毁
     */
    public destroy(): void {
        // 解绑所有Socket
        for (let socketId of this.boundSockets.keys()) {
            this.unbindSocket(socketId);
        }

        // 清空处理器
        this.handlerMap.clear();
        this.cmdToSocketMap.clear();
        this._rbytes.clear();
    }
}
