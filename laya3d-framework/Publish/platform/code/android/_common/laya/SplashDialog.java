package com.xingyun.game;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;


public class SplashDialog extends Dialog {
    private Context mContext;
    private long mStartTime;
    private long mleastShowTime = 0;//1
    private TextView mTipsView;
    private ProgressBar mProBar;
    private int mFontColor;
    private int mIndex = 0;
    private int mPercent = 0;
    private View mLayout;
    public static final String TAG = "SplashDialog";
    private int[] mTips;
    Handler mSplashHandler = new Handler(Looper.getMainLooper()) {
        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch(message.what) {
                case 0:
                    mSplashHandler.removeMessages(0);
                    setPercent(mPercent);
                    mIndex++;
                    mSplashHandler.sendEmptyMessageDelayed(0, 1000);
                    break;
                case 1:
                    mSplashHandler.removeMessages(0);
                    mSplashHandler.removeMessages(1);
                    SplashDialog.this.dismiss();
                    break;
                default:
                    break;
            }
        }
    };
    @SuppressWarnings("deprecation")
    public SplashDialog(Context context) {
        super(context, GameUtils.getViewId(context, "Splash", "style"));
        mContext = context;
        mTips = new int[]{GameUtils.getViewId(context, "update_tip", "string")};
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
            WindowManager.LayoutParams lp = getWindow().getAttributes();
            lp.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
            getWindow().setAttributes(lp);
        }
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);
    }
    public void showTips(String type) {
        switch(type) {
            case "NetworkError":
                mTips = new int[]{GameUtils.getViewId(mContext, "network_error", "string")};
                mTipsView.setText(mContext.getString(mTips[0]));
                break;
            case "DownloadError":
                mTips = new int[]{GameUtils.getViewId(mContext, "download_error", "string")};
                mTipsView.setText(mContext.getString(mTips[0]));
                break;
            case "ParseJsonError":
                mTips = new int[]{GameUtils.getViewId(mContext, "parse_json_error", "string")};
                mTipsView.setText(mContext.getString(mTips[0]));
                break;
            case "InternalError":
                mTips = new int[]{GameUtils.getViewId(mContext, "internal_error", "string")};
                mTipsView.setText(mContext.getString(mTips[0]));
                break;
            default:
                break;
        }
    }
    public void setPercent(int percent) {
        mPercent = percent;
        if (mPercent > 100) {
            mPercent = 100;
        } else if(mPercent < 0) {
            mPercent = 0;
        }
        mProBar.setProgress(mPercent);
        mTipsView.setText(mContext.getString(mTips[0]) + "   (" + mPercent + "%)");
		if (mPercent == 100) {
            //dismissSplash();
        }
    }
    public void setFontColor(int color) {
        mTipsView.setTextColor(color);
    }
    public void setBackgroundColor(int color) {
        mLayout.setBackgroundColor(color);
    }
    public void showTextInfo(boolean show) {
        if (show) {
            mTipsView.setVisibility(View.VISIBLE);
        }
        else {
            mTipsView.setVisibility(View.INVISIBLE);
        }
    }
    public void showSplash() {
        hideNavigationBar();
        this.show();
        mStartTime = System.currentTimeMillis();
        mSplashHandler.sendEmptyMessage(0);
    }
    public void dismissSplash() {
        long showTime = System.currentTimeMillis() - mStartTime;
        if (showTime >= mleastShowTime * 1000) {
            Log.d(TAG,"SplashDialog >= 1s " + showTime);
            mSplashHandler.sendEmptyMessage(1);
        }
        else {
            Log.d(TAG,"SplashDialog < 1s " + showTime);
            mSplashHandler.sendEmptyMessageDelayed(1, (long) (this.mleastShowTime * 1000 - showTime));
        }
    }
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(GameUtils.getViewId(mContext, "splash_dialog", "layout"));
        mTipsView = (TextView)findViewById(GameUtils.getViewId(mContext, "tipsView", "id"));
        mProBar = findViewById(GameUtils.getViewId(mContext, "pro_bar", "id"));
        mLayout = findViewById(GameUtils.getViewId(mContext, "layout", "id"));

    }
    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if(event.getKeyCode() == KeyEvent.KEYCODE_BACK){
            return true;
        }else {
            return super.dispatchKeyEvent(event);
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
}
