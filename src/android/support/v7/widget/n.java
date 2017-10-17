// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.os.Parcelable;
import android.view.accessibility.AccessibilityEvent;
import android.graphics.PointF;
import java.util.List;
import android.view.View;
import android.content.Context;

public class N extends p implements G
{
    final S mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final T mLayoutChunkResult;
    private R mLayoutState;
    int mOrientation;
    U mOrientationHelper;
    LinearLayoutManager$SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;
    
    public N(final Context context) {
        this(context, 1, false);
    }
    
    public N(final Context context, final int orientation, final boolean reverseLayout) {
        final boolean b = true;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = b;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = -1 << -1;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new S(this);
        this.mLayoutChunkResult = new T();
        this.mInitialPrefetchItemCount = 2;
        this.setOrientation(orientation);
        this.setReverseLayout(reverseLayout);
        this.setAutoMeasureEnabled(b);
    }
    
    private int computeScrollExtent(final e e) {
        final boolean b = true;
        boolean b2 = false;
        if (this.getChildCount() != 0) {
            this.ensureLayoutState();
            final U mOrientationHelper = this.mOrientationHelper;
            final View firstVisibleChildClosestToStart = this.findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled && b, b);
            if (!this.mSmoothScrollbarEnabled) {
                b2 = b;
            }
            return ac.aci(e, mOrientationHelper, firstVisibleChildClosestToStart, this.findFirstVisibleChildClosestToEnd(b2, b), this, this.mSmoothScrollbarEnabled);
        }
        return 0;
    }
    
    private int computeScrollOffset(final e e) {
        final boolean b = true;
        boolean b2 = false;
        if (this.getChildCount() != 0) {
            this.ensureLayoutState();
            final U mOrientationHelper = this.mOrientationHelper;
            final View firstVisibleChildClosestToStart = this.findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled && b, b);
            if (!this.mSmoothScrollbarEnabled) {
                b2 = b;
            }
            return ac.ach(e, mOrientationHelper, firstVisibleChildClosestToStart, this.findFirstVisibleChildClosestToEnd(b2, b), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
        }
        return 0;
    }
    
    private int computeScrollRange(final e e) {
        final boolean b = true;
        boolean b2 = false;
        if (this.getChildCount() != 0) {
            this.ensureLayoutState();
            final U mOrientationHelper = this.mOrientationHelper;
            final View firstVisibleChildClosestToStart = this.findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled && b, b);
            if (!this.mSmoothScrollbarEnabled) {
                b2 = b;
            }
            return ac.acg(e, mOrientationHelper, firstVisibleChildClosestToStart, this.findFirstVisibleChildClosestToEnd(b2, b), this, this.mSmoothScrollbarEnabled);
        }
        return 0;
    }
    
    private View findFirstPartiallyOrCompletelyInvisibleChild(final s s, final e e) {
        return this.findOnePartiallyOrCompletelyInvisibleChild(0, this.getChildCount());
    }
    
    private View findFirstReferenceChild(final s s, final e e) {
        return this.findReferenceChild(s, e, 0, this.getChildCount(), e.getItemCount());
    }
    
    private View findFirstVisibleChildClosestToEnd(final boolean b, final boolean b2) {
        if (!this.mShouldReverseLayout) {
            return this.findOneVisibleChild(this.getChildCount() - 1, -1, b, b2);
        }
        return this.findOneVisibleChild(0, this.getChildCount(), b, b2);
    }
    
    private View findFirstVisibleChildClosestToStart(final boolean b, final boolean b2) {
        if (!this.mShouldReverseLayout) {
            return this.findOneVisibleChild(0, this.getChildCount(), b, b2);
        }
        return this.findOneVisibleChild(this.getChildCount() - 1, -1, b, b2);
    }
    
    private View findLastPartiallyOrCompletelyInvisibleChild(final s s, final e e) {
        return this.findOnePartiallyOrCompletelyInvisibleChild(this.getChildCount() - 1, -1);
    }
    
    private View findLastReferenceChild(final s s, final e e) {
        return this.findReferenceChild(s, e, this.getChildCount() - 1, -1, e.getItemCount());
    }
    
    private View findPartiallyOrCompletelyInvisibleChildClosestToEnd(final s s, final e e) {
        View view;
        if (!this.mShouldReverseLayout) {
            view = this.findLastPartiallyOrCompletelyInvisibleChild(s, e);
        }
        else {
            view = this.findFirstPartiallyOrCompletelyInvisibleChild(s, e);
        }
        return view;
    }
    
    private View findPartiallyOrCompletelyInvisibleChildClosestToStart(final s s, final e e) {
        View view;
        if (!this.mShouldReverseLayout) {
            view = this.findFirstPartiallyOrCompletelyInvisibleChild(s, e);
        }
        else {
            view = this.findLastPartiallyOrCompletelyInvisibleChild(s, e);
        }
        return view;
    }
    
    private View findReferenceChildClosestToEnd(final s s, final e e) {
        View view;
        if (!this.mShouldReverseLayout) {
            view = this.findLastReferenceChild(s, e);
        }
        else {
            view = this.findFirstReferenceChild(s, e);
        }
        return view;
    }
    
    private View findReferenceChildClosestToStart(final s s, final e e) {
        View view;
        if (!this.mShouldReverseLayout) {
            view = this.findFirstReferenceChild(s, e);
        }
        else {
            view = this.findLastReferenceChild(s, e);
        }
        return view;
    }
    
    private int fixLayoutEndGap(final int n, final s s, final e e, final boolean b) {
        final int n2 = this.mOrientationHelper.abu() - n;
        if (n2 <= 0) {
            return 0;
        }
        final int n3 = -this.scrollBy(-n2, s, e);
        final int n4 = n + n3;
        if (b) {
            final int n5 = this.mOrientationHelper.abu() - n4;
            if (n5 > 0) {
                this.mOrientationHelper.abv(n5);
                return n3 + n5;
            }
        }
        return n3;
    }
    
    private int fixLayoutStartGap(final int n, final s s, final e e, final boolean b) {
        final int n2 = n - this.mOrientationHelper.abm();
        if (n2 <= 0) {
            return 0;
        }
        final int n3 = -this.scrollBy(n2, s, e);
        final int n4 = n + n3;
        if (b) {
            final int n5 = n4 - this.mOrientationHelper.abm();
            if (n5 > 0) {
                this.mOrientationHelper.abv(-n5);
                return n3 - n5;
            }
        }
        return n3;
    }
    
    private View getChildClosestToEnd() {
        int n = 0;
        if (!this.mShouldReverseLayout) {
            n = this.getChildCount() - 1;
        }
        return this.getChildAt(n);
    }
    
    private View getChildClosestToStart() {
        int n = 0;
        if (this.mShouldReverseLayout) {
            n = this.getChildCount() - 1;
        }
        return this.getChildAt(n);
    }
    
    private void layoutForPredictiveAnimations(final s s, final e e, final int n, final int n2) {
        if (e.XJ() && this.getChildCount() != 0 && !e.XM() && this.supportsPredictiveItemAnimations()) {
            int rt = 0;
            int rt2 = 0;
            final List yh = s.YH();
            final int size = yh.size();
            final int position = this.getPosition(this.getChildAt(0));
            int n4;
            int n5;
            for (int i = 0; i < size; ++i, rt = n5, rt2 = n4) {
                final j j = yh.get(i);
                if (!j.isRemoved()) {
                    int n3;
                    if ((j.getLayoutPosition() < position || false) == this.mShouldReverseLayout) {
                        n3 = 1;
                    }
                    else {
                        n3 = -1;
                    }
                    if (n3 != -1) {
                        n4 = this.mOrientationHelper.abi(j.itemView) + rt2;
                        n5 = rt;
                    }
                    else {
                        n5 = this.mOrientationHelper.abi(j.itemView) + rt;
                        n4 = rt2;
                    }
                }
                else {
                    n4 = rt2;
                    n5 = rt;
                }
            }
            this.mLayoutState.RO = yh;
            if (rt > 0) {
                this.updateLayoutStateToFillStart(this.getPosition(this.getChildClosestToStart()), n);
                this.mLayoutState.RT = rt;
                this.mLayoutState.RQ = 0;
                this.mLayoutState.aaS();
                this.fill(s, this.mLayoutState, e, false);
            }
            if (rt2 > 0) {
                this.updateLayoutStateToFillEnd(this.getPosition(this.getChildClosestToEnd()), n2);
                this.mLayoutState.RT = rt2;
                this.mLayoutState.RQ = 0;
                this.mLayoutState.aaS();
                this.fill(s, this.mLayoutState, e, false);
            }
            this.mLayoutState.RO = null;
        }
    }
    
    private void recycleByLayoutState(final s s, final R r) {
        if (r.RN && !r.RV) {
            if (r.RS != -1) {
                this.recycleViewsFromStart(s, r.RU);
            }
            else {
                this.recycleViewsFromEnd(s, r.RU);
            }
        }
    }
    
    private void recycleChildren(final s s, int i, final int n) {
        if (i != n) {
            if (n <= i) {
                while (i > n) {
                    this.removeAndRecycleViewAt(i, s);
                    --i;
                }
            }
            else {
                for (int j = n - 1; j >= i; --j) {
                    this.removeAndRecycleViewAt(j, s);
                }
            }
        }
    }
    
    private void recycleViewsFromEnd(final s s, final int n) {
        final int childCount = this.getChildCount();
        if (n >= 0) {
            final int n2 = this.mOrientationHelper.abn() - n;
            if (!this.mShouldReverseLayout) {
                for (int i = childCount - 1; i >= 0; --i) {
                    final View child = this.getChildAt(i);
                    if (this.mOrientationHelper.abk(child) < n2 || this.mOrientationHelper.abe(child) < n2) {
                        this.recycleChildren(s, childCount - 1, i);
                        return;
                    }
                }
            }
            else {
                for (int j = 0; j < childCount; ++j) {
                    final View child2 = this.getChildAt(j);
                    if (this.mOrientationHelper.abk(child2) < n2 || this.mOrientationHelper.abe(child2) < n2) {
                        this.recycleChildren(s, 0, j);
                        return;
                    }
                }
            }
        }
    }
    
    private void recycleViewsFromStart(final s s, final int n) {
        if (n >= 0) {
            final int childCount = this.getChildCount();
            if (!this.mShouldReverseLayout) {
                for (int i = 0; i < childCount; ++i) {
                    final View child = this.getChildAt(i);
                    if (this.mOrientationHelper.abl(child) > n || this.mOrientationHelper.abt(child) > n) {
                        this.recycleChildren(s, 0, i);
                        return;
                    }
                }
            }
            else {
                for (int j = childCount - 1; j >= 0; --j) {
                    final View child2 = this.getChildAt(j);
                    if (this.mOrientationHelper.abl(child2) > n || this.mOrientationHelper.abt(child2) > n) {
                        this.recycleChildren(s, childCount - 1, j);
                        return;
                    }
                }
            }
        }
    }
    
    private void resolveShouldLayoutReverse() {
        final boolean b = true;
        boolean mShouldReverseLayout = false;
        if (this.mOrientation != (b ? 1 : 0) && this.isLayoutRTL()) {
            if (!this.mReverseLayout) {
                mShouldReverseLayout = b;
            }
            this.mShouldReverseLayout = mShouldReverseLayout;
        }
        else {
            this.mShouldReverseLayout = this.mReverseLayout;
        }
    }
    
    private boolean updateAnchorFromChildren(final s s, final e e, final S s2) {
        final boolean b = true;
        if (this.getChildCount() == 0) {
            return false;
        }
        final View focusedChild = this.getFocusedChild();
        if (focusedChild != null && s2.aaZ(focusedChild, e)) {
            s2.abb(focusedChild);
            return b;
        }
        if (this.mLastStackFromEnd != this.mStackFromEnd) {
            return false;
        }
        View view;
        if (!s2.RY) {
            view = this.findReferenceChildClosestToStart(s, e);
        }
        else {
            view = this.findReferenceChildClosestToEnd(s, e);
        }
        if (view == null) {
            return false;
        }
        s2.aaY(view);
        if (!e.XM() && this.supportsPredictiveItemAnimations() && ((this.mOrientationHelper.abk(view) >= this.mOrientationHelper.abu() || this.mOrientationHelper.abl(view) < this.mOrientationHelper.abm()) && b)) {
            int rx;
            if (!s2.RY) {
                rx = this.mOrientationHelper.abm();
            }
            else {
                rx = this.mOrientationHelper.abu();
            }
            s2.RX = rx;
        }
        return b;
    }
    
    private boolean updateAnchorFromPendingData(final e e, final S s) {
        final int mPendingScrollPosition = -1;
        final int mPendingScrollPositionOffset = -1 << -1;
        final boolean ry = true;
        boolean ry2 = false;
        if (e.XM() || this.mPendingScrollPosition == mPendingScrollPosition) {
            return false;
        }
        if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= e.getItemCount()) {
            this.mPendingScrollPosition = mPendingScrollPosition;
            this.mPendingScrollPositionOffset = mPendingScrollPositionOffset;
            return false;
        }
        s.mPosition = this.mPendingScrollPosition;
        if (this.mPendingSavedState != null && this.mPendingSavedState.abd()) {
            if (!(s.RY = this.mPendingSavedState.Sf)) {
                s.RX = this.mOrientationHelper.abm() + this.mPendingSavedState.Se;
            }
            else {
                s.RX = this.mOrientationHelper.abu() - this.mPendingSavedState.Se;
            }
            return ry;
        }
        if (this.mPendingScrollPositionOffset != mPendingScrollPositionOffset) {
            s.RY = this.mShouldReverseLayout;
            if (!this.mShouldReverseLayout) {
                s.RX = this.mOrientationHelper.abm() + this.mPendingScrollPositionOffset;
            }
            else {
                s.RX = this.mOrientationHelper.abu() - this.mPendingScrollPositionOffset;
            }
            return ry;
        }
        final View viewByPosition = this.findViewByPosition(this.mPendingScrollPosition);
        if (viewByPosition == null) {
            if (this.getChildCount() > 0) {
                if ((this.mPendingScrollPosition < this.getPosition(this.getChildAt(0)) && ry) == this.mShouldReverseLayout) {
                    ry2 = ry;
                }
                s.RY = ry2;
            }
            s.aba();
        }
        else {
            if (this.mOrientationHelper.abi(viewByPosition) > this.mOrientationHelper.abj()) {
                s.aba();
                return ry;
            }
            if (this.mOrientationHelper.abk(viewByPosition) - this.mOrientationHelper.abm() < 0) {
                s.RX = this.mOrientationHelper.abm();
                s.RY = false;
                return ry;
            }
            if (this.mOrientationHelper.abu() - this.mOrientationHelper.abl(viewByPosition) < 0) {
                s.RX = this.mOrientationHelper.abu();
                return s.RY = ry;
            }
            int abk;
            if (!s.RY) {
                abk = this.mOrientationHelper.abk(viewByPosition);
            }
            else {
                abk = this.mOrientationHelper.abl(viewByPosition) + this.mOrientationHelper.abr();
            }
            s.RX = abk;
        }
        return ry;
    }
    
    private void updateAnchorInfoForLayout(final s s, final e e, final S s2) {
        int mPosition = 0;
        if (this.updateAnchorFromPendingData(e, s2)) {
            return;
        }
        if (!this.updateAnchorFromChildren(s, e, s2)) {
            s2.aba();
            if (this.mStackFromEnd) {
                mPosition = e.getItemCount() - 1;
            }
            s2.mPosition = mPosition;
        }
    }
    
    private void updateLayoutState(final int rs, final int rq, final boolean b, final e e) {
        int rw = -1;
        int rw2 = 1;
        this.mLayoutState.RV = this.resolveIsInfinite();
        this.mLayoutState.RT = this.getExtraLayoutSpace(e);
        this.mLayoutState.RS = rs;
        int ru;
        if (rs != rw2) {
            final View childClosestToStart = this.getChildClosestToStart();
            final R mLayoutState = this.mLayoutState;
            mLayoutState.RT += this.mOrientationHelper.abm();
            final R mLayoutState2 = this.mLayoutState;
            if (this.mShouldReverseLayout) {
                rw = rw2;
            }
            mLayoutState2.RW = rw;
            this.mLayoutState.RR = this.getPosition(childClosestToStart) + this.mLayoutState.RW;
            this.mLayoutState.mOffset = this.mOrientationHelper.abk(childClosestToStart);
            ru = -this.mOrientationHelper.abk(childClosestToStart) + this.mOrientationHelper.abm();
        }
        else {
            final R mLayoutState3 = this.mLayoutState;
            mLayoutState3.RT += this.mOrientationHelper.abp();
            final View childClosestToEnd = this.getChildClosestToEnd();
            final R mLayoutState4 = this.mLayoutState;
            if (this.mShouldReverseLayout) {
                rw2 = rw;
            }
            mLayoutState4.RW = rw2;
            this.mLayoutState.RR = this.getPosition(childClosestToEnd) + this.mLayoutState.RW;
            this.mLayoutState.mOffset = this.mOrientationHelper.abl(childClosestToEnd);
            ru = this.mOrientationHelper.abl(childClosestToEnd) - this.mOrientationHelper.abu();
        }
        this.mLayoutState.RQ = rq;
        if (b) {
            final R mLayoutState5 = this.mLayoutState;
            mLayoutState5.RQ -= ru;
        }
        this.mLayoutState.RU = ru;
    }
    
    private void updateLayoutStateToFillEnd(final int rr, final int mOffset) {
        final boolean rs = true;
        this.mLayoutState.RQ = this.mOrientationHelper.abu() - mOffset;
        final R mLayoutState = this.mLayoutState;
        int rw;
        if (!this.mShouldReverseLayout) {
            rw = (rs ? 1 : 0);
        }
        else {
            rw = -1;
        }
        mLayoutState.RW = rw;
        this.mLayoutState.RR = rr;
        this.mLayoutState.RS = (rs ? 1 : 0);
        this.mLayoutState.mOffset = mOffset;
        this.mLayoutState.RU = -1 << -1;
    }
    
    private void updateLayoutStateToFillEnd(final S s) {
        this.updateLayoutStateToFillEnd(s.mPosition, s.RX);
    }
    
    private void updateLayoutStateToFillStart(final int rr, final int mOffset) {
        final int rs = -1;
        this.mLayoutState.RQ = mOffset - this.mOrientationHelper.abm();
        this.mLayoutState.RR = rr;
        final R mLayoutState = this.mLayoutState;
        int rw;
        if (!this.mShouldReverseLayout) {
            rw = rs;
        }
        else {
            rw = 1;
        }
        mLayoutState.RW = rw;
        this.mLayoutState.RS = rs;
        this.mLayoutState.mOffset = mOffset;
        this.mLayoutState.RU = -1 << -1;
    }
    
    private void updateLayoutStateToFillStart(final S s) {
        this.updateLayoutStateToFillStart(s.mPosition, s.RX);
    }
    
    public void assertNotInLayoutOrScroll(final String s) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(s);
        }
    }
    
    public boolean canScrollHorizontally() {
        boolean b = false;
        if (this.mOrientation == 0) {
            b = true;
        }
        return b;
    }
    
    public boolean canScrollVertically() {
        boolean b = true;
        if (this.mOrientation != (b ? 1 : 0)) {
            b = false;
        }
        return b;
    }
    
    public void collectAdjacentPrefetchPositions(final int n, int n2, final e e, final I i) {
        final int n3 = 1;
        if (this.mOrientation == 0) {
            n2 = n;
        }
        if (this.getChildCount() != 0 && n2 != 0) {
            this.ensureLayoutState();
            int n4;
            if (n2 <= 0) {
                n4 = -1;
            }
            else {
                n4 = n3;
            }
            this.updateLayoutState(n4, Math.abs(n2), n3 != 0, e);
            this.collectPrefetchPositionsForLayoutState(e, this.mLayoutState, i);
        }
    }
    
    public void collectInitialPrefetchPositions(final int n, final I i) {
        final int n2 = -1;
        boolean sf;
        int n3;
        if (this.mPendingSavedState != null && this.mPendingSavedState.abd()) {
            sf = this.mPendingSavedState.Sf;
            n3 = this.mPendingSavedState.Sg;
        }
        else {
            this.resolveShouldLayoutReverse();
            final boolean mShouldReverseLayout = this.mShouldReverseLayout;
            if (this.mPendingScrollPosition != n2) {
                n3 = this.mPendingScrollPosition;
                sf = mShouldReverseLayout;
            }
            else {
                int n4;
                if (!mShouldReverseLayout) {
                    n4 = 0;
                }
                else {
                    n4 = n - 1;
                }
                n3 = n4;
                sf = mShouldReverseLayout;
            }
        }
        int n5;
        if (!sf) {
            n5 = 1;
        }
        else {
            n5 = n2;
        }
        for (int n6 = 0; n6 < this.mInitialPrefetchItemCount && n3 >= 0 && n3 < n; n3 += n5, ++n6) {
            i.Zm(n3, 0);
        }
    }
    
    void collectPrefetchPositionsForLayoutState(final e e, final R r, final I i) {
        final int rr = r.RR;
        if (rr >= 0 && rr < e.getItemCount()) {
            i.Zm(rr, Math.max(0, r.RU));
        }
    }
    
    public int computeHorizontalScrollExtent(final e e) {
        return this.computeScrollExtent(e);
    }
    
    public int computeHorizontalScrollOffset(final e e) {
        return this.computeScrollOffset(e);
    }
    
    public int computeHorizontalScrollRange(final e e) {
        return this.computeScrollRange(e);
    }
    
    public PointF computeScrollVectorForPosition(final int n) {
        int n2 = 1;
        boolean b = false;
        if (this.getChildCount() == 0) {
            return null;
        }
        if (n < this.getPosition(this.getChildAt(0))) {
            b = (n2 != 0);
        }
        if (b != this.mShouldReverseLayout) {
            n2 = -1;
        }
        if (this.mOrientation != 0) {
            return new PointF(0.0f, (float)n2);
        }
        return new PointF((float)n2, 0.0f);
    }
    
    public int computeVerticalScrollExtent(final e e) {
        return this.computeScrollExtent(e);
    }
    
    public int computeVerticalScrollOffset(final e e) {
        return this.computeScrollOffset(e);
    }
    
    public int computeVerticalScrollRange(final e e) {
        return this.computeScrollRange(e);
    }
    
    int convertFocusDirectionToLayoutDirection(final int n) {
        final int n2 = -1;
        int n3 = -1 << -1;
        final boolean b = true;
        switch (n) {
            default: {
                return n3;
            }
            case 1: {
                if (this.mOrientation == (b ? 1 : 0)) {
                    return n2;
                }
                if (!this.isLayoutRTL()) {
                    return n2;
                }
                return b ? 1 : 0;
            }
            case 2: {
                if (this.mOrientation == (b ? 1 : 0)) {
                    return b ? 1 : 0;
                }
                if (!this.isLayoutRTL()) {
                    return b ? 1 : 0;
                }
                return n2;
            }
            case 33: {
                if (this.mOrientation == (b ? 1 : 0)) {
                    n3 = n2;
                }
                return n3;
            }
            case 130: {
                if (this.mOrientation == (b ? 1 : 0)) {
                    n3 = (b ? 1 : 0);
                }
                return n3;
            }
            case 17: {
                if (this.mOrientation == 0) {
                    n3 = n2;
                }
                return n3;
            }
            case 66: {
                if (this.mOrientation == 0) {
                    n3 = (b ? 1 : 0);
                }
                return n3;
            }
        }
    }
    
    R createLayoutState() {
        return new R();
    }
    
    void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = this.createLayoutState();
        }
        if (this.mOrientationHelper == null) {
            this.mOrientationHelper = U.abs(this, this.mOrientation);
        }
    }
    
    int fill(final s s, final R r, final e e, final boolean b) {
        final int n = -1 << -1;
        final int rq = r.RQ;
        if (r.RU != n) {
            if (r.RQ < 0) {
                r.RU += r.RQ;
            }
            this.recycleByLayoutState(s, r);
        }
        int n2 = r.RQ + r.RT;
        final T mLayoutChunkResult = this.mLayoutChunkResult;
        while (r.RV || n2 > 0) {
            if (r.aaW(e)) {
                mLayoutChunkResult.resetInternal();
                this.layoutChunk(s, e, r, mLayoutChunkResult);
                if (!mLayoutChunkResult.mFinished) {
                    r.mOffset += mLayoutChunkResult.Sb * r.RS;
                    if (mLayoutChunkResult.Sc || this.mLayoutState.RO != null || !e.XM()) {
                        r.RQ -= mLayoutChunkResult.Sb;
                        n2 -= mLayoutChunkResult.Sb;
                    }
                    if (r.RU != n) {
                        r.RU += mLayoutChunkResult.Sb;
                        if (r.RQ < 0) {
                            r.RU += r.RQ;
                        }
                        this.recycleByLayoutState(s, r);
                    }
                    if (!b) {
                        continue;
                    }
                    if (!mLayoutChunkResult.Sd) {
                        continue;
                    }
                }
            }
            return rq - r.RQ;
        }
        return rq - r.RQ;
    }
    
    public int findFirstVisibleItemPosition() {
        final View oneVisibleChild = this.findOneVisibleChild(0, this.getChildCount(), false, true);
        int position;
        if (oneVisibleChild != null) {
            position = this.getPosition(oneVisibleChild);
        }
        else {
            position = -1;
        }
        return position;
    }
    
    public int findLastVisibleItemPosition() {
        int position = -1;
        final View oneVisibleChild = this.findOneVisibleChild(this.getChildCount() - 1, position, false, true);
        if (oneVisibleChild != null) {
            position = this.getPosition(oneVisibleChild);
        }
        return position;
    }
    
    View findOnePartiallyOrCompletelyInvisibleChild(final int n, final int n2) {
        int n3 = 0;
        this.ensureLayoutState();
        if (n2 <= n) {
            if (n2 < n) {
                n3 = -1;
            }
        }
        else {
            n3 = 1;
        }
        if (n3 != 0) {
            int n4;
            int n5;
            if (this.mOrientationHelper.abk(this.getChildAt(n)) >= this.mOrientationHelper.abm()) {
                n4 = 4161;
                n5 = 4097;
            }
            else {
                n4 = 16644;
                n5 = 16388;
            }
            View view;
            if (this.mOrientation != 0) {
                view = this.mVerticalBoundCheck.aaO(n, n2, n4, n5);
            }
            else {
                view = this.mHorizontalBoundCheck.aaO(n, n2, n4, n5);
            }
            return view;
        }
        return this.getChildAt(n);
    }
    
    View findOneVisibleChild(final int n, final int n2, final boolean b, final boolean b2) {
        final int n3 = 320;
        int n4 = 0;
        this.ensureLayoutState();
        int n5;
        if (!b) {
            n5 = n3;
        }
        else {
            n5 = 24579;
        }
        if (b2) {
            n4 = n3;
        }
        View view;
        if (this.mOrientation != 0) {
            view = this.mVerticalBoundCheck.aaO(n, n2, n5, n4);
        }
        else {
            view = this.mHorizontalBoundCheck.aaO(n, n2, n5, n4);
        }
        return view;
    }
    
    View findReferenceChild(final s s, final e e, int i, final int n, final int n2) {
        View view = null;
        this.ensureLayoutState();
        final int abm = this.mOrientationHelper.abm();
        final int abu = this.mOrientationHelper.abu();
        int n3;
        if (n <= i) {
            n3 = -1;
        }
        else {
            n3 = 1;
        }
        View view2 = null;
        while (i != n) {
            View child = this.getChildAt(i);
            final int position = this.getPosition(child);
            View view3;
            if (position >= 0 && position < n2) {
                if (!((i)child.getLayoutParams()).Yf()) {
                    if (this.mOrientationHelper.abk(child) < abu && this.mOrientationHelper.abl(child) >= abm) {
                        return child;
                    }
                    if (view != null) {
                        view3 = view;
                        child = view2;
                    }
                    else {
                        view3 = child;
                        child = view2;
                    }
                }
                else if (view2 != null) {
                    view3 = view;
                    child = view2;
                }
                else {
                    view3 = view;
                }
            }
            else {
                view3 = view;
                child = view2;
            }
            i += n3;
            view = view3;
            view2 = child;
        }
        if (view != null) {
            view2 = view;
        }
        return view2;
    }
    
    public View findViewByPosition(final int n) {
        final int childCount = this.getChildCount();
        if (childCount != 0) {
            final int n2 = n - this.getPosition(this.getChildAt(0));
            if (n2 >= 0 && n2 < childCount) {
                final View child = this.getChildAt(n2);
                if (this.getPosition(child) == n) {
                    return child;
                }
            }
            return super.findViewByPosition(n);
        }
        return null;
    }
    
    public i generateDefaultLayoutParams() {
        final int n = -2;
        return new i(n, n);
    }
    
    protected int getExtraLayoutSpace(final e e) {
        if (!e.XI()) {
            return 0;
        }
        return this.mOrientationHelper.abj();
    }
    
    public int getOrientation() {
        return this.mOrientation;
    }
    
    protected boolean isLayoutRTL() {
        boolean b = true;
        if (this.getLayoutDirection() != (b ? 1 : 0)) {
            b = false;
        }
        return b;
    }
    
    void layoutChunk(final s s, final e e, final R r, final T t) {
        final int n = -1;
        final boolean b = true;
        final View aaT = r.aaT(s);
        if (aaT != null) {
            final i i = (i)aaT.getLayoutParams();
            if (r.RO != null) {
                if (this.mShouldReverseLayout != (r.RS == n && b)) {
                    this.addDisappearingView(aaT, 0);
                }
                else {
                    this.addDisappearingView(aaT);
                }
            }
            else if (this.mShouldReverseLayout != (r.RS == n && b)) {
                this.addView(aaT, 0);
            }
            else {
                this.addView(aaT);
            }
            this.measureChildWithMargins(aaT, 0, 0);
            t.Sb = this.mOrientationHelper.abi(aaT);
            int n2;
            int mOffset;
            int n3;
            int n4;
            if (this.mOrientation != (b ? 1 : 0)) {
                n2 = this.getPaddingTop();
                mOffset = n2 + this.mOrientationHelper.abh(aaT);
                if (r.RS != n) {
                    final int mOffset2 = r.mOffset;
                    n3 = r.mOffset + t.Sb;
                    n4 = mOffset2;
                }
                else {
                    final int mOffset3 = r.mOffset;
                    final int n5 = r.mOffset - t.Sb;
                    n3 = mOffset3;
                    n4 = n5;
                }
            }
            else {
                int paddingLeft;
                int n6;
                if (!this.isLayoutRTL()) {
                    paddingLeft = this.getPaddingLeft();
                    n6 = this.mOrientationHelper.abh(aaT) + paddingLeft;
                }
                else {
                    n6 = this.getWidth() - this.getPaddingRight();
                    paddingLeft = n6 - this.mOrientationHelper.abh(aaT);
                }
                if (r.RS != n) {
                    n2 = r.mOffset;
                    mOffset = t.Sb + r.mOffset;
                    n3 = n6;
                    n4 = paddingLeft;
                }
                else {
                    mOffset = r.mOffset;
                    n2 = r.mOffset - t.Sb;
                    n3 = n6;
                    n4 = paddingLeft;
                }
            }
            this.layoutDecoratedWithMargins(aaT, n4, n2, n3, mOffset);
            if (i.Yf() || i.Ye()) {
                t.Sc = b;
            }
            t.Sd = aaT.hasFocusable();
            return;
        }
        t.mFinished = b;
    }
    
    void onAnchorReady(final s s, final e e, final S s2, final int n) {
    }
    
    public void onDetachedFromWindow(final RecyclerView recyclerView, final s s) {
        super.onDetachedFromWindow(recyclerView, s);
        if (this.mRecycleChildrenOnDetach) {
            this.removeAndRecycleAllViews(s);
            s.clear();
        }
    }
    
    public View onFocusSearchFailed(final View view, final int n, final s s, final e e) {
        final int n2 = -1;
        final int ru = -1 << -1;
        this.resolveShouldLayoutReverse();
        if (this.getChildCount() == 0) {
            return null;
        }
        final int convertFocusDirectionToLayoutDirection = this.convertFocusDirectionToLayoutDirection(n);
        if (convertFocusDirectionToLayoutDirection == ru) {
            return null;
        }
        this.ensureLayoutState();
        this.ensureLayoutState();
        this.updateLayoutState(convertFocusDirectionToLayoutDirection, (int)(this.mOrientationHelper.abj() * 0.33333334f), false, e);
        this.mLayoutState.RU = ru;
        this.mLayoutState.RN = false;
        this.fill(s, this.mLayoutState, e, true);
        View view2;
        if (convertFocusDirectionToLayoutDirection != n2) {
            view2 = this.findPartiallyOrCompletelyInvisibleChildClosestToEnd(s, e);
        }
        else {
            view2 = this.findPartiallyOrCompletelyInvisibleChildClosestToStart(s, e);
        }
        View view3;
        if (convertFocusDirectionToLayoutDirection != n2) {
            view3 = this.getChildClosestToEnd();
        }
        else {
            view3 = this.getChildClosestToStart();
        }
        if (!view3.hasFocusable()) {
            return view2;
        }
        if (view2 != null) {
            return view3;
        }
        return null;
    }
    
    public void onInitializeAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (this.getChildCount() > 0) {
            accessibilityEvent.setFromIndex(this.findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(this.findLastVisibleItemPosition());
        }
    }
    
    public void onLayoutChildren(final s s, final e e) {
        final int rz = 1;
        int n = -1;
        if (this.mPendingSavedState != null || this.mPendingScrollPosition != n) {
            if (e.getItemCount() == 0) {
                this.removeAndRecycleAllViews(s);
                return;
            }
        }
        if (this.mPendingSavedState != null && this.mPendingSavedState.abd()) {
            this.mPendingScrollPosition = this.mPendingSavedState.Sg;
        }
        this.ensureLayoutState();
        this.mLayoutState.RN = false;
        this.resolveShouldLayoutReverse();
        final View focusedChild = this.getFocusedChild();
        if (this.mAnchorInfo.RZ && this.mPendingScrollPosition == n && this.mPendingSavedState == null) {
            if (focusedChild != null) {
                if (this.mOrientationHelper.abk(focusedChild) >= this.mOrientationHelper.abu() || this.mOrientationHelper.abl(focusedChild) <= this.mOrientationHelper.abm()) {
                    this.mAnchorInfo.abb(focusedChild);
                }
            }
        }
        else {
            this.mAnchorInfo.reset();
            this.mAnchorInfo.RY = (this.mShouldReverseLayout ^ this.mStackFromEnd);
            this.updateAnchorInfoForLayout(s, e, this.mAnchorInfo);
            this.mAnchorInfo.RZ = (rz != 0);
        }
        int extraLayoutSpace = this.getExtraLayoutSpace(e);
        int n2;
        if (this.mLayoutState.RM < 0) {
            n2 = 0;
        }
        else {
            n2 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        int n3 = extraLayoutSpace + this.mOrientationHelper.abm();
        int n4 = n2 + this.mOrientationHelper.abp();
        if (e.XM() && this.mPendingScrollPosition != n && this.mPendingScrollPositionOffset != -1 << -1) {
            final View viewByPosition = this.findViewByPosition(this.mPendingScrollPosition);
            if (viewByPosition != null) {
                int n5;
                if (!this.mShouldReverseLayout) {
                    n5 = this.mPendingScrollPositionOffset - (this.mOrientationHelper.abk(viewByPosition) - this.mOrientationHelper.abm());
                }
                else {
                    n5 = this.mOrientationHelper.abu() - this.mOrientationHelper.abl(viewByPosition) - this.mPendingScrollPositionOffset;
                }
                if (n5 <= 0) {
                    n4 -= n5;
                }
                else {
                    n3 += n5;
                }
            }
        }
        if (!this.mAnchorInfo.RY) {
            if (!this.mShouldReverseLayout) {
                n = rz;
            }
        }
        else if (this.mShouldReverseLayout) {
            n = rz;
        }
        this.onAnchorReady(s, e, this.mAnchorInfo, n);
        this.detachAndScrapAttachedViews(s);
        this.mLayoutState.RV = this.resolveIsInfinite();
        this.mLayoutState.RP = e.XM();
        int n6;
        int n7;
        if (!this.mAnchorInfo.RY) {
            this.updateLayoutStateToFillEnd(this.mAnchorInfo);
            this.mLayoutState.RT = n4;
            this.fill(s, this.mLayoutState, e, false);
            n6 = this.mLayoutState.mOffset;
            final int rr = this.mLayoutState.RR;
            if (this.mLayoutState.RQ > 0) {
                n3 += this.mLayoutState.RQ;
            }
            this.updateLayoutStateToFillStart(this.mAnchorInfo);
            this.mLayoutState.RT = n3;
            final R mLayoutState = this.mLayoutState;
            mLayoutState.RR += this.mLayoutState.RW;
            this.fill(s, this.mLayoutState, e, false);
            n7 = this.mLayoutState.mOffset;
            if (this.mLayoutState.RQ > 0) {
                final int rq = this.mLayoutState.RQ;
                this.updateLayoutStateToFillEnd(rr, n6);
                this.mLayoutState.RT = rq;
                this.fill(s, this.mLayoutState, e, false);
                n6 = this.mLayoutState.mOffset;
            }
        }
        else {
            this.updateLayoutStateToFillStart(this.mAnchorInfo);
            this.mLayoutState.RT = n3;
            this.fill(s, this.mLayoutState, e, false);
            n7 = this.mLayoutState.mOffset;
            final int rr2 = this.mLayoutState.RR;
            if (this.mLayoutState.RQ > 0) {
                n4 += this.mLayoutState.RQ;
            }
            this.updateLayoutStateToFillEnd(this.mAnchorInfo);
            this.mLayoutState.RT = n4;
            final R mLayoutState2 = this.mLayoutState;
            mLayoutState2.RR += this.mLayoutState.RW;
            this.fill(s, this.mLayoutState, e, false);
            n6 = this.mLayoutState.mOffset;
            if (this.mLayoutState.RQ > 0) {
                final int rq2 = this.mLayoutState.RQ;
                this.updateLayoutStateToFillStart(rr2, n7);
                this.mLayoutState.RT = rq2;
                this.fill(s, this.mLayoutState, e, false);
                n7 = this.mLayoutState.mOffset;
            }
        }
        if (this.getChildCount() > 0) {
            if (!(this.mShouldReverseLayout ^ this.mStackFromEnd)) {
                final int fixLayoutStartGap = this.fixLayoutStartGap(n7, s, e, rz != 0);
                final int n8 = n7 + fixLayoutStartGap;
                final int n9 = n6 + fixLayoutStartGap;
                final int fixLayoutEndGap = this.fixLayoutEndGap(n9, s, e, false);
                n7 = n8 + fixLayoutEndGap;
                n6 = n9 + fixLayoutEndGap;
            }
            else {
                final int fixLayoutEndGap2 = this.fixLayoutEndGap(n6, s, e, rz != 0);
                final int n10 = n7 + fixLayoutEndGap2;
                final int n11 = n6 + fixLayoutEndGap2;
                final int fixLayoutStartGap2 = this.fixLayoutStartGap(n10, s, e, false);
                n7 = n10 + fixLayoutStartGap2;
                n6 = n11 + fixLayoutStartGap2;
            }
        }
        this.layoutForPredictiveAnimations(s, e, n7, n6);
        if (e.XM()) {
            this.mAnchorInfo.reset();
        }
        else {
            this.mOrientationHelper.abw();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }
    
    public void onLayoutCompleted(final e e) {
        super.onLayoutCompleted(e);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = -1 << -1;
        this.mAnchorInfo.reset();
    }
    
    public void onRestoreInstanceState(final Parcelable parcelable) {
        if (parcelable instanceof LinearLayoutManager$SavedState) {
            this.mPendingSavedState = (LinearLayoutManager$SavedState)parcelable;
            this.requestLayout();
        }
    }
    
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState == null) {
            final LinearLayoutManager$SavedState linearLayoutManager$SavedState = new LinearLayoutManager$SavedState();
            if (this.getChildCount() <= 0) {
                linearLayoutManager$SavedState.abc();
            }
            else {
                this.ensureLayoutState();
                if (!(linearLayoutManager$SavedState.Sf = (this.mLastStackFromEnd ^ this.mShouldReverseLayout))) {
                    final View childClosestToStart = this.getChildClosestToStart();
                    linearLayoutManager$SavedState.Sg = this.getPosition(childClosestToStart);
                    linearLayoutManager$SavedState.Se = this.mOrientationHelper.abk(childClosestToStart) - this.mOrientationHelper.abm();
                }
                else {
                    final View childClosestToEnd = this.getChildClosestToEnd();
                    linearLayoutManager$SavedState.Se = this.mOrientationHelper.abu() - this.mOrientationHelper.abl(childClosestToEnd);
                    linearLayoutManager$SavedState.Sg = this.getPosition(childClosestToEnd);
                }
            }
            return (Parcelable)linearLayoutManager$SavedState;
        }
        return (Parcelable)new LinearLayoutManager$SavedState(this.mPendingSavedState);
    }
    
    boolean resolveIsInfinite() {
        boolean b = false;
        if (this.mOrientationHelper.abf() == 0 && this.mOrientationHelper.abn() == 0) {
            b = true;
        }
        return b;
    }
    
    int scrollBy(int rm, final s s, final e e) {
        final boolean rn = true;
        if (this.getChildCount() == 0 || rm == 0) {
            return 0;
        }
        this.mLayoutState.RN = rn;
        this.ensureLayoutState();
        int n;
        if (rm <= 0) {
            n = -1;
        }
        else {
            n = (rn ? 1 : 0);
        }
        final int abs = Math.abs(rm);
        this.updateLayoutState(n, abs, rn, e);
        final int n2 = this.mLayoutState.RU + this.fill(s, this.mLayoutState, e, false);
        if (n2 >= 0) {
            if (abs > n2) {
                rm = n * n2;
            }
            this.mOrientationHelper.abv(-rm);
            return this.mLayoutState.RM = rm;
        }
        return 0;
    }
    
    public int scrollHorizontallyBy(final int n, final s s, final e e) {
        if (this.mOrientation != 1) {
            return this.scrollBy(n, s, e);
        }
        return 0;
    }
    
    public void scrollToPosition(final int mPendingScrollPosition) {
        this.mPendingScrollPosition = mPendingScrollPosition;
        this.mPendingScrollPositionOffset = -1 << -1;
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.abc();
        }
        this.requestLayout();
    }
    
    public void scrollToPositionWithOffset(final int mPendingScrollPosition, final int mPendingScrollPositionOffset) {
        this.mPendingScrollPosition = mPendingScrollPosition;
        this.mPendingScrollPositionOffset = mPendingScrollPositionOffset;
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.abc();
        }
        this.requestLayout();
    }
    
    public int scrollVerticallyBy(final int n, final s s, final e e) {
        if (this.mOrientation != 0) {
            return this.scrollBy(n, s, e);
        }
        return 0;
    }
    
    public void setOrientation(final int mOrientation) {
        if (mOrientation != 0 && mOrientation != 1) {
            throw new IllegalArgumentException("invalid orientation:" + mOrientation);
        }
        this.assertNotInLayoutOrScroll(null);
        if (mOrientation != this.mOrientation) {
            this.mOrientation = mOrientation;
            this.mOrientationHelper = null;
            this.requestLayout();
        }
    }
    
    public void setReverseLayout(final boolean mReverseLayout) {
        this.assertNotInLayoutOrScroll(null);
        if (mReverseLayout != this.mReverseLayout) {
            this.mReverseLayout = mReverseLayout;
            this.requestLayout();
        }
    }
    
    boolean shouldMeasureTwice() {
        final int n = 1073741824;
        boolean b = false;
        if (this.getHeightMode() != n && this.getWidthMode() != n && this.hasFlexibleChildInBothOrientations()) {
            b = true;
        }
        return b;
    }
    
    public void smoothScrollToPosition(final RecyclerView recyclerView, final e e, final int n) {
        final av av = new av(recyclerView.getContext());
        av.XV(n);
        this.startSmoothScroll(av);
    }
    
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }
}
