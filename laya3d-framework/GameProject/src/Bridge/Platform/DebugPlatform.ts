import PlatformBase from "./PlatformBase";

/**
 * @ Author: XXL
 * @ Date: 2026-02-28 14:43
 * @ Description: 本地模式平台
*/
export default class DebugPlatform extends PlatformBase {

    public constructor(sdk: any) {
        super(sdk);
    }

    private _startRecordCall?: (res:any) => any;
    private _stopRecordCall?: (res: { videoPath: string }) => any;

    /**
     * 开始录屏
     * @param data start: 开始录屏的回调, stop: 停止录屏的回调, duration: 录屏的时长，单位 s，必须大于 3s，最大值 300s（5 分钟），默认30s。
     */
    public startRecord(data: { start?: (res:any) => any, stop?: (res: { videoPath: string }) => any, duration?: number }) {
        if (DEBUG) {
            let _t = this;
            _t._startRecordCall = data.start;
            _t._stopRecordCall = data.stop;
        }
    }
    /**
     * 结束录屏
     */
    public stopRecord() {
        if (DEBUG) {
            if (this._stopRecordCall) {
                this._stopRecordCall({ videoPath: "1" });
            }
        }
    }
}