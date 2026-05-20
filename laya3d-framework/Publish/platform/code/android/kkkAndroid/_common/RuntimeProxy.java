package com.xingyun.game;

import org.json.JSONException;
import org.json.JSONObject;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.webkit.ValueCallback;

import androidx.annotation.NonNull;

import java.util.HashMap;
import java.util.Map;

import com.xingyun.game.IMarket.IPluginRuntimeProxy;

import cn.kkk.gamesdk.KKKGameSdk;
import cn.kkk.gamesdk.api.PermissionCallBack;
import cn.kkk.gamesdk.base.annotation.AgreementType;
import cn.kkk.gamesdk.base.entity.KKKGameChargeInfo;
import cn.kkk.gamesdk.base.entity.KKKGameInitInfo;
import cn.kkk.gamesdk.base.entity.KKKGameRoleData;
import cn.kkk.gamesdk.base.entity.KKKGameUserInfo;
import cn.kkk.gamesdk.base.inter.KKKAdCallback;
import cn.kkk.gamesdk.base.inter.KKKGameCallBack;

public class RuntimeProxy implements IPluginRuntimeProxy {

    private String TAG = "RuntimeProxy";
    private MainActivity mActivity = null;
    private KKKGameCallBack gameCallBack;

    private ValueCallback<JSONObject> initCall = null;
    private ValueCallback<JSONObject> loginCall = null;
    /** 登出回调 */
    private ValueCallback<JSONObject> logoutCall = null;
    private ValueCallback<JSONObject> payCall = null;

    public RuntimeProxy(MainActivity mainActivity) {
        mActivity = mainActivity;
        gameCallBack = new KKKGameCallBack() {
            @Override
            public void initOnFinish(int code, @NonNull String result) {
                Log.d(MainActivity.TAG, "============= sdk init result: "+code + ";" + result);
                // 初始化回调
                if(initCall != null) {
                    JSONObject jsonObject = new JSONObject();
                    try {
                        JSONObject resultJson = new JSONObject(result);
                        // 适龄图标类型，取值范围[0、8、12、16]，0表示隐藏图标，其他值表示展示对应的适龄图标
                        int age_level = resultJson.getInt("age_level");
                        String msg = resultJson.getString("msg");
                        if(code == 0) {
                            jsonObject.put("code", 0);
                        }else{
                            jsonObject.put("code", 1);
                        }
                        jsonObject.put("msg", msg);

                        JSONObject data = new JSONObject();
                        data.put("age_level", age_level);

                        jsonObject.put("data", data);
                        initCall.onReceiveValue(jsonObject);
                    } catch (Exception e) {
                        e.printStackTrace();
                        initCall.onReceiveValue(null);
                    }

                }
            }

            @Override
            public void loginOnFinish(int code, @NonNull String result) {
                Log.d(MainActivity.TAG, "============= sdk login result: "+code + ";" + result);
                // 登录回调
                if(loginCall != null) {
                    if (code == 0) {
                        // SDK登录成功
                        try {
                            JSONObject obj = new JSONObject(result);
                            // 获取授权码auth_code
                            String authCode = obj.getString("auth_code");
                            // 获取青少年模式标题，如果字段值不为空，需在游戏设置界面添加该按钮
                            String teenagerModeName = obj.getString("teenagerModeName");

                            JSONObject jsonObject = new JSONObject();
                            jsonObject.put("code", 0);
                            jsonObject.put("data", obj);
                            jsonObject.put("deployId", KKKGameSdk.getInstance().getDeployId(mainActivity));
                            jsonObject.put("packageId", KKKGameSdk.getInstance().getPackageId(mainActivity));
                            loginCall.onReceiveValue(jsonObject);
                        } catch (JSONException e) {
                            e.printStackTrace();
                            loginCall.onReceiveValue(null);
                        }
                    } else {
                        // SDK登录失败
                        loginCall.onReceiveValue(null);
                    }
                }
            }

            @Override
            public void logoutOnFinish(int code, @NonNull String result) {
                Log.d(MainActivity.TAG, "============= sdk logout result: "+code + ";" + result);
                if(code == 0) {
                    try {
                        JSONObject jsonObject = new JSONObject();
                        jsonObject.put("code", 0);
                        logoutCall.onReceiveValue(jsonObject);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }

            @Override
            public void chargeOnFinish(int code, @NonNull String s) {
                //不一定会有此回调
                if (code == 0) {
                    // 充值流程完成
                    if(payCall != null) {
                        try {
                            JSONObject jsonObject = new JSONObject();
                            jsonObject.put("code", 0);
                            payCall.onReceiveValue(jsonObject);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }

                } else {
                    // 充值流程未完成
                }
            }

            @Override
            public void exitViewOnFinish(int code, @NonNull String s) {
                if (code == 0) {
                    // 这里结束游戏
                    mActivity.finish();
                    System.exit(0);
                } else {
                    // 用户继续游戏
                }
            }

            @Override
            public void reloginOnFinish(int code, @NonNull String s) {

            }


            @Override
            public void extendFunctionOnFinish(@NonNull String s, @NonNull String s1) {

            }
        };
    }

    @Override
    public boolean laya_set_value(String key, Object value) {
        // TODO Auto-generated method stub
        if(key.equalsIgnoreCase("logout")) {
            logoutCall = (ValueCallback<JSONObject>) value;
        }
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
                case "checkUser":
                    CheckUser(jsonObj.getJSONObject("data"));
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
                case "exit":
                    mActivity.exit(false);
                    break;
                case "reLogin":
                    mActivity.exit(false);
                    break;
                case "openPrivacy":
                    // 打开隐私
                    OpenAgreementView(jsonObj);
                    break;
                case "checkPermission":
                    // 检测权限
                    CheckPermission(jsonObj.getString("data"), callback);
                    break;
                case "isVideoAd":
                    // 是否开启视频广告
                    IsVideoAd(callback);
                    break;
				case "intersititialAd":
                case "rewardedVideoAd":
                    playFuseVideoAd(callback);
                    break;
                case "openWebView":
                    OpenWebView(jsonObj.getJSONObject("data"));
                    break;
                case "report":
                    Report(jsonObj.getJSONObject("data"));
                    break;
                case "openCustomer":
                    // 打开客服
                    KKKGameSdk.getInstance().openGmPage(mActivity);
                    break;
//                case "share":
//                    break;
                default:
                    Log.e(MainActivity.TAG, "No implementation method: " + method);
                    if(callback != null)
                        callback.onReceiveValue(null);
            }
        }catch (JSONException e) {
            e.printStackTrace();
            if(callback != null)
                callback.onReceiveValue(null);
        }

    }

    @Override
    public void InitSdk(JSONObject jsonObj, ValueCallback<JSONObject> callback) {
        try {
            initCall = callback;
            boolean LandScape = jsonObj.getBoolean("landScape");
            int Rate = jsonObj.getInt("rate");
            String ProductName = jsonObj.getString("productName");
            boolean Debug = jsonObj.getBoolean("debug");
            boolean NewLoginMode = jsonObj.getBoolean("newLogin");
            KKKGameInitInfo info = new KKKGameInitInfo();
            info.setLandScape(LandScape);
            info.setFloatPosition(KKKGameInitInfo.FLOAT_POSITION_LEFT_CENTER);
            info.setRate(Rate);
            info.setProductName(ProductName);
            info.setDebug(Debug);
            info.setNewLoginMode(NewLoginMode);
            KKKGameSdk.getInstance().init(mActivity, info, gameCallBack);
        } catch (JSONException e) {
            e.printStackTrace();
            callback.onReceiveValue(null);
        }
    }

    @Override
    public void Login(JSONObject jsonObj, ValueCallback<JSONObject> callback) {
        Log.d(TAG, "Login info = "+jsonObj.toString());
        this.loginCall = callback;
        KKKGameSdk.getInstance().login(mActivity);
    }

    /**
     * 验证登录
     * @param jsonObj
     */
    public void CheckUser(JSONObject jsonObj) {
        try {
            KKKGameUserInfo userInfo = new KKKGameUserInfo();
            userInfo.setLoginStatus(true);// 设置登录成功状态
            userInfo.setUserId(jsonObj.getString("user_id"));// 设置游戏服务端返回的用户ID
            userInfo.setDeployId(jsonObj.getInt("channel_id"));// 设置游戏服务端返回的配置ID
            KKKGameSdk.getInstance().checkUserInfo(mActivity, userInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void Logout(ValueCallback<JSONObject> callback) {
        mActivity.exit(false);
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
        payCall = callback;
        try{
            KKKGameChargeInfo chargeInfo = new KKKGameChargeInfo();
            chargeInfo.setAmount(jsonObj.getInt("Amount"));
            chargeInfo.setPriceType(jsonObj.getInt("PriceType"));
            chargeInfo.setRate(jsonObj.getInt("Rate"));
            chargeInfo.setChargeMount(jsonObj.getInt("ChargeMount"));
            chargeInfo.setProductIdCp(jsonObj.getString("ProductIdCp"));
            chargeInfo.setProductName(jsonObj.getString("ProductName"));
            chargeInfo.setDes(jsonObj.getString("Des"));
            chargeInfo.setCallBackInfo(jsonObj.getString("CallBackInfo"));
            chargeInfo.setCallbackURL(jsonObj.getString("CallbackURL"));
            chargeInfo.setServerId(jsonObj.getString("ServerId"));
            chargeInfo.setServerName(jsonObj.getString("ServerName"));
            chargeInfo.setRoleId(jsonObj.getString("RoleId"));
            chargeInfo.setRoleName(jsonObj.getString("RoleName"));
            chargeInfo.setRoleLevel(jsonObj.getString("RoleLevel"));
            chargeInfo.setVipLevel(jsonObj.getString("VipLevel"));
            chargeInfo.setLastMoney(jsonObj.getString("LastMoney"));
            chargeInfo.setSociaty(jsonObj.getString("Sociaty"));
            chargeInfo.setSociatylevel(jsonObj.getString("Sociatylevel"));
            chargeInfo.setFortlevel(jsonObj.getString("Fortlevel"));
            chargeInfo.setPetlevel(jsonObj.getString("Petlevel"));
            chargeInfo.setCpRoleChannelId(jsonObj.getString("CpRoleChannelId"));
            chargeInfo.setCpSign(jsonObj.getString("CpSign"));
            chargeInfo.setUid(jsonObj.getString("Uid"));
            KKKGameSdk.getInstance().charge(mActivity, chargeInfo);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /**
     * 打开隐私协议
     * @param jsonObject
     */
    public void OpenAgreementView(JSONObject jsonObject) {
        //1:隐私政策、2:个人信息清单、3:第三方共享个人信息清单、4:青少年模式
        long state = AgreementType.yinsi;
        try {
            int type = jsonObject.getInt("type");
            if(type == 2) {
                state = AgreementType.person;
            } else if(type == 3) {
                state = AgreementType.share;
            } else if(type == 4) {
                state = AgreementType.teenager;
            } else if(type == 5) {
                state = AgreementType.age;
            }
            KKKGameSdk.getInstance().openAgreementView(mActivity, state);
        } catch (JSONException e) {
            e.printStackTrace();
            KKKGameSdk.getInstance().openAgreementView(mActivity, state);
        }
    }


    /**
     * 申请该危险权限
     * @param permission
     * @param callback
     */
    public void CheckPermission(String permission, ValueCallback<JSONObject> callback) {
        if(!StringUtils.isBlank(permission)) {
            callback.onReceiveValue(null);
            return;
        }
        String[] permissions = permission.split(";");
        KKKGameSdk.getInstance().checkPermission(mActivity, permissions, new PermissionCallBack() {
            @Override
            public void checkPermissionResult(String[] grantedPermissions, String[] deniedPermissions) {
                //同意的权限
                JSONObject result = new JSONObject();
                JSONObject data = new JSONObject();
                try {
                    result.put("code", 0);
                    if (grantedPermissions != null) {
                        data.put("granted", grantedPermissions);
                    }
                    //拒绝的权限
                    if (deniedPermissions != null) {
                        data.put("denied", deniedPermissions);
                    }
                    result.put("data", data);
                    callback.onReceiveValue(result);
                } catch (JSONException e) {
                    e.printStackTrace();
                    callback.onReceiveValue(null);
                }

            }
        });
    }

    /**
     * 是否开启视频广告
     * @param callback
     */
    public void IsVideoAd(ValueCallback<JSONObject> callback) {
        if(callback != null) {
            boolean enable = (boolean) KKKGameSdk.getInstance().extendFunctionExecute(mActivity, "playFuseVideoAdEnable", null, null);
            try{
                JSONObject result = new JSONObject();
                result.put("code", 0);
                result.put("data", enable);
                callback.onReceiveValue(result);
            } catch (JSONException e) {
                e.printStackTrace();
                callback.onReceiveValue(null);
            }
        }
    }

    /**
     * 展示视频广告
     * @param callback
     */
    public void playFuseVideoAd(ValueCallback<JSONObject> callback) {
        KKKGameSdk.getInstance().extendFunctionExecute(mActivity, "playFuseVideoAd", null, new KKKAdCallback() {
            @Override
            public void onCompletePlay() {
                JSONObject result = new JSONObject();
                try {
                    result.put("code", 0);
                    callback.onReceiveValue(result);
                } catch (JSONException e) {
                    e.printStackTrace();
                    callback.onReceiveValue(null);
                }
            }
        });
    }

    /**
     * 是否开启微信分享
     * @param callback
     */
    public void IsShare(ValueCallback<JSONObject> callback) {
        if(callback != null) {
            boolean enable = (boolean) KKKGameSdk.getInstance().extendFunctionExecute(mActivity, "shareWechatEnable", null, null);
            try{
                JSONObject result = new JSONObject();
                result.put("code", 0);
                result.put("data", enable);
                callback.onReceiveValue(result);
            } catch (JSONException e) {
                e.printStackTrace();
                callback.onReceiveValue(null);
            }
        }
    }

    /**
     * 打开一个网页
     * @param jsonObject
     */
    public void OpenWebView(JSONObject jsonObject) {
        if(jsonObject != null) {
            JSONObject json = new JSONObject();
            try {
                json.put("url", jsonObject.getString("url"));
                KKKGameSdk.getInstance().extendFunctionExecute(mActivity, "openFuseWebView",  json.toString());
            } catch (Exception e) {
                e.printStackTrace();
            }
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
            KKKGameRoleData roleData = new KKKGameRoleData();
            roleData.setRoleId(data.getString("role_id"));
            roleData.setRoleName(data.getString("role_name"));
            roleData.setRoleLevel(data.getString("role_level"));
            roleData.setServerId(data.getString("server_id"));
            roleData.setServerName(data.getString("server_name"));
            roleData.setVipLevel(data.getString("vip_level"));
            roleData.setUserMoney(data.getString("user_money"));
            roleData.setRoleCTime(data.getString("create_time"));
            roleData.setGender(data.getString("gender"));
            roleData.setProfessionId(data.getString("profession_id"));
            roleData.setProfession(data.getString("profession"));
            roleData.setPower(data.getString("role_power"));
            roleData.setPartyId(data.getString("party_id"));
            roleData.setPartyName(data.getString("party_name"));
            roleData.setPartyLevel(data.getString("party_level"));
            roleData.setPartyRoleId(data.getString("party_role_id"));
            roleData.setPartyRoleName(data.getString("party_role_name"));
            roleData.setGloryLevel(data.getString("glory_level"));
            roleData.setTodayCharge(data.getString("today_charge"));
            roleData.setTotalCharge(data.getString("total_charge"));
            roleData.setUid(data.getString("uid"));
            roleData.setFirstCreate(data.getString("first_create"));
            roleData.setFirstLogin(data.getString("first_login"));
            roleData.setPreServerName(data.getString("pre_server_name"));
            if(type == 0) {
                KKKGameSdk.getInstance().roleCreate(mActivity, roleData);
            } else if(type == 1) {
                KKKGameSdk.getInstance().roleLogin(mActivity, roleData);
            } else if(type == 2) {
                KKKGameSdk.getInstance().roleLevelUpdate(mActivity, roleData);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
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
