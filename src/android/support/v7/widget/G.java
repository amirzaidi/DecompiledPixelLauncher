// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.a.l;
import android.support.v4.view.a.m;
import android.support.v4.view.a.a;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import android.graphics.RectF;
import android.graphics.Matrix;
import android.support.v4.view.f;
import android.view.ViewGroup$MarginLayoutParams;
import android.util.AttributeSet;
import android.content.Context;
import android.view.ViewGroup$LayoutParams;
import android.graphics.Rect;
import android.view.View$MeasureSpec;
import android.util.SparseArray;
import android.graphics.PointF;
import android.util.Log;
import android.view.View;

public abstract class g
{
    private boolean QC;
    private int QD;
    private p QE;
    private boolean QF;
    private final H QG;
    private RecyclerView mRecyclerView;
    private View mTargetView;
    
    public g() {
        this.QD = -1;
        this.QG = new H(0, 0);
    }
    
    private void XR(final int n, final int n2) {
        final RecyclerView mRecyclerView = this.mRecyclerView;
        if (this.QC || this.QD == -1 || mRecyclerView == null) {
            this.stop();
        }
        this.QF = false;
        if (this.mTargetView != null) {
            if (this.getChildPosition(this.mTargetView) != this.QD) {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.mTargetView = null;
            }
            else {
                this.XT(this.mTargetView, mRecyclerView.mState, this.QG);
                this.QG.aaH(mRecyclerView);
                this.stop();
            }
        }
        if (this.QC) {
            this.XU(n, n2, mRecyclerView.mState, this.QG);
            final boolean aaJ = this.QG.aaJ();
            this.QG.aaH(mRecyclerView);
            if (aaJ) {
                if (!this.QC) {
                    this.stop();
                }
                else {
                    this.QF = true;
                    mRecyclerView.mViewFlinger.Ze();
                }
            }
        }
    }
    
    protected void XS(final PointF pointF) {
        final float n = (float)Math.sqrt(pointF.x * pointF.x + pointF.y * pointF.y);
        pointF.x /= n;
        pointF.y /= n;
    }
    
    protected abstract void XT(final View p0, final e p1, final H p2);
    
    protected abstract void XU(final int p0, final int p1, final e p2, final H p3);
    
    public void XV(final int qd) {
        this.QD = qd;
    }
    
    public int XW() {
        return this.QD;
    }
    
    void XX(final RecyclerView mRecyclerView, final p qe) {
        final boolean b = true;
        this.mRecyclerView = mRecyclerView;
        this.QE = qe;
        if (this.QD != -1) {
            this.mRecyclerView.mState.Qp = this.QD;
            this.QC = b;
            this.QF = b;
            this.mTargetView = this.findViewByPosition(this.XW());
            this.onStart();
            this.mRecyclerView.mViewFlinger.Ze();
            return;
        }
        throw new IllegalArgumentException("Invalid target position");
    }
    
    public boolean XY() {
        return this.QC;
    }
    
    public boolean XZ() {
        return this.QF;
    }
    
    public View findViewByPosition(final int n) {
        return this.mRecyclerView.mLayout.findViewByPosition(n);
    }
    
    public int getChildCount() {
        return this.mRecyclerView.mLayout.getChildCount();
    }
    
    public int getChildPosition(final View view) {
        return this.mRecyclerView.getChildLayoutPosition(view);
    }
    
    public p getLayoutManager() {
        return this.QE;
    }
    
    protected void onChildAttachedToWindow(final View mTargetView) {
        if (this.getChildPosition(mTargetView) == this.XW()) {
            this.mTargetView = mTargetView;
        }
    }
    
    protected abstract void onStart();
    
    protected abstract void onStop();
    
    protected final void stop() {
        final int qd = -1;
        if (this.QC) {
            this.onStop();
            this.mRecyclerView.mState.Qp = qd;
            this.mTargetView = null;
            this.QD = qd;
            this.QF = false;
            this.QC = false;
            this.QE.onSmoothScrollerStopped(this);
            this.QE = null;
            this.mRecyclerView = null;
        }
    }
}
