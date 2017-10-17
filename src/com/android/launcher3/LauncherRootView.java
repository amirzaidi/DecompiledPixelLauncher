// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.app.ActivityManager;
import android.graphics.Rect;
import android.graphics.Canvas;
import android.graphics.Paint$Style;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Paint;
import android.view.View;

public class LauncherRootView extends InsettableFrameLayout
{
    private View mAlignedView;
    private boolean mDrawSideInsetBar;
    private int mLeftInsetBarWidth;
    private final Paint mOpaquePaint;
    private int mRightInsetBarWidth;
    
    public LauncherRootView(final Context context, final AttributeSet set) {
        super(context, set);
        (this.mOpaquePaint = new Paint(1)).setColor(-16777216);
        this.mOpaquePaint.setStyle(Paint$Style.FILL);
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mDrawSideInsetBar) {
            if (this.mRightInsetBarWidth > 0) {
                final int width = this.getWidth();
                canvas.drawRect((float)(width - this.mRightInsetBarWidth), 0.0f, (float)width, (float)this.getHeight(), this.mOpaquePaint);
            }
            if (this.mLeftInsetBarWidth > 0) {
                canvas.drawRect(0.0f, 0.0f, (float)this.mLeftInsetBarWidth, (float)this.getHeight(), this.mOpaquePaint);
            }
        }
    }
    
    protected boolean fitSystemWindows(final Rect rect) {
        final boolean b = true;
        final boolean b2 = this.mInsets.equals((Object)rect) ^ true;
        boolean lowRamDevice;
        if (rect.right > 0 || rect.left > 0) {
            if (Utilities.ATLEAST_MARSHMALLOW) {
                lowRamDevice = ((ActivityManager)this.getContext().getSystemService((Class)ActivityManager.class)).isLowRamDevice();
            }
            else {
                lowRamDevice = b;
            }
        }
        else {
            lowRamDevice = false;
        }
        this.mDrawSideInsetBar = lowRamDevice;
        this.mRightInsetBarWidth = rect.right;
        this.mLeftInsetBarWidth = rect.left;
        Rect insets;
        if (this.mDrawSideInsetBar) {
            insets = new Rect(0, rect.top, 0, rect.bottom);
        }
        else {
            insets = rect;
        }
        this.setInsets(insets);
        if (this.mAlignedView != null && this.mDrawSideInsetBar) {
            final ViewGroup$MarginLayoutParams layoutParams = (ViewGroup$MarginLayoutParams)this.mAlignedView.getLayoutParams();
            if (layoutParams.leftMargin != rect.left || layoutParams.rightMargin != rect.right) {
                layoutParams.leftMargin = rect.left;
                layoutParams.rightMargin = rect.right;
                this.mAlignedView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
            }
        }
        if (b2) {
            Launcher.getLauncher(this.getContext()).onInsetsChanged(rect);
        }
        return b;
    }
    
    protected void onFinishInflate() {
        if (this.getChildCount() > 0) {
            this.mAlignedView = this.getChildAt(0);
        }
        super.onFinishInflate();
    }
}
