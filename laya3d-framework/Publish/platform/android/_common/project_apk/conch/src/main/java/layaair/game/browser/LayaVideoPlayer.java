package layaair.game.browser;

import android.content.Context;
import android.graphics.Color;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;

import layaair.game.R;
import layaair.game.conch.LayaConch5;
import java.io.File;
import java.io.FileOutputStream;

public class LayaVideoPlayer extends FrameLayout {


    private long mNativePtr;
    private MediaPlayer mPlayer;
    private TextureView mTextureView;
    private Surface mSurface;
    private boolean mPrepared = false;
    private boolean mAutoplay = false;
    private boolean mLoop = false;
    private boolean mMuted = false;
    private float mVolume = 1.0f;
    private float mRate = 1.0f;
    private String mUrl;
    private String mTempFilePath;
    // ObjectFit: 0=fill, 1=contain, 2=cover
    private int mObjectFit = 1;
    private int mVideoW = 0;
    private int mVideoH = 0;
    private boolean mControls = true;
    private boolean mAwaitFirstFramePause = false; // 当不自动播放时，拉起首帧后立刻暂停
    private boolean mHasFirstFrame = false;

    private int mX, mY, mW, mH;
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());

    // Controls UI
    private static final long CONTROLS_AUTO_HIDE_MS = 3000L;
    private static final long CONTROLS_TICK_MS = 250L;
    private static final long PROGRESS_TICK_MS = 200L;

    private FrameLayout mControlsBar;
    private FrameLayout mPlayPauseBtn;
    private ImageView mPlayPauseIcon;
    private TextView mCurTimeTv;
    private SeekBar mSeekBar;
    private TextView mDurTimeTv;
    private FrameLayout mFullscreenBtn;
    private ImageView mFullscreenIcon;

    private boolean mControlsVisible = false;
    private boolean mDraggingSeek = false;
    private long mLastControlsTouchMs = 0L;

    // Fullscreen
    private boolean mIsFullScreen = false;
    private int mSavedX, mSavedY, mSavedW, mSavedH;

    private final Runnable mAutoHideTick = new Runnable() {
        @Override public void run() {
            try {
                // 注意：tick 必须持续运行；不能因为 controls 当前不可见就 return 停止自循环，
                // 否则后续 “触摸显示 -> 一段时间后隐藏” 会失效。
                if (!mControls || mControlsBar == null) return;
                if (!mControlsVisible) return;
                if (mDraggingSeek) return;
                if (isPaused()) return; // 对齐 Windows/iOS：暂停时不自动隐藏
                long now = SystemClock.uptimeMillis();
                if (mLastControlsTouchMs > 0 && (now - mLastControlsTouchMs) > CONTROLS_AUTO_HIDE_MS) {
                    hideControls();
                }
            } catch (Throwable ignore) {}
            // 继续 tick（放在 finally 语义位置，确保不因 early-return 停止）
            try {
                if (mControls && mControlsBar != null) {
                    mMainHandler.postDelayed(this, CONTROLS_TICK_MS);
                }
            } catch (Throwable ignore) {}
        }
    };

    private final Runnable mProgressTick = new Runnable() {
        @Override public void run() {
            try { updateProgressUI(false); } catch (Throwable ignore) {}
            mMainHandler.postDelayed(this, PROGRESS_TICK_MS);
        }
    };

    public LayaVideoPlayer(long nativePtr) {
        super(getAppContext());
        mNativePtr = nativePtr;
        try { LayaConch5.GetInstance().registerVideoPlayer(this); } catch (Throwable ignore) {}
        setupView();
    }

    private static Context getAppContext() {
        return LayaConch5.GetInstance().getGameContext();
    }

    private void runOnUiThread(Runnable r) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            r.run();
        } else {
            mMainHandler.post(r);
        }
    }

    private void setupView() {
        runOnUiThread(() -> {
            // 确保子内容不会溢出父视图边界
            try { setBackgroundColor(Color.BLACK); } catch (Throwable ignore) {}
            mTextureView = new TextureView(getContext());
            mTextureView.setOpaque(true);
            try { mTextureView.setBackgroundColor(Color.BLACK); } catch (Throwable ignore) {}
            // 移除 SDK21+ 的剪裁与轮廓设置，保持默认矩形裁剪
            mTextureView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() {
                @Override public void onSurfaceTextureAvailable(android.graphics.SurfaceTexture surface, int width, int height) {
                    try {
                        if (mSurface != null) try { mSurface.release(); } catch (Throwable ignore) {}
                        mSurface = new Surface(surface);
                        if (mPlayer != null) mPlayer.setSurface(mSurface);
                    } catch (Throwable ignore) {}
                }
                @Override public void onSurfaceTextureSizeChanged(android.graphics.SurfaceTexture surface, int width, int height) {}
                @Override public boolean onSurfaceTextureDestroyed(android.graphics.SurfaceTexture surface) { return true; }
                @Override public void onSurfaceTextureUpdated(android.graphics.SurfaceTexture surface) {
                    // 首帧到达后立即暂停，实现 autoplay=false 时显示第一帧
                    if (mAwaitFirstFramePause) {
                        mAwaitFirstFramePause = false;
                        try { if (mPlayer != null && mPrepared) mPlayer.pause(); } catch (Throwable ignore) {}
                    }
                    if (!mHasFirstFrame) {
                        mHasFirstFrame = true;
                        // 控件延迟到首帧后再显示，避免首帧前闪烁/抢占交互
                        if (mControls) {
                            ensureControls();
                            showControls(true);
                        }
                    }
                }
            });
            addView(mTextureView, new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));

            AbsoluteLayout parent = LayaConch5.GetInstance().getAbsLayout();
            if (parent != null) {
                AbsoluteLayout.LayoutParams lp = new AbsoluteLayout.LayoutParams(1, 1, 0, 0);
                parent.addView(this, lp);
                setVisibility(VISIBLE);
            }
        });
    }

    // JNI API
    public void load(String url) {
        mUrl = url;
        cleanupTempFile();
        releasePlayer();
        try {
            mPlayer = new MediaPlayer();
            mPlayer.setLooping(mLoop);
            if (mSurface != null) mPlayer.setSurface(mSurface);
            mPlayer.setOnPreparedListener(mp -> {
                mPrepared = true;
                applyVolumeAndRate();
                try {
                    mVideoW = mp.getVideoWidth();
                    mVideoH = mp.getVideoHeight();
                    // 尺寸就绪后重新应用布局与变换
                    applyLayout();
                } catch (Throwable ignore) {}
                emit(mNativePtr, "loadedmetadata");
                if (mAutoplay) {
                    play();
                } else {
                    // 拉起首帧后立刻暂停
                    try { setVisibility(VISIBLE); } catch (Throwable ignore) {}
                    mAwaitFirstFramePause = true;
                    mHasFirstFrame = false; // 等待 onSurfaceTextureUpdated 标记首帧
                    try {
                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) mPlayer.seekTo(0, MediaPlayer.SEEK_CLOSEST);
                        else mPlayer.seekTo(0);
                    } catch (Throwable ignore) {}
                    try { mPlayer.start(); } catch (Throwable ignore) {}
                }
            });
            mPlayer.setOnCompletionListener(mp -> emit(mNativePtr, "ended"));
            mPlayer.setOnErrorListener((mp, what, extra) -> {
                emit(mNativePtr, "error:" + what + "/" + extra);
                return true;
            });
            mPlayer.setDataSource(mUrl);
            mPlayer.prepareAsync();
        } catch (Throwable t) {
            emit(mNativePtr, "error:" + t.getMessage());
        }
    }

    public void loadBuffer(String url, byte[] data) {
        cleanupTempFile();
        releasePlayer();
        try {
            // create temp file with extension guessed from url
            String ext = guessExtFromUrl(url);
            File temp = File.createTempFile("video_", ext, getContext().getCacheDir());
            mTempFilePath = temp.getAbsolutePath();
            if (data != null) {
                FileOutputStream fos = new FileOutputStream(temp);
                fos.write(data);
                fos.close();
            }

            mPlayer = new MediaPlayer();
            mPlayer.setLooping(mLoop);
            if (mSurface != null) mPlayer.setSurface(mSurface);
            mPlayer.setOnPreparedListener(mp -> {
                mPrepared = true;
                applyVolumeAndRate();
                try {
                    mVideoW = mp.getVideoWidth();
                    mVideoH = mp.getVideoHeight();
                    // 尺寸就绪后重新应用布局与变换
                    applyLayout();
                } catch (Throwable ignore) {}
                emit(mNativePtr, "loadedmetadata");
                if (mAutoplay) {
                    play();
                } else {
                    try { setVisibility(VISIBLE); } catch (Throwable ignore) {}
                    mAwaitFirstFramePause = true;
                    mHasFirstFrame = false;
                    try {
                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) mPlayer.seekTo(0, MediaPlayer.SEEK_CLOSEST);
                        else mPlayer.seekTo(0);
                    } catch (Throwable ignore) {}
                    try { mPlayer.start(); } catch (Throwable ignore) {}
                }
            });
            mPlayer.setOnCompletionListener(mp -> emit(mNativePtr, "ended"));
            mPlayer.setOnErrorListener((mp, what, extra) -> { emit(mNativePtr, "error:" + what + "/" + extra); return true; });
            mPlayer.setDataSource(getContext(), Uri.fromFile(temp));
            mPlayer.prepareAsync();
        } catch (Throwable t) {
            emit(mNativePtr, "error:" + t.getMessage());
        }
    }

    public void play() {
        try {
            runOnUiThread(() -> {
                setVisibility(VISIBLE);
                try { if (mPlayer != null && mPrepared) mPlayer.start(); } catch (Throwable ignore2) {}
                if (mControls && mHasFirstFrame) {
                    ensureControls();
                    updatePlayPauseIcon();
                    touchControls();
                }
            });
        } catch (Throwable ignore) {}
    }

    public void pause() {
        try {
            if (mPlayer != null && mPrepared) mPlayer.pause();
            if (mControls) {
                runOnUiThread(() -> {
                    ensureControls();
                    updatePlayPauseIcon();
                    touchControls(); // 暂停时不自动隐藏，但也要保持可见
                });
            }
        } catch (Throwable ignore) {}
    }

    public void Stop() {
        runOnUiThread(() -> {
            releasePlayer();
            try { setVisibility(GONE); } catch (Throwable ignore) {}
        });
    }

    public boolean isPaused() {
        try { return mPlayer != null && mPrepared && !mPlayer.isPlaying(); } catch (Throwable t) { return true; }
    }

    public boolean isLoop() { return mLoop; }
    public void setLoop(boolean loop) {
        mLoop = loop;
        try { if (mPlayer != null) mPlayer.setLooping(loop); } catch (Throwable ignore) {}
    }

    public boolean isAutoplay() { return mAutoplay; }
    public void setAutoplay(boolean ap) { mAutoplay = ap; }

    // 一次性设置矩形，避免多次 applyLayout 造成中间态
    public void setRect(double x, double y, double w, double h) {
        mX = (int)Math.round(x);
        mY = (int)Math.round(y);
        mW = (int)Math.round(w);
        mH = (int)Math.round(h);
        //Log.d(TAG, "SetRect x=" + mX + ", y=" + mY + ", w=" + mW + ", h=" + mH);
        applyLayout();
    }

    public int getVideoWidth() { try { return (mPlayer!=null)? mPlayer.getVideoWidth():0; } catch (Throwable t){ return 0; } }
    public int getVideoHeight() { try { return (mPlayer!=null)? mPlayer.getVideoHeight():0; } catch (Throwable t){ return 0; } }
    public int tell() { try { return (mPlayer!=null && mPrepared)? mPlayer.getCurrentPosition():0; } catch (Throwable t){ return 0; } }
    public void seek(int ms) {
        try {
            if (mPlayer != null && mPrepared) {
                int v = Math.max(0, ms);
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) mPlayer.seekTo(v, MediaPlayer.SEEK_CLOSEST);
                else mPlayer.seekTo(v);
            }
        } catch (Throwable ignore) {}
    }
    public int getReadyState() { return mPrepared ? 4 : 0; }

    // Rect controls
    public void setX(double x) { mX = (int)Math.round(x); applyLayout(); }
    public void setY(double y) { mY = (int)Math.round(y); applyLayout(); }
    public void setWidth(double w) { mW = (int)Math.round(w); applyLayout(); }
    public void setHeight(double h) { mH = (int)Math.round(h); applyLayout(); }

    // audio params
    public void setMuted(boolean m) { mMuted = m; applyVolumeAndRate(); }
    public void setVolume(float v) { mVolume = v; applyVolumeAndRate(); }
    public void setRate(float r) { mRate = (r<=0f?1f:r); applyVolumeAndRate(); }
    public void setObjectFit(int fit) {
        mObjectFit = (fit < 0 || fit > 2) ? 1 : fit;
        applyLayout();
    }

    // 控件显示开关（占位实现，后续可根据需要添加原生控制栏）
    public void setControls(boolean controls) {
        mControls = controls;
        runOnUiThread(() -> {
            if (controls) {
                // 对齐 iOS/Windows：控件延迟到首帧后再显示
                ensureControls();
                if (mHasFirstFrame) {
                    showControls(true);
                } else {
                    showControls(false);
                }
            } else {
                removeControls();
            }
        });
    }
    public boolean getControls() { return mControls; }

    private void applyVolumeAndRate() {
        try {
            if (mPlayer != null) {
                float vol = mMuted ? 0f : Math.max(0f, Math.min(1f, mVolume));
                mPlayer.setVolume(vol, vol);
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                    try {
                        mPlayer.setPlaybackParams(mPlayer.getPlaybackParams().setSpeed(mRate));
                    } catch (Throwable ignore) {}
                }
            }
        } catch (Throwable ignore) {}
    }

    private void applyLayout() {
        try {
            runOnUiThread(() -> {
                AbsoluteLayout parent = LayaConch5.GetInstance().getAbsLayout();
                if (parent == null) return;
                int width = (mW > 0) ? mW : 1;
                int height = (mH > 0) ? mH : 1;
                // contain/cover 的等比缩放由 MediaPlayer/TextureView 处理，容器保持传入的 width/height
                AbsoluteLayout.LayoutParams lp = new AbsoluteLayout.LayoutParams(width, height, mX, mY);
                try { setLayoutParams(lp); } catch (Throwable ignore) {}
                try { bringToFront(); } catch (Throwable ignore) {}
                try { requestLayout(); invalidate(); } catch (Throwable ignore) {}
                // 移除显式 setClipBounds，常规矩形场景不需要
                // 应用内容缩放到 TextureView：使用其变换矩阵实现 contain/cover/fill
                applyTextureViewTransform(width, height);
            });
        } catch (Throwable ignore) {}
    }

    private void applyTextureViewTransform(int viewW, int viewH) {
        try {
            if (mTextureView == null || mVideoW <= 0 || mVideoH <= 0 || viewW <= 0 || viewH <= 0) return;
            android.graphics.Matrix matrix = new android.graphics.Matrix();
            float vw = viewW;
            float vh = viewH;
            float sx = vw / (float)mVideoW;
            float sy = vh / (float)mVideoH;
            float px = vw * 0.5f;
            float py = vh * 0.5f;
            switch (mObjectFit) {
                case 0: // fill: 拉伸
                    // 直接使用单位矩阵，TextureView 将内容拉伸到控件大小
                    matrix.reset();
                    break;
                case 1: // contain: 等比全可见
                {
                    // 目标等比缩放
                    float target = Math.min(sx, sy);
                    // 相对默认 fill 的缩放（抵消 fill 的非等比）
                    float rx = target / sx;
                    float ry = target / sy;
                    matrix.reset();
                    matrix.setScale(rx, ry, px, py); // 以中心为轴，等比缩放
                    break;
                }
                case 2: // cover: 等比铺满（裁剪）
                default:
                {
                    float target = Math.max(sx, sy);
                    float rx = target / sx;
                    float ry = target / sy;
                    matrix.reset();
                    matrix.setScale(rx, ry, px, py); // 以中心为轴，等比铺满
                    break;
                }
            }
            mTextureView.setTransform(matrix);
            try { mTextureView.invalidate(); } catch (Throwable ignore) {}
        } catch (Throwable ignore) {}
    }

    public void destroy() {
        try { LayaConch5.GetInstance().unregisterVideoPlayer(this); } catch (Throwable ignore) {}
        try {
            runOnUiThread(() -> {
                removeControls();
                releasePlayer();
                AbsoluteLayout parent = LayaConch5.GetInstance().getAbsLayout();
                if (parent != null) try { parent.removeView(this); } catch (Throwable ignore) {}
            });
        } catch (Throwable ignore) {}
    }

    private void releasePlayer() {
        try { if (mPlayer != null) { mPlayer.stop(); mPlayer.release(); } } catch (Throwable ignore) {}
        try { if (mSurface != null) { mSurface.release(); } } catch (Throwable ignore) {}
        mPlayer = null; mSurface = null; mPrepared = false;
        mHasFirstFrame = false;
        cleanupTempFile();
    }

    private static native void emit(long nativePtr, String evt);

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
                if (ext.length() <= 8 && ext.matches("\\.[A-Za-z0-9]+")) return ext;
            }
        } catch (Throwable ignore) {}
        return ".tmp";
    }

    // ---------------- Controls UI (Android) ----------------
    private int dp(float dp) {
        float d = getResources() != null ? getResources().getDisplayMetrics().density : 1f;
        return (int)Math.ceil(dp * d);
    }
    private int sp(float sp) {
        // DisplayMetrics.scaledDensity 在新 API 中已过时：等价于 density * fontScale
        float s = 1f;
        try {
            if (getResources() != null) {
                float density = getResources().getDisplayMetrics().density;
                float fontScale = getResources().getConfiguration() != null ? getResources().getConfiguration().fontScale : 1f;
                s = density * fontScale;
            }
        } catch (Throwable ignore) {}
        return (int)Math.ceil(sp * s);
    }

    private static String formatTimeMMSS(int ms) {
        if (ms < 0) ms = 0;
        int totalSec = (int)Math.floor((ms / 1000.0) + 0.5);
        int mm = totalSec / 60;
        int ss = totalSec % 60;
        return String.format(java.util.Locale.US, "%02d:%02d", mm, ss);
    }

    private void ensureControls() {
        if (!mControls) return;
        if (mControlsBar != null) return;

        // 底部 36dp 半透明黑色控件条（对齐 Windows/iOS）
        final int barH = dp(36);
        final int pad = dp(8);
        final int btnSize = dp(22);

        mControlsBar = new FrameLayout(getContext());
        mControlsBar.setClickable(true);
        mControlsBar.setFocusable(true);
        mControlsBar.setBackgroundColor(Color.argb(200, 0, 0, 0));
        FrameLayout.LayoutParams barLp = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, barH);
        barLp.gravity = Gravity.BOTTOM;
        addView(mControlsBar, barLp);

        LinearLayout row = new LinearLayout(getContext());
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        FrameLayout.LayoutParams rowLp = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        mControlsBar.addView(row, rowLp);

        // Play/Pause button
        mPlayPauseBtn = new FrameLayout(getContext());
        LinearLayout.LayoutParams ppLp = new LinearLayout.LayoutParams(btnSize, btnSize);
        ppLp.leftMargin = pad;
        mPlayPauseBtn.setLayoutParams(ppLp);
        mPlayPauseBtn.setBackgroundColor(Color.TRANSPARENT);
        mPlayPauseBtn.setClickable(true);
        mPlayPauseBtn.setOnClickListener(v -> {
            try {
                if (isPaused()) play();
                else pause();
            } catch (Throwable ignore) {}
            updatePlayPauseIcon();
            touchControls();
        });
        mPlayPauseIcon = new ImageView(getContext());
        mPlayPauseIcon.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        mPlayPauseIcon.setImageResource(R.drawable.ic_video_play_24);
        mPlayPauseBtn.addView(mPlayPauseIcon, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        row.addView(mPlayPauseBtn);

        // Current time
        mCurTimeTv = new TextView(getContext());
        mCurTimeTv.setTextColor(Color.WHITE);
        mCurTimeTv.setTextSize(android.util.TypedValue.COMPLEX_UNIT_PX, sp(12));
        mCurTimeTv.setText("00:00");
        int timeW = (int)Math.ceil(mCurTimeTv.getPaint().measureText("00:00"));
        LinearLayout.LayoutParams curLp = new LinearLayout.LayoutParams(timeW, ViewGroup.LayoutParams.WRAP_CONTENT);
        curLp.leftMargin = pad;
        mCurTimeTv.setLayoutParams(curLp);
        row.addView(mCurTimeTv);

        // Seek bar
        mSeekBar = new SeekBar(getContext());
        mSeekBar.setMax(1000);
        mSeekBar.setProgress(0);
        // 对齐 Windows/iOS：尽量隐藏 thumb（使用透明 thumb）
        try {
            android.graphics.drawable.ShapeDrawable thumb = new android.graphics.drawable.ShapeDrawable();
            thumb.getPaint().setColor(Color.TRANSPARENT);
            thumb.setIntrinsicWidth(dp(1));
            thumb.setIntrinsicHeight(dp(1));
            mSeekBar.setThumb(thumb);
        } catch (Throwable ignore) {}
        LinearLayout.LayoutParams sbLp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        sbLp.leftMargin = pad;
        sbLp.rightMargin = pad;
        mSeekBar.setLayoutParams(sbLp);
        mSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                if (!fromUser) return;
                mDraggingSeek = true;
                touchControls();
                updateProgressUI(true);
            }
            @Override public void onStartTrackingTouch(SeekBar seekBar) {
                mDraggingSeek = true;
                touchControls();
            }
            @Override public void onStopTrackingTouch(SeekBar seekBar) {
                try {
                    int dur = safeGetDurationMs();
                    if (dur > 0) {
                        int target = (int)Math.round((seekBar.getProgress() / 1000.0) * dur);
                        seek(target);
                    }
                } catch (Throwable ignore) {}
                mDraggingSeek = false;
                touchControls();
            }
        });
        row.addView(mSeekBar);

        // Duration
        mDurTimeTv = new TextView(getContext());
        mDurTimeTv.setTextColor(Color.argb(255, 200, 200, 200));
        mDurTimeTv.setTextSize(android.util.TypedValue.COMPLEX_UNIT_PX, sp(12));
        mDurTimeTv.setGravity(Gravity.END);
        mDurTimeTv.setText("--:--");
        LinearLayout.LayoutParams durLp = new LinearLayout.LayoutParams(timeW, ViewGroup.LayoutParams.WRAP_CONTENT);
        durLp.rightMargin = pad;
        mDurTimeTv.setLayoutParams(durLp);
        row.addView(mDurTimeTv);

        // Fullscreen button
        mFullscreenBtn = new FrameLayout(getContext());
        LinearLayout.LayoutParams fsLp = new LinearLayout.LayoutParams(btnSize, btnSize);
        fsLp.rightMargin = pad;
        mFullscreenBtn.setLayoutParams(fsLp);
        mFullscreenBtn.setBackgroundColor(Color.TRANSPARENT);
        mFullscreenBtn.setClickable(true);
        mFullscreenBtn.setOnClickListener(v -> {
            toggleFullscreen();
            touchControls();
        });
        mFullscreenIcon = new ImageView(getContext());
        mFullscreenIcon.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        mFullscreenIcon.setImageResource(R.drawable.ic_video_fullscreen_24);
        mFullscreenBtn.addView(mFullscreenIcon, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        row.addView(mFullscreenBtn);

        // Tap anywhere on video to show controls (对齐 iOS：tap 触发显示)
        setOnTouchListener((v, event) -> {
            try {
                if (event != null && event.getAction() == MotionEvent.ACTION_DOWN) {
                    if (mControls) {
                        touchControls();
                    }
                }
            } catch (Throwable ignore) {}
            return false; // 不吞掉事件，保持引擎其它触摸逻辑
        });

        // Start ticks
        mMainHandler.removeCallbacks(mAutoHideTick);
        mMainHandler.removeCallbacks(mProgressTick);
        mMainHandler.postDelayed(mAutoHideTick, CONTROLS_TICK_MS);
        mMainHandler.postDelayed(mProgressTick, PROGRESS_TICK_MS);

        updatePlayPauseIcon();
        updateProgressUI(false);
        showControls(false); // 默认隐藏，等首帧/交互再显示
    }

    private void removeControls() {
        try {
            mMainHandler.removeCallbacks(mAutoHideTick);
            mMainHandler.removeCallbacks(mProgressTick);
        } catch (Throwable ignore) {}

        try { setOnTouchListener(null); } catch (Throwable ignore) {}
        mControlsVisible = false;
        mDraggingSeek = false;
        mLastControlsTouchMs = 0L;

        try {
            if (mControlsBar != null) removeView(mControlsBar);
        } catch (Throwable ignore) {}
        mControlsBar = null;
        mPlayPauseBtn = null;
        mPlayPauseIcon = null;
        mCurTimeTv = null;
        mSeekBar = null;
        mDurTimeTv = null;
        mFullscreenBtn = null;
        mFullscreenIcon = null;
    }

    private void touchControls() {
        mLastControlsTouchMs = SystemClock.uptimeMillis();
        if (!mControls) return;
        ensureControls();
        showControls(true);
        // 重置自动隐藏 tick，保证“触摸显示”后一定会按超时隐藏
        try {
            mMainHandler.removeCallbacks(mAutoHideTick);
            mMainHandler.postDelayed(mAutoHideTick, CONTROLS_TICK_MS);
        } catch (Throwable ignore) {}
    }

    private void showControls(boolean show) {
        if (!mControls || mControlsBar == null) return;
        if (show && !mHasFirstFrame) return; // 首帧前不显示，避免闪烁
        mControlsVisible = show;
        mControlsBar.setVisibility(show ? VISIBLE : GONE);
        if (show) {
            updatePlayPauseIcon();
            updateProgressUI(false);
        }
    }

    private void hideControls() {
        showControls(false);
    }

    private void updatePlayPauseIcon() {
        if (mPlayPauseIcon == null) return;
        boolean paused = isPaused();
        mPlayPauseIcon.setImageResource(paused ? R.drawable.ic_video_play_24 : R.drawable.ic_video_pause_24);
    }

    private int safeGetDurationMs() {
        try {
            if (mPlayer != null && mPrepared) {
                int d = mPlayer.getDuration();
                return Math.max(0, d);
            }
        } catch (Throwable ignore) {}
        return 0;
    }

    private int safeGetCurrentMs() {
        try {
            if (mPlayer != null && mPrepared) {
                int c = mPlayer.getCurrentPosition();
                return Math.max(0, c);
            }
        } catch (Throwable ignore) {}
        return 0;
    }

    private void updateProgressUI(boolean fromUserDrag) {
        if (!mControls || mControlsBar == null) return;
        if (mCurTimeTv == null || mDurTimeTv == null || mSeekBar == null) return;

        int dur = safeGetDurationMs();
        int cur;
        if (fromUserDrag && mDraggingSeek && dur > 0) {
            cur = (int)Math.round((mSeekBar.getProgress() / 1000.0) * dur);
        } else {
            cur = safeGetCurrentMs();
        }
        if (dur > 0 && cur > dur) cur = dur;

        mCurTimeTv.setText(formatTimeMMSS(cur));
        mDurTimeTv.setText(dur > 0 ? formatTimeMMSS(dur) : "--:--");

        if (!mDraggingSeek && dur > 0) {
            int p = (int)Math.round((cur / (double)dur) * 1000.0);
            if (p < 0) p = 0;
            if (p > 1000) p = 1000;
            mSeekBar.setProgress(p);
        }
    }

    private void toggleFullscreen() {
        runOnUiThread(() -> {
            AbsoluteLayout parent = LayaConch5.GetInstance().getAbsLayout();
            if (parent == null) return;
            int pw = parent.getWidth();
            int ph = parent.getHeight();
            if (pw <= 0 || ph <= 0) return;

            if (!mIsFullScreen) {
                mSavedX = mX; mSavedY = mY; mSavedW = mW; mSavedH = mH;
                mIsFullScreen = true;
                setRect(0, 0, pw, ph);
            } else {
                mIsFullScreen = false;
                setRect(mSavedX, mSavedY, mSavedW, mSavedH);
            }
            if (mFullscreenIcon != null) {
                mFullscreenIcon.setImageResource(mIsFullScreen ? R.drawable.ic_video_fullscreen_exit_24 : R.drawable.ic_video_fullscreen_24);
            }
            showControls(true);
        });
    }
}


