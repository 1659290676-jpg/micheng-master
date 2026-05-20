const { regClass, property } = Laya;

/**
 * 日志级别枚举
 * 级别越高，日志越重要，数字越大优先级越高
 */
enum LogLevel {
    Debug = 0,   // 调试信息，开发环境用
    Info = 1,    // 普通信息，如流程执行成功
    Log = 2,     // 运行时信息，如函数调用
    Warn = 3,    // 警告信息，非致命问题
    Error = 4,   // 错误信息，功能异常但程序可运行
}

/**
 * 日志配置接口
 */
interface LogConfig {
    level: LogLevel;          // 当前日志级别
    showTime?: boolean;       // 是否显示时间戳
    showLevel?: boolean;      // 是否显示日志级别
}

/**
 * @ Author: XXL
 * @ Date: 2026-01-30 18:16
 * @ Description: 日志工具类
*/
@regClass()
export default class Logger {
    // 静态配置项（全局唯一）
    private static config: LogConfig = {
        /** 日志级别  */
        level: LogLevel.Debug,
        /** 是否显示时间戳 */
        showTime: true,
        /** 是否显示日志级别 */
        showLevel: true,
    };

    /**
     * 更新全局日志配置
     * @param newConfig 新的配置项（部分更新）
     */
    public static updateConfig(newConfig: Partial<LogConfig>): void {
        Logger.config = { ...Logger.config, ...newConfig };
    }

    /**
     * 设置全局日志级别
     * @param level 日志级别
     */
    public static set level(level: LogLevel | number) {
        Logger.config.level = level;
    }

    /**
     * 设置全局时间戳显示
     * @param bo 是否显示时间戳
     */
    public static set showTime(bo: boolean) {
        Logger.config.showTime = bo;
    }

    /**
     * 显示日志级别
     * @param bo 是否显示日志级别
     */
    public static set showLevel(bo: boolean) {
        Logger.config.showLevel = bo;
    }

    private static readonly Date = new Date();
    /**
     * 构建日志输出的前缀
     * @param level 日志级别
     * @returns 格式化的前缀字符串
     */
    private static buildPrefix(level: LogLevel): string {
        let parts: string = "";

        // 时间戳
        if (Logger.config.showTime) {
            let now = Date.now();
            Logger.Date.setTime(now);
            const time = Logger.Date.toLocaleTimeString() + ":" + now % 1000;
            parts += `${time} `;
        }

        // 日志级别
        if (Logger.config.showLevel) {
            const levelName = LogLevel[level];
            parts += `[${levelName}]`;
        }

        return parts.length > 0 ? parts += ": " : "";
    }

    /**
     * 核心日志输出方法
     * @param level 日志级别
     * @param args 日志内容（支持多参数，和原生console一致）
     */
    private static logger(level: LogLevel, ...args: any[]): void {
        // 如果当前配置的级别高于要输出的级别，则不输出
        if (Logger.config.level > level) {
            return;
        }

        const prefix = Logger.buildPrefix(level);
        const logContent = [prefix, ...args];

        // 根据级别调用对应的 console 方法
        switch (level) {
            case LogLevel.Debug:
                console.debug(...logContent);
                break;
            case LogLevel.Info:
                console.info(...logContent);
                break;
            case LogLevel.Log:
                console.log(...logContent);
                break;
            case LogLevel.Warn:
                console.warn(...logContent);
                break;
            case LogLevel.Error:
                console.error(...logContent);
                break;
            default:
                console.log(...logContent);
                break;
        }
    }

    /**
     * 调试信息
     * @param args 
     */
    public static debug(...args: any[]): void {
        Logger.logger(LogLevel.Debug, ...args);
    }

    /**
     * 普通信息
     * @param args 
     */
    public static info(...args: any[]): void {
        Logger.logger(LogLevel.Info, ...args);
    }

    /**
     * 普通信息
     * @param args 
     */
    public static log(...args: any[]): void {
        Logger.logger(LogLevel.Log, ...args);
    }

    /**
     * 警告信息
     * @param args 
     */
    public static warn(...args: any[]): void {
        Logger.logger(LogLevel.Warn, ...args);
    }

    /**
     * 错误信息
     * @param args 
     */
    public static error(...args: any[]): void {
        Logger.logger(LogLevel.Error, ...args);
    }


}