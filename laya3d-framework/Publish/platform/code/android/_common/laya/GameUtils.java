package com.xingyun.game;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.provider.Settings;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

public class GameUtils {

    public static String getFileMD5(File file) {
        if (!file.exists()) {
            return "";
        }
        FileInputStream in = null;
        try {
            in = new FileInputStream(file);
            FileChannel channel = in.getChannel();
            MappedByteBuffer buffer = channel.map(FileChannel.MapMode.READ_ONLY, 0, file.length());
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(buffer);
            return bytes2Hex(md.digest());
        } catch (NoSuchAlgorithmException | IOException e) {
            e.printStackTrace();
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (IOException ignored) {
                }
            }
        }
        return "";
    }

    /**
     * 一个byte转为2个hex字符
     *
     * @param src byte数组
     * @return 16进制大写字符串
     */
    public static String bytes2Hex(byte[] src) {
        char[] res = new char[src.length << 1];
        final char hexDigits[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        for (int i = 0, j = 0; i < src.length; i++) {
            res[j++] = hexDigits[src[i] >>> 4 & 0x0f];
            res[j++] = hexDigits[src[i] & 0x0f];
        }
        return new String(res);
    }

    /**
     * 获取设备ID
     * @param context
     * @return
     */
    public static String getDeviceId(Context context) {
        String androidId = getAndroidId(context);
        if (isValidId(androidId)) {
            return androidId;
        }

        return getLocalUUID(context);
    }

    /**
     * 获取 Android ID
     */
    private static String getAndroidId(Context context) {
        try {
            return Settings.Secure.getString(
                    context.getContentResolver(),
                    Settings.Secure.ANDROID_ID
            );
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 本地生成并持久化 UUID（重装APP不丢失）
     */
    private static String getLocalUUID(Context context) {
        SharedPreferences sp = context.getSharedPreferences("device_id_cache", Context.MODE_PRIVATE);
        String uuid = sp.getString("custom_device_uuid", null);

        if (uuid == null || uuid.isEmpty()) {
            uuid = UUID.randomUUID().toString();
            Log.d("GameUtils", "--------- random device id: " + uuid);
            // 保存到本地
            sp.edit().putString("custom_device_uuid", uuid).apply();
        }
        return uuid;
    }

    /**
     * 判断ID是否有效
     */
    private static boolean isValidId(String id) {
        return id != null && !id.isEmpty()
                && !"unknown".equalsIgnoreCase(id)
                && !"null".equalsIgnoreCase(id);
    }

    /**
     * 通过反射读取R类资源
     * @param context
     * @param name 资源名称
     * @param type 资源类型
     * @return
     */
    public static int getViewId(Context context, String name, String type) {
        return context.getResources().getIdentifier(name, type, context.getPackageName());
    }

    /**
     * 通过反射读取R类资源
     * @param context
     * @param res 资源名称
     * @param keyName 资源字段
     * @return
     */
    public static String getStringResourceByName(Context context, String res, String keyName) {
        if (context == null) {
            return "";
        }
        Resources resources = context.getResources();
        int resourceId = resources.getIdentifier(keyName, res, context.getPackageName());
        if (resourceId != 0) {
            return resources.getString(resourceId);
        }
        return "";
    }

}
