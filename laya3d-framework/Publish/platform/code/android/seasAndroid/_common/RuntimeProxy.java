package com.xingyun.game;

import org.json.JSONException;
import org.json.JSONObject;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.webkit.ValueCallback;

import com.android.splus.sdk.apiinterface.AccountCallBack;
import com.android.splus.sdk.apiinterface.AccountType;
import com.android.splus.sdk.apiinterface.AihelpCallBack;
import com.android.splus.sdk.apiinterface.CommonCallBack;
import com.android.splus.sdk.apiinterface.LogoutCallBack;
import com.android.splus.sdk.apiinterface.PayManager;
import com.android.splus.sdk.apiinterface.RechargeBean;
import com.android.splus.sdk.apiinterface.RechargeCallBack;
import com.android.splus.sdk.apiinterface.UserAccount;
import com.xingyun.game.IMarket.IPluginRuntimeProxy;

import java.util.HashMap;

public class RuntimeProxy implements IPluginRuntimeProxy {

    private String TAG = "RuntimeProxy";
    private Activity mActivity = null;

    private ValueCallback<JSONObject> initCallback = null; // 初始化回调
    private ValueCallback<JSONObject> loginCallback = null;//登录回调
    private ValueCallback<JSONObject> logoutCallback = null;//登出回调
    private ValueCallback<JSONObject> payCallback = null;//充值回调
    private ValueCallback<JSONObject> adCallback = null;//看广告回调

    private JSONObject initeData = null; // 初始结果
    private String switchAccountData = null;//保存切换数据

    private boolean is_ad_complete = false;//广告是否看完
    private boolean is_ad_start = false;// 是否开始看广告

    public RuntimeProxy(Activity mainActivity) {
        mActivity = mainActivity;
    }

    @Override
    public boolean laya_set_value(String key, Object value) {
        // TODO Auto-generated method stub
        return false;
    }
    public String getCacheDir()
    {
        String sCache = mActivity.getCacheDir().toString();
        String []vString = sCache.split("/");
        String sNewCache="";
        for( int i = 0; i < vString.length-1; i++ )
        {
            sNewCache += vString[i];
            sNewCache += "/";
        }
        return sNewCache;
    }
    public String getExpansionMainPath()
    {
        //TODO CP自行定制
        return "";
    }
    public String getExpansionPatchPath()
    {
        //TODO CP自行定制
        return "";
    }
    @Override
    public Object laya_get_value(String key) {
        Log.d(TAG, "laya_get_value key=" + key);
        String str = null;
        if (key.equalsIgnoreCase("CacheDir")) {
            return getCacheDir();
        }
        else if(key.equalsIgnoreCase("ExpansionMainPath")) {
            return getExpansionMainPath();
        }
        else if(key.equalsIgnoreCase("ExpansionPatchPath")) {
            return getExpansionPatchPath();
        }
        return str;
    }

    @Override
    public void laya_stop_game_engine() {
        // TODO Auto-generated method stub
        Log.d(TAG, "Login laya_stop_game_engine.");
    }

    @Override
    public Object laya_invoke_Method(String method, Bundle param) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void InvokeMethod(JSONObject jsonObj, ValueCallback<JSONObject> callback) {
        String method = "";
        try{
            method = jsonObj.getString("method");
            if(method == null || method.isEmpty()) {
                return;
            }
            switch (method) {
                case "initBack":
                    initBack(jsonObj.getJSONObject("data"));
                    break;
                case "iniSdk":
                    InitSdk(jsonObj.getJSONObject("data"), callback);
                    break;
                case "login":
                    Login(jsonObj.getJSONObject("data"), callback);
                    break;
                case "logout":
                    Logout(callback);
                    break;
                case "pay":
                    Pay(jsonObj.getJSONObject("data"), callback);
                    break;
                case "setClipboardData":
                    SetClipboardData(jsonObj.getString("data"), callback);
                    break;
                case "getBattery":
                    GetBattery(callback);
                    break;
                case "rewardedVideoAd":
                    RewardedAd(jsonObj.getJSONObject("data"), callback);
                    break;
                case "intersititialAd":
                    RewardedAd(jsonObj.getJSONObject("data"), callback);
                    break;
                case "report":
                    Report(jsonObj.getJSONObject("data"));
                    break;
                case "openCustomer":
                    // 打开客服
                    OpenCustomer();
                    break;
                case "openCenter":
                    // 个人中心
                    PayManager.getInstance().accountCenter(mActivity);
                    break;
                case "openPrivacy":
                    // 隐私政策
                    PayManager.getInstance().showHtmlMsg(mActivity, AccountType.Privacy);
                    break;
                case "share":
                    break;
                default:
                    Log.e(MainActivity.TAG, "No implementation method: " + method);
                    callback.onReceiveValue(null);
            }
        }catch (JSONException e) {
            e.printStackTrace();
        }

    }

    private void initBack(JSONObject jsonObject) {

        PayManager.getInstance().setAccountCallBack(new AccountCallBack() {
            @Override
            public void loginSuccess(String s) {
				Log.d(TAG, "login success:" + s);
                if(loginCallback != null) {
                    try {
                        JSONObject obj = new JSONObject();
                        obj.put("code", 0);
                        obj.put("data", s);
                        loginCallback.onReceiveValue(obj);
                    } catch (JSONException e) {
                        e.printStackTrace();
                        loginCallback.onReceiveValue(null);
                    }
                }
            }

            @Override
            public void loginFaile(int i, String s) {
                Log.d(TAG, "---------- sdk login fail code:" + i +", msg:" + s);
                if(loginCallback != null) {

                    try {
                        JSONObject obj = new JSONObject();
                        obj.put("code", 1);
                        obj.put("msg", s);
                        loginCallback.onReceiveValue(obj);
                    } catch (JSONException e) {
                        e.printStackTrace();
                        loginCallback.onReceiveValue(null);
                    }
                }

            }

            @Override
            public void accountSwitchSucceeded(String s) {
                Log.d(TAG, "account switch success:" + s);
                switchAccountData = s;
                JSBridge.callToJs("switchAccount", "");
            }
        });

        PayManager.getInstance().setLogoutCallback(new LogoutCallBack() {
            @Override
            public void logoutCallBack() {
                Log.d(TAG, "---------- sdk logout");
                if(logoutCallback != null) {
                    try {
                        JSONObject jsonObject = new JSONObject();
                        jsonObject.put("code", 0);
                        logoutCallback.onReceiveValue(jsonObject);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        });

        PayManager.getInstance().setIronsourceCallBack(new CommonCallBack() {
            @Override
            public void callback(String code, String msg) {
                Log.d(TAG, "advert callback code=" + code + ", msg=" + msg);
                if(adCallback != null) {
                    boolean bo = false;
                    int resultCode = 0;
                    if (code.equals(AccountType.Is_InitSuccess)) {
                        Log.d(TAG, "Ironsource 初始化完成");
                    } else if (code.equals(AccountType.Is_AdAvailable)) {
                        Log.d(TAG, "有广告可播 adInfo: " + msg);
                    } else if (code.equals(AccountType.Is_AdUnavailable)) {
                        if(!is_ad_start) {
                            is_ad_complete = false;
                            bo = true;
                            resultCode = 2;
                        }
                        if(msg.isEmpty()) {
                            msg = "There are currently no ad videos available to play.";
                        }
                        Log.d(TAG, "暂无可播激励视频");
                    } else if (code.equals(AccountType.Is_AdOpened)) {
                        Log.d(TAG, "开始观看 " + msg);
                        is_ad_complete = false;
                        is_ad_start = true;
                        bo = true;
                        resultCode = 1;
                    } else if (code.equals(AccountType.Is_AdClosed)) {
                        is_ad_start = false;
                        Log.d(TAG, "广告关闭 " + msg);
                        bo = true;
                        if(is_ad_complete) {
                            resultCode = 0;
                        } else {
                            resultCode = 3;
                        }
                    } else if (code.equals(AccountType.Is_AdComplete)) {
                        is_ad_start = false;
                        is_ad_complete = true;
                        Log.d(TAG, "观看完成 " + msg);
                    } else if (code.equals(AccountType.Is_AdShowFailed)) {
                        is_ad_start = false;
                        Log.d(TAG, "展示失败 " + msg);
                        is_ad_complete = false;
                        bo = true;
                        resultCode = 4;
                    } else if (code.equals(AccountType.Is_AdClicked)) {
                        Log.d(TAG, "点击广告 " + msg);
                    }
                    if(bo) {
                        try {
                            JSONObject result = new JSONObject();
                            result.put("code", resultCode);
                            result.put("msg", msg);
                            adCallback.onReceiveValue(result);
                            if(resultCode != 1) {
                                adCallback = null;
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        });

        initeData = jsonObject;
        if(initCallback != null) {
            InitSdk(null, initCallback);
        }
    }

    @Override
    public void InitSdk(JSONObject jsonObj, ValueCallback<JSONObject> callback) {
        try {

            if(initeData != null) {
                int code = 1;
                String success = initeData.getString("success");
                if(success.equals("1")) {
                    code = 0;
                }
                JSONObject deviceInfo = new JSONObject();
                deviceInfo.put("deviceUid", initeData.getString("udid"));
                JSBridge.sendDeviceInfo(deviceInfo);
                JSONObject result = new JSONObject();
                JSONObject data = new JSONObject();
                data.put("customer", PayManager.getInstance().get_customerService_position());
                result.put("code",code);
                result.put("data", data);
                callback.onReceiveValue(result);
                initCallback = null;
            } else {
                initCallback = callback;
            }

        } catch (JSONException e) {
            e.printStackTrace();
            callback.onReceiveValue(null);
        }
    }

    @Override
    public void Login(JSONObject jsonObj, ValueCallback<JSONObject> callback) {
        Log.d(TAG, "Login info = "+jsonObj.toString());
        if(switchAccountData != null) {
            try {
                JSONObject result = new JSONObject();
                result.put("code", 0);
                result.put("data", switchAccountData);
                callback.onReceiveValue(result);
            } catch (JSONException e) {
                e.printStackTrace();
                callback.onReceiveValue(null);
            }
            switchAccountData = null;
        } else {
			loginCallback = callback;
            PayManager.getInstance().login(mActivity);
        }
    }

    @Override
    public void Logout(ValueCallback<JSONObject> callback) {
        logoutCallback = callback;
        PayManager.getInstance().logout();
//        Log.d(TAG, "Logout info = "+jsonObj.toString());
//        JSONObject result = new JSONObject();
//        try {
//            result.put("code", 0);
//            result.put("msg", "success");
//        } catch (JSONException e) {
//            e.printStackTrace();
//        }
//        callback.onReceiveValue(result);
    }

    @Override
    public void Pay(JSONObject jsonObj, ValueCallback<JSONObject> callback) {
        // TODO Auto-generated method stub

        Log.d(TAG, "Logout Pay = "+jsonObj.toString());
        payCallback = callback;

        try{
            String roleName = jsonObj.getString("role_name");
            if(roleName.isEmpty()) {
                roleName = "undefined";
            }
            RechargeBean rechargeBean = new RechargeBean();
            rechargeBean.setRoleId(jsonObj.getString("role_id"));
            rechargeBean.setServerId(jsonObj.getString("server_id"));
            rechargeBean.setServerName(jsonObj.getString("server_name"));
            rechargeBean.setRoleName(roleName);
            rechargeBean.setGoodsId(jsonObj.getString("goods_id"));
            rechargeBean.setGoodsName(jsonObj.getString("goods_name"));
            rechargeBean.setOrderId(jsonObj.getString("game_order_id"));
            rechargeBean.setProductId(jsonObj.getString("productId"));
            rechargeBean.setLevelRole(jsonObj.getString("role_level"));
            rechargeBean.setPext(jsonObj.getString("ext"));
            PayManager.getInstance().rechargeByQuota(mActivity, rechargeBean, new RechargeCallBack() {
                @Override
                public void rechargeSuccess(UserAccount userAccount) {
                    if(payCallback != null) {
                        try {
                            JSONObject jsonObject = new JSONObject();
                            jsonObject.put("code", 0);
                            payCallback.onReceiveValue(jsonObject);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                }

                @Override
                public void rechargeFaile(int i, String s) {
                    Log.d(TAG, "pay fail code = " + i + ", msg = " + s);
                }

                @Override
                public void rechargeCancel() {

                }
            });
        } catch (JSONException e) {
            e.printStackTrace();
        }


//        try {
//            result.put("status", 0);
//            result.put("msg", "success");
//        } catch (JSONException e) {
//            e.printStackTrace();
//        }
//        callback.onReceiveValue(result);
    }

    public void RewardedAd(JSONObject jsonObject, ValueCallback<JSONObject> callback) {
        try
        {
            is_ad_start = false;
            adCallback = callback;
            JSONObject data = jsonObject.getJSONObject("data");
            String adId = jsonObject.getString("adUnitId");

            HashMap<String, Object> params = new HashMap<String, Object>();
            params.put("role_level", data.getString("role_level"));
            params.put("role_id", data.getString("role_id"));
            params.put("role_name", data.getString("role_name"));
            params.put("server_id", data.getString("server_id"));
            params.put("server_name", data.getString("server_name"));
            params.put("ext", data.getString("ext"));
            PayManager.getInstance().showRewardedVideo(params, adId, new CommonCallBack() {
                @Override
                public void callback(String code, String msg) {
                    if (code.equals("1")) {
                        Log.d(TAG, "展示成功");
                    } else {
                        Log.d(TAG, "展示失败");
                        if(adCallback != null) {
                            try {
                                JSONObject result = new JSONObject();
                                result.put("code", 2);
                                result.put("msg", msg);
                                adCallback.onReceiveValue(result);
                                adCallback = null;
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
            });
        } catch (JSONException e) {
            e.printStackTrace();
            callback.onReceiveValue(null);
        }

    }

    /**
     * 上报
     * @param jsonObject
     */
    public void Report(JSONObject jsonObject) {
        if(jsonObject == null)return;
        try {
            int type = jsonObject.getInt("type");
            JSONObject data = jsonObject.getJSONObject("data");
            HashMap<String, Object> params = new HashMap<String, Object>();
            params.put("role_level", data.getString("role_level"));
            params.put("role_id", data.getString("role_id"));
            params.put("role_name", data.getString("role_name"));
            params.put("role_tag", "");
            params.put("server_id", data.getString("server_id"));
            params.put("server_name", data.getString("server_name"));
            params.put("vip_level", data.getString("vip_level"));
            params.put("status", "1");
            params.put("creat_role", type == 0 ? "1":"0");
            params.put("ext", "");
            PayManager.getInstance().upload_user_data(params);

        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void OpenCustomer() {
        PayManager.getInstance().aihelp_cs_faq(AccountType.Customer_Service, "", new AihelpCallBack() {
            @Override
            public void callBack(String msgCode, HashMap<String, String> map) {
                if (msgCode.equals("1")) {
                    // 用户填写了问卷调查
                } else {
                    // 未填写
                }
            }
        });
    }

    @Override
    public void PushIcon(JSONObject jsonObj, ValueCallback<JSONObject> callback) {
        // TODO Auto-generated method stub
//        Log.d(TAG, "Logout PushIcon = "+jsonObj.toString());
//        JSONObject result = new JSONObject();
//        try {
//            result.put("status", 0);
//            result.put("msg", "success");
//        } catch (JSONException e) {
//            e.printStackTrace();
//        }
//        callback.onReceiveValue(result);
    }

    @Override
    public void Share(JSONObject jsonObj, ValueCallback<JSONObject> callback) {
        // TODO Auto-generated method stub
//        Log.d(TAG, "Logout Share = "+jsonObj.toString());
//        JSONObject result = new JSONObject();
//        try {
//            result.put("status", 0);
//            result.put("msg", "success");
//        } catch (JSONException e) {
//            e.printStackTrace();
//        }
//        callback.onReceiveValue(result);
    }

    @Override
    public void OpenBBS(JSONObject jsonObj, ValueCallback<JSONObject> callback) {
        // TODO Auto-generated method stub
//        Log.d(TAG, "Logout OpenBBS = "+jsonObj.toString());
//        JSONObject result = new JSONObject();
//        try {
//            result.put("status", 0);
//            result.put("msg", "success");
//        } catch (JSONException e) {
//            e.printStackTrace();
//        }
//        callback.onReceiveValue(result);
    }

    @Override
    public void GetFriendsList(JSONObject jsonObj,
            ValueCallback<JSONObject> callback) {
        // TODO Auto-generated method stub
//        Log.d(TAG, "Logout GetFriendsList = "+jsonObj.toString());
//        JSONObject result = new JSONObject();
//        JSONArray array = new JSONArray();
//        try {
//
//            JSONObject p1 = new JSONObject();
//            p1.put("userId", "1111111");
//            p1.put("nickName", "xiaoming");
//            p1.put("photo", "http://xxx.com/xxx.jpg");
//            p1.put("sex", "0");
//
//            JSONObject p2 = new JSONObject();
//            p2.put("userId", "1111111");
//            p2.put("nickName", "xiaoming");
//            p2.put("photo", "http://xxx.com/xxx.jpg");
//            p2.put("sex", "0");
//            array.put(p1);
//            array.put(p2);
//
//            result.put("status", 0);
//            result.put("msg", "success");
//            result.put("friends", array);
//        } catch (JSONException e) {
//            e.printStackTrace();
//        }
//        callback.onReceiveValue(result);
    }

    @Override
    public void SendMessageToPlatform(JSONObject jsonObj,
            ValueCallback<JSONObject> callback) {
        // TODO Auto-generated method stub
//        Log.d(TAG, "Logout SendMessageToPlatform = "+jsonObj.toString());
//        JSONObject result = new JSONObject();
//        try {
//            result.put("status", 0);
//            result.put("msg", "success");
//        } catch (JSONException e) {
//            e.printStackTrace();
//        }
//        callback.onReceiveValue(result);
    }

    /**
     * 复制到剪切板
     * @param txt
     */
    public void SetClipboardData(String txt, ValueCallback<JSONObject> callback) {
        ClipboardManager clipboardManager = (ClipboardManager) mActivity.getSystemService(Context.CLIPBOARD_SERVICE);
        ClipData clip = ClipData.newPlainText("label", txt);
        clipboardManager.setPrimaryClip(clip);
        JSONObject result = new JSONObject();
        try {
            result.put("code", 1);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        callback.onReceiveValue(result);
    }

    /**
     * 获取电量
     */
    public void GetBattery(ValueCallback<JSONObject> callback) {
        int capacity = 0;
        int status = 0;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            BatteryManager batteryManager = (BatteryManager) mActivity.getSystemService(mActivity.BATTERY_SERVICE);
            //获取电池剩余容量（百分比）
            capacity = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY);
            //获取电池状态（充电中、放电中、充满等）
            status = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_STATUS);
        }

        //视频播放完成时回调，给用户发放奖励
        JSONObject object = new JSONObject();
        Log.d(MainActivity.TAG, "-------------------电量和充电状态"+capacity + "--" + status);
        try {
            object.put("level", capacity);
            object.put("isCharging", status);
            callback.onReceiveValue(object);
        } catch (JSONException e) {
            Log.e(MainActivity.TAG, e.toString());
            callback.onReceiveValue(null);
        }
    }

}
