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
    private boolean OW;
    private int OX;
    private boolean OY;
    private final H OZ;
    private p mLayoutManager;
    private RecyclerView mRecyclerView;
    private View mTargetView;
    
    public g() {
        this.OX = -1;
        this.OZ = new H(0, 0);
    }
    
    private void WR(final int n, final int n2) {
        final RecyclerView mRecyclerView = this.mRecyclerView;
        if (this.OW || this.OX == -1 || mRecyclerView == null) {
            this.stop();
        }
        this.OY = false;
        if (this.mTargetView != null) {
            if (this.getChildPosition(this.mTargetView) != this.OX) {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.mTargetView = null;
            }
            else {
                this.WT(this.mTargetView, mRecyclerView.mState, this.OZ);
                this.OZ.ZF(mRecyclerView);
                this.stop();
            }
        }
        if (this.OW) {
            this.WV(n, n2, mRecyclerView.mState, this.OZ);
            final boolean zh = this.OZ.ZH();
            this.OZ.ZF(mRecyclerView);
            if (zh) {
                if (!this.OW) {
                    this.stop();
                }
                else {
                    this.OY = true;
                    mRecyclerView.mViewFlinger.Yc();
                }
            }
        }
    }
    
    protected void WS(final PointF pointF) {
        final float n = (float)Math.sqrt(pointF.x * pointF.x + pointF.y * pointF.y);
        pointF.x /= n;
        pointF.y /= n;
    }
    
    protected abstract void WT(final View p0, final e p1, final H p2);
    
    protected abstract void WV(final int p0, final int p1, final e p2, final H p3);
    
    public void WW(final int ox) {
        this.OX = ox;
    }
    
    public int WX() {
        return this.OX;
    }
    
    void WY(final RecyclerView mRecyclerView, final p mLayoutManager) {
        final boolean b = true;
        this.mRecyclerView = mRecyclerView;
        this.mLayoutManager = mLayoutManager;
        if (this.OX != -1) {
            this.mRecyclerView.mState.OL = this.OX;
            this.OW = b;
            this.OY = b;
            this.mTargetView = this.findViewByPosition(this.WX());
            this.onStart();
            this.mRecyclerView.mViewFlinger.Yc();
            return;
        }
        throw new IllegalArgumentException("Invalid target position");
    }
    
    public boolean WZ() {
        return this.OW;
    }
    
    public boolean Xa() {
        return this.OY;
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
        return this.mLayoutManager;
    }
    
    protected void onChildAttachedToWindow(final View mTargetView) {
        if (this.getChildPosition(mTargetView) == this.WX()) {
            this.mTargetView = mTargetView;
        }
    }
    
    protected abstract void onStart();
    
    protected abstract void onStop();
    
    protected final void stop() {
        final int ox = -1;
        if (this.OW) {
            this.onStop();
            this.mRecyclerView.mState.OL = ox;
            this.mTargetView = null;
            this.OX = ox;
            this.OY = false;
            this.OW = false;
            this.mLayoutManager.onSmoothScrollerStopped(this);
            this.mLayoutManager = null;
            this.mRecyclerView = null;
        }
    }
}
