var sOS = conchConfig.getOS();
var bridge = null;
if (sOS == "Conch-ios") {
	bridge = PlatformClass.createClass("JSBridge");
}
else if (sOS == "Conch-android") {
	bridge = PlatformClass.createClass("com.xingyun.game.JSBridge");

}

// 调用java方法
var callToJava = function (method, ...arg) {
	if (bridge) {
		if(method != "loading") {
			console.warn("---------------调用java方法" + method + JSON.stringify(arg));
		}
		if (sOS == "Conch-ios") {
			return bridge.call(method + ":", ...arg);
		}
		else if (sOS == "Conch-android") {
			return bridge.call(method, ...arg);
		}
	}
}

// 调用java有回调方法
var callWithBackToJava = function (callback, method, ...arg) {
	if (bridge) {
		console.warn("---------------调用java有回调方法" + method + JSON.stringify(arg));
		if (sOS == "Conch-ios") {
			return bridge.callWithBack(callback, method + ":", ...arg);
		}
		else if (sOS == "Conch-android") {
			return bridge.callWithBack(callback, method, ...arg);
		}
	}
}

class loadingView {
	//    constructor()
	//	{
	//		this.sOS = conchConfig.getOS();
	//		if (this.sOS == "Conch-ios")
	//		{
	//			this.bridge = PlatformClass.createClass("JSBridge");
	//		}
	//		else if (this.sOS == "Conch-android")
	//		{
	//			this.bridge = PlatformClass.createClass("demo.JSBridge");
	//		}
	//    }
	set loadingAutoClose(value) {
		this._loadingAutoClose = value;
	}
	get loadingAutoClose() {
		return this._loadingAutoClose;
	}
	set showTextInfo(value) {
		this._showTextInfo = value;
		callToJava("showTextInfo", value);
		//		if(this.bridge)
		//		{
		//			if (this.sOS == "Conch-ios")
		//			{
		//				this.bridge.call("showTextInfo:",value);
		//			}
		//			else if(this.sOS == "Conch-android")
		//			{
		//				this.bridge.call("showTextInfo",value);
		//			}
		//		}
	}
	get showTextInfo() {
		return this._showTextInfo;
	}
	bgColor(value) {
		callToJava("bgColor", value);
		// if(this.bridge)
		// {
		// 	if (this.sOS == "Conch-ios")
		// 	{
		// 		this.bridge.call("bgColor:",value);
		// 	}
		// 	else if(this.sOS == "Conch-android")
		// 	{
		// 		this.bridge.call("bgColor",value);
		// 	}
		// }
	}
	setFontColor(value) {
		callToJava("setFontColor", value);
		// if(this.bridge)
		// {
		// 	if (this.sOS == "Conch-ios")
		// 	{
		// 		this.bridge.call("setFontColor:",value);
		// 	}
		// 	else if(this.sOS == "Conch-android")
		// 	{
		// 		this.bridge.call("setFontColor",value);
		// 	}
		// }
	}
	showTips(value) {
		callToJava("showTips", value);
		// if(this.bridge)
		// {
		// 	if (this.sOS == "Conch-ios")
		// 	{
		// 		this.bridge.call("showTips:",value);
		// 	}
		// 	else if(this.sOS == "Conch-android")
		// 	{
		// 		this.bridge.call("showTips",value);
		// 	}
		// }
	}
	loading(value) {
		callToJava("loading", value);
		// if(this.bridge)
		// {
		// 	if (this.sOS == "Conch-ios")
		// 	{
		// 		this.bridge.call("loading:",value);
		// 	}
		// 	else if(this.sOS == "Conch-android")
		// 	{
		// 		this.bridge.call("loading",value);
		// 	}
		// }
	}
	hideLoadingView() {
		callToJava("hideSplash");
		// if(this.bridge)
		// {
		// 	this.bridge.call("hideSplash");
		// }
	}
}

// 
class AppMarket {
	constructor() {
		this.bridge = bridge;
	}

	/**
	 * 注册一些接口
	 * @param {*} data 
	 */
	initRegister(data) {
	    if(data) {
			for(let k in data) {
				let fun = data[k];
				if(fun && typeof fun == "function") {
					this.bridge.callBackList[k] = fun;
				}
			}
		}
		// callToJava("initRegister");
	}

	/**
	 * 初始化sdk
	 * @param {*} data 
	 * @param {*} callback 
	 */
	initSdk(data, callback) {
		callWithBackToJava((ret) => {
			callback && callback(ret&&JSON.parse(ret));
		}, "initSdk", data||{});
	}

	/**
	 * 登录sdk
	 * @param {*} data 
	 * @param {*} callback 
	 */
	loginSdk(data, callback) {
		callWithBackToJava((ret) => {
			callback && callback(ret&&JSON.parse(ret));
		}, "loginSdk", data||{});
	}

	/**
	 * 登出sdk
	 */
	logout() {
		callToJava("logout");
	}

	/**
     * 重新登录
     */
    reLogin() {
    	callToJava("reLogin");
    }

	/**
	 * 退出app
	 */
	exit() {
		callToJava("exit");
	}

	/**
	 * 重登
	 */
	reload() {
		callToJava("reload");
	}
	
	/**
     * 获取app的信息，例如版本号与cdn
     */
	getAppData(data, callback) {
        callWithBackToJava((ret) => {
        	callback && callback(ret);
        }, "getAppData", data||{});
	}

	/**
	 * 获取设备信息
	 * @param {Function} callback 
	 */
	getDeviceInfo(callback) {
		callWithBackToJava((ret) => {
			callback && callback(ret);
		}, "getDeviceInfo");
	}

	/**
	 * 震动
	 */
	vibrate(data) {
		callToJava("vibrate", data);
	}

	/**
	 * 调用sdk方法
	 * @param {{method:string, data?:any}} data 
	 * @param {Function} callback 
	 */
	invokeMethod(data, callback) {
		if (!data || !data.method) {
			return;
		}
		if (this[data.method]) {
			return this[data.method](data.data, callback);
		} else {
			if (callback) {
				this.bridge.callBackList[data.method] = callback;
			}
			return callToJava("invokeMethod", data);
		}
	}

}

window.conchMarket = new AppMarket();

//有需要自行打开或者定制
window.loadingView = new loadingView();
if (window.loadingView) {
	window.loadingView.loadingAutoClose = false;//true代表当动画播放完毕，自动进入游戏。false为开发者手动控制
	window.loadingView.bgColor("#000000");//设置背景颜色
	window.loadingView.setFontColor("#ffffff");//设置字体颜色
	window.loadingView.loading(-1);
}
window.onLayaInitError = function (e) {
	console.log("onLayaInitError error=" + e);
	alert("加载游戏失败，可能由于您的网络不稳定，请退出重进");
}
window.hideSplashScreen = function () {
	if (window.loadingView) {
		window.loadingView.hideLoadingView();
	}
}