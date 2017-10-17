// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.drawable.InsetDrawable;
import android.view.TouchDelegate;
import android.view.ViewConfiguration;
import android.view.MotionEvent;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.config.FeatureFlags;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.util.TransformingTouchDelegate;
import android.graphics.PointF;
import android.view.View;
import android.graphics.drawable.Drawable;
import android.graphics.Rect;
import android.widget.FrameLayout;

public abstract class BaseContainerView extends FrameLayout implements DeviceProfile$LauncherLayoutChangeListener
{
    private static final Rect sBgPaddingRect;
    protected final Drawable mBaseDrawable;
    private View mContent;
    private final PointF mLastTouchDownPosPx;
    private View mRevealView;
    private TransformingTouchDelegate mTouchDelegate;
    
    static {
        sBgPaddingRect = new Rect();
    }
    
    public BaseContainerView(final Context context) {
        this(context, null);
    }
    
    public BaseContainerView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public BaseContainerView(final Context context, final AttributeSet set, final int n) {
        final float n2 = -1.0f;
        super(context, set, n);
        this.mLastTouchDownPosPx = new PointF(n2, n2);
        if (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP && this instanceof AllAppsContainerView) {
            this.mBaseDrawable = (Drawable)new ColorDrawable();
        }
        else {
            final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, R$styleable.BaseContainerView, n, 0);
            this.mBaseDrawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
        }
    }
    
    private boolean handleTouchEvent(final MotionEvent motionEvent) {
        final boolean b = true;
        final float n = -1.0f;
        switch (motionEvent.getAction()) {
            case 0: {
                final View touchDelegateTargetView = this.getTouchDelegateTargetView();
                final float n2 = touchDelegateTargetView.getLeft();
                if (motionEvent.getX() < n2 || motionEvent.getX() > touchDelegateTargetView.getWidth() + n2) {
                    this.mLastTouchDownPosPx.set((float)(int)motionEvent.getX(), (float)(int)motionEvent.getY());
                    break;
                }
                break;
            }
            case 1: {
                if (this.mLastTouchDownPosPx.x > n && PointF.length(motionEvent.getX() - this.mLastTouchDownPosPx.x, motionEvent.getY() - this.mLastTouchDownPosPx.y) < ViewConfiguration.get(this.getContext()).getScaledTouchSlop()) {
                    Launcher.getLauncher(this.getContext()).showWorkspace(b);
                    return b;
                }
            }
            case 3: {
                this.mLastTouchDownPosPx.set(n, n);
                break;
            }
        }
        return false;
    }
    
    private void updatePaddings() {
        int n = 0;
        final DeviceProfile deviceProfile = Launcher.getLauncher(this.getContext()).getDeviceProfile();
        final int[] containerPadding = deviceProfile.getContainerPadding();
        final int n2 = containerPadding[0] + deviceProfile.edgeMarginPx;
        final int n3 = containerPadding[1] + deviceProfile.edgeMarginPx;
        int edgeMarginPx;
        if (!deviceProfile.isVerticalBarLayout()) {
            n = (edgeMarginPx = deviceProfile.edgeMarginPx);
        }
        else {
            edgeMarginPx = 0;
        }
        this.updateBackground(n2, n, n3, edgeMarginPx);
    }
    
    public final View getContentView() {
        return this.mContent;
    }
    
    public final View getRevealView() {
        return this.mRevealView;
    }
    
    public abstract View getTouchDelegateTargetView();
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Launcher.getLauncher(this.getContext()).getDeviceProfile().addLauncherLayoutChangedListener(this);
        final View touchDelegateTargetView = this.getTouchDelegateTargetView();
        if (touchDelegateTargetView != null) {
            this.mTouchDelegate = new TransformingTouchDelegate(touchDelegateTargetView);
            ((View)touchDelegateTargetView.getParent()).setTouchDelegate((TouchDelegate)this.mTouchDelegate);
        }
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Launcher.getLauncher(this.getContext()).getDeviceProfile().removeLauncherLayoutChangedListener(this);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mContent = this.findViewById(2131623975);
        this.mRevealView = this.findViewById(2131623974);
        this.updatePaddings();
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        return this.handleTouchEvent(motionEvent);
    }
    
    public void onLauncherLayoutChanged() {
        this.updatePaddings();
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        final View touchDelegateTargetView = this.getTouchDelegateTargetView();
        if (touchDelegateTargetView != null) {
            this.getRevealView().getBackground().getPadding(BaseContainerView.sBgPaddingRect);
            this.mTouchDelegate.setBounds(touchDelegateTargetView.getLeft() - BaseContainerView.sBgPaddingRect.left, touchDelegateTargetView.getTop() - BaseContainerView.sBgPaddingRect.top, touchDelegateTargetView.getRight() + BaseContainerView.sBgPaddingRect.right, touchDelegateTargetView.getBottom() + BaseContainerView.sBgPaddingRect.bottom);
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        return this.handleTouchEvent(motionEvent);
    }
    
    public void setRevealDrawableColor(final int color) {
        ((ColorDrawable)this.mBaseDrawable).setColor(color);
    }
    
    protected void updateBackground(final int n, final int n2, final int n3, final int n4) {
        this.mRevealView.setBackground((Drawable)new InsetDrawable(this.mBaseDrawable, n, n2, n3, n4));
        this.mContent.setBackground((Drawable)new InsetDrawable(this.mBaseDrawable, n, n2, n3, n4));
    }
}
