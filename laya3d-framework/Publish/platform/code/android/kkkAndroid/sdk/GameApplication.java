package com.zmxxx.kkkwan;

import android.app.Application;
import android.content.Context;
import android.os.Build;

import cn.kkk.component.tools.multidex.K3MultiDex;
import cn.kkk.gamesdk.KKKGameSdk;

public class GameApplication extends Application {

	@Override
    public void onCreate() {
        super.onCreate();
        KKKGameSdk.getInstance().initApplication(this);
    }

    @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.LOLLIPOP) {
            K3MultiDex.install(this);
        }

        KKKGameSdk.getInstance().attachBaseContext(this, base);
    }

}
