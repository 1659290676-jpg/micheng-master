/**
 * Socket枚举
 */
export enum EnumSocket {
    /**
     * 默认Socket
     */
    DEFAULT = 0,
}

/**
 * Socket发送模式
 */
export enum SocketSendMode {
    /** 发送到所有Socket */
    ALL = 0,
    /** 只要有一个发送成功就停止 */
    ANY = 1
}