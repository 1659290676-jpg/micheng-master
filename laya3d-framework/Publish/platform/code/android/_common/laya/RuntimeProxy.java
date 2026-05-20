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

import java.util.HashMap;
import java.util.Map;

import com.xingyun.game.IMarket.IPluginRuntimeProxy;

public class RuntimeProxy implements IPluginRuntimeProxy {

    private String TAG = "RuntimeProxy";
    private Activity mActivity = null;
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
//                case "rewardedVideoAd":
//
//                    break;
//                case "share":
//                    break;
                default:
                    Log.e(MainActivity.TAG, "No implementation method: " + method);
                    callback.onReceiveValue(null);
            }
        }catch (JSONException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void InitSdk(JSONObject jsonObj, ValueCallback<JSONObject> callback) {
        try {
            JSONObject result = new JSONObject();
            result.put("code",0);
            callback.onReceiveValue(result);
        } catch (JSONException e) {
            e.printStackTrace();
            callback.onReceiveValue(null);
        }
    }

    @Override
    public void Login(JSONObject jsonObj, ValueCallback<JSONObject> callback) {
        Log.d(TAG, "Login info = "+jsonObj.toString());
        try {
            String uid = GameUtils.getDeviceId(mActivity);
            JSONObject result = new JSONObject();
            JSONObject info = new JSONObject();
            info.put("whitelist", 1);
            info.put("uid", uid);
            result.put("code", 0);
            result.put("data", info);
            callback.onReceiveValue(result);
        } catch (JSONException e) {
            e.printStackTrace();
            callback.onReceiveValue(null);
        }
    }

    @Override
    public void Logout(ValueCallback<JSONObject> callback) {
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
//        Log.d(TAG, "Logout Pay = "+jsonObj.toString());
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
