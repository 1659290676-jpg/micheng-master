import Logger from "../Logger/Logger";
import Message from "../Message/Message";
import BaseBytes from "./BaseBytes";

/**
 * Socket连接状态
 */
export enum SocketState {
    /** 未连接 */
    CLOSED = 0,
    /** 连接中 */
    CONNECTING = 1,
    /** 已连接 */
    CONNECTED = 2,
    /** 关闭中 */
    CLOSING = 3
}

/**
 * Socket事件
 */
export enum SocketEvent {
    /** 连接成功 */
    CONNECTED = "socket_connected",
    /** 连接失败 */
    CONNECT_FAILED = "socket_connect_failed",
    /** 连接关闭 */
    CLOSED = "socket_closed",
    /** 主动断开连接 */
    MANUAL_CLOSED = "socket_manual_closed",
    /** 网络断开连接 */
    NETWORK_CLOSED = "socket_network_closed",
    /** 接收到消息 */
    MESSAGE = "socket_message",
    /** 错误 */
    ERROR = "socket_error"
}

/**
 * Socket配置
 */
export interface ISocketConfig {
    /** 服务器地址 */
    url: string;
    /** 是否自动重连 */
    autoReconnect?: boolean;
    /** 重连间隔（毫秒） */
    reconnectInterval?: number;
    /** 最大重连次数 */
    maxReconnectAttempts?: number;
    /** 心跳间隔（毫秒） */
    heartbeatInterval?: number;
    /** 心跳超时（毫秒） */
    heartbeatTimeout?: number;
    /** 连接超时（毫秒） */
    connectTimeout?: number;
}

/**
 * @ Author: XXL
 * @ Date: 2026-02-04
 * @ Description: Socket客户端
 */
export class SocketClient extends Message {
    private id: number;
    /** Socket实例 */
    private socket: Laya.Socket;
    /** 配置 */
    private config: ISocketConfig;
    /** 连接状态 */
    private state: SocketState = SocketState.CLOSED;
    /** 重连次数 */
    private reconnectAttempts: number = 0;
    /** 是否主动关闭 */
    private isManualClose: boolean = false;
    /** Socket事件是否已绑定 */
    private isSocketBound: boolean = false;
    /** 保存接收信息 */
    private _bytes: BaseBytes = new BaseBytes(null, true);
    private _headByte: BaseBytes;

    /** 心跳包间隔定时器 */
    private _heartbeatTimer: number;

    constructor(id: number, config: ISocketConfig) {
        super();
        this.id = id;
        this.config = {
            autoReconnect: true,
            reconnectInterval: 1000,
            maxReconnectAttempts: 3,
            heartbeatInterval: 10000,
            heartbeatTimeout: 10000,
            connectTimeout: 10000,
            ...config
        };
        // 心跳包是109协议
        let byte = this._headByte = new BaseBytes(null, true);
        byte.writeInt32(4 + 2);
        byte.writeShort(109);
        // 创建Socket并绑定事件（只绑定一次）
        // this._createSocket();
    }

    // 增加修改配置接口，如果url不一样需要断线才重连
    public setConfig(config: ISocketConfig): void {
        if (config.url && config.url !== this.config.url) {
            this._unbindSocket();
            this.disconnect();
        }
        let info = this.config;
        this.config = {
            ...info,
            ...config
        };
    }

    /**
     * 连接服务器
     */
    public connect(): void {
        let _t = this;
        if (_t.state === SocketState.CONNECTING || _t.state === SocketState.CONNECTED) {
            Logger.warn("Socket已连接或正在连接中", _t.config.url);
            return;
        }

        _t._createSocket();
        // if (!_t.isSocketBound) {
        //     _t._bindSocket();
        // }

        Logger.log("开始连接Socket", _t.config.url);
        _t.state = SocketState.CONNECTING;
        _t.isManualClose = false;

        // 设置连接超时
        _t._startConnectTimeout();

        // 连接服务器
        _t.socket.connectByUrl(_t.config.url);
    }

    /**
     * 断开连接
     */
    public disconnect(): void {
        let _t = this;
        _t.isManualClose = true;
        _t._clearAllTimers();
        
        if (_t.socket) {
            Logger.log("主动断开Socket连接", _t.config.url);
            _t.state = SocketState.CLOSING;
            _t.socket.close();
            _t._bytes.clear();
        }
    }

    /**
     * 模拟关闭连接，用于测试
     */
    public simulateClose() {
        let _t = this;
        Logger.log("模拟Socket断开连接", _t.config.url);
        _t.isManualClose = false;
        _t._clearAllTimers();
        if (_t.socket) {
            _t.state = SocketState.CLOSING;
            _t.socket.close();
            _t._bytes.clear();
        }
    }

    /**
     * 发送消息
     * @param data 消息数据
     */
    public send(data: BaseBytes): boolean {
        if (this.state !== SocketState.CONNECTED) {
            Logger.warn("Socket未连接，无法发送消息");
            return false;
        }

        this.socket.send(data.buffer);
        return true;
    }

    /**
     * 发送心跳
     */
    public sendHeartbeat(): void {
        if (this.state === SocketState.CONNECTED) {
            if (DEBUG) {
                Logger.log("发送心跳包");
            }
            this.send(this._headByte);
        }
    }

    /**
     * 获取连接状态
     */
    public getState(): SocketState {
        return this.state;
    }

    /**
     * 是否已连接
     */
    public isConnected(): boolean {
        return this.state === SocketState.CONNECTED;
    }

    /**
     * 销毁
     */
    public destroy(): void {
        let _t = this;

        _t._unbindSocket();

        _t.disconnect();

        _t.socket = null;
        super.destroy();
    }

    /**
     * 创建Socket并绑定事件
     */
    private _createSocket(): void {
        let _t = this;
        if (_t.socket) {
            return;
        }

        _t.socket = new Laya.Socket();
        _t.socket.endian = _t._bytes.endian = Laya.Byte.BIG_ENDIAN;
        _t._bindSocket();
    }

    /**
     * 绑定Socket事件
     */
    private _bindSocket(): void {
        let _t = this;

        if (_t.isSocketBound || !_t.socket) {
            return;
        }

        let socket = _t.socket;
        socket.on(Laya.Event.OPEN, _t, _t._onOpen);
        socket.on(Laya.Event.MESSAGE, _t, _t._onMessage);
        socket.on(Laya.Event.CLOSE, _t, _t._onClose);
        socket.on(Laya.Event.ERROR, _t, _t._onError);
        _t.isSocketBound = true;
    }

    /**
     * 解绑Socket事件
     */
    private _unbindSocket(): void {
        let _t = this;

        if (!_t.isSocketBound || !_t.socket) {
            return;
        }

        _t.socket.off(Laya.Event.OPEN, _t, _t._onOpen);
        _t.socket.off(Laya.Event.MESSAGE, _t, _t._onMessage);
        _t.socket.off(Laya.Event.CLOSE, _t, _t._onClose);
        _t.socket.off(Laya.Event.ERROR, _t, _t._onError);
        _t.socket.close();
        _t.socket = null;
        _t.isSocketBound = false;
    }

    /**
     * 连接成功
     */
    private _onOpen(): void {
        let _t = this;
        Logger.log("Socket连接成功", _t.config.url);
        _t.state = SocketState.CONNECTED;
        _t.reconnectAttempts = 0;

        _t._clearConnectTimeout();
        _t._startHeartbeat();

        _t.emit(SocketEvent.CONNECTED);
    }

    /**
     * 接收消息
     */
    private _onMessage(data: ArrayBuffer): void {
        // 重置心跳超时
        // this._resetHeartbeatTimeout();

        // 使用BaseBytes保存数据
        // let bytes = new BaseBytes(data);
        let bytes = this._bytes;
        let pos = bytes.pos;
        bytes.pos = bytes.length;
        bytes.writeArrayBuffer(data);
        bytes.pos = pos;
        this.emit(SocketEvent.MESSAGE, this.id, bytes);
    }

    /**
     * 连接关闭
     */
    private _onClose(): void {
        let _t = this;

        let wasManualClose = _t.isManualClose;

        Logger.warn(wasManualClose ? "主动断开连接" : "网络断开连接", this.config.url);
        _t._unbindSocket();
        _t.state = SocketState.CLOSED;
        _t._clearAllTimers();
        // 触发通用关闭事件s
        _t.emit(SocketEvent.CLOSED);

        // 触发具体的关闭事件
        if (wasManualClose) {
            _t.emit(SocketEvent.MANUAL_CLOSED);
        } else {
            _t.emit(SocketEvent.NETWORK_CLOSED);
        }

        // // 只有网络断开才自动重连
        // if (!wasManualClose && _t.config.autoReconnect) {
        //     _t._tryReconnect();
        // }
    }

    /**
     * 连接错误
     */
    private _onError(error: any): void {
        let _t = this;

        Logger.error("Socket连接错误", _t.config.url, error);

        _t._unbindSocket();

        // 如果是连接中出错，触发连接失败事件
        if (_t.state === SocketState.CONNECTING) {
            _t._clearConnectTimeout();
            _t.state = SocketState.CLOSED;
            _t.emit(SocketEvent.CONNECT_FAILED, error);

            // 尝试重连
            if (!_t.isManualClose && _t.config.autoReconnect) {
                if (_t._tryReconnect()) return;
            }
        }
        _t.emit(SocketEvent.ERROR, error);
    }

    /**
     * 尝试重连
     */
    private _tryReconnect() {
        let _t = this;

        if (_t.reconnectAttempts >= _t.config.maxReconnectAttempts) {
            Logger.warn("达到最大重连次数，停止重连", _t.config.url);
            return false;
        }

        _t.reconnectAttempts++;
        Logger.log(`准备重连 (${_t.reconnectAttempts}/${_t.config.maxReconnectAttempts})`, _t.config.url);

        Laya.timer.once(_t.config.reconnectInterval, _t, _t._doReconnect);
        return true;
    }

    /**
     * 执行重连
     */
    private _doReconnect(): void {
        this.connect();
    }

    /**
     * 开始心跳
     */
    private _startHeartbeat(): void {
        // 清除旧的心跳定时器
        this._clearHeartbeat();
        if (this.config.heartbeatInterval <= 0) {
            return;
        }

        // 启动心跳循环
        // Laya.timer.loop(this.config.heartbeatInterval, this, this._sendHeartbeatLoop);
        this._heartbeatTimer = window.setInterval(this._sendHeartbeatLoop.bind(this), this.config.heartbeatInterval);
    }

    /**
     * 心跳循环回调
     */
    private _sendHeartbeatLoop(): void {
        if (this.state !== SocketState.CONNECTED) {
            this._clearHeartbeat();
            return;
        }

        this.sendHeartbeat();
        // this._startHeartbeatTimeout();
    }

    // /**
    //  * 开始心跳超时检测
    //  */
    // private _startHeartbeatTimeout(): void {
    //     if (this.config.heartbeatTimeout <= 0) {
    //         return;
    //     }

    //     // 清除旧的超时定时器
    //     this._clearHeartbeatTimeout();

    //     // 启动超时检测
    //     Laya.timer.once(this.config.heartbeatTimeout, this, this._onHeartbeatTimeout);
    // }

    // /**
    //  * 心跳超时回调
    //  */
    // private _onHeartbeatTimeout(): void {
    //     Logger.warn("心跳超时，断开连接", this.config.url);
    //     this.disconnect();
    // }

    // /**
    //  * 重置心跳超时
    //  */
    // private _resetHeartbeatTimeout(): void {
    //     // 只有在已连接状态才重置心跳超时
    //     if (this.state !== SocketState.CONNECTED) {
    //         return;
    //     }

    //     this._clearHeartbeatTimeout();
    //     this._startHeartbeatTimeout();
    // }

    /**
     * 开始连接超时检测
     */
    private _startConnectTimeout(): void {
        if (this.config.connectTimeout <= 0) {
            return;
        }

        // 清除旧的连接超时定时器
        this._clearConnectTimeout();

        // 启动连接超时检测
        Laya.timer.once(this.config.connectTimeout, this, this._onConnectTimeout);
    }

    /**
     * 连接超时回调
     */
    private _onConnectTimeout(): void {
        if (this.state === SocketState.CONNECTING) {
            Logger.warn("连接超时", this.config.url);
            this.disconnect();
            this.emit(SocketEvent.CONNECT_FAILED, "连接超时");
        }
    }

    /**
     * 清除重连定时器
     */
    private _clearReconnect(): void {
        Laya.timer.clear(this, this._doReconnect);
    }

    /**
     * 清除心跳定时器
     */
    private _clearHeartbeat(): void {
        // Laya.timer.clear(this, this._sendHeartbeatLoop);
        if (this._heartbeatTimer) {
            window.clearInterval(this._heartbeatTimer);
            this._heartbeatTimer = null;
        }
    }

    // /**
    //  * 清除心跳超时定时器
    //  */
    // private _clearHeartbeatTimeout(): void {
    //     Laya.timer.clear(this, this._onHeartbeatTimeout);
    // }

    /**
     * 清除连接超时定时器
     */
    private _clearConnectTimeout(): void {
        Laya.timer.clear(this, this._onConnectTimeout);
    }

    /**
     * 清除所有定时器
     */
    private _clearAllTimers(): void {
        let _t = this;
        _t._clearReconnect();
        _t._clearHeartbeat();
        // _t._clearHeartbeatTimeout();
        _t._clearConnectTimeout();
    }
}
