package layaair.game.browser;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.media.Image;
import android.media.ImageReader;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.view.Surface;
import android.view.PixelCopy;
import android.view.View;
import android.view.TextureView;
import android.widget.FrameLayout;
import layaair.game.conch.LayaConch5;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;


public class LayaVideoDecoder extends FrameLayout {

    private long mNativePtr;

    // MediaPlayer 播放与渲染
    private MediaPlayer mPlayer;
    private TextureView mTextureView; // 备用，不强依赖
    private Surface mSurface;
    private boolean mSurfaceReady = false;
    private ImageReader mOffscreenReader;
    // 线程
    private HandlerThread mCodecThread;
    private Handler mCodecHandler;
    private MediaPlayer mAudio; // 与 mPlayer 相同（为兼容接口保留）
    private HandlerThread mCopyThread;
    private Handler mCopyHandler;
    private volatile boolean mCopyInFlight = false;
    private volatile long mLastCopyMs = 0;
    private volatile int mCopyMinIntervalMs = 33; // ~30fps 的拷贝上限，减轻卡顿

    // state
    private String mUrl;
    private volatile boolean mPrepared = false;
    private volatile int mVideoWidth = 0;
    private volatile int mVideoHeight = 0;
    private volatile int mCurrentTimeMs = 0;
    private volatile boolean mInputEOS = false;
    private volatile boolean mOutputEOS = false;
    private volatile boolean mLoop = false;
    private volatile boolean mPaused = false;
    private volatile boolean mAutoplay = false; // 是否自动播放
    // 节奏控制：音频为主钟，若无音频则以单调时钟为基准
    private volatile long mBasePtsUs = -1;
    private volatile long mBaseMs = 0;

    // cached bitmap
    private Bitmap mBitmap;

    // temp file for buffer source
    private String mTempFilePath = null;

    public LayaVideoDecoder(long nativePtr) {
        super(getAppContext());
        mNativePtr = nativePtr;
        setVisibility(View.GONE);
        mCodecThread = new HandlerThread("LayaCodec");
        mCodecThread.start();
        mCodecHandler = new Handler(mCodecThread.getLooper());
        mCopyThread = new HandlerThread("LayaCopy");
        mCopyThread.start();
        mCopyHandler = new Handler(mCopyThread.getLooper());
        try { LayaConch5.GetInstance().registerVideoDecoder(this); } catch (Throwable ignore) {}
    }

    private static Context getAppContext() {
        // 直接使用引擎单例提供的上下文，避免反射找不到方法
        return LayaConch5.GetInstance().getGameContext();
    }

    // JNI构造签名需要
    public LayaVideoDecoder(long appPtr, Context ctx) { this(appPtr); }

    // region JNI mapped methods
    public void load(String url) {
        mUrl = url;
        cleanupTempFile();
        releasePipeline();
        mPrepared = false;
        mInputEOS = false;
        mOutputEOS = false;
        mCodecHandler.post(this::prepareCodec);
    }

    public void loadBuffer(String url, byte[] data) {
        cleanupTempFile();
        releasePipeline();
        mPrepared = false;
        mInputEOS = false;
        mOutputEOS = false;
        try {
            String ext = guessExtFromUrl(url);
            File temp = File.createTempFile("video_", ext, getContext().getCacheDir());
            mTempFilePath = temp.getAbsolutePath();
            if (data != null) {
                FileOutputStream fos = new FileOutputStream(temp);
                fos.write(data);
                fos.close();
            }
            mUrl = android.net.Uri.fromFile(temp).toString();
            mCodecHandler.post(this::prepareCodec);
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    public void play() { mPaused = false; try { if (mPlayer != null) mPlayer.start(); } catch (Throwable ignore) {} }
    public void pause() { mPaused = true; try { if (mPlayer != null) mPlayer.pause(); } catch (Throwable ignore) {} }
    public void stop() { releasePipeline(); }
    public boolean isPaused() { return mPaused; }
    public boolean isLoop() { return mLoop; }
    public void setLoop(boolean loop) { mLoop = loop; try { if (mAudio != null) mAudio.setLooping(loop); } catch (Throwable ignore) {} }
    public boolean isAutoplay() { return mAutoplay; }
    public void setAutoplay(boolean ap) { mAutoplay = ap; }

    public int getVideoWidth() { return mVideoWidth; }
    public int getVideoHeight() { return mVideoHeight; }
    // 返回当前播放时间（毫秒）
    public int tell() {
        try { return (mPlayer != null && mPrepared) ? mPlayer.getCurrentPosition() : mCurrentTimeMs; } catch (Throwable t) { return mCurrentTimeMs; }
    }
    public void seek(int ms) {
        mCurrentTimeMs = Math.max(0, ms);
        if (!mPrepared || mPlayer == null) return;
        try { mPlayer.seekTo(mCurrentTimeMs); } catch (Throwable ignore) {}
        try { if (mAudio != null) mAudio.seekTo(mCurrentTimeMs, MediaPlayer.SEEK_CLOSEST); } catch (Throwable ignore) {}
        mBasePtsUs = -1; mBaseMs = 0;
    }
    public int getReadyState() { return mPrepared ? 4 : 0; }
    public boolean isFrameAvailable() { 
        long now = android.os.SystemClock.uptimeMillis();
        if (now - mLastCopyMs < mCopyMinIntervalMs) {
            return false;
        }
        return true;
    }
    public void updateBitmap(long nativeBitmapPtr) {
        if (!mPrepared) return;
        try {
            long now = android.os.SystemClock.uptimeMillis();
            if (now - mLastCopyMs < mCopyMinIntervalMs) return; // 限频
            if (mBitmap == null || mBitmap.getWidth() <= 0 || mBitmap.getHeight() <= 0) {
                int w = (mVideoWidth > 0) ? mVideoWidth : (mTextureView != null ? mTextureView.getWidth() : 0);
                int h = (mVideoHeight > 0) ? mVideoHeight : (mTextureView != null ? mTextureView.getHeight() : 0);
                if (w > 0 && h > 0) mBitmap = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
            }
            if (mBitmap == null) return;

            if (mSurface != null) {
                if (mCopyInFlight) return;
                mCopyInFlight = true;
                final Bitmap target = mBitmap;              
                PixelCopy.request(mSurface, target, result -> {
                    try {
                        if (result == PixelCopy.SUCCESS) {
                            transferBitmap(target, nativeBitmapPtr);
                            mLastCopyMs = android.os.SystemClock.uptimeMillis();
                            try { if (mPlayer != null && mPrepared) mCurrentTimeMs = mPlayer.getCurrentPosition(); } catch (Throwable ignore2) {}
                        }
                        else if (result == PixelCopy.ERROR_SOURCE_NO_DATA) {
                            // 手动将目标位图填充为不透明黑色，避免源未就绪时出现透明/脏数据
                            try {
                            	target.eraseColor(Color.BLACK);
                            } catch (Throwable ignore) {
                            }
                            transferBitmap(target, nativeBitmapPtr);
                        }
                    } catch (Throwable ignore) {
                    } finally {
                        mCopyInFlight = false;
                    }
                }, (mCopyHandler != null) ? mCopyHandler : mCodecHandler);
            }
        } catch (Throwable ignore) {}
    }
    // endregion

    private void prepareCodec() {
        try {
            // 1) 确保 TextureView 存在并加入布局（尺寸先占位）
            if (mTextureView == null) {
                mTextureView = new TextureView(getContext());
                mTextureView.setOpaque(true);
                mTextureView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() {
                    @Override public void onSurfaceTextureAvailable(android.graphics.SurfaceTexture surface, int width, int height) {
                        try {
                            if (mSurface != null) { try { mSurface.release(); } catch (Throwable ignore) {} }
                            mSurface = new Surface(surface);
                            mSurfaceReady = true;
                            if (mPlayer != null) mPlayer.setSurface(mSurface);
                        } catch (Throwable ignore) {}
                    }
                    @Override public void onSurfaceTextureSizeChanged(android.graphics.SurfaceTexture surface, int width, int height) {}
                    @Override public boolean onSurfaceTextureDestroyed(android.graphics.SurfaceTexture surface) {
                        mSurfaceReady = false;
                        return true;
                    }
                @Override public void onSurfaceTextureUpdated(android.graphics.SurfaceTexture surface) {}
                });
                FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(1, 1);
                addView(mTextureView, lp);
            }

            // 2) 创建 MediaPlayer
            mPlayer = new MediaPlayer();
            mAudio = mPlayer; // 同步控制
            mPlayer.setLooping(mLoop);
            mPlayer.setOnCompletionListener(mp -> emit("ended"));
            mPlayer.setOnVideoSizeChangedListener((mp, w, h) -> {
                if (w > 0 && h > 0) {
                    mVideoWidth = w;
                    mVideoHeight = h;
                    if (mBitmap == null || mBitmap.getWidth() != w || mBitmap.getHeight() != h) {
                        mBitmap = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
                    }
                }
            });
            mPlayer.setOnPreparedListener(mp -> {
                if (mSurfaceReady && mSurface != null) mp.setSurface(mSurface);
                // 若尚未得到视频尺寸，尝试从 mp 读取
                try {
                    int w = mp.getVideoWidth();
                    int h = mp.getVideoHeight();
                    if (w > 0 && h > 0) {
                        mVideoWidth = w; mVideoHeight = h;
                        if (mBitmap == null || mBitmap.getWidth() != w || mBitmap.getHeight() != h) {
                            mBitmap = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
                        }
                        // 创建离屏 ImageReader 作为渲染目标，避免依赖可见视图
                        if (mOffscreenReader == null) {
                            try {
                                mOffscreenReader = ImageReader.newInstance(w, h, android.graphics.PixelFormat.RGBA_8888, 2);
                                if (mSurface != null) { try { mSurface.release(); } catch (Throwable ignore) {} }
                                mSurface = mOffscreenReader.getSurface();
                                mSurfaceReady = true;
                                mp.setSurface(mSurface);
                            } catch (Throwable ignore) {}
                        }
                    }
                } catch (Throwable ignore) {}
                mPrepared = true;
                emit("loadedmetadata");
                mp.start();
            });
            mPlayer.setOnInfoListener((mp, what, extra) -> {
                if (what == MediaPlayer.MEDIA_INFO_VIDEO_RENDERING_START) {
                    emit("canplay");
                }
                return false;
            });
            mPlayer.setDataSource(mUrl);
            if (mSurfaceReady && mSurface != null) mPlayer.setSurface(mSurface);
            mPlayer.prepareAsync();
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    private int selectVideoTrack(MediaExtractor extractor) { return -1; }

    private void onImageAvailable(ImageReader reader) {}

    private void releasePipeline() {
        try { if (mPlayer != null) { mPlayer.stop(); mPlayer.release(); } } catch (Throwable ignore) {}
        try { if (mSurface != null) { mSurface.release(); } } catch (Throwable ignore) {}
        try { if (mOffscreenReader != null) { mOffscreenReader.close(); } } catch (Throwable ignore) {}
        try { if (mTextureView != null) { removeView(mTextureView); mTextureView = null; } } catch (Throwable ignore) {}
        try { if (mCopyThread != null) { mCopyThread.quitSafely(); mCopyThread = null; mCopyHandler = null; } } catch (Throwable ignore) {}
        mPlayer = null; mSurface = null; mAudio = null; mOffscreenReader = null; mSurfaceReady = false;
        mPrepared = false;
        cleanupTempFile();
    }

    public void destroy() {
        try { LayaConch5.GetInstance().unregisterVideoDecoder(this); } catch (Throwable ignore) {}
        stop();
    }

    // YUV_420_888 -> ARGB_8888
    @SuppressLint("ObsoleteSdkInt")
    // 不再直接访问 planes

    private void emit(String evt) { try { emit(mNativePtr, evt); } catch (Throwable ignore) {} }

    // JNI bridges (names must match C++ exports)
    private static native void emit(long ptr, String evt);
    private static native void transferBitmap(Bitmap bmp, long nativePtr);

    private void cleanupTempFile() {
        try {
            if (mTempFilePath != null) {
                File f = new File(mTempFilePath);
                if (f.exists()) {
                    //noinspection ResultOfMethodCallIgnored
                    f.delete();
                }
            }
        } catch (Throwable ignore) {} finally {
            mTempFilePath = null;
        }
    }

    private static String guessExtFromUrl(String url) {
        try {
            if (url == null) return ".tmp";
            String u = url;
            int q = u.indexOf('?'); if (q >= 0) u = u.substring(0, q);
            int h = u.indexOf('#'); if (h >= 0) u = u.substring(0, h);
            int slash = u.lastIndexOf('/');
            int dot = u.lastIndexOf('.');
            if (dot > slash && dot >= 0 && dot < u.length() - 1) {
                String ext = u.substring(dot);
                // 简单限制，避免异常扩展名
                if (ext.length() <= 8 && ext.matches("\\.[A-Za-z0-9]+")) return ext;
            }
        } catch (Throwable ignore) {}
        return ".tmp";
    }
}


