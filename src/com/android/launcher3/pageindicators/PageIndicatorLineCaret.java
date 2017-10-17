// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.pageindicators;

import com.android.launcher3.dynamicui.ExtractedColors;
import android.view.View$AccessibilityDelegate;
import android.view.View;
import android.view.View$OnFocusChangeListener;
import android.view.View$OnClickListener;
import android.graphics.drawable.Drawable;
import com.android.launcher3.Utilities;
import android.graphics.Canvas;
import android.animation.Animator$AnimatorListener;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.os.Looper;
import android.util.AttributeSet;
import android.content.Context;
import android.view.ViewConfiguration;
import android.graphics.Paint;
import com.android.launcher3.Launcher;
import android.os.Handler;
import android.animation.ValueAnimator;
import android.widget.ImageView;
import android.util.Property;

public class PageIndicatorLineCaret extends PageIndicator
{
    private static final int LINE_ANIMATE_DURATION;
    private static final int LINE_FADE_DELAY;
    private static final Property NUM_PAGES;
    private static final Property PAINT_ALPHA;
    private static final Property TOTAL_SCROLL;
    private static final int[] sTempCoords;
    private int mActiveAlpha;
    private ImageView mAllAppsHandle;
    private ValueAnimator[] mAnimators;
    private int mCurrentScroll;
    private final Handler mDelayedLineFadeHandler;
    private Runnable mHideLineRunnable;
    private Launcher mLauncher;
    private final int mLineHeight;
    private Paint mLinePaint;
    private float mNumPagesFloat;
    private boolean mShouldAutoHide;
    private int mToAlpha;
    private int mTotalScroll;
    
    static {
        sTempCoords = new int[2];
        LINE_ANIMATE_DURATION = ViewConfiguration.getScrollBarFadeDuration();
        LINE_FADE_DELAY = ViewConfiguration.getScrollDefaultDelay();
        PAINT_ALPHA = new PageIndicatorLineCaret$1(Integer.class, "paint_alpha");
        NUM_PAGES = new PageIndicatorLineCaret$2(Float.class, "num_pages");
        TOTAL_SCROLL = new PageIndicatorLineCaret$3(Integer.class, "total_scroll");
    }
    
    public PageIndicatorLineCaret(final Context context) {
        this(context, null);
    }
    
    public PageIndicatorLineCaret(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public PageIndicatorLineCaret(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mAnimators = new ValueAnimator[3];
        this.mDelayedLineFadeHandler = new Handler(Looper.getMainLooper());
        this.mShouldAutoHide = true;
        this.mActiveAlpha = 0;
        this.mHideLineRunnable = new PageIndicatorLineCaret$4(this);
        final Resources resources = context.getResources();
        (this.mLinePaint = new Paint()).setAlpha(0);
        this.mLauncher = Launcher.getLauncher(context);
        this.mLineHeight = resources.getDimensionPixelSize(2131427346);
        this.setCaretDrawable(new CaretDrawable(context));
        final boolean supportsDarkText = WallpaperColorInfo.getInstance(context).supportsDarkText();
        int mActiveAlpha;
        if (supportsDarkText) {
            mActiveAlpha = 165;
        }
        else {
            mActiveAlpha = 178;
        }
        this.mActiveAlpha = mActiveAlpha;
        final Paint mLinePaint = this.mLinePaint;
        int color;
        if (supportsDarkText) {
            color = -16777216;
        }
        else {
            color = -1;
        }
        mLinePaint.setColor(color);
    }
    
    private void animateLineToAlpha(final int mToAlpha) {
        if (mToAlpha == this.mToAlpha) {
            return;
        }
        this.mToAlpha = mToAlpha;
        this.setupAndRunAnimation((ValueAnimator)ObjectAnimator.ofInt((Object)this, PageIndicatorLineCaret.PAINT_ALPHA, new int[] { mToAlpha }), 0);
    }
    
    private void animateToNumPages(final int n) {
        final int n2 = 1;
        final Property num_PAGES = PageIndicatorLineCaret.NUM_PAGES;
        final float[] array = new float[n2];
        array[0] = n;
        this.setupAndRunAnimation((ValueAnimator)ObjectAnimator.ofFloat((Object)this, num_PAGES, array), n2);
    }
    
    private void animateToTotalScroll(final int n) {
        this.setupAndRunAnimation((ValueAnimator)ObjectAnimator.ofInt((Object)this, PageIndicatorLineCaret.TOTAL_SCROLL, new int[] { n }), 2);
    }
    
    private void hideAfterDelay() {
        this.mDelayedLineFadeHandler.removeCallbacksAndMessages((Object)null);
        this.mDelayedLineFadeHandler.postDelayed(this.mHideLineRunnable, (long)PageIndicatorLineCaret.LINE_FADE_DELAY);
    }
    
    private void setupAndRunAnimation(final ValueAnimator valueAnimator, final int n) {
        if (this.mAnimators[n] != null) {
            this.mAnimators[n].cancel();
        }
        (this.mAnimators[n] = valueAnimator).addListener((Animator$AnimatorListener)new PageIndicatorLineCaret$5(this, n));
        this.mAnimators[n].setDuration((long)PageIndicatorLineCaret.LINE_ANIMATE_DURATION);
        this.mAnimators[n].start();
    }
    
    protected void onDraw(final Canvas canvas) {
        if (this.mTotalScroll == 0 || this.mNumPagesFloat == 0.0f) {
            return;
        }
        final float boundToRange = Utilities.boundToRange(this.mCurrentScroll / this.mTotalScroll, 0.0f, 1.0f);
        final int width = canvas.getWidth();
        final int n = (int)(width / this.mNumPagesFloat);
        final int n2 = (int)(boundToRange * (width - n));
        canvas.drawRect((float)n2, (float)(canvas.getHeight() - this.mLineHeight), (float)(n2 + n), (float)canvas.getHeight(), this.mLinePaint);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        (this.mAllAppsHandle = (ImageView)this.findViewById(2131624032)).setImageDrawable((Drawable)this.getCaretDrawable());
        this.mAllAppsHandle.setOnTouchListener(this.mLauncher.getHapticFeedbackTouchListener());
        this.mAllAppsHandle.setOnClickListener((View$OnClickListener)this.mLauncher);
        this.mAllAppsHandle.setOnFocusChangeListener((View$OnFocusChangeListener)this.mLauncher.mFocusHandler);
        this.mLauncher.setAllAppsButton((View)this.mAllAppsHandle);
    }
    
    protected void onPageCountChanged() {
        if (Float.compare(this.mNumPages, this.mNumPagesFloat) != 0) {
            this.animateToNumPages(this.mNumPages);
        }
    }
    
    public void setAccessibilityDelegate(final View$AccessibilityDelegate accessibilityDelegate) {
        this.mAllAppsHandle.setAccessibilityDelegate(accessibilityDelegate);
    }
    
    public void setActiveMarker(final int n) {
    }
    
    public void setContentDescription(final CharSequence contentDescription) {
        this.mAllAppsHandle.setContentDescription(contentDescription);
    }
    
    public void setScroll(final int mCurrentScroll, final int mTotalScroll) {
        if (this.getAlpha() == 0.0f) {
            return;
        }
        this.animateLineToAlpha(this.mActiveAlpha);
        this.mCurrentScroll = mCurrentScroll;
        if (this.mTotalScroll == 0) {
            this.mTotalScroll = mTotalScroll;
        }
        else if (this.mTotalScroll != mTotalScroll) {
            this.animateToTotalScroll(mTotalScroll);
        }
        else {
            this.invalidate();
        }
        if (this.mShouldAutoHide) {
            this.hideAfterDelay();
        }
    }
    
    public void setShouldAutoHide(final boolean mShouldAutoHide) {
        this.mShouldAutoHide = mShouldAutoHide;
        if (mShouldAutoHide && this.mLinePaint.getAlpha() > 0) {
            this.hideAfterDelay();
        }
        else if (!mShouldAutoHide) {
            this.mDelayedLineFadeHandler.removeCallbacksAndMessages((Object)null);
        }
    }
    
    public void updateColor(final ExtractedColors extractedColors) {
    }
}
