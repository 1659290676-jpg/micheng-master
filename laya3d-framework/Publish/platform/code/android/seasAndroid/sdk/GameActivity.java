package com.joylith.ic.gg;

import android.app.ComponentCaller;
import android.content.Intent;
import android.os.Bundle;

import androidx.annotation.NonNull;

import com.android.splus.sdk.apiinterface.InitSDKModel;
import com.android.splus.sdk.apiinterface.InitSdkCallBack;
import com.android.splus.sdk.apiinterface.PayManager;
import com.xingyun.game.MainActivity;

import org.json.JSONException;
import org.json.JSONObject;

public class GameActivity extends MainActivity {
    public static GameActivity gameActivity = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        gameActivity = this;
        PayManager.getInstance().onCreate(this, new InitSdkCallBack() {
            @Override
            public void initSdkSuccess(InitSDKModel initSDKModel) {
                JSONObject result = new JSONObject();
                try {
                    JSONObject jsonObject = new JSONObject();
                    result.put("method", "initBack");
                    result.put("data", jsonObject);
                    jsonObject.put("adid", initSDKModel.getAdid());
                    jsonObject.put("udid", initSDKModel.getUdid());
                    jsonObject.put("success", initSDKModel.getIs_success());
                    gameActivity.getProxy().InvokeMethod(result, null);
                } catch (JSONException e) {
                    throw new RuntimeException(e);
                }
            }
        });
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent intent) {
        super.onActivityResult(requestCode, resultCode, intent);
        PayManager.getInstance().onActivityResult(requestCode, resultCode, intent);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        PayManager.getInstance().onNewIntent(intent);
    }

    @Override
    protected void onResume() {
        super.onResume();
        PayManager.getInstance().onResume(this);
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        PayManager.getInstance().onRestart(this);
    }

    @Override
    protected void onStart() {
        super.onStart();
        PayManager.getInstance().onStart(this);
    }

    @Override
    protected void onPause() {
        super.onPause();
        PayManager.getInstance().onPause(this);
    }

    @Override
    protected void onStop() {
        super.onStop();
        PayManager.getInstance().onStop(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        PayManager.getInstance().onDestroy(this);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        PayManager.getInstance().onRequestPermissionsResult(requestCode, permissions, grantResults);
    }
}
