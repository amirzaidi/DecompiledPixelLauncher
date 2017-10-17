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
import android.widget.OverScroller;
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
import android.support.v4.view.c;
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
    int QK;
    t QL;
    private final List QM;
    final ArrayList QN;
    final ArrayList QO;
    private int QP;
    private r QQ;
    ArrayList QR;
    final /* synthetic */ RecyclerView QS;
    
    public s(final RecyclerView qs) {
        final int n = 2;
        this.QS = qs;
        this.QN = new ArrayList();
        this.QR = null;
        this.QO = new ArrayList();
        this.QM = Collections.unmodifiableList((List<?>)this.QN);
        this.QP = n;
        this.QK = n;
    }
    
    private void YK(final j j) {
        if (this.QS.isAccessibilityEnabled()) {
            final View itemView = j.itemView;
            if (f.agA(itemView) == 0) {
                f.agC(itemView, 1);
            }
            if (!f.agz(itemView)) {
                j.addFlags(16384);
                f.agu(itemView, this.QS.mAccessibilityDelegate.Zq());
            }
        }
    }
    
    private void YL(final ViewGroup viewGroup, final boolean b) {
        final int n = 4;
        for (int i = viewGroup.getChildCount() - 1; i >= 0; --i) {
            final View child = viewGroup.getChildAt(i);
            if (child instanceof ViewGroup) {
                this.YL((ViewGroup)child, true);
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
    
    private boolean Yn(final j j, final int n, final int mPreLayoutPosition, final long n2) {
        j.mOwnerRecyclerView = this.QS;
        final int itemViewType = j.getItemViewType();
        final long nanoTime = this.QS.getNanoTime();
        if (n2 == Long.MAX_VALUE || this.QL.YS(itemViewType, nanoTime, n2)) {
            this.QS.mAdapter.bindViewHolder(j, n);
            this.QL.YM(j.getItemViewType(), this.QS.getNanoTime() - nanoTime);
            this.YK(j);
            if (this.QS.mState.XM()) {
                j.mPreLayoutPosition = mPreLayoutPosition;
            }
            return true;
        }
        return false;
    }
    
    private void Ys(final j j) {
        if (j.itemView instanceof ViewGroup) {
            this.YL((ViewGroup)j.itemView, false);
        }
    }
    
    j YA(final int mPreLayoutPosition, final boolean b, final long n) {
        final int n2 = 8192;
        boolean qj = true;
        if (mPreLayoutPosition >= 0 && mPreLayoutPosition < this.QS.mState.getItemCount()) {
            j j;
            boolean b2;
            if (!this.QS.mState.XM()) {
                j = null;
                b2 = false;
            }
            else {
                final j yw = this.Yw(mPreLayoutPosition);
                b2 = (yw != null && qj);
                j = yw;
            }
            if (j == null) {
                j = this.Yq(mPreLayoutPosition, b);
                if (j != null) {
                    if (this.Yj(j)) {
                        b2 = qj;
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
                                this.QS.removeDetachedView(j.itemView, false);
                                j.unScrap();
                            }
                            this.YI(j);
                        }
                        j = null;
                    }
                }
            }
            j qh;
            boolean b3;
            if (j != null) {
                qh = j;
                b3 = b2;
            }
            else {
                final int aar = this.QS.mAdapterHelper.aar(mPreLayoutPosition);
                if (aar < 0 || aar >= this.QS.mAdapter.getItemCount()) {
                    throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + mPreLayoutPosition + "(offset:" + aar + ")." + "state:" + this.QS.mState.getItemCount() + this.QS.exceptionLabel());
                }
                final int itemViewType = this.QS.mAdapter.getItemViewType(aar);
                if (!this.QS.mAdapter.hasStableIds()) {
                    b3 = b2;
                }
                else {
                    j = this.YG(this.QS.mAdapter.getItemId(aar), itemViewType, b);
                    if (j == null) {
                        b3 = b2;
                    }
                    else {
                        j.mPosition = aar;
                        b3 = qj;
                    }
                }
                if (j == null && this.QQ != null) {
                    final View yi = this.QQ.Yi(this, mPreLayoutPosition, itemViewType);
                    if (yi != null) {
                        j = this.QS.getChildViewHolder(yi);
                        if (j == null) {
                            throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder" + this.QS.exceptionLabel());
                        }
                        if (j.shouldIgnore()) {
                            throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view." + this.QS.exceptionLabel());
                        }
                    }
                }
                if (j == null) {
                    j = this.getRecycledViewPool().YV(itemViewType);
                    if (j != null) {
                        j.resetInternal();
                        if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                            this.Ys(j);
                        }
                    }
                }
                if (j != null) {
                    qh = j;
                }
                else {
                    final long nanoTime = this.QS.getNanoTime();
                    if (n != Long.MAX_VALUE && !this.QL.YP(itemViewType, nanoTime, n)) {
                        return null;
                    }
                    final j viewHolder = this.QS.mAdapter.createViewHolder(this.QS, itemViewType);
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        final RecyclerView nestedRecyclerView = RecyclerView.findNestedRecyclerView(viewHolder.itemView);
                        if (nestedRecyclerView != null) {
                            viewHolder.mNestedRecyclerView = new WeakReference(nestedRecyclerView);
                        }
                    }
                    this.QL.YQ(itemViewType, this.QS.getNanoTime() - nanoTime);
                    qh = viewHolder;
                }
            }
            if (b3 && !this.QS.mState.XM() && qh.hasAnyOfTheFlags(n2)) {
                qh.setFlags(0, n2);
                if (this.QS.mState.Qw) {
                    this.QS.recordAnimationInfoIfBouncedHiddenView(qh, this.QS.mItemAnimator.Xy(this.QS.mState, qh, b.Xp(qh) | 0x1000, qh.getUnmodifiedPayloads()));
                }
            }
            boolean b4;
            if (this.QS.mState.XM() && qh.isBound()) {
                qh.mPreLayoutPosition = mPreLayoutPosition;
                b4 = false;
            }
            else {
                b4 = ((!qh.isBound() || qh.needsUpdate() || qh.isInvalid()) && this.Yn(qh, this.QS.mAdapterHelper.aar(mPreLayoutPosition), mPreLayoutPosition, n));
            }
            final ViewGroup$LayoutParams layoutParams = qh.itemView.getLayoutParams();
            i i;
            if (layoutParams != null) {
                if (this.QS.checkLayoutParams(layoutParams)) {
                    i = (i)layoutParams;
                }
                else {
                    i = (i)this.QS.generateLayoutParams(layoutParams);
                    qh.itemView.setLayoutParams((ViewGroup$LayoutParams)i);
                }
            }
            else {
                i = (i)this.QS.generateDefaultLayoutParams();
                qh.itemView.setLayoutParams((ViewGroup$LayoutParams)i);
            }
            i.QH = qh;
            if (!b3 || !b4) {
                qj = false;
            }
            i.QJ = qj;
            return qh;
        }
        throw new IndexOutOfBoundsException("Invalid item position " + mPreLayoutPosition + "(" + mPreLayoutPosition + "). Item count:" + this.QS.mState.getItemCount() + this.QS.exceptionLabel());
    }
    
    View YB(final int n, final boolean b) {
        return this.YA(n, b, Long.MAX_VALUE).itemView;
    }
    
    void YC() {
        int size = this.QO.size();
        while (true) {
            --size;
            if (size < 0) {
                break;
            }
            this.YE(size);
        }
        this.QO.clear();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            this.QS.mPrefetchRegistry.Zp();
        }
    }
    
    void YD(final j j) {
        if (this.QS.mRecyclerListener != null) {
            this.QS.mRecyclerListener.onViewRecycled(j);
        }
        if (this.QS.mAdapter != null) {
            this.QS.mAdapter.onViewRecycled(j);
        }
        if (this.QS.mState != null) {
            this.QS.mViewInfoStore.ZV(j);
        }
    }
    
    void YE(final int n) {
        this.Yz(this.QO.get(n), true);
        this.QO.remove(n);
    }
    
    void YF() {
        this.QN.clear();
        if (this.QR != null) {
            this.QR.clear();
        }
    }
    
    j YG(final long n, final int n2, final boolean b) {
        for (int i = this.QN.size() - 1; i >= 0; --i) {
            final j j = this.QN.get(i);
            if (j.getItemId() == n && !j.wasReturnedFromScrap()) {
                if (n2 == j.getItemViewType()) {
                    j.addFlags(32);
                    if (j.isRemoved() && !this.QS.mState.XM()) {
                        j.setFlags(2, 14);
                    }
                    return j;
                }
                if (!b) {
                    this.QN.remove(i);
                    this.QS.removeDetachedView(j.itemView, false);
                    this.YJ(j.itemView);
                }
            }
        }
        for (int k = this.QO.size() - 1; k >= 0; --k) {
            final j l = this.QO.get(k);
            if (l.getItemId() == n) {
                if (n2 == l.getItemViewType()) {
                    if (!b) {
                        this.QO.remove(k);
                    }
                    return l;
                }
                if (!b) {
                    this.YE(k);
                    return null;
                }
            }
        }
        return null;
    }
    
    public List YH() {
        return this.QM;
    }
    
    void YI(final j j) {
        final boolean b = true;
        boolean b2 = false;
        if (j.isScrap() || j.itemView.getParent() != null) {
            throw new IllegalArgumentException("Scrapped or attached views may not be recycled. isScrap:" + j.isScrap() + " isAttached:" + (j.itemView.getParent() != null && b) + this.QS.exceptionLabel());
        }
        if (j.isTmpDetached()) {
            throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + j + this.QS.exceptionLabel());
        }
        if (!j.shouldIgnore()) {
            final boolean access$900 = j.doesTransientStatePreventRecycling();
            int n;
            if ((this.QS.mAdapter == null || !access$900 || !this.QS.mAdapter.onFailedToRecycleView(j) || !b) && !j.isRecyclable()) {
                n = 0;
            }
            else {
                if (this.QK <= 0) {
                    n = 0;
                }
                else if (j.hasAnyOfTheFlags(526)) {
                    n = 0;
                }
                else {
                    int size = this.QO.size();
                    if (size >= this.QK && size > 0) {
                        this.YE(0);
                        --size;
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0 && !this.QS.mPrefetchRegistry.Zo(j.mPosition)) {
                        int n2;
                        for (n2 = size - 1; n2 >= 0 && this.QS.mPrefetchRegistry.Zo(((j)this.QO.get(n2)).mPosition); --n2) {}
                        size = n2 + 1;
                    }
                    this.QO.add(size, j);
                    n = (b ? 1 : 0);
                }
                if (n == 0) {
                    this.Yz(j, b);
                    b2 = b;
                }
            }
            this.QS.mViewInfoStore.ZV(j);
            if (n == 0 && !b2 && access$900) {
                j.mOwnerRecyclerView = null;
            }
            return;
        }
        throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + this.QS.exceptionLabel());
    }
    
    void YJ(final View view) {
        final j childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        childViewHolderInt.mScrapContainer = null;
        childViewHolderInt.mInChangeScrap = false;
        childViewHolderInt.clearReturnedFromScrapFlag();
        this.YI(childViewHolderInt);
    }
    
    boolean Yj(final j j) {
        boolean b = true;
        if (j.isRemoved()) {
            return this.QS.mState.XM();
        }
        if (j.mPosition < 0 || j.mPosition >= this.QS.mAdapter.getItemCount()) {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + j + this.QS.exceptionLabel());
        }
        if (!this.QS.mState.XM() && this.QS.mAdapter.getItemViewType(j.mPosition) != j.getItemViewType()) {
            return false;
        }
        if (!this.QS.mAdapter.hasStableIds()) {
            return b;
        }
        if (j.getItemId() != this.QS.mAdapter.getItemId(j.mPosition)) {
            b = false;
        }
        return b;
    }
    
    int Yk() {
        return this.QN.size();
    }
    
    public int Yl(final int n) {
        if (n < 0 || n >= this.QS.mState.getItemCount()) {
            throw new IndexOutOfBoundsException("invalid position " + n + ". State " + "item count is " + this.QS.mState.getItemCount() + this.QS.exceptionLabel());
        }
        if (this.QS.mState.XM()) {
            return this.QS.mAdapterHelper.aar(n);
        }
        return n;
    }
    
    void Ym(final View view) {
        final j childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !this.QS.canReuseUpdatedViewHolder(childViewHolderInt)) {
            if (this.QR == null) {
                this.QR = new ArrayList();
            }
            childViewHolderInt.setScrapContainer(this, true);
            this.QR.add(childViewHolderInt);
        }
        else {
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.QS.mAdapter.hasStableIds()) {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + this.QS.exceptionLabel());
            }
            childViewHolderInt.setScrapContainer(this, false);
            this.QN.add(childViewHolderInt);
        }
    }
    
    View Yo(final int n) {
        return this.QN.get(n).itemView;
    }
    
    public View Yp(final int n) {
        return this.YB(n, false);
    }
    
    j Yq(final int n, final boolean b) {
        int i = 0;
        for (int size = this.QN.size(), j = 0; j < size; ++j) {
            final j k = this.QN.get(j);
            if (!k.wasReturnedFromScrap() && k.getLayoutPosition() == n && !k.isInvalid() && (this.QS.mState.Qt || !k.isRemoved())) {
                k.addFlags(32);
                return k;
            }
        }
        if (!b) {
            final View zw = this.QS.mChildHelper.Zw(n);
            if (zw != null) {
                final j childViewHolderInt = RecyclerView.getChildViewHolderInt(zw);
                this.QS.mChildHelper.ZG(zw);
                final int zt = this.QS.mChildHelper.Zt(zw);
                if (zt != -1) {
                    this.QS.mChildHelper.ZB(zt);
                    this.Ym(zw);
                    childViewHolderInt.addFlags(8224);
                    return childViewHolderInt;
                }
                throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + childViewHolderInt + this.QS.exceptionLabel());
            }
        }
        while (i < this.QO.size()) {
            final j l = this.QO.get(i);
            if (!l.isInvalid() && l.getLayoutPosition() == n) {
                if (!b) {
                    this.QO.remove(i);
                }
                return l;
            }
            ++i;
        }
        return null;
    }
    
    void Yr(final q q, final q q2, final boolean b) {
        this.clear();
        this.getRecycledViewPool().YW(q, q2, b);
    }
    
    public void Yt(final int qp) {
        this.QP = qp;
        this.Yv();
    }
    
    public void Yu(final View view) {
        final j childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.isTmpDetached()) {
            this.QS.removeDetachedView(view, false);
        }
        if (!childViewHolderInt.isScrap()) {
            if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
        }
        else {
            childViewHolderInt.unScrap();
        }
        this.YI(childViewHolderInt);
    }
    
    void Yv() {
        int mPrefetchMaxCountObserved = 0;
        if (this.QS.mLayout != null) {
            mPrefetchMaxCountObserved = this.QS.mLayout.mPrefetchMaxCountObserved;
        }
        this.QK = mPrefetchMaxCountObserved + this.QP;
        for (int n = this.QO.size() - 1; n >= 0 && this.QO.size() > this.QK; --n) {
            this.YE(n);
        }
    }
    
    j Yw(final int n) {
        final int n2 = 32;
        int i = 0;
        if (this.QR != null) {
            final int size = this.QR.size();
            if (size != 0) {
                for (int j = 0; j < size; ++j) {
                    final j k = this.QR.get(j);
                    if (!k.wasReturnedFromScrap() && k.getLayoutPosition() == n) {
                        k.addFlags(n2);
                        return k;
                    }
                }
                if (this.QS.mAdapter.hasStableIds()) {
                    final int aar = this.QS.mAdapterHelper.aar(n);
                    if (aar > 0 && aar < this.QS.mAdapter.getItemCount()) {
                        final long itemId = this.QS.mAdapter.getItemId(aar);
                        while (i < size) {
                            final j l = this.QR.get(i);
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
    
    void Yx(final int n, final int n2) {
        final int n3 = n + n2;
        for (int i = this.QO.size() - 1; i >= 0; --i) {
            final j j = this.QO.get(i);
            if (j != null) {
                final int mPosition = j.mPosition;
                if (mPosition >= n && mPosition < n3) {
                    j.addFlags(2);
                    this.YE(i);
                }
            }
        }
    }
    
    void Yy(final j j) {
        if (!j.mInChangeScrap) {
            this.QN.remove(j);
        }
        else {
            this.QR.remove(j);
        }
        j.mScrapContainer = null;
        j.mInChangeScrap = false;
        j.clearReturnedFromScrapFlag();
    }
    
    void Yz(final j j, final boolean b) {
        final int n = 16384;
        RecyclerView.clearNestedRecyclerViewIfNotNested(j);
        if (j.hasAnyOfTheFlags(n)) {
            j.setFlags(0, n);
            f.agu(j.itemView, null);
        }
        if (b) {
            this.YD(j);
        }
        j.mOwnerRecyclerView = null;
        this.getRecycledViewPool().YR(j);
    }
    
    public void clear() {
        this.QN.clear();
        this.YC();
    }
    
    void clearOldPositions() {
        int i = 0;
        for (int size = this.QO.size(), j = 0; j < size; ++j) {
            ((j)this.QO.get(j)).clearOldPosition();
        }
        for (int size2 = this.QN.size(), k = 0; k < size2; ++k) {
            ((j)this.QN.get(k)).clearOldPosition();
        }
        if (this.QR != null) {
            while (i < this.QR.size()) {
                ((j)this.QR.get(i)).clearOldPosition();
                ++i;
            }
        }
    }
    
    t getRecycledViewPool() {
        if (this.QL == null) {
            this.QL = new t();
        }
        return this.QL;
    }
    
    void markItemDecorInsetsDirty() {
        for (int size = this.QO.size(), i = 0; i < size; ++i) {
            final i j = (i)this.QO.get(i).itemView.getLayoutParams();
            if (j != null) {
                j.QI = true;
            }
        }
    }
    
    void markKnownViewsInvalid() {
        if (this.QS.mAdapter != null && this.QS.mAdapter.hasStableIds()) {
            for (int size = this.QO.size(), i = 0; i < size; ++i) {
                final j j = this.QO.get(i);
                if (j != null) {
                    j.addFlags(6);
                    j.addChangePayload(null);
                }
            }
        }
        else {
            this.YC();
        }
    }
    
    void offsetPositionRecordsForInsert(final int n, final int n2) {
        for (int size = this.QO.size(), i = 0; i < size; ++i) {
            final j j = this.QO.get(i);
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
        for (int size = this.QO.size(), i = 0; i < size; ++i) {
            final j j = this.QO.get(i);
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
        for (int i = this.QO.size() - 1; i >= 0; --i) {
            final j j = this.QO.get(i);
            if (j != null) {
                if (j.mPosition < n3) {
                    if (j.mPosition >= n) {
                        j.addFlags(8);
                        this.YE(i);
                    }
                }
                else {
                    j.offsetPosition(-n2, b);
                }
            }
        }
    }
    
    void setRecycledViewPool(final t ql) {
        if (this.QL != null) {
            this.QL.YT();
        }
        if ((this.QL = ql) != null) {
            this.QL.YN(this.QS.getAdapter());
        }
    }
    
    void setViewCacheExtension(final r qq) {
        this.QQ = qq;
    }
}
