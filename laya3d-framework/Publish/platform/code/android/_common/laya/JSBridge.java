package com.xingyun.game;

import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.ValueCallback;

import org.apache.commons.logging.LogFactory;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import layaair.game.browser.ExportJavaFunction;


public class JSBridge {
    private static final org.apache.commons.logging.Log log = LogFactory.getLog(JSBridge.class);
    public static Handler m_Handler = new Handler(Looper.getMainLooper());
    public static MainActivity mMainActivity = null;


    public static void setActivity(MainActivity activity) {
        mMainActivity = activity;
    }

    public static ValueCallback<JSONObject> logoutCall = new ValueCallback<JSONObject>() {
        @Override
        public void onReceiveValue(JSONObject jsonObject) {
            callToJs("logout", jsonObject!=null ? jsonObject.toString():"");
        }
    };

    public static void hideSplash() {
        m_Handler.post(
                new Runnable() {
                    public void run() {
                        if (MainActivity.mSplashDialog != null) {
                            MainActivity.mSplashDialog.dismissSplash();
                        }
                    }
                });
    }

    public static void setFontColor(final String color) {
        m_Handler.post(
                new Runnable() {
                    public void run() {
                        if (MainActivity.mSplashDialog != null) {
                            MainActivity.mSplashDialog.setFontColor(Color.parseColor(color));
                        }
                    }
                });
    }

    public static void showTips(final String type) {
        m_Handler.post(
                new Runnable() {
                    public void run() {
                        if (MainActivity.mSplashDialog != null) {       
                            MainActivity.mSplashDialog.showTips(type);
                        }
                    }
                });
    }

    public static void bgColor(final String color) {
        m_Handler.post(
                new Runnable() {
                    public void run() {
                        if (MainActivity.mSplashDialog != null) {
                            MainActivity.mSplashDialog.setBackgroundColor(Color.parseColor(color));
                        }
                    }
                });
    }

    public static void loading(final double percent) {
        m_Handler.post(
                new Runnable() {
                    public void run() {
                        if (MainActivity.mSplashDialog != null) {
                            MainActivity.mSplashDialog.setPercent((int)percent);
                        }
                    }
                });
    }

    public static void showTextInfo(final boolean show) {
        m_Handler.post(
                new Runnable() {
                    public void run() {
                        if (MainActivity.mSplashDialog != null) {
                            MainActivity.mSplashDialog.showTextInfo(show);
                        }
                    }
                });
    }

    /**
     * 初始化sdk
     * @param obj
     */
    public static void initSdk(JSONObject obj) {
        m_Handler.post(
                new Runnable() {
                    @Override
                    public void run() {
                        mMainActivity.getProxy().laya_set_value("logout", logoutCall);
                        mMainActivity.getProxy().InitSdk(obj, new ValueCallback<JSONObject>() {
                            @Override
                            public void onReceiveValue(JSONObject jsonObject) {
                                callToJs("initSdk", jsonObject!=null ? jsonObject.toString():"");
                            }
                        });
//                        callToJs("initSdk", "");
                    }
                }
        );

    }

    /**
     * 登录Sdk
     * @param obj
     */
    public static void loginSdk(JSONObject obj) {
        Log.d(MainActivity.TAG, "----------- login sdk -----------");
        m_Handler.post(
                new Runnable() {
                    @Override
                    public void run() {
                        mMainActivity.getProxy().Login(obj, new ValueCallback<JSONObject>() {
                            @Override
                            public void onReceiveValue(JSONObject jsonObject) {
                                callToJs("loginSdk", jsonObject != null ? jsonObject.toString() : "");
                            }
                        });
                    }
                }
        );
    }

    /**
     * 登出
     */
    public static void logout() {
        m_Handler.post(
                new Runnable() {
                    @Override
                    public void run() {
                        mMainActivity.getProxy().Logout( new ValueCallback<JSONObject>() {
                            @Override
                            public void onReceiveValue(JSONObject jsonObject) {
                                callToJs("logout", jsonObject != null ? jsonObject.toString() : "");
                            }
                        });
                    }
                }
        );
    }

    /**
     * 退出app
     */
    public static void exit() {
        m_Handler.post(
                new Runnable() {
                    public void run() {
                        try {
                            JSONObject jsonObject = new JSONObject();
                            jsonObject.put("method", "exit");
                            invokeMethod(jsonObject);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }

                        mMainActivity.finish();
                        System.exit(0);
                    }
                });
    }

    /**
     * 重新登录
     */
    public static void reLogin() {
        exit();
    }

    /**
     * 重启游戏app
     */
    public static void reload() {
        try {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("method", "reload");
            invokeMethod(jsonObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        try {
            // 获取启动Intent
            Intent intent = mMainActivity.getPackageManager().getLaunchIntentForPackage(mMainActivity.getPackageName());
            if (intent != null) {
                intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_NEW_TASK);
                // 延迟重启
                PendingIntent pendingIntent = PendingIntent.getActivity(
                        mMainActivity,
                        0,
                        intent,
                        PendingIntent.FLAG_ONE_SHOT | PendingIntent.FLAG_IMMUTABLE
                );
                pendingIntent.send();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // 【正确方法】只有android.os.Process才有这两个方法！
        android.os.Process.killProcess(android.os.Process.myPid());
    }
	
	/**
     * 获取app的信息，例如版本号与cdn
     * @param jsonObject
     */
    public static void getAppData(JSONObject jsonObject) {
        Log.d(MainActivity.TAG, "==== getAppData " + jsonObject.toString());
        m_Handler.post(
                new Runnable() {
                    @Override
                    public void run() {
                        try {
                            if(jsonObject == null) {
                                callToJs("getAppData", null);
                                return;
                            }
                            String http = jsonObject.getString("http");
                            String appId = jsonObject.getString("appId");
                            String secretKey = jsonObject.getString("secretKey");
                            String platform = jsonObject.getString("platform");
                            String pf = jsonObject.getString("pf");
                            String currentTimeMillis = System.currentTimeMillis() + "";

                            String sign = MD5Utils.strToMD5(currentTimeMillis + "_" + platform + "_" + secretKey);
                            if(!http.endsWith("/")) {
                                http += "/";
                            }
                            String url = http + "product/version";
                            Map<String, String> header = new HashMap<>();
                            header.put("pf", platform);
                            header.put("time", currentTimeMillis );
                            header.put("sign", sign);

                            JSONObject body = new JSONObject();
                            body.put("appId", appId);
                            body.put("pf", pf);
                            body.put("platform", platform);

                            Log.d(MainActivity.TAG, "====== getAppData url:" + url);
                            Log.d(MainActivity.TAG, "====== getAppData header:" + header.toString());

                            HttpUtils.postJson(url, header, body.toString(), new HttpUtils.Callback() {
                                @Override
                                public void onSuccess(String result) {
                                    callToJs("getAppData", result);
                                }
                                @Override
                                public void onFail(String error) {
                                    Log.e(MainActivity.TAG, "------- getAppData fail " + error);
									callToJs("getAppData", "");
                                }
                            });
                        } catch (JSONException e) {
                            e.printStackTrace();
                            callToJs("getAppData", null);
                        }
                    }
                }
        );

    }

    /**
     * 震动
     * @param jsonObject
     */
    public static void vibrate(JSONObject jsonObject) {
        m_Handler.post(
            new Runnable() {
                @Override
                public void run() {
                    try {
                        int type = jsonObject.getInt("type");
                        if(type == 0) {
                            ExportJavaFunction.vibrateShort();
                        } else {
                            ExportJavaFunction.vibrateLong();
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        );
    }
	
	public static String getSystemLanguageType() {
        Locale locale;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            locale = mMainActivity.getResources().getConfiguration().getLocales().get(0);
        } else {
            locale = mMainActivity.getResources().getConfiguration().locale;
        }

        String language = locale.getLanguage();
        String country = locale.getCountry();

        if ("zh".equals(language)) {
            if ("CN".equals(country)) {
                return "zhcn"; // 简体
            }
            else {
                return "zhtw";// 繁体
            }
        }
        // 其他语言
        else {
            return language; // en / ja / ko 等
        }
    }
	
	private static JSONObject _getDeviceInfo(JSONObject data) {
        if(data == null) {
            data = new JSONObject();
        }

        try{
            data.put("deviceBrand", Build.BRAND);     // 设备品牌（如：小米、华为、vivo）
            data.put("deviceModel", Build.MODEL );   // 设备型号（如：小米14、Mate 60 Pro）
            data.put("deviceManufacturer", Build.MANUFACTURER );// 制造商
            data.put("systemVersion", Build.VERSION.RELEASE );// 系统版本（如：14、13）
            data.put("deviceSdkVersion", Build.VERSION.SDK_INT ); // API等级（如：34=Android14、33=Android13）
            data.put("deviceName", Build.DEVICE );// 设备代号
            data.put("deviceBoard", Build.BOARD );// 主板型号
            data.put("deviceCpuArch", Build.SUPPORTED_ABIS[0]);  // CPU架构（如：arm64-v8a）
            data.put("networkType", getNetType());// 主板型号
            data.put("memorySize", getTotalMemory());//内存
            data.put("language", getSystemLanguageType());// 语言
        } catch (Exception e) {
            e.printStackTrace();
        }
        return data;
    }


    /**
     * 获取语言
     * @param jsonObject
     */
    public static void getDeviceInfo() {
        m_Handler.post(
                new Runnable() {
                    @Override
                    public void run() {
                        callToJs("getDeviceInfo", _getDeviceInfo(null).toString());
                    }
                }
        );
    }

    // 推送设备信息到游戏
    public static void sendDeviceInfo(JSONObject data) {
        if(data == null) {
            data = new JSONObject();
        }
        callToJs("deviceInfo", _getDeviceInfo(data).toString());
    }
	
	// 获取网络类型
    public static String getNetType() {
        ConnectivityManager cm = (ConnectivityManager) mMainActivity.getSystemService(Context.CONNECTIVITY_SERVICE);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            NetworkCapabilities capabilities = cm.getNetworkCapabilities(cm.getActiveNetwork());
            if (capabilities == null) return "none";
            if (capabilities.hasTransport(NetworkCapabilities.TRANSPORT_WIFI)) return "wifi";
            if (capabilities.hasTransport(NetworkCapabilities.TRANSPORT_CELLULAR)) return "mobile";
            if (capabilities.hasTransport(NetworkCapabilities.TRANSPORT_ETHERNET)) return "ethernet";
            if (capabilities.hasTransport(NetworkCapabilities.TRANSPORT_VPN)) return "vpn";
            if (capabilities.hasTransport(NetworkCapabilities.TRANSPORT_USB)) return "usb";
            if (capabilities.hasTransport(NetworkCapabilities.TRANSPORT_SATELLITE)) return "satellite";
            return "unknown";
        } else {
            NetworkInfo info = cm.getActiveNetworkInfo();
            return (info != null && info.isConnected()) ? info.getTypeName() : "none";
        }
    }
	
	/**
     * 获取内存大小 MB
     * @return
     */
    public static String getTotalMemory() {
        ActivityManager am = (ActivityManager) mMainActivity.getSystemService(Context.ACTIVITY_SERVICE);
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        am.getMemoryInfo(memoryInfo);
        return String.valueOf(memoryInfo.totalMem / (1024 * 1024));
    }
	
    /**
     * 调用方法
     * @param jsonObject
     */
    public static void invokeMethod(JSONObject jsonObject) {
        m_Handler.post(
                new Runnable() {
                    @Override
                    public void run() {
                        String method = "";
                        try {
                            method = jsonObject.getString("method");
                        }catch (JSONException e) {
                            e.printStackTrace();
                        }
                        if(method != null  && !method.isEmpty()) {
                            String finalMethod = method;
                            mMainActivity.getProxy().InvokeMethod(jsonObject, new ValueCallback<JSONObject>() {
                                @Override
                                public void onReceiveValue(JSONObject jsonObject) {
                                    callToJs(finalMethod, jsonObject != null ? jsonObject.toString() : "");
                                }
                            });
                        }
                    }
                }
        );
    }

    /**
     * 回调js
     * @param callback
     * @param arg
     */
    public static void callToJs(String callback, String arg) {
        m_Handler.post(
                new Runnable() {
                    @Override
                    public void run() {
                        Log.d(MainActivity.TAG, "---------------java callback to js --method=" + callback + "--arg="+ arg);
                        ExportJavaFunction.CallBackToJS(JSBridge.class, callback, arg);
                    }
                }
        );
    }

}
