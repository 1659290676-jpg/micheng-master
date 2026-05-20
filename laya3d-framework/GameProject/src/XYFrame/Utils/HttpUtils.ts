import Logger from "../Logger/Logger";



/**
* @Author: XXL
* @Date: 2022-08-12 14:25
* @Description: http请求
*/
export default class HttpUtils {

    /**
     * 请求http
     * @param url 
     * @param data 
     * @param complete 
     * @param error 
     * @param thisObj 
     * @param method (default = "get")用于请求的 HTTP 方法。值包括 "get"、"post"、"head"。
     * @param responseType  (default = "text")Web 服务器的响应类型，可设置为 "text"、"json"、"xml"、"arraybuffer"。
     */
    public static sendRequest<T>(url: string, data?: any, complete?: (data: any, thisObj?: T) => any, error?: (event: any, thisObj?: T) => any, thisObj?: T, method = "get", responseType = Laya.Loader.TEXT, headers?: any[]) {
        let item = new ItemHttp();
        item.complete = complete;
        item.error = error;
        item.thisObj = thisObj;
        item.send(url, data, method, responseType, headers);
    }
}

class ItemHttp {
    private request: Laya.HttpRequest;
    public complete: Function;
    public error: Function;
    public thisObj: any;
    private url: string;
    private data: any;
    private method: string;
    private type: string;
    private headers: any[];
    protected tryNum = 0;

    /**
     * 发送请求
     * @param url 
     * @param data 
     * @param method 
     * @param responseType 
     */
    public send(url: string, data: any, method: string = "get", responseType: string = Laya.Loader.TEXT, headers?: any[]) {
        let _t = this;
        _t.url = url;
        _t.data = data;
        _t.method = method;
        _t.type = responseType;
        _t.headers = headers;
        _t.tryNum++;
        if (!_t.request) {
            _t.request = new Laya.HttpRequest();
            _t.request.on(Laya.Event.COMPLETE, _t, _t.onCompete);
            _t.request.on(Laya.Event.ERROR, _t, _t.onError);
        }
        Logger.log("http请求开始", _t.request.url, JSON.stringify(data));
        _t.request.send(url, data, method as any, responseType, headers);
    }

    private onCompete(d: any) {
        let _t = this;
        Logger.log("http请求完成", _t.request.url, d);
        if (_t.complete) {
            _t.complete(d, _t.thisObj);
        }
        _t.clean();
    }

    private onError(e: any) {
        let _t = this;
        Logger.error("http请求失败", _t.request.url, e);
        if (_t.tryNum < 3) {
            if (_t.request) {
                _t.request.off(Laya.Event.COMPLETE, _t, _t.onCompete);
                _t.request.off(Laya.Event.ERROR, _t, _t.onError);
                if (_t.request["clear"]) {
                    _t.request["clear"]();
                }
                _t.request = undefined;
            }
            Laya.timer.once(200, _t, function () {
                _t.send(_t.url, _t.data, _t.method, _t.type, _t.headers);
            }, null, false);
        } else {
            if (_t.error) {
                _t.error(e, _t.thisObj);
            }
            _t.clean();
        }
    }

    public clean() {
        let _t = this;
        if (_t.request) {
            _t.request.off(Laya.Event.COMPLETE, _t, _t.onCompete);
            _t.request.off(Laya.Event.ERROR, _t, _t.onError);
            if (_t.request["clear"]) {
                _t.request["clear"]();
            }
            _t.request = undefined;
        }
        _t.complete = _t.error = _t.thisObj = undefined;
        _t.tryNum = 0;
    }
}