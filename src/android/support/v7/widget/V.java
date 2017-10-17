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
import android.support.v4.view.a.r;
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
import android.support.v4.view.e;
import android.view.ViewGroup;
import android.support.v4.os.c;
import android.view.View;
import android.support.v4.view.f;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

class v implements Runnable
{
    private boolean Pp;
    private int Pq;
    private OverScroller Pr;
    private boolean Ps;
    private int Pt;
    final /* synthetic */ RecyclerView Pu;
    Interpolator mInterpolator;
    
    v(final RecyclerView pu) {
        this.Pu = pu;
        this.mInterpolator = RecyclerView.sQuinticInterpolator;
        this.Pp = false;
        this.Ps = false;
        this.Pr = new OverScroller(pu.getContext(), RecyclerView.sQuinticInterpolator);
    }
    
    private int XZ(final int n, final int n2, final int n3, final int n4) {
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
            n8 = this.Pu.getHeight();
        }
        else {
            n8 = this.Pu.getWidth();
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
    
    private void Ya() {
        this.Ps = false;
        this.Pp = true;
    }
    
    private void Yb() {
        this.Pp = false;
        if (this.Ps) {
            this.Yc();
        }
    }
    
    private float distanceInfluenceForSnapDuration(final float n) {
        return (float)Math.sin((n - 0.5f) * 0.47123894f);
    }
    
    public void XY(final int n, final int n2, final int n3, final Interpolator mInterpolator) {
        if (this.mInterpolator != mInterpolator) {
            this.mInterpolator = mInterpolator;
            this.Pr = new OverScroller(this.Pu.getContext(), mInterpolator);
        }
        this.Pu.setScrollState(2);
        this.Pq = 0;
        this.Pt = 0;
        this.Pr.startScroll(0, 0, n, n2, n3);
        this.Yc();
    }
    
    void Yc() {
        if (!this.Pp) {
            this.Pu.removeCallbacks((Runnable)this);
            f.afE((View)this.Pu, this);
        }
        else {
            this.Ps = true;
        }
    }
    
    public void Yd(final int n, final int n2, final int n3, final int n4) {
        this.Ye(n, n2, this.XZ(n, n2, n3, n4));
    }
    
    public void Ye(final int n, final int n2, final int n3) {
        this.XY(n, n2, n3, RecyclerView.sQuinticInterpolator);
    }
    
    public void fling(final int n, final int n2) {
        final int n3 = -1 >>> 1;
        final int n4 = -1 << -1;
        this.Pu.setScrollState(2);
        this.Pq = 0;
        this.Pt = 0;
        this.Pr.fling(0, 0, n, n2, n4, n3, n4, n3);
        this.Yc();
    }
    
    public void run() {
        if (this.Pu.mLayout != null) {
            this.Ya();
            this.Pu.consumePendingUpdateOperations();
            final OverScroller pr = this.Pr;
            final g mSmoothScroller = this.Pu.mLayout.mSmoothScroller;
            if (pr.computeScrollOffset()) {
                final int[] access$400 = this.Pu.mScrollConsumed;
                final int currX = pr.getCurrX();
                final int currY = pr.getCurrY();
                final int n = currX - this.Pt;
                final int n2 = currY - this.Pq;
                this.Pt = currX;
                this.Pq = currY;
                int n3;
                int n4;
                if (!this.Pu.dispatchNestedPreScroll(n, n2, access$400, null, 1)) {
                    n3 = n2;
                    n4 = n;
                }
                else {
                    final int n5 = n - access$400[0];
                    n3 = n2 - access$400[1];
                    n4 = n5;
                }
                int n6;
                int n7;
                int n8;
                int n9;
                if (this.Pu.mAdapter == null) {
                    n6 = 0;
                    n7 = 0;
                    n8 = 0;
                    n9 = 0;
                }
                else {
                    this.Pu.eatRequestLayout();
                    this.Pu.onEnterLayoutOrScroll();
                    c.ari("RV Scroll");
                    int scrollHorizontallyBy;
                    if (n4 == 0) {
                        n7 = 0;
                        scrollHorizontallyBy = 0;
                    }
                    else {
                        scrollHorizontallyBy = this.Pu.mLayout.scrollHorizontallyBy(n4, this.Pu.mRecycler, this.Pu.mState);
                        n7 = n4 - scrollHorizontallyBy;
                    }
                    int n10;
                    int scrollVerticallyBy;
                    if (n3 == 0) {
                        n10 = 0;
                        scrollVerticallyBy = 0;
                    }
                    else {
                        scrollVerticallyBy = this.Pu.mLayout.scrollVerticallyBy(n3, this.Pu.mRecycler, this.Pu.mState);
                        n10 = n3 - scrollVerticallyBy;
                    }
                    c.arh();
                    this.Pu.repositionShadowingViews();
                    this.Pu.onExitLayoutOrScroll();
                    this.Pu.resumeRequestLayout(false);
                    if (mSmoothScroller != null && !mSmoothScroller.Xa()) {
                        if (!mSmoothScroller.WZ()) {
                            n6 = n10;
                            final int n11 = scrollVerticallyBy;
                            n9 = scrollHorizontallyBy;
                            n8 = n11;
                        }
                        else {
                            final int itemCount = this.Pu.mState.getItemCount();
                            if (itemCount != 0) {
                                if (mSmoothScroller.WX() < itemCount) {
                                    mSmoothScroller.WR(n4 - n7, n3 - n10);
                                    n6 = n10;
                                    final int n12 = scrollVerticallyBy;
                                    n9 = scrollHorizontallyBy;
                                    n8 = n12;
                                }
                                else {
                                    mSmoothScroller.WW(itemCount - 1);
                                    mSmoothScroller.WR(n4 - n7, n3 - n10);
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
                if (!this.Pu.mItemDecorations.isEmpty()) {
                    this.Pu.invalidate();
                }
                if (this.Pu.getOverScrollMode() != 2) {
                    this.Pu.considerReleasingGlowsOnScroll(n4, n3);
                }
                if (!this.Pu.dispatchNestedScroll(n9, n8, n7, n6, null, 1)) {
                    if (n7 != 0 || n6 != 0) {
                        int n16 = (int)pr.getCurrVelocity();
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
                        if (this.Pu.getOverScrollMode() != 2) {
                            this.Pu.absorbGlows(n17, n16);
                        }
                        if (n17 != 0 || n7 == currX || pr.getFinalX() == 0) {
                            if (n16 != 0 || n6 == currY || pr.getFinalY() == 0) {
                                pr.abortAnimation();
                            }
                        }
                    }
                }
                if (n9 != 0 || n8 != 0) {
                    this.Pu.dispatchOnScrolled(n9, n8);
                }
                if (!RecyclerView.access$600(this.Pu)) {
                    this.Pu.invalidate();
                }
                final boolean b = n3 != 0 && this.Pu.mLayout.canScrollVertically() && n8 == n3;
                boolean b2;
                if (n4 != 0 && this.Pu.mLayout.canScrollHorizontally() && n9 == n4) {
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
                if (!pr.isFinished() && (b3 || this.Pu.hasNestedScrollingParent(1))) {
                    this.Yc();
                    if (this.Pu.mGapWorker != null) {
                        this.Pu.mGapWorker.Zw(this.Pu, n4, n3);
                    }
                }
                else {
                    this.Pu.setScrollState(0);
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        this.Pu.mPrefetchRegistry.Yn();
                    }
                    this.Pu.stopNestedScroll(1);
                }
            }
            if (mSmoothScroller != null) {
                if (mSmoothScroller.Xa()) {
                    mSmoothScroller.WR(0, 0);
                }
                if (!this.Ps) {
                    mSmoothScroller.stop();
                }
            }
            this.Yb();
            return;
        }
        this.stop();
    }
    
    public void smoothScrollBy(final int n, final int n2) {
        this.Yd(n, n2, 0, 0);
    }
    
    public void smoothScrollBy(final int n, final int n2, Interpolator sQuinticInterpolator) {
        final int xz = this.XZ(n, n2, 0, 0);
        if (sQuinticInterpolator == null) {
            sQuinticInterpolator = RecyclerView.sQuinticInterpolator;
        }
        this.XY(n, n2, xz, sQuinticInterpolator);
    }
    
    public void stop() {
        this.Pu.removeCallbacks((Runnable)this);
        this.Pr.abortAnimation();
    }
}
