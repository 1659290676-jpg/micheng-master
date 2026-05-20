package com.xingyun.game;

import android.util.Log;

import okhttp3.*;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class HttpUtils {

    // 全局单例 OkHttpClient
    private static final OkHttpClient client = new OkHttpClient();

//    private static OkHttpClient get client

    // ====================== 1. GET 请求（支持Header + URL参数）======================
    /**
     * 带Header的GET请求
     * @param url      接口地址
     * @param headers  请求头（可null）
     * @param params   URL参数（可null，自动拼接到url后）
     * @param callback 回调
     */
    public static void get(String url, Map<String, String> headers, Map<String, String> params, Callback callback) {
        // 拼接GET参数
        String finalUrl = buildUrlWithParams(url, params);

        // 构建Request
        Request.Builder requestBuilder = new Request.Builder().url(finalUrl);
        // 添加Header
        addHeaders(requestBuilder, headers);
        Request request = requestBuilder.build();

        // 异步请求
        client.newCall(request).enqueue(new okhttp3.Callback() {
            @Override
            public void onFailure(Call call, IOException e) {
                callback.onFail(e.getMessage());
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                if (response.isSuccessful()) {
                    callback.onSuccess(response.body().string());
                } else {
                    callback.onFail("请求失败，状态码：" + response.code());
                }
            }
        });
    }

    // GET 重载：无Header
    public static void get(String url, Map<String, String> params, Callback callback) {
        get(url, null, params, callback);
    }

    // GET 重载：无Header、无参数
    public static void get(String url, Callback callback) {
        get(url, null, null, callback);
    }

    // ====================== 2. POST 表单（支持Header）======================
    public static void postForm(String url, Map<String, String> headers, Map<String, String> params, Callback callback) {
        FormBody.Builder formBuilder = new FormBody.Builder();
        if (params != null) {
            for (Map.Entry<String, String> entry : params.entrySet()) {
                formBuilder.add(entry.getKey(), entry.getValue());
            }
        }

        Request.Builder requestBuilder = new Request.Builder().url(url).post(formBuilder.build());
        addHeaders(requestBuilder, headers);
        Request request = requestBuilder.build();

        client.newCall(request).enqueue(new okhttp3.Callback() {
            @Override
            public void onFailure(Call call, IOException e) {
                callback.onFail(e.getMessage());
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                if (response.isSuccessful()) {
                    callback.onSuccess(response.body().string());
                } else {
                    callback.onFail("请求失败，状态码：" + response.code());
                }
            }
        });
    }

    public static void postForm(String url, Map<String, String> params, Callback callback) {
        postForm(url, null, params, callback);
    }

    // ====================== 3. POST JSON（支持Header）======================
    public static void postJson(String url, Map<String, String> headers, String json, Callback callback) {
        RequestBody body = RequestBody.create(MediaType.parse("application/json; charset=utf-8"), json);
        Request.Builder requestBuilder = new Request.Builder().url(url).post(body);
        addHeaders(requestBuilder, headers);
        Request request = requestBuilder.build();
        client.newCall(request).enqueue(new okhttp3.Callback() {
            @Override
            public void onFailure(Call call, IOException e) {
                callback.onFail(e.getMessage());
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                if (response.isSuccessful()) {
                    callback.onSuccess(response.body().string());
                } else {
                    callback.onFail("请求失败，状态码：" + response.code());
                }
            }
        });
    }

    public static void postJson(String url, String json, Callback callback) {
        postJson(url, null, json, callback);
    }

    // ====================== 工具：拼接GET参数 ======================
    private static String buildUrlWithParams(String url, Map<String, String> params) {
        if (params == null || params.isEmpty()) return url;

        StringBuilder sb = new StringBuilder(url);
        // 判断url是否已有参数
        if (!url.contains("?")) {
            sb.append("?");
        } else {
            sb.append("&");
        }
        // 拼接参数
        for (Map.Entry<String, String> entry : params.entrySet()) {
            sb.append(entry.getKey()).append("=").append(entry.getValue()).append("&");
        }
        // 删除最后一个&
        return sb.deleteCharAt(sb.length() - 1).toString();
    }

    // ====================== 工具：批量添加Header ======================
    private static void addHeaders(Request.Builder builder, Map<String, String> headers) {
        if (headers != null) {
            for (Map.Entry<String, String> entry : headers.entrySet()) {
                builder.addHeader(entry.getKey(), entry.getValue());
            }
        }
    }

    // ====================== 统一回调接口 ======================
    public interface Callback {
        void onSuccess(String result);
        void onFail(String error);
    }
}