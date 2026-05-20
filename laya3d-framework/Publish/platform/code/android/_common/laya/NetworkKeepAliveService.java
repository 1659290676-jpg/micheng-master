package com.xingyun.game;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;

import androidx.core.app.NotificationCompat;

import javax.annotation.Nullable;

public class NetworkKeepAliveService extends Service {
    private static final int NOTIFICATION_ID = 1001;
    private static final String CHANNEL_ID = "NETWORK_KEEP_ALIVE";

    @Override
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel channel = new NotificationChannel(CHANNEL_ID,
                    "后台网络保活", NotificationManager.IMPORTANCE_LOW);
            NotificationManager manager = getSystemService(NotificationManager.class);
            manager.createNotificationChannel(channel);
        }

        // ========== 无R获取图标核心代码 ==========
        Resources resources = getResources();
        int iconId = resources.getIdentifier("ic_launcher", "mipmap", getPackageName());
        // ========================================

        Notification notification = new NotificationCompat.Builder(this, CHANNEL_ID)
                .setContentTitle("App后台运行中")
                .setContentText("网络持续连接")
                // 直接用动态获取的ID，无R引用
                .setSmallIcon(iconId != 0 ? iconId : android.R.drawable.ic_notification_overlay)
                .build();
        startForeground(NOTIFICATION_ID, notification);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        new Thread(() -> {
            while (true) {
                try {
                    Log.d("NetworkKeepAliveService", "start keep alive");
                    JSBridge.callToJs("keepAlive", "");
                    Thread.sleep(20000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    break;
                }
            }
        }).start();
        return START_STICKY;
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}