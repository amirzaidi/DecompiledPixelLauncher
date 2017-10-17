// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import com.android.launcher3.Workspace$State;
import com.android.launcher3.DeviceProfile;
import android.widget.FrameLayout$LayoutParams;
import android.view.View$MeasureSpec;
import android.graphics.Canvas;
import com.android.launcher3.Workspace;
import android.animation.AnimatorSet;
import com.android.launcher3.Launcher;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Paint;
import android.view.View;
import android.util.Property;
import com.android.launcher3.Workspace$OnStateChangeListener;
import android.widget.FrameLayout;

public class QsbBlockerView extends FrameLayout implements Workspace$OnStateChangeListener, e
{
    public static final Property x;
    private int mState;
    private View mView;
    private final Paint y;
    
    static {
        x = new m(Integer.TYPE, "bgAlpha");
    }
    
    public QsbBlockerView(final Context context, final AttributeSet set) {
        super(context, set);
        this.mState = 0;
        (this.y = new Paint(1)).setColor(-1);
        this.y.setAlpha(0);
        if (c.p(this.getContext())) {
            View.inflate(context, 2130968613, (ViewGroup)this);
        }
    }
    
    public void D(final a a) {
        final long n = 200L;
        final boolean mState = true;
        final View mView = this.mView;
        final int mState2 = this.mState;
        this.mView = ShadowHostView.e(a, (ViewGroup)this, this.mView);
        this.mState = 2;
        if (this.mView == null) {
            this.mState = (mState ? 1 : 0);
            View inflate;
            if (mView != null && mState2 == (mState ? 1 : 0)) {
                inflate = mView;
            }
            else {
                inflate = LayoutInflater.from(this.getContext()).inflate(2130968590, (ViewGroup)this, false);
            }
            this.mView = inflate;
        }
        if (mState2 == this.mState) {
            if (mView != this.mView) {
                if (mView != null) {
                    this.removeView(mView);
                }
                this.addView(this.mView);
            }
        }
        else {
            if (mView != null) {
                mView.animate().setDuration(n).alpha(0.0f).withEndAction((Runnable)new n(this, mView));
            }
            this.addView(this.mView);
            this.mView.setAlpha(0.0f);
            this.mView.animate().setDuration(n).alpha(1.0f);
        }
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!c.p(this.getContext())) {
            final Workspace workspace = Launcher.getLauncher(this.getContext()).getWorkspace();
            workspace.setOnStateChangeListener(this);
            this.prepareStateChange(workspace.getState(), null);
            final a l = d.get(this.getContext()).L(this);
            if (l != null) {
                this.D(l);
            }
        }
    }
    
    protected void onDetachedFromWindow() {
        if (!c.p(this.getContext())) {
            d.get(this.getContext()).M(this);
        }
        super.onDetachedFromWindow();
    }
    
    protected void onDraw(final Canvas canvas) {
        canvas.drawPaint(this.y);
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (this.mView != null && this.mState == 2) {
            final DeviceProfile deviceProfile = Launcher.getLauncher(this.getContext()).getDeviceProfile();
            final int n3 = View$MeasureSpec.getSize(n) / deviceProfile.inv.numColumns;
            final FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams)this.mView.getLayoutParams();
            final int n4 = (n3 - deviceProfile.iconSizePx) / 2;
            frameLayout$LayoutParams.rightMargin = n4;
            frameLayout$LayoutParams.leftMargin = n4;
        }
        super.onMeasure(n, n2);
    }
    
    public void prepareStateChange(final Workspace$State workspace$State, final AnimatorSet set) {
        int n;
        if (workspace$State == Workspace$State.SPRING_LOADED) {
            n = 60;
        }
        else {
            n = 0;
        }
        if (set == null) {
            QsbBlockerView.x.set((Object)this, (Object)n);
        }
        else {
            set.play((Animator)ObjectAnimator.ofInt((Object)this, QsbBlockerView.x, new int[] { n }));
        }
    }
    
    public void setPadding(final int n, final int n2, final int n3, final int n4) {
        super.setPadding(0, 0, 0, 0);
    }
}
