package com.xingyun.game;

import android.content.Context;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/**
 * 字符串工具类
 */
public class StringUtils {
    /**
     * 判断字符串是否为【空白】
     * 规则：
     * 1. 为 null → true
     * 2. 为空字符串 "" → true
     * 3. 全是空格/制表符/换行符等空白字符 → true
     * 4. 有实际字符 → false
     *
     * @param str 要判断的字符串
     * @return true=空白，false=非空白
     */
    public static boolean isBlank(String str) {
        // 1. 先判断 null
        if (str == null) {
            return true;
        }
        // 2. 判断长度是否为0
        int length = str.length();
        if (length == 0) {
            return true;
        }
        // 3. 遍历每个字符，判断是否都是空白字符
        for (int i = 0; i < length; i++) {
            // 只要有一个【非空白字符】，就返回 false
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        // 全是空白字符
        return true;
    }

    /**
     * 字符串 → 字节数组（默认 UTF-8 编码，最常用）
     * 无异常抛出，内部处理编码问题
     *
     * @param str 要转换的字符串
     * @return byte[] 字节数组，str为null时返回null
     */
    public static byte[] bytes(String str) {
        if (str == null) {
            return null;
        }
        // 使用标准UTF-8编码转换（Android全版本兼容）
        return str.getBytes(StandardCharsets.UTF_8);
    }

    /**
     * 重载：字符串 → 字节数组（支持自定义编码）
     *
     * @param str     要转换的字符串
     * @param charset 编码格式（如：UTF-8、GBK）
     * @return byte[] 字节数组
     */
    public static byte[] bytes(String str, String charset) {
        if (str == null) {
            return null;
        }
        try {
            return str.getBytes(charset);
        } catch (Exception e) {
            e.printStackTrace();
            // 编码异常时，降级使用UTF-8
            return str.getBytes(StandardCharsets.UTF_8);
        }
    }

    /**
     * 获取strings.xml中的字符串
     * @param context 上下文
     * @param stringName strings.xml中<string>标签的name属性值
     * @return 对应字符串，找不到/异常返回null
     */
    public static String getString(Context context, String stringName) {
        if (context == null || stringName == null || stringName.isEmpty()) {
            return null;
        }

        InputStream inputStream = null;
        try {
            // 1. 打开res/values/strings.xml文件
            inputStream = context.getAssets().open("res/values/strings.xml");

            // 2. 初始化XML解析器
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(inputStream, "UTF-8");

            // 3. 逐行解析XML
            int eventType = parser.getEventType();
            String currentName = null;

            while (eventType != XmlPullParser.END_DOCUMENT) {
                switch (eventType) {
                    case XmlPullParser.START_TAG:
                        // 匹配<string>标签，获取name属性
                        if ("string".equals(parser.getName())) {
                            currentName = parser.getAttributeValue(null, "name");
                        }
                        break;

                    case XmlPullParser.TEXT:
                        // 找到对应name，返回文本值
                        if (stringName.equals(currentName)) {
                            return parser.getText().trim();
                        }
                        break;
                }
                eventType = parser.next();
            }

        } catch (Exception e) {
            e.printStackTrace(); // 打印异常，方便排查
        } finally {
            // 关闭流，避免内存泄漏
            try {
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return null; // 没找到返回null
    }

}
