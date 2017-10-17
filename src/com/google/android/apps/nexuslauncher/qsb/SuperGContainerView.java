// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.content.Intent;
import android.widget.FrameLayout$LayoutParams;
import com.android.launcher3.DeviceProfile;
import android.view.View$MeasureSpec;
import com.android.launcher3.Utilities;
import android.view.TouchDelegate;
import android.view.MotionEvent;
import android.content.SharedPreferences;
import android.view.ViewGroup;
import android.view.View;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.util.TransformingTouchDelegate;
import android.graphics.Rect;

public class SuperGContainerView extends f
{
    private static final Rect sTempRect;
    private final boolean E;
    private final TransformingTouchDelegate mTouchDelegate;
    
    static {
        sTempRect = new Rect();
    }
    
    public SuperGContainerView(final Context context) {
        this(context, null);
    }
    
    public SuperGContainerView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public SuperGContainerView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.E = c.p(context);
        if (this.Q.useVerticalBarLayout()) {
            View.inflate(context, 2130968609, (ViewGroup)this);
            this.mTouchDelegate = null;
        }
        else if (!this.E) {
            this.mTouchDelegate = new TransformingTouchDelegate((View)this);
        }
        else {
            this.mTouchDelegate = null;
        }
    }
    
    public void G(final SharedPreferences sharedPreferences) {
        if (this.E) {
            return;
        }
        super.G(sharedPreferences);
        if (this.mTouchDelegate != null) {
            this.mTouchDelegate.setDelegateView(this.P);
        }
    }
    
    public boolean dispatchTouchEvent(final MotionEvent motionEvent) {
        return this.mTouchDelegate == null && super.dispatchTouchEvent(motionEvent);
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mTouchDelegate != null) {
            this.Q.getWorkspace().findViewById(2131623939).setTouchDelegate((TouchDelegate)this.mTouchDelegate);
        }
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        if (this.mTouchDelegate != null) {
            int n5 = 0;
            if (Utilities.isRtl(this.getResources())) {
                n5 = this.P.getLeft() - this.Q.getDeviceProfile().getWorkspacePadding(SuperGContainerView.sTempRect).left;
            }
            this.mTouchDelegate.setBounds(n5, this.P.getTop(), this.P.getWidth() + n5, this.P.getBottom());
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        final int n3 = -this.getResources().getDimensionPixelSize(2131427480);
        final DeviceProfile deviceProfile = this.Q.getDeviceProfile();
        final Rect workspacePadding = deviceProfile.getWorkspacePadding(SuperGContainerView.sTempRect);
        final int n4 = View$MeasureSpec.getSize(n) - n3;
        int n6;
        int marginStart;
        if (deviceProfile.isVerticalBarLayout()) {
            final int n5 = n3 + this.getResources().getDimensionPixelSize(2131427483);
            n6 = n4;
            marginStart = n5;
        }
        else {
            final int n7 = n4 - workspacePadding.left - workspacePadding.right;
            final int n8 = DeviceProfile.calculateCellWidth(n7, deviceProfile.inv.numColumns) * deviceProfile.inv.numColumns;
            final int n9 = n3 + (workspacePadding.left + (n7 - n8) / 2);
            n6 = n8;
            marginStart = n9;
        }
        if (this.P != null) {
            final FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams)this.P.getLayoutParams();
            frameLayout$LayoutParams.width = n6 / deviceProfile.inv.numColumns;
            if (this.R) {
                frameLayout$LayoutParams.width = Math.max(frameLayout$LayoutParams.width, this.getResources().getDimensionPixelSize(2131427482));
            }
            frameLayout$LayoutParams.setMarginStart(marginStart);
            frameLayout$LayoutParams.resolveLayoutDirection(frameLayout$LayoutParams.getLayoutDirection());
        }
        if (this.S != null) {
            final FrameLayout$LayoutParams frameLayout$LayoutParams2 = (FrameLayout$LayoutParams)this.S.getLayoutParams();
            frameLayout$LayoutParams2.width = marginStart + frameLayout$LayoutParams2.height / 2;
        }
        super.onMeasure(n, n2);
    }
    
    public void setPadding(final int n, final int n2, final int n3, final int n4) {
        super.setPadding(0, 0, 0, 0);
    }
    
    protected int u(final boolean b) {
        if (this.mTouchDelegate != null) {
            final TransformingTouchDelegate mTouchDelegate = this.mTouchDelegate;
            float dimension;
            if (b) {
                dimension = 0.0f;
            }
            else {
                dimension = this.getResources().getDimension(2131427484);
            }
            mTouchDelegate.extendTouchBounds(dimension);
        }
        int n;
        if (b) {
            n = 2130968616;
        }
        else {
            n = 2130968617;
        }
        return n;
    }
    
    protected void v(final Rect rect, final Intent intent) {
        if (this.Q.useVerticalBarLayout()) {
            return;
        }
        final int n = this.P.getHeight() / 2;
        if (Utilities.isRtl(this.getResources())) {
            rect.right = n + this.getRight();
        }
        else {
            rect.left = -n;
        }
    }
    
    protected boolean w(final SharedPreferences sharedPreferences) {
        return !this.E && super.w(sharedPreferences);
    }
}
