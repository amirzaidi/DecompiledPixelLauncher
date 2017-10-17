// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

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
import android.support.v4.widget.g;
import android.util.Log;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.ViewParent;
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
import android.widget.EdgeEffect;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.support.v4.view.e;
import android.support.v4.view.a;
import android.view.ViewGroup$LayoutParams;
import java.lang.ref.WeakReference;
import android.view.ViewGroup;
import android.view.View;
import android.support.v4.view.f;
import java.util.Collections;
import java.util.ArrayList;
import java.util.List;

public final class s
{
    int Pd;
    t Pe;
    private final List Pf;
    final ArrayList Pg;
    final ArrayList Ph;
    private int Pi;
    private r Pj;
    ArrayList Pk;
    final /* synthetic */ RecyclerView Pl;
    
    public s(final RecyclerView pl) {
        final int n = 2;
        this.Pl = pl;
        this.Pg = new ArrayList();
        this.Pk = null;
        this.Ph = new ArrayList();
        this.Pf = Collections.unmodifiableList((List<?>)this.Pg);
        this.Pi = n;
        this.Pd = n;
    }
    
    private void XK(final j j) {
        if (this.Pl.isAccessibilityEnabled()) {
            final View itemView = j.itemView;
            if (f.afy(itemView) == 0) {
                f.afA(itemView, 1);
            }
            if (!f.afx(itemView)) {
                j.addFlags(16384);
                f.aft(itemView, this.Pl.mAccessibilityDelegate.Yo());
            }
        }
    }
    
    private void XL(final ViewGroup viewGroup, final boolean b) {
        final int n = 4;
        for (int i = viewGroup.getChildCount() - 1; i >= 0; --i) {
            final View child = viewGroup.getChildAt(i);
            if (child instanceof ViewGroup) {
                this.XL((ViewGroup)child, true);
            }
        }
        if (b) {
            if (viewGroup.getVisibility() != n) {
                final int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(n);
                viewGroup.setVisibility(visibility);
            }
            else {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(n);
            }
        }
    }
    
    private boolean Xn(final j j, final int n, final int mPreLayoutPosition, final long n2) {
        j.mOwnerRecyclerView = this.Pl;
        final int itemViewType = j.getItemViewType();
        final long nanoTime = this.Pl.getNanoTime();
        if (n2 == Long.MAX_VALUE || this.Pe.XS(itemViewType, nanoTime, n2)) {
            this.Pl.mAdapter.bindViewHolder(j, n);
            this.Pe.XM(j.getItemViewType(), this.Pl.getNanoTime() - nanoTime);
            this.XK(j);
            if (this.Pl.mState.WN()) {
                j.mPreLayoutPosition = mPreLayoutPosition;
            }
            return true;
        }
        return false;
    }
    
    private void Xs(final j j) {
        if (j.itemView instanceof ViewGroup) {
            this.XL((ViewGroup)j.itemView, false);
        }
    }
    
    j XA(final int mPreLayoutPosition, final boolean b, final long n) {
        final int n2 = 8192;
        boolean pc = true;
        if (mPreLayoutPosition >= 0 && mPreLayoutPosition < this.Pl.mState.getItemCount()) {
            j j;
            boolean b2;
            if (!this.Pl.mState.WN()) {
                j = null;
                b2 = false;
            }
            else {
                final j xw = this.Xw(mPreLayoutPosition);
                b2 = (xw != null && pc);
                j = xw;
            }
            if (j == null) {
                j = this.Xq(mPreLayoutPosition, b);
                if (j != null) {
                    if (this.Xj(j)) {
                        b2 = pc;
                    }
                    else {
                        if (!b) {
                            j.addFlags(4);
                            if (!j.isScrap()) {
                                if (j.wasReturnedFromScrap()) {
                                    j.clearReturnedFromScrapFlag();
                                }
                            }
                            else {
                                this.Pl.removeDetachedView(j.itemView, false);
                                j.unScrap();
                            }
                            this.XI(j);
                        }
                        j = null;
                    }
                }
            }
            j pa;
            boolean b3;
            if (j != null) {
                pa = j;
                b3 = b2;
            }
            else {
                final int zp = this.Pl.mAdapterHelper.Zp(mPreLayoutPosition);
                if (zp < 0 || zp >= this.Pl.mAdapter.getItemCount()) {
                    throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + mPreLayoutPosition + "(offset:" + zp + ")." + "state:" + this.Pl.mState.getItemCount());
                }
                final int itemViewType = this.Pl.mAdapter.getItemViewType(zp);
                if (!this.Pl.mAdapter.hasStableIds()) {
                    b3 = b2;
                }
                else {
                    j = this.XG(this.Pl.mAdapter.getItemId(zp), itemViewType, b);
                    if (j == null) {
                        b3 = b2;
                    }
                    else {
                        j.mPosition = zp;
                        b3 = pc;
                    }
                }
                if (j == null && this.Pj != null) {
                    final View xi = this.Pj.Xi(this, mPreLayoutPosition, itemViewType);
                    if (xi != null) {
                        j = this.Pl.getChildViewHolder(xi);
                        if (j == null) {
                            throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                        }
                        if (j.shouldIgnore()) {
                            throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                        }
                    }
                }
                if (j == null) {
                    j = this.getRecycledViewPool().XV(itemViewType);
                    if (j != null) {
                        j.resetInternal();
                        if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                            this.Xs(j);
                        }
                    }
                }
                if (j != null) {
                    pa = j;
                }
                else {
                    final long nanoTime = this.Pl.getNanoTime();
                    if (n != Long.MAX_VALUE && !this.Pe.XP(itemViewType, nanoTime, n)) {
                        return null;
                    }
                    final j viewHolder = this.Pl.mAdapter.createViewHolder(this.Pl, itemViewType);
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        final RecyclerView nestedRecyclerView = RecyclerView.findNestedRecyclerView(viewHolder.itemView);
                        if (nestedRecyclerView != null) {
                            viewHolder.mNestedRecyclerView = new WeakReference(nestedRecyclerView);
                        }
                    }
                    this.Pe.XQ(itemViewType, this.Pl.getNanoTime() - nanoTime);
                    pa = viewHolder;
                }
            }
            if (b3 && !this.Pl.mState.WN() && pa.hasAnyOfTheFlags(n2)) {
                pa.setFlags(0, n2);
                if (this.Pl.mState.OQ) {
                    this.Pl.recordAnimationInfoIfBouncedHiddenView(pa, this.Pl.mItemAnimator.WA(this.Pl.mState, pa, b.Wr(pa) | 0x1000, pa.getUnmodifiedPayloads()));
                }
            }
            boolean b4;
            if (this.Pl.mState.WN() && pa.isBound()) {
                pa.mPreLayoutPosition = mPreLayoutPosition;
                b4 = false;
            }
            else {
                b4 = ((!pa.isBound() || pa.needsUpdate() || pa.isInvalid()) && this.Xn(pa, this.Pl.mAdapterHelper.Zp(mPreLayoutPosition), mPreLayoutPosition, n));
            }
            final ViewGroup$LayoutParams layoutParams = pa.itemView.getLayoutParams();
            i i;
            if (layoutParams != null) {
                if (this.Pl.checkLayoutParams(layoutParams)) {
                    i = (i)layoutParams;
                }
                else {
                    i = (i)this.Pl.generateLayoutParams(layoutParams);
                    pa.itemView.setLayoutParams((ViewGroup$LayoutParams)i);
                }
            }
            else {
                i = (i)this.Pl.generateDefaultLayoutParams();
                pa.itemView.setLayoutParams((ViewGroup$LayoutParams)i);
            }
            i.Pa = pa;
            if (!b3 || !b4) {
                pc = false;
            }
            i.Pc = pc;
            return pa;
        }
        throw new IndexOutOfBoundsException("Invalid item position " + mPreLayoutPosition + "(" + mPreLayoutPosition + "). Item count:" + this.Pl.mState.getItemCount());
    }
    
    View XB(final int n, final boolean b) {
        return this.XA(n, b, Long.MAX_VALUE).itemView;
    }
    
    void XC() {
        int size = this.Ph.size();
        while (true) {
            --size;
            if (size < 0) {
                break;
            }
            this.XE(size);
        }
        this.Ph.clear();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            this.Pl.mPrefetchRegistry.Yn();
        }
    }
    
    void XD(final j j) {
        if (this.Pl.mRecyclerListener != null) {
            this.Pl.mRecyclerListener.onViewRecycled(j);
        }
        if (this.Pl.mAdapter != null) {
            this.Pl.mAdapter.onViewRecycled(j);
        }
        if (this.Pl.mState != null) {
            this.Pl.mViewInfoStore.YT(j);
        }
    }
    
    void XE(final int n) {
        this.Xz(this.Ph.get(n), true);
        this.Ph.remove(n);
    }
    
    void XF() {
        this.Pg.clear();
        if (this.Pk != null) {
            this.Pk.clear();
        }
    }
    
    j XG(final long n, final int n2, final boolean b) {
        for (int i = this.Pg.size() - 1; i >= 0; --i) {
            final j j = this.Pg.get(i);
            if (j.getItemId() == n && !j.wasReturnedFromScrap()) {
                if (n2 == j.getItemViewType()) {
                    j.addFlags(32);
                    if (j.isRemoved() && !this.Pl.mState.WN()) {
                        j.setFlags(2, 14);
                    }
                    return j;
                }
                if (!b) {
                    this.Pg.remove(i);
                    this.Pl.removeDetachedView(j.itemView, false);
                    this.XJ(j.itemView);
                }
            }
        }
        for (int k = this.Ph.size() - 1; k >= 0; --k) {
            final j l = this.Ph.get(k);
            if (l.getItemId() == n) {
                if (n2 == l.getItemViewType()) {
                    if (!b) {
                        this.Ph.remove(k);
                    }
                    return l;
                }
                if (!b) {
                    this.XE(k);
                    return null;
                }
            }
        }
        return null;
    }
    
    public List XH() {
        return this.Pf;
    }
    
    void XI(final j j) {
        final boolean b = true;
        boolean b2 = false;
        if (j.isScrap() || j.itemView.getParent() != null) {
            throw new IllegalArgumentException("Scrapped or attached views may not be recycled. isScrap:" + j.isScrap() + " isAttached:" + (j.itemView.getParent() != null && b));
        }
        if (j.isTmpDetached()) {
            throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + j);
        }
        if (!j.shouldIgnore()) {
            final boolean access$800 = j.doesTransientStatePreventRecycling();
            int n;
            if ((this.Pl.mAdapter == null || !access$800 || !this.Pl.mAdapter.onFailedToRecycleView(j) || !b) && !j.isRecyclable()) {
                n = 0;
            }
            else {
                if (this.Pd <= 0) {
                    n = 0;
                }
                else if (j.hasAnyOfTheFlags(526)) {
                    n = 0;
                }
                else {
                    int size = this.Ph.size();
                    if (size >= this.Pd && size > 0) {
                        this.XE(0);
                        --size;
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0 && !this.Pl.mPrefetchRegistry.Ym(j.mPosition)) {
                        int n2;
                        for (n2 = size - 1; n2 >= 0 && this.Pl.mPrefetchRegistry.Ym(((j)this.Ph.get(n2)).mPosition); --n2) {}
                        size = n2 + 1;
                    }
                    this.Ph.add(size, j);
                    n = (b ? 1 : 0);
                }
                if (n == 0) {
                    this.Xz(j, b);
                    b2 = b;
                }
            }
            this.Pl.mViewInfoStore.YT(j);
            if (n == 0 && !b2 && access$800) {
                j.mOwnerRecyclerView = null;
            }
            return;
        }
        throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
    }
    
    void XJ(final View view) {
        final j childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        childViewHolderInt.mScrapContainer = null;
        childViewHolderInt.mInChangeScrap = false;
        childViewHolderInt.clearReturnedFromScrapFlag();
        this.XI(childViewHolderInt);
    }
    
    boolean Xj(final j j) {
        boolean b = true;
        if (j.isRemoved()) {
            return this.Pl.mState.WN();
        }
        if (j.mPosition < 0 || j.mPosition >= this.Pl.mAdapter.getItemCount()) {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + j);
        }
        if (!this.Pl.mState.WN() && this.Pl.mAdapter.getItemViewType(j.mPosition) != j.getItemViewType()) {
            return false;
        }
        if (!this.Pl.mAdapter.hasStableIds()) {
            return b;
        }
        if (j.getItemId() != this.Pl.mAdapter.getItemId(j.mPosition)) {
            b = false;
        }
        return b;
    }
    
    int Xk() {
        return this.Pg.size();
    }
    
    public int Xl(final int n) {
        if (n < 0 || n >= this.Pl.mState.getItemCount()) {
            throw new IndexOutOfBoundsException("invalid position " + n + ". State " + "item count is " + this.Pl.mState.getItemCount());
        }
        if (this.Pl.mState.WN()) {
            return this.Pl.mAdapterHelper.Zp(n);
        }
        return n;
    }
    
    void Xm(final View view) {
        final j childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !this.Pl.canReuseUpdatedViewHolder(childViewHolderInt)) {
            if (this.Pk == null) {
                this.Pk = new ArrayList();
            }
            childViewHolderInt.setScrapContainer(this, true);
            this.Pk.add(childViewHolderInt);
        }
        else {
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.Pl.mAdapter.hasStableIds()) {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
            }
            childViewHolderInt.setScrapContainer(this, false);
            this.Pg.add(childViewHolderInt);
        }
    }
    
    View Xo(final int n) {
        return this.Pg.get(n).itemView;
    }
    
    public View Xp(final int n) {
        return this.XB(n, false);
    }
    
    j Xq(final int n, final boolean b) {
        int i = 0;
        for (int size = this.Pg.size(), j = 0; j < size; ++j) {
            final j k = this.Pg.get(j);
            if (!k.wasReturnedFromScrap() && k.getLayoutPosition() == n && !k.isInvalid() && (this.Pl.mState.OO || !k.isRemoved())) {
                k.addFlags(32);
                return k;
            }
        }
        if (!b) {
            final View yu = this.Pl.mChildHelper.Yu(n);
            if (yu != null) {
                final j childViewHolderInt = RecyclerView.getChildViewHolderInt(yu);
                this.Pl.mChildHelper.YE(yu);
                final int yr = this.Pl.mChildHelper.Yr(yu);
                if (yr != -1) {
                    this.Pl.mChildHelper.Yz(yr);
                    this.Xm(yu);
                    childViewHolderInt.addFlags(8224);
                    return childViewHolderInt;
                }
                throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + childViewHolderInt);
            }
        }
        while (i < this.Ph.size()) {
            final j l = this.Ph.get(i);
            if (!l.isInvalid() && l.getLayoutPosition() == n) {
                if (!b) {
                    this.Ph.remove(i);
                }
                return l;
            }
            ++i;
        }
        return null;
    }
    
    void Xr(final q q, final q q2, final boolean b) {
        this.clear();
        this.getRecycledViewPool().XW(q, q2, b);
    }
    
    public void Xt(final int pi) {
        this.Pi = pi;
        this.Xv();
    }
    
    public void Xu(final View view) {
        final j childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.isTmpDetached()) {
            this.Pl.removeDetachedView(view, false);
        }
        if (!childViewHolderInt.isScrap()) {
            if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
        }
        else {
            childViewHolderInt.unScrap();
        }
        this.XI(childViewHolderInt);
    }
    
    void Xv() {
        int mPrefetchMaxCountObserved = 0;
        if (this.Pl.mLayout != null) {
            mPrefetchMaxCountObserved = this.Pl.mLayout.mPrefetchMaxCountObserved;
        }
        this.Pd = mPrefetchMaxCountObserved + this.Pi;
        for (int n = this.Ph.size() - 1; n >= 0 && this.Ph.size() > this.Pd; --n) {
            this.XE(n);
        }
    }
    
    j Xw(final int n) {
        final int n2 = 32;
        int i = 0;
        if (this.Pk != null) {
            final int size = this.Pk.size();
            if (size != 0) {
                for (int j = 0; j < size; ++j) {
                    final j k = this.Pk.get(j);
                    if (!k.wasReturnedFromScrap() && k.getLayoutPosition() == n) {
                        k.addFlags(n2);
                        return k;
                    }
                }
                if (this.Pl.mAdapter.hasStableIds()) {
                    final int zp = this.Pl.mAdapterHelper.Zp(n);
                    if (zp > 0 && zp < this.Pl.mAdapter.getItemCount()) {
                        final long itemId = this.Pl.mAdapter.getItemId(zp);
                        while (i < size) {
                            final j l = this.Pk.get(i);
                            if (!l.wasReturnedFromScrap() && l.getItemId() == itemId) {
                                l.addFlags(n2);
                                return l;
                            }
                            ++i;
                        }
                    }
                }
                return null;
            }
        }
        return null;
    }
    
    void Xx(final int n, final int n2) {
        final int n3 = n + n2;
        for (int i = this.Ph.size() - 1; i >= 0; --i) {
            final j j = this.Ph.get(i);
            if (j != null) {
                final int mPosition = j.mPosition;
                if (mPosition >= n && mPosition < n3) {
                    j.addFlags(2);
                    this.XE(i);
                }
            }
        }
    }
    
    void Xy(final j j) {
        if (!j.mInChangeScrap) {
            this.Pg.remove(j);
        }
        else {
            this.Pk.remove(j);
        }
        j.mScrapContainer = null;
        j.mInChangeScrap = false;
        j.clearReturnedFromScrapFlag();
    }
    
    void Xz(final j j, final boolean b) {
        final int n = 16384;
        RecyclerView.clearNestedRecyclerViewIfNotNested(j);
        if (j.hasAnyOfTheFlags(n)) {
            j.setFlags(0, n);
            f.aft(j.itemView, null);
        }
        if (b) {
            this.XD(j);
        }
        j.mOwnerRecyclerView = null;
        this.getRecycledViewPool().XR(j);
    }
    
    public void clear() {
        this.Pg.clear();
        this.XC();
    }
    
    void clearOldPositions() {
        int i = 0;
        for (int size = this.Ph.size(), j = 0; j < size; ++j) {
            ((j)this.Ph.get(j)).clearOldPosition();
        }
        for (int size2 = this.Pg.size(), k = 0; k < size2; ++k) {
            ((j)this.Pg.get(k)).clearOldPosition();
        }
        if (this.Pk != null) {
            while (i < this.Pk.size()) {
                ((j)this.Pk.get(i)).clearOldPosition();
                ++i;
            }
        }
    }
    
    t getRecycledViewPool() {
        if (this.Pe == null) {
            this.Pe = new t();
        }
        return this.Pe;
    }
    
    void markItemDecorInsetsDirty() {
        for (int size = this.Ph.size(), i = 0; i < size; ++i) {
            final i j = (i)this.Ph.get(i).itemView.getLayoutParams();
            if (j != null) {
                j.Pb = true;
            }
        }
    }
    
    void markKnownViewsInvalid() {
        if (this.Pl.mAdapter != null && this.Pl.mAdapter.hasStableIds()) {
            for (int size = this.Ph.size(), i = 0; i < size; ++i) {
                final j j = this.Ph.get(i);
                if (j != null) {
                    j.addFlags(6);
                    j.addChangePayload(null);
                }
            }
        }
        else {
            this.XC();
        }
    }
    
    void offsetPositionRecordsForInsert(final int n, final int n2) {
        for (int size = this.Ph.size(), i = 0; i < size; ++i) {
            final j j = this.Ph.get(i);
            if (j != null && j.mPosition >= n) {
                j.offsetPosition(n2, true);
            }
        }
    }
    
    void offsetPositionRecordsForMove(final int n, final int n2) {
        int n3;
        int n4;
        int n5;
        if (n >= n2) {
            n3 = 1;
            n4 = n;
            n5 = n2;
        }
        else {
            n3 = -1;
            n4 = n2;
            n5 = n;
        }
        for (int size = this.Ph.size(), i = 0; i < size; ++i) {
            final j j = this.Ph.get(i);
            if (j != null && j.mPosition >= n5 && j.mPosition <= n4) {
                if (j.mPosition != n) {
                    j.offsetPosition(n3, false);
                }
                else {
                    j.offsetPosition(n2 - n, false);
                }
            }
        }
    }
    
    void offsetPositionRecordsForRemove(final int n, final int n2, final boolean b) {
        final int n3 = n + n2;
        for (int i = this.Ph.size() - 1; i >= 0; --i) {
            final j j = this.Ph.get(i);
            if (j != null) {
                if (j.mPosition < n3) {
                    if (j.mPosition >= n) {
                        j.addFlags(8);
                        this.XE(i);
                    }
                }
                else {
                    j.offsetPosition(-n2, b);
                }
            }
        }
    }
    
    void setRecycledViewPool(final t pe) {
        if (this.Pe != null) {
            this.Pe.XT();
        }
        if ((this.Pe = pe) != null) {
            this.Pe.XN(this.Pl.getAdapter());
        }
    }
    
    void setViewCacheExtension(final r pj) {
        this.Pj = pj;
    }
}
