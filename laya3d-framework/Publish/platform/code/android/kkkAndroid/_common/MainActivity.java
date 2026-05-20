package com.xingyun.game;

import androidx.annotation.NonNull;
import com.xingyun.game.IMarket.IPlugin;
import com.xingyun.game.IMarket.IPluginRuntimeProxy;
import com.xingyun.game.Market.GameEngine;

import cn.kkk.gamesdk.KKKGameSdk;
import layaair.game.browser.NotchUtils;
import layaair.game.utility.Constants;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;


public class MainActivity extends Activity {
    private IPlugin mPlugin = null;
    private IPluginRuntimeProxy mProxy = null;
    boolean isLoad=false;
    boolean isExit=false;
    public static SplashDialog mSplashDialog = null;
    public static final String TAG = "MainActivity";
    @SuppressWarnings("deprecation")
    @Override    
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!isTaskRoot()) {
            Intent intent = getIntent();
            String action = intent.getAction();
            if (intent.hasCategory(Intent.CATEGORY_LAUNCHER) && action != null && action.equals(Intent.ACTION_MAIN)) {
                finish();
                return;
            }
        }
        getWindow().requestFeature(Window.FEATURE_NO_TITLE);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
        JSBridge.setActivity(this);
        //有需要自行打开或者定制
        mSplashDialog = new SplashDialog(this);
        mSplashDialog.showSplash();
        Log.d(TAG, "t1 " + System.currentTimeMillis());

        initEngine();

    }
    public void initEngine()
    {
        Log.d(TAG, "t2 " + System.currentTimeMillis());
        mProxy = new RuntimeProxy(this);
        mPlugin = new GameEngine(this);
        mPlugin.game_plugin_set_runtime_proxy(mProxy);
//        mPlugin.game_plugin_set_option("localize","true");
        mPlugin.game_plugin_set_option("localize","false");
        //mPlugin.game_plugin_set_option("gameUrl", "http://layabox.com/layanative3.0/demo/index.js");
        mPlugin.game_plugin_init(3);
        View gameView = mPlugin.game_plugin_get_view();
        this.setContentView(gameView);
        isLoad=true;
        Log.d(TAG, "t3 " + System.currentTimeMillis());
    }
    public void onActivityResult(int requestCode, int resultCode, Intent intent) {
        super.onActivityResult(requestCode, resultCode, intent);

        Log.d("laya", "onActivityResult: requestCode " + requestCode);
        Log.d("laya", "onActivityResult: resultCode " + resultCode);
        Log.d("laya", "onActivityResult: intent " + intent);
        Log.d("laya", "onActivityResult: intent " + (intent == null));
        if (requestCode == Constants.REQUEST_SELECT_REQUEST_CODE || requestCode == Constants.REQUEST_CAMERA_ACTIVITY ) {
            if (GameEngine.getInstance() != null) {
                GameEngine.getInstance().onActivityResult(requestCode, resultCode, intent);
            }
        }

        KKKGameSdk.getInstance().onActivityResult(requestCode, resultCode, intent);
    }

    public IPluginRuntimeProxy getProxy() {
        return mProxy;
    }

    @Override
    protected void onPause()
    {
        super.onPause();
        if(isLoad)mPlugin.game_plugin_onPause();
        Log.d(TAG, "onPause");
        KKKGameSdk.getInstance().onPause(this);
    }
    //------------------------------------------------------------------------------
    @Override
    protected void onResume()
    {
        hideNavigationBar();
        super.onResume();
        Log.d("0", "isXiaomi " + isXiaoMi(this));
        if (isXiaoMi(this)) {
            translucentNavigation();
        }
        if(isLoad)mPlugin.game_plugin_onResume();
        KKKGameSdk.getInstance().onResume(this);
    }
    
    protected void onDestroy()
    {
        super.onDestroy();
        if (!isTaskRoot()) {
            return;
        }
        doDestroy();
        if(isLoad)mPlugin.game_plugin_onDestroy();

        Log.d(TAG, "onDestroy");

        KKKGameSdk.getInstance().onDestroy(this);
    }

    private void doDestroy() {
        if (mSplashDialog != null && mSplashDialog.isShowing()) {
            mSplashDialog.dismiss();
        }
    }

    public void exit(boolean bo) {
        if(bo) {
            final AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle("提示");
            builder.setMessage("是否退出游戏?");
            builder.setCancelable(true);
            builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    finish();
                    System.exit(0);
                }
            });
            builder.setNeutralButton("取消", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    dialog.dismiss();
                }
            });
            builder.show();
        } else {
            this.finish();
            System.exit(0);
        }

    }
    
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event)
    {
        if (keyCode == KeyEvent.KEYCODE_BACK) {// 处理返回键
            if (KKKGameSdk.getInstance().hasExitView(this)) {
                Log.d(TAG, "显示sdk带有的退出页面");
                // 显示sdk带有的退出页面
                KKKGameSdk.getInstance().showExitView(this);
            } else {
                Log.d(TAG, "显示游戏本身的退出游戏页面");
                // 显示游戏本身的退出游戏页面
                exit(true);

            }
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        switch (requestCode) {
            case Constants.REQUEST_PERMISSION_CODE_SAVE_IMAGE:
            case Constants.REQUEST_PERMISSION_CODE_CAMERA:
                if (GameEngine.getInstance() != null) {
                    GameEngine.getInstance().onRequestPermissionsResult(requestCode, permissions, grantResults);
                }
                break;
            default:
                break;
        }
        KKKGameSdk.getInstance().onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        KKKGameSdk.getInstance().onConfigurationChanged(newConfig);
    }


    boolean isAllPermissionsGranted(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        if (grantResults == null || grantResults.length == 0) {
            return false;
        }
        for (int i = 0 ; i < grantResults.length; i++) {
            if (grantResults[i] == PackageManager.PERMISSION_DENIED) {
                return false;
            }
        }
        return true;
    }
    /**
     * 判断是否是小米手机 并且是否开启全面屏
     *
     * @return
     */
    public static boolean isXiaoMi(Context context) {
        if (Build.MANUFACTURER.equals("Xiaomi")) {
            return Settings.Global.getInt(context.getContentResolver(), "force_fsg_nav_bar", 0) != 0;
        }
        return false;
    }
    @SuppressWarnings("deprecation")
    private void translucentNavigation() {
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.d("notch", "onAttachedToWindow: ");
        if (NotchUtils.isNotch(this)) {
            NotchUtils.getSafeHeight(this);
        }
    }
    @SuppressWarnings("deprecation")
    private void hideNavigationBar() {
        int flags;
        flags = View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
                | View.SYSTEM_UI_FLAG_FULLSCREEN
                | View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN;
        getWindow().getDecorView().setSystemUiVisibility(flags);
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        hideNavigationBar();
        KKKGameSdk.getInstance().onWindowFocusChanged();
    }
    @Override
    public void onTrimMemory(int level) {
        if (GameEngine.getInstance() != null) {
            GameEngine.getInstance().onTrimMemory(level);
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        Log.d(TAG, "onNewIntent");
        super.onNewIntent(intent);
        KKKGameSdk.getInstance().onNewIntent(intent);
    }

    @Override
    protected void onStart() {
        super.onStart();
        Log.d(TAG, "onStart");
        KKKGameSdk.getInstance().onStart(this);
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        Log.d(TAG, "onRestart");
        KKKGameSdk.getInstance().onRestart(this);
    }

    @Override
    protected void onStop() {
        Log.d(TAG, "onStop");
        super.onStop();
        KKKGameSdk.getInstance().onStop(this);
    }

}
