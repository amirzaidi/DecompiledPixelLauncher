// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.graphics.drawable.Drawable;
import android.support.v7.widget.m;
import android.support.v7.widget.t;
import com.android.launcher3.DeviceProfile;
import android.support.v7.widget.h;
import android.support.v7.widget.q;
import android.view.View$MeasureSpec;
import android.graphics.drawable.Drawable$Callback;
import com.android.launcher3.graphics.DrawableFactory;
import android.view.MotionEvent;
import android.graphics.Canvas;
import java.util.List;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import android.view.View;
import android.view.ViewGroup;
import android.content.res.Resources;
import android.support.v7.widget.n;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.views.RecyclerViewFastScroller;
import com.android.launcher3.anim.SpringAnimationHandler;
import android.util.SparseIntArray;
import android.util.Property;
import com.android.launcher3.logging.UserEventDispatcher$LogContainerProvider;
import com.android.launcher3.BaseRecyclerView;
import android.animation.ObjectAnimator;
import com.android.launcher3.config.FeatureFlags;

class AllAppsRecyclerView$OverScrollHelper implements VerticalPullDetector$Listener
{
    private boolean mAlreadyScrollingUp;
    private float mFirstDisplacement;
    private int mFirstScrollYOnScrollUp;
    private boolean mIsInOverScroll;
    final /* synthetic */ AllAppsRecyclerView this$0;
    
    private AllAppsRecyclerView$OverScrollHelper(final AllAppsRecyclerView this$0) {
        this.this$0 = this$0;
        this.mFirstDisplacement = 0.0f;
    }
    
    private float dampedOverScroll(final float n, final float n2) {
        final float n3 = n / n2;
        if (Float.compare(n3, 0.0f) == 0) {
            return 0.0f;
        }
        float n4 = this.overScrollInfluenceCurve(Math.abs(n3)) * (n3 / Math.abs(n3));
        if (Math.abs(n4) >= 1.0f) {
            n4 /= Math.abs(n4);
        }
        return Math.round(n4 * n2);
    }
    
    private float getDampedOverScroll(final float n) {
        return this.dampedOverScroll(n, this.this$0.getHeight()) * 0.07f;
    }
    
    private float overScrollInfluenceCurve(final float n) {
        final float n2 = 1.0f;
        final float n3 = n - n2;
        return n3 * (n3 * n3) + n2;
    }
    
    private void reset(final boolean b) {
        final float contentTranslationY = this.this$0.getContentTranslationY();
        if (Float.compare(contentTranslationY, 0.0f) != 0) {
            if (FeatureFlags.LAUNCHER3_PHYSICS && b) {
                this.this$0.mSpringAnimationHandler.animateToPositionWithVelocity(0.0f, -1, -(contentTranslationY / this.getDampedOverScroll(this.this$0.getHeight()) * 5000.0f));
            }
            ObjectAnimator.ofFloat((Object)this.this$0, AllAppsRecyclerView.CONTENT_TRANS_Y, new float[] { 0.0f }).setDuration((long)100).start();
        }
        this.mIsInOverScroll = false;
        this.mFirstDisplacement = 0.0f;
        this.mFirstScrollYOnScrollUp = 0;
        this.mAlreadyScrollingUp = false;
    }
    
    public boolean isInOverScroll() {
        return this.mIsInOverScroll;
    }
    
    public boolean onDrag(final float mFirstDisplacement, final float n) {
        int n2 = 1;
        final boolean b = mFirstDisplacement > 0.0f && n2;
        if (b) {
            if (!this.mAlreadyScrollingUp) {
                this.mFirstScrollYOnScrollUp = this.this$0.getCurrentScrollY();
                this.mAlreadyScrollingUp = (n2 != 0);
            }
        }
        else {
            this.mAlreadyScrollingUp = false;
        }
        final boolean mIsInOverScroll = this.mIsInOverScroll;
        if (!this.this$0.mScrollbar.isDraggingThumb()) {
            if ((this.this$0.canScrollVertically(n2) || mFirstDisplacement >= 0.0f) && (this.this$0.canScrollVertically(-1) || !b || this.mFirstScrollYOnScrollUp == 0)) {
                n2 = 0;
            }
        }
        else {
            n2 = 0;
        }
        this.mIsInOverScroll = (n2 != 0);
        if (mIsInOverScroll && (this.mIsInOverScroll ^ true)) {
            this.reset(false);
        }
        else if (this.mIsInOverScroll) {
            if (Float.compare(this.mFirstDisplacement, 0.0f) == 0) {
                this.mFirstDisplacement = mFirstDisplacement;
            }
            this.this$0.setContentTranslationY(this.getDampedOverScroll(mFirstDisplacement - this.mFirstDisplacement));
        }
        return this.mIsInOverScroll;
    }
    
    public void onDragEnd(final float n, final boolean b) {
        this.reset(this.mIsInOverScroll);
    }
    
    public void onDragStart(final boolean b) {
    }
}
