package layaair.game.browser;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Typeface;
import android.util.Base64;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;


public class LayaCanvasRenderingContext2D {

    public static final String TAG = "LayaCanvasRenderingContext2D";
    public Paint paint = new Paint();
    public Bitmap bitmap;
    public Canvas canvas;
    public int fillColorR = 0;
    public int fillColorG = 0;
    public int fillColorB = 0;
    public int fillColorA = 0;;

    public int strokeColorR = 0;
    public int strokeColorG = 0;
    public int strokeColorB = 0;
    public int strokeColorA = 0;
    enum TextBaseline
    {
        Alphabetic,
        Top,
        Hanging,
        Middle,
        Ideographic,
        Bottom
    };
    public int width = 0;
    public int height = 0;
    public TextBaseline textBaseline = TextBaseline.Alphabetic;
    float[] valuesTemp = new float[9];
    // 跟踪当前变换矩阵，避免使用过时的 getMatrix()
    private Matrix currentTransformMatrix = new Matrix();
    public static HashMap<String, Typeface> typefaceMap = new HashMap<String, Typeface>();
    private static final Matrix IDENTITY_MATRIX = new Matrix();
    private static final Paint CLEAR_PAINT = new Paint();
    static {
        CLEAR_PAINT.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    }
    public static LayaCanvasRenderingContext2D create(long ptr, int width, int height) {
        LayaCanvasRenderingContext2D context = new LayaCanvasRenderingContext2D(width, height);
        return context;
    }
    public static void destroy() {
        typefaceMap.clear();
    }
    /**
     * Release heavyweight native-side resources (mainly Bitmap) as early as possible.
     * Safe to call multiple times.
    */
    public static void dispose(LayaCanvasRenderingContext2D context) {
        if (context == null) return;
        try {
            // Bitmap holds native memory; recycle it to free ASAP.
            if (context.bitmap != null && !context.bitmap.isRecycled()) {
                context.bitmap.recycle();
            }
        } catch (Throwable ignored) {
                // Be conservative: never let dispose crash JNI callers.
        }
        context.bitmap = null;
        context.canvas = null;
        // paint/typeface are lightweight; keep them as-is.
    }
    public LayaCanvasRenderingContext2D(int width, int height)
    {
       create(width, height);
    }
    private void create(int width, int height) {
        this.width = width;
        this.height = height;
        this.bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.canvas = new Canvas(this.bitmap);
        this.paint.setAntiAlias(true);
        this.paint.setSubpixelText(true);
        this.currentTransformMatrix.reset();
    }
    public void resize(int width, int height) {
        if (width <= 0 || height <= 0) {
            return;
        }
        if (width == this.width && height == this.height) {
            return;
        }
        // 释放旧的 bitmap（如果存在）
        if (this.bitmap != null && !this.bitmap.isRecycled()) {
            this.bitmap.recycle();
        }
        create(width, height);
    }
    @SuppressLint("LongLogTag")
    static float getTextY(TextBaseline textBaseline, float y, Paint paint) {
        switch (textBaseline)
        {
            case Alphabetic:
                break;
            case Top:
                return y - paint.getFontMetrics().ascent;
            case Hanging:
                break;
            case Middle:
                return y + (paint.getFontMetrics().descent - paint.getFontMetrics().ascent) * 0.5f - paint.getFontMetrics().descent;
            case Ideographic:
                break;
            case Bottom:
                return y - paint.getFontMetrics().descent;
            default:
                Log.e(TAG, "getTextY invalid textBaseline " + textBaseline);
                break;
        }
        return y;
    }
    static float[] measureText(LayaCanvasRenderingContext2D context, String text) {
        float width = context.paint.measureText(text);
        Paint.FontMetrics fontMetrics = context.paint.getFontMetrics();
        //float height = fontMetrics.bottom - fontMetrics.top;
        float height = fontMetrics.descent-fontMetrics.ascent;
        //Log.d("measureText ", (fontMetrics.bottom - fontMetrics.top) + " " + (fontMetrics.descent-fontMetrics.ascent)  + " " + fontMetrics.leading);
        float[] metrics = { width, height, fontMetrics.ascent};
        return metrics;
    }
    static void setLineWidth(LayaCanvasRenderingContext2D context, float lineWidth) {
        context.paint.setStrokeWidth(lineWidth);
    }
    static void setLineJoin(LayaCanvasRenderingContext2D context, int lineJoin) {
        switch (lineJoin)
        {
            case 0:
                context.paint.setStrokeJoin(Paint.Join.ROUND);
                break;
            case 1:
                context.paint.setStrokeJoin(Paint.Join.BEVEL);
                break;
            case 2:
                context.paint.setStrokeJoin(Paint.Join.MITER);
                break;
            default:
                Log.e(TAG, "setLineJoin invalid lineJoin " + lineJoin);
                break;
        }
    }
    static void fillText(LayaCanvasRenderingContext2D context, String text, float x, float y) {
        context.paint.setStyle(Paint.Style.FILL);
        context.paint.setARGB(context.fillColorA, context.fillColorR, context.fillColorG, context.fillColorB);
        context.canvas.drawText(text, x, getTextY(context.textBaseline, y, context.paint), context.paint);

    }
    static void strokeText(LayaCanvasRenderingContext2D context, String text, float x, float y) {
        context.paint.setStyle(Paint.Style.STROKE);
        context.paint.setARGB(context.strokeColorA, context.strokeColorR, context.strokeColorG, context.strokeColorB);
        context.canvas.drawText(text, x, getTextY(context.textBaseline, y, context.paint), context.paint);
    }
    static  byte[] getImageData(LayaCanvasRenderingContext2D context, int x, int y, int width, int height) {
        final byte[] pixels = new byte[width * height * 4];
        final ByteBuffer buf = ByteBuffer.wrap(pixels);
        buf.order(ByteOrder.nativeOrder());
        Bitmap destBitmap = Bitmap.createBitmap(context.bitmap, x, y, width, height);
        destBitmap.copyPixelsToBuffer(buf);
        return pixels;
    }
    static void putImageData(LayaCanvasRenderingContext2D context, byte[] pixelData, int dx, int dy, int width, int height) {
        if (context.bitmap == null || pixelData == null || pixelData.length < width * height * 4) {
            return;
        }
        
        // Convert RGBA byte[] to ARGB int[]
        // Input format: RGBA (4 bytes per pixel: R, G, B, A)
        // Android Bitmap format: ARGB_8888 (int per pixel: A(8) R(8) G(8) B(8))
        int[] argbPixels = new int[width * height];
        for (int i = 0; i < width * height; i++) {
            int offset = i * 4;
            int r = pixelData[offset] & 0xFF;
            int g = pixelData[offset + 1] & 0xFF;
            int b = pixelData[offset + 2] & 0xFF;
            int a = pixelData[offset + 3] & 0xFF;
            // Convert RGBA to ARGB: (A << 24) | (R << 16) | (G << 8) | B
            argbPixels[i] = (a << 24) | (r << 16) | (g << 8) | b;
        }
        
        // Write pixels to bitmap at the specified position
        context.bitmap.setPixels(argbPixels, 0, width, dx, dy, width, height);
    }
    static void save(LayaCanvasRenderingContext2D context) {
        context.canvas.save();
        // 注意：save/restore 会保存/恢复 Canvas 的变换状态
        // 但我们无法完全同步跟踪的矩阵，因为 Canvas 内部可能还有其他状态
        // 这里我们只跟踪主要的变换操作（setTransform, scale）
    }
    static void restore(LayaCanvasRenderingContext2D context) {
        context.canvas.restore();
        // 注意：restore 后，跟踪的矩阵可能与实际 Canvas 状态不同步
        // 但 clearRect 主要使用缩放因子，通常影响不大
    }
    static void setTransform(LayaCanvasRenderingContext2D context, float a, float b, float c, float d, float tx, float ty) {
        // [a  , c  , tx]
        // [b  , d  , ty]
        // [0.0, 0.0, 1.0]
        
        // 使用推荐的方法替代过时的 setMatrix()
        // 要完全替换矩阵，需要先获取当前矩阵的逆矩阵来重置，然后应用新矩阵
        Matrix inverseMatrix = new Matrix();
        if (context.currentTransformMatrix.invert(inverseMatrix)) {
            // 先应用逆矩阵来重置为恒等矩阵
            context.canvas.concat(inverseMatrix);
        }
        
        // 创建新矩阵并应用
        Matrix matrix = new Matrix();
        matrix.setValues(new float[]{a, c, tx,
                b, d, ty,
                0.0f, 0.0f, 1.0f});
        // 使用 concat() 替代 setMatrix()
        context.canvas.concat(matrix);
        
        // 更新跟踪的变换矩阵
        context.currentTransformMatrix.set(matrix);
    }
    static void scale(LayaCanvasRenderingContext2D context, float x, float y) {
        context.canvas.scale(x, y);
        // 更新跟踪的变换矩阵
        context.currentTransformMatrix.postScale(x, y);
    }
    static void clearRect(LayaCanvasRenderingContext2D context, float x, float y, float width, float height) {
        x = Math.max(0, x);
        y = Math.max(0, y);
        // 使用跟踪的变换矩阵替代过时的 getMatrix()
        context.currentTransformMatrix.getValues(context.valuesTemp);
        float scaleX = context.valuesTemp[Matrix.MSCALE_X];
        float scaleY = context.valuesTemp[Matrix.MSCALE_Y];
        int w = (int)Math.ceil(width * scaleX);
        int h = (int)Math.ceil(height * scaleY);

        int ix = (int)Math.floor(x * scaleX);
        int iy = (int)Math.floor(y * scaleY);
        int maxW = Math.min(ix + w, context.width);
        int maxH = Math.min(iy + h, context.height);
        w = maxW - ix;
        h = maxH - iy;
        if (w <= 0 || h <= 0) {
            return;
        }
        // Clear in bitmap pixel space (ignore current canvas matrix).
        context.canvas.save();
        context.canvas.setMatrix(IDENTITY_MATRIX);
        context.canvas.drawRect(ix, iy, ix + w, iy + h, CLEAR_PAINT);
        context.canvas.restore();
    }
    static void setStrokeColor(LayaCanvasRenderingContext2D context, int r, int g, int b, int a) {
        context.strokeColorR = r;
        context.strokeColorG = g;
        context.strokeColorB = b;
        context.strokeColorA = a;
    }
    static void setFillColor(LayaCanvasRenderingContext2D context, int r, int g, int b, int a) {
        context.fillColorR = r;
        context.fillColorG = g;
        context.fillColorB = b;
        context.fillColorA = a;
    }
    static void setTextSize(LayaCanvasRenderingContext2D context, float size) {
        context.paint.setTextSize(size);
    }
    static void setTypeface(LayaCanvasRenderingContext2D context, String fontName, int style) {
        if (LayaCanvasRenderingContext2D.typefaceMap.containsKey(fontName)) {
            Typeface typeface = LayaCanvasRenderingContext2D.typefaceMap.get(fontName);
            context.paint.setTypeface(Typeface.create(typeface, style));
        }
        else {
            context.paint.setTypeface(Typeface.create(fontName, style));
        }
    }
    static boolean registerFontFromPath(String fontName, String path) {
        Typeface newTypeFace = Typeface.createFromFile(path);
        typefaceMap.put(fontName, newTypeFace);
        return true;
    }
    @SuppressLint("LongLogTag")
    static void setTextAlign(LayaCanvasRenderingContext2D context, int textAlign) {
        switch (textAlign)
        {
            case 0:
                context.paint.setTextAlign(Paint.Align.LEFT);
                break;
            case 1:
                context.paint.setTextAlign(Paint.Align.CENTER);
                break;
            case 2:
                context.paint.setTextAlign(Paint.Align.RIGHT);
                break;
            default:
                Log.e(TAG, "setTextAlign invalid textAlign " + textAlign);
                break;
        }
    }
    @SuppressLint("LongLogTag")
    static void setTextBaseline(LayaCanvasRenderingContext2D context, int textBaseline) {
        switch (textBaseline)
        {
            case 0:
                context.textBaseline = TextBaseline.Alphabetic;
                break;
            case 1:
                context.textBaseline = TextBaseline.Top;
                break;
            case 2:
                context.textBaseline = TextBaseline.Hanging;
                break;
            case 3:
                context.textBaseline = TextBaseline.Middle;
                break;
            case 4:
                context.textBaseline = TextBaseline.Ideographic;
                break;
            case 5:
                context.textBaseline = TextBaseline.Bottom;
                break;
            default:
                Log.e(TAG, "setTextBaseline invalid textBaseline " + textBaseline);
                break;
        }
    }
    static void resize(LayaCanvasRenderingContext2D context, int width, int height) {
        context.resize(width, height);
    }
}