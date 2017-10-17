// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.graphics.PointF;
import android.os.SystemClock;
import android.os.Parcelable;
import android.view.View$MeasureSpec;
import android.view.Display;
import android.content.res.Resources;
import android.support.v7.recyclerview.R$dimen;
import android.graphics.drawable.Drawable;
import android.view.FocusFinder;
import android.graphics.Canvas;
import android.util.SparseArray;
import android.util.Log;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.ViewParent;
import android.view.ViewGroup$LayoutParams;
import android.content.res.TypedArray;
import android.graphics.drawable.StateListDrawable;
import android.support.v7.recyclerview.R$styleable;
import android.view.ViewConfiguration;
import android.util.AttributeSet;
import android.content.Context;
import android.os.Build$VERSION;
import android.view.VelocityTracker;
import android.graphics.RectF;
import android.graphics.Rect;
import java.util.List;
import java.util.ArrayList;
import android.widget.EdgeEffect;
import android.view.accessibility.AccessibilityManager;
import android.view.ViewGroup;
import android.support.v4.os.b;
import android.view.View;
import android.support.v4.view.f;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

class v implements Runnable
{
    private boolean QW;
    private int QX;
    private OverScroller QY;
    private boolean QZ;
    private int Ra;
    final /* synthetic */ RecyclerView Rb;
    Interpolator mInterpolator;
    
    v(final RecyclerView rb) {
        this.Rb = rb;
        this.mInterpolator = RecyclerView.sQuinticInterpolator;
        this.QW = false;
        this.QZ = false;
        this.QY = new OverScroller(rb.getContext(), RecyclerView.sQuinticInterpolator);
    }
    
    private int Zb(final int n, final int n2, final int n3, final int n4) {
        final float n5 = 1.0f;
        boolean b = false;
        final int abs = Math.abs(n);
        final int abs2 = Math.abs(n2);
        if (abs > abs2) {
            b = true;
        }
        final int n6 = (int)Math.sqrt(n3 * n3 + n4 * n4);
        final int n7 = (int)Math.sqrt(n * n + n2 * n2);
        int n8;
        if (!b) {
            n8 = this.Rb.getHeight();
        }
        else {
            n8 = this.Rb.getWidth();
        }
        final int n9 = n8 / 2;
        final float n10 = this.distanceInfluenceForSnapDuration(Math.min(n5, n7 * n5 / n8)) * n9 + n9;
        int n12;
        if (n6 <= 0) {
            int n11;
            if (!b) {
                n11 = abs2;
            }
            else {
                n11 = abs;
            }
            n12 = (int)((n11 / n8 + n5) * 300.0f);
        }
        else {
            n12 = Math.round(Math.abs(n10 / n6) * 1000.0f) * 4;
        }
        return Math.min(n12, 2000);
    }
    
    private void Zc() {
        this.QZ = false;
        this.QW = true;
    }
    
    private void Zd() {
        this.QW = false;
        if (this.QZ) {
            this.Ze();
        }
    }
    
    private float distanceInfluenceForSnapDuration(final float n) {
        return (float)Math.sin((n - 0.5f) * 0.47123894f);
    }
    
    public void YZ(final int n, final int n2, final int n3, final Interpolator mInterpolator) {
        if (this.mInterpolator != mInterpolator) {
            this.mInterpolator = mInterpolator;
            this.QY = new OverScroller(this.Rb.getContext(), mInterpolator);
        }
        this.Rb.setScrollState(2);
        this.QX = 0;
        this.Ra = 0;
        this.QY.startScroll(0, 0, n, n2, n3);
        this.Ze();
    }
    
    void Ze() {
        if (!this.QW) {
            this.Rb.removeCallbacks((Runnable)this);
            f.agG((View)this.Rb, this);
        }
        else {
            this.QZ = true;
        }
    }
    
    public void Zf(final int n, final int n2, final int n3, final int n4) {
        this.Zg(n, n2, this.Zb(n, n2, n3, n4));
    }
    
    public void Zg(final int n, final int n2, final int n3) {
        this.YZ(n, n2, n3, RecyclerView.sQuinticInterpolator);
    }
    
    public void fling(final int n, final int n2) {
        final int n3 = -1 >>> 1;
        final int n4 = -1 << -1;
        this.Rb.setScrollState(2);
        this.QX = 0;
        this.Ra = 0;
        this.QY.fling(0, 0, n, n2, n4, n3, n4, n3);
        this.Ze();
    }
    
    public void run() {
        if (this.Rb.mLayout != null) {
            this.Zc();
            this.Rb.consumePendingUpdateOperations();
            final OverScroller qy = this.QY;
            final g mSmoothScroller = this.Rb.mLayout.mSmoothScroller;
            if (qy.computeScrollOffset()) {
                final int[] access$500 = this.Rb.mScrollConsumed;
                final int currX = qy.getCurrX();
                final int currY = qy.getCurrY();
                final int n = currX - this.Ra;
                final int n2 = currY - this.QX;
                this.Ra = currX;
                this.QX = currY;
                int n3;
                int n4;
                if (!this.Rb.dispatchNestedPreScroll(n, n2, access$500, null, 1)) {
                    n3 = n2;
                    n4 = n;
                }
                else {
                    final int n5 = n - access$500[0];
                    n3 = n2 - access$500[1];
                    n4 = n5;
                }
                int n6;
                int n7;
                int n8;
                int n9;
                if (this.Rb.mAdapter == null) {
                    n6 = 0;
                    n7 = 0;
                    n8 = 0;
                    n9 = 0;
                }
                else {
                    this.Rb.eatRequestLayout();
                    this.Rb.onEnterLayoutOrScroll();
                    b.asr("RV Scroll");
                    this.Rb.fillRemainingScrollValues(this.Rb.mState);
                    int scrollHorizontallyBy;
                    if (n4 == 0) {
                        n7 = 0;
                        scrollHorizontallyBy = 0;
                    }
                    else {
                        scrollHorizontallyBy = this.Rb.mLayout.scrollHorizontallyBy(n4, this.Rb.mRecycler, this.Rb.mState);
                        n7 = n4 - scrollHorizontallyBy;
                    }
                    int n10;
                    int scrollVerticallyBy;
                    if (n3 == 0) {
                        n10 = 0;
                        scrollVerticallyBy = 0;
                    }
                    else {
                        scrollVerticallyBy = this.Rb.mLayout.scrollVerticallyBy(n3, this.Rb.mRecycler, this.Rb.mState);
                        n10 = n3 - scrollVerticallyBy;
                    }
                    b.asq();
                    this.Rb.repositionShadowingViews();
                    this.Rb.onExitLayoutOrScroll();
                    this.Rb.resumeRequestLayout(false);
                    if (mSmoothScroller != null && !mSmoothScroller.XZ()) {
                        if (!mSmoothScroller.XY()) {
                            n6 = n10;
                            final int n11 = scrollVerticallyBy;
                            n9 = scrollHorizontallyBy;
                            n8 = n11;
                        }
                        else {
                            final int itemCount = this.Rb.mState.getItemCount();
                            if (itemCount != 0) {
                                if (mSmoothScroller.XW() < itemCount) {
                                    mSmoothScroller.XR(n4 - n7, n3 - n10);
                                    n6 = n10;
                                    final int n12 = scrollVerticallyBy;
                                    n9 = scrollHorizontallyBy;
                                    n8 = n12;
                                }
                                else {
                                    mSmoothScroller.XV(itemCount - 1);
                                    mSmoothScroller.XR(n4 - n7, n3 - n10);
                                    n6 = n10;
                                    final int n13 = scrollVerticallyBy;
                                    n9 = scrollHorizontallyBy;
                                    n8 = n13;
                                }
                            }
                            else {
                                mSmoothScroller.stop();
                                n6 = n10;
                                final int n14 = scrollVerticallyBy;
                                n9 = scrollHorizontallyBy;
                                n8 = n14;
                            }
                        }
                    }
                    else {
                        n6 = n10;
                        final int n15 = scrollVerticallyBy;
                        n9 = scrollHorizontallyBy;
                        n8 = n15;
                    }
                }
                if (!this.Rb.mItemDecorations.isEmpty()) {
                    this.Rb.invalidate();
                }
                if (this.Rb.getOverScrollMode() != 2) {
                    this.Rb.considerReleasingGlowsOnScroll(n4, n3);
                }
                if (!this.Rb.dispatchNestedScroll(n9, n8, n7, n6, null, 1)) {
                    if (n7 != 0 || n6 != 0) {
                        int n16 = (int)qy.getCurrVelocity();
                        int n17 = 0;
                        if (n7 != currX) {
                            if (n7 >= 0) {
                                if (n7 <= 0) {
                                    n17 = 0;
                                }
                                else {
                                    n17 = n16;
                                }
                            }
                            else {
                                n17 = -n16;
                            }
                        }
                        if (n6 == currY) {
                            n16 = 0;
                        }
                        else if (n6 >= 0) {
                            if (n6 <= 0) {
                                n16 = 0;
                            }
                        }
                        else {
                            n16 = -n16;
                        }
                        if (this.Rb.getOverScrollMode() != 2) {
                            this.Rb.absorbGlows(n17, n16);
                        }
                        if (n17 != 0 || n7 == currX || qy.getFinalX() == 0) {
                            if (n16 != 0 || n6 == currY || qy.getFinalY() == 0) {
                                qy.abortAnimation();
                            }
                        }
                    }
                }
                if (n9 != 0 || n8 != 0) {
                    this.Rb.dispatchOnScrolled(n9, n8);
                }
                if (!RecyclerView.access$700(this.Rb)) {
                    this.Rb.invalidate();
                }
                final boolean b = n3 != 0 && this.Rb.mLayout.canScrollVertically() && n8 == n3;
                boolean b2;
                if (n4 != 0 && this.Rb.mLayout.canScrollHorizontally() && n9 == n4) {
                    b2 = true;
                }
                else {
                    b2 = false;
                }
                boolean b3 = false;
                Label_0353: {
                    if (n4 != 0 || n3 != 0) {
                        if (!b2 && !b) {
                            b3 = false;
                            break Label_0353;
                        }
                    }
                    b3 = true;
                }
                if (!qy.isFinished() && (b3 || this.Rb.hasNestedScrollingParent(1))) {
                    this.Ze();
                    if (this.Rb.mGapWorker != null) {
                        this.Rb.mGapWorker.aay(this.Rb, n4, n3);
                    }
                }
                else {
                    this.Rb.setScrollState(0);
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        this.Rb.mPrefetchRegistry.Zp();
                    }
                    this.Rb.stopNestedScroll(1);
                }
            }
            if (mSmoothScroller != null) {
                if (mSmoothScroller.XZ()) {
                    mSmoothScroller.XR(0, 0);
                }
                if (!this.QZ) {
                    mSmoothScroller.stop();
                }
            }
            this.Zd();
            return;
        }
        this.stop();
    }
    
    public void smoothScrollBy(final int n, final int n2) {
        this.Zf(n, n2, 0, 0);
    }
    
    public void smoothScrollBy(final int n, final int n2, Interpolator sQuinticInterpolator) {
        final int zb = this.Zb(n, n2, 0, 0);
        if (sQuinticInterpolator == null) {
            sQuinticInterpolator = RecyclerView.sQuinticInterpolator;
        }
        this.YZ(n, n2, zb, sQuinticInterpolator);
    }
    
    public void stop() {
        this.Rb.removeCallbacks((Runnable)this);
        this.QY.abortAnimation();
    }
}
