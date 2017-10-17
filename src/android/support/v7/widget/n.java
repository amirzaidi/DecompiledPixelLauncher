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
            return ac.abg(e, mOrientationHelper, firstVisibleChildClosestToStart, this.findFirstVisibleChildClosestToEnd(b2, b), this, this.mSmoothScrollbarEnabled);
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
            return ac.abf(e, mOrientationHelper, firstVisibleChildClosestToStart, this.findFirstVisibleChildClosestToEnd(b2, b), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
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
            return ac.abe(e, mOrientationHelper, firstVisibleChildClosestToStart, this.findFirstVisibleChildClosestToEnd(b2, b), this, this.mSmoothScrollbarEnabled);
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
        final int n2 = this.mOrientationHelper.aas() - n;
        if (n2 <= 0) {
            return 0;
        }
        final int n3 = -this.scrollBy(-n2, s, e);
        final int n4 = n + n3;
        if (b) {
            final int n5 = this.mOrientationHelper.aas() - n4;
            if (n5 > 0) {
                this.mOrientationHelper.aat(n5);
                return n3 + n5;
            }
        }
        return n3;
    }
    
    private int fixLayoutStartGap(final int n, final s s, final e e, final boolean b) {
        final int n2 = n - this.mOrientationHelper.aak();
        if (n2 <= 0) {
            return 0;
        }
        final int n3 = -this.scrollBy(n2, s, e);
        final int n4 = n + n3;
        if (b) {
            final int n5 = n4 - this.mOrientationHelper.aak();
            if (n5 > 0) {
                this.mOrientationHelper.aat(-n5);
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
        if (e.WL() && this.getChildCount() != 0 && !e.WN() && this.supportsPredictiveItemAnimations()) {
            int qm = 0;
            int qm2 = 0;
            final List xh = s.XH();
            final int size = xh.size();
            final int position = this.getPosition(this.getChildAt(0));
            int n4;
            int n5;
            for (int i = 0; i < size; ++i, qm = n5, qm2 = n4) {
                final j j = xh.get(i);
                if (!j.isRemoved()) {
                    int n3;
                    if ((j.getLayoutPosition() < position || false) == this.mShouldReverseLayout) {
                        n3 = 1;
                    }
                    else {
                        n3 = -1;
                    }
                    if (n3 != -1) {
                        n4 = this.mOrientationHelper.aag(j.itemView) + qm2;
                        n5 = qm;
                    }
                    else {
                        n5 = this.mOrientationHelper.aag(j.itemView) + qm;
                        n4 = qm2;
                    }
                }
                else {
                    n4 = qm2;
                    n5 = qm;
                }
            }
            this.mLayoutState.Qh = xh;
            if (qm > 0) {
                this.updateLayoutStateToFillStart(this.getPosition(this.getChildClosestToStart()), n);
                this.mLayoutState.Qm = qm;
                this.mLayoutState.Qj = 0;
                this.mLayoutState.ZQ();
                this.fill(s, this.mLayoutState, e, false);
            }
            if (qm2 > 0) {
                this.updateLayoutStateToFillEnd(this.getPosition(this.getChildClosestToEnd()), n2);
                this.mLayoutState.Qm = qm2;
                this.mLayoutState.Qj = 0;
                this.mLayoutState.ZQ();
                this.fill(s, this.mLayoutState, e, false);
            }
            this.mLayoutState.Qh = null;
        }
    }
    
    private void recycleByLayoutState(final s s, final R r) {
        if (r.Qg && !r.Qo) {
            if (r.Ql != -1) {
                this.recycleViewsFromStart(s, r.Qn);
            }
            else {
                this.recycleViewsFromEnd(s, r.Qn);
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
            final int n2 = this.mOrientationHelper.aal() - n;
            if (!this.mShouldReverseLayout) {
                for (int i = childCount - 1; i >= 0; --i) {
                    final View child = this.getChildAt(i);
                    if (this.mOrientationHelper.aai(child) < n2 || this.mOrientationHelper.aac(child) < n2) {
                        this.recycleChildren(s, childCount - 1, i);
                        return;
                    }
                }
            }
            else {
                for (int j = 0; j < childCount; ++j) {
                    final View child2 = this.getChildAt(j);
                    if (this.mOrientationHelper.aai(child2) < n2 || this.mOrientationHelper.aac(child2) < n2) {
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
                    if (this.mOrientationHelper.aaj(child) > n || this.mOrientationHelper.aar(child) > n) {
                        this.recycleChildren(s, 0, i);
                        return;
                    }
                }
            }
            else {
                for (int j = childCount - 1; j >= 0; --j) {
                    final View child2 = this.getChildAt(j);
                    if (this.mOrientationHelper.aaj(child2) > n || this.mOrientationHelper.aar(child2) > n) {
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
        if (focusedChild != null && s2.ZX(focusedChild, e)) {
            s2.ZZ(focusedChild);
            return b;
        }
        if (this.mLastStackFromEnd != this.mStackFromEnd) {
            return false;
        }
        View view;
        if (!s2.Qr) {
            view = this.findReferenceChildClosestToStart(s, e);
        }
        else {
            view = this.findReferenceChildClosestToEnd(s, e);
        }
        if (view == null) {
            return false;
        }
        s2.ZW(view);
        if (!e.WN() && this.supportsPredictiveItemAnimations() && ((this.mOrientationHelper.aai(view) >= this.mOrientationHelper.aas() || this.mOrientationHelper.aaj(view) < this.mOrientationHelper.aak()) && b)) {
            int qq;
            if (!s2.Qr) {
                qq = this.mOrientationHelper.aak();
            }
            else {
                qq = this.mOrientationHelper.aas();
            }
            s2.Qq = qq;
        }
        return b;
    }
    
    private boolean updateAnchorFromPendingData(final e e, final S s) {
        final int mPendingScrollPosition = -1;
        final int mPendingScrollPositionOffset = -1 << -1;
        final boolean qr = true;
        boolean qr2 = false;
        if (e.WN() || this.mPendingScrollPosition == mPendingScrollPosition) {
            return false;
        }
        if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= e.getItemCount()) {
            this.mPendingScrollPosition = mPendingScrollPosition;
            this.mPendingScrollPositionOffset = mPendingScrollPositionOffset;
            return false;
        }
        s.mPosition = this.mPendingScrollPosition;
        if (this.mPendingSavedState != null && this.mPendingSavedState.aab()) {
            if (!(s.Qr = this.mPendingSavedState.Qy)) {
                s.Qq = this.mOrientationHelper.aak() + this.mPendingSavedState.Qx;
            }
            else {
                s.Qq = this.mOrientationHelper.aas() - this.mPendingSavedState.Qx;
            }
            return qr;
        }
        if (this.mPendingScrollPositionOffset != mPendingScrollPositionOffset) {
            s.Qr = this.mShouldReverseLayout;
            if (!this.mShouldReverseLayout) {
                s.Qq = this.mOrientationHelper.aak() + this.mPendingScrollPositionOffset;
            }
            else {
                s.Qq = this.mOrientationHelper.aas() - this.mPendingScrollPositionOffset;
            }
            return qr;
        }
        final View viewByPosition = this.findViewByPosition(this.mPendingScrollPosition);
        if (viewByPosition == null) {
            if (this.getChildCount() > 0) {
                if ((this.mPendingScrollPosition < this.getPosition(this.getChildAt(0)) && qr) == this.mShouldReverseLayout) {
                    qr2 = qr;
                }
                s.Qr = qr2;
            }
            s.ZY();
        }
        else {
            if (this.mOrientationHelper.aag(viewByPosition) > this.mOrientationHelper.aah()) {
                s.ZY();
                return qr;
            }
            if (this.mOrientationHelper.aai(viewByPosition) - this.mOrientationHelper.aak() < 0) {
                s.Qq = this.mOrientationHelper.aak();
                s.Qr = false;
                return qr;
            }
            if (this.mOrientationHelper.aas() - this.mOrientationHelper.aaj(viewByPosition) < 0) {
                s.Qq = this.mOrientationHelper.aas();
                return s.Qr = qr;
            }
            int aai;
            if (!s.Qr) {
                aai = this.mOrientationHelper.aai(viewByPosition);
            }
            else {
                aai = this.mOrientationHelper.aaj(viewByPosition) + this.mOrientationHelper.aap();
            }
            s.Qq = aai;
        }
        return qr;
    }
    
    private void updateAnchorInfoForLayout(final s s, final e e, final S s2) {
        int mPosition = 0;
        if (this.updateAnchorFromPendingData(e, s2)) {
            return;
        }
        if (!this.updateAnchorFromChildren(s, e, s2)) {
            s2.ZY();
            if (this.mStackFromEnd) {
                mPosition = e.getItemCount() - 1;
            }
            s2.mPosition = mPosition;
        }
    }
    
    private void updateLayoutState(final int ql, final int qj, final boolean b, final e e) {
        int qp = -1;
        int qp2 = 1;
        this.mLayoutState.Qo = this.resolveIsInfinite();
        this.mLayoutState.Qm = this.getExtraLayoutSpace(e);
        this.mLayoutState.Ql = ql;
        int qn;
        if (ql != qp2) {
            final View childClosestToStart = this.getChildClosestToStart();
            final R mLayoutState = this.mLayoutState;
            mLayoutState.Qm += this.mOrientationHelper.aak();
            final R mLayoutState2 = this.mLayoutState;
            if (this.mShouldReverseLayout) {
                qp = qp2;
            }
            mLayoutState2.Qp = qp;
            this.mLayoutState.Qk = this.getPosition(childClosestToStart) + this.mLayoutState.Qp;
            this.mLayoutState.mOffset = this.mOrientationHelper.aai(childClosestToStart);
            qn = -this.mOrientationHelper.aai(childClosestToStart) + this.mOrientationHelper.aak();
        }
        else {
            final R mLayoutState3 = this.mLayoutState;
            mLayoutState3.Qm += this.mOrientationHelper.aan();
            final View childClosestToEnd = this.getChildClosestToEnd();
            final R mLayoutState4 = this.mLayoutState;
            if (this.mShouldReverseLayout) {
                qp2 = qp;
            }
            mLayoutState4.Qp = qp2;
            this.mLayoutState.Qk = this.getPosition(childClosestToEnd) + this.mLayoutState.Qp;
            this.mLayoutState.mOffset = this.mOrientationHelper.aaj(childClosestToEnd);
            qn = this.mOrientationHelper.aaj(childClosestToEnd) - this.mOrientationHelper.aas();
        }
        this.mLayoutState.Qj = qj;
        if (b) {
            final R mLayoutState5 = this.mLayoutState;
            mLayoutState5.Qj -= qn;
        }
        this.mLayoutState.Qn = qn;
    }
    
    private void updateLayoutStateToFillEnd(final int qk, final int mOffset) {
        final boolean ql = true;
        this.mLayoutState.Qj = this.mOrientationHelper.aas() - mOffset;
        final R mLayoutState = this.mLayoutState;
        int qp;
        if (!this.mShouldReverseLayout) {
            qp = (ql ? 1 : 0);
        }
        else {
            qp = -1;
        }
        mLayoutState.Qp = qp;
        this.mLayoutState.Qk = qk;
        this.mLayoutState.Ql = (ql ? 1 : 0);
        this.mLayoutState.mOffset = mOffset;
        this.mLayoutState.Qn = -1 << -1;
    }
    
    private void updateLayoutStateToFillEnd(final S s) {
        this.updateLayoutStateToFillEnd(s.mPosition, s.Qq);
    }
    
    private void updateLayoutStateToFillStart(final int qk, final int mOffset) {
        final int ql = -1;
        this.mLayoutState.Qj = mOffset - this.mOrientationHelper.aak();
        this.mLayoutState.Qk = qk;
        final R mLayoutState = this.mLayoutState;
        int qp;
        if (!this.mShouldReverseLayout) {
            qp = ql;
        }
        else {
            qp = 1;
        }
        mLayoutState.Qp = qp;
        this.mLayoutState.Ql = ql;
        this.mLayoutState.mOffset = mOffset;
        this.mLayoutState.Qn = -1 << -1;
    }
    
    private void updateLayoutStateToFillStart(final S s) {
        this.updateLayoutStateToFillStart(s.mPosition, s.Qq);
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
        boolean qy;
        int n3;
        if (this.mPendingSavedState != null && this.mPendingSavedState.aab()) {
            qy = this.mPendingSavedState.Qy;
            n3 = this.mPendingSavedState.Qz;
        }
        else {
            this.resolveShouldLayoutReverse();
            final boolean mShouldReverseLayout = this.mShouldReverseLayout;
            if (this.mPendingScrollPosition != n2) {
                n3 = this.mPendingScrollPosition;
                qy = mShouldReverseLayout;
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
                qy = mShouldReverseLayout;
            }
        }
        int n5;
        if (!qy) {
            n5 = 1;
        }
        else {
            n5 = n2;
        }
        for (int n6 = 0; n6 < this.mInitialPrefetchItemCount && n3 >= 0 && n3 < n; n3 += n5, ++n6) {
            i.Yk(n3, 0);
        }
    }
    
    void collectPrefetchPositionsForLayoutState(final e e, final R r, final I i) {
        final int qk = r.Qk;
        if (qk >= 0 && qk < e.getItemCount()) {
            i.Yk(qk, Math.max(0, r.Qn));
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
            this.mOrientationHelper = U.aaq(this, this.mOrientation);
        }
    }
    
    int fill(final s s, final R r, final e e, final boolean b) {
        final int n = -1 << -1;
        final int qj = r.Qj;
        if (r.Qn != n) {
            if (r.Qj < 0) {
                r.Qn += r.Qj;
            }
            this.recycleByLayoutState(s, r);
        }
        int n2 = r.Qj + r.Qm;
        final T mLayoutChunkResult = this.mLayoutChunkResult;
        while (r.Qo || n2 > 0) {
            if (r.ZU(e)) {
                mLayoutChunkResult.resetInternal();
                this.layoutChunk(s, e, r, mLayoutChunkResult);
                if (!mLayoutChunkResult.mFinished) {
                    r.mOffset += mLayoutChunkResult.Qu * r.Ql;
                    if (mLayoutChunkResult.Qv || this.mLayoutState.Qh != null || !e.WN()) {
                        r.Qj -= mLayoutChunkResult.Qu;
                        n2 -= mLayoutChunkResult.Qu;
                    }
                    if (r.Qn != n) {
                        r.Qn += mLayoutChunkResult.Qu;
                        if (r.Qj < 0) {
                            r.Qn += r.Qj;
                        }
                        this.recycleByLayoutState(s, r);
                    }
                    if (!b) {
                        continue;
                    }
                    if (!mLayoutChunkResult.Qw) {
                        continue;
                    }
                }
            }
            return qj - r.Qj;
        }
        return qj - r.Qj;
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
            if (this.mOrientationHelper.aai(this.getChildAt(n)) >= this.mOrientationHelper.aak()) {
                n4 = 4161;
                n5 = 4097;
            }
            else {
                n4 = 16644;
                n5 = 16388;
            }
            View view;
            if (this.mOrientation != 0) {
                view = this.mVerticalBoundCheck.ZM(n, n2, n4, n5);
            }
            else {
                view = this.mHorizontalBoundCheck.ZM(n, n2, n4, n5);
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
            view = this.mVerticalBoundCheck.ZM(n, n2, n5, n4);
        }
        else {
            view = this.mHorizontalBoundCheck.ZM(n, n2, n5, n4);
        }
        return view;
    }
    
    View findReferenceChild(final s s, final e e, int i, final int n, final int n2) {
        View view = null;
        this.ensureLayoutState();
        final int aak = this.mOrientationHelper.aak();
        final int aas = this.mOrientationHelper.aas();
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
                if (!((i)child.getLayoutParams()).Xf()) {
                    if (this.mOrientationHelper.aai(child) < aas && this.mOrientationHelper.aaj(child) >= aak) {
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
        if (!e.WK()) {
            return 0;
        }
        return this.mOrientationHelper.aah();
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
        final View zr = r.ZR(s);
        if (zr != null) {
            final i i = (i)zr.getLayoutParams();
            if (r.Qh != null) {
                if (this.mShouldReverseLayout != (r.Ql == n && b)) {
                    this.addDisappearingView(zr, 0);
                }
                else {
                    this.addDisappearingView(zr);
                }
            }
            else if (this.mShouldReverseLayout != (r.Ql == n && b)) {
                this.addView(zr, 0);
            }
            else {
                this.addView(zr);
            }
            this.measureChildWithMargins(zr, 0, 0);
            t.Qu = this.mOrientationHelper.aag(zr);
            int n2;
            int mOffset;
            int n3;
            int n4;
            if (this.mOrientation != (b ? 1 : 0)) {
                n2 = this.getPaddingTop();
                mOffset = n2 + this.mOrientationHelper.aaf(zr);
                if (r.Ql != n) {
                    final int mOffset2 = r.mOffset;
                    n3 = r.mOffset + t.Qu;
                    n4 = mOffset2;
                }
                else {
                    final int mOffset3 = r.mOffset;
                    final int n5 = r.mOffset - t.Qu;
                    n3 = mOffset3;
                    n4 = n5;
                }
            }
            else {
                int paddingLeft;
                int n6;
                if (!this.isLayoutRTL()) {
                    paddingLeft = this.getPaddingLeft();
                    n6 = this.mOrientationHelper.aaf(zr) + paddingLeft;
                }
                else {
                    n6 = this.getWidth() - this.getPaddingRight();
                    paddingLeft = n6 - this.mOrientationHelper.aaf(zr);
                }
                if (r.Ql != n) {
                    n2 = r.mOffset;
                    mOffset = t.Qu + r.mOffset;
                    n3 = n6;
                    n4 = paddingLeft;
                }
                else {
                    mOffset = r.mOffset;
                    n2 = r.mOffset - t.Qu;
                    n3 = n6;
                    n4 = paddingLeft;
                }
            }
            this.layoutDecoratedWithMargins(zr, n4, n2, n3, mOffset);
            if (i.Xf() || i.Xe()) {
                t.Qv = b;
            }
            t.Qw = zr.hasFocusable();
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
        final int qn = -1 << -1;
        this.resolveShouldLayoutReverse();
        if (this.getChildCount() == 0) {
            return null;
        }
        final int convertFocusDirectionToLayoutDirection = this.convertFocusDirectionToLayoutDirection(n);
        if (convertFocusDirectionToLayoutDirection == qn) {
            return null;
        }
        this.ensureLayoutState();
        this.ensureLayoutState();
        this.updateLayoutState(convertFocusDirectionToLayoutDirection, (int)(this.mOrientationHelper.aah() * 0.33333334f), false, e);
        this.mLayoutState.Qn = qn;
        this.mLayoutState.Qg = false;
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
        final int qs = 1;
        int n = -1;
        if (this.mPendingSavedState != null || this.mPendingScrollPosition != n) {
            if (e.getItemCount() == 0) {
                this.removeAndRecycleAllViews(s);
                return;
            }
        }
        if (this.mPendingSavedState != null && this.mPendingSavedState.aab()) {
            this.mPendingScrollPosition = this.mPendingSavedState.Qz;
        }
        this.ensureLayoutState();
        this.mLayoutState.Qg = false;
        this.resolveShouldLayoutReverse();
        if (this.mAnchorInfo.Qs || this.mPendingScrollPosition != n || this.mPendingSavedState != null) {
            this.mAnchorInfo.reset();
            this.mAnchorInfo.Qr = (this.mShouldReverseLayout ^ this.mStackFromEnd);
            this.updateAnchorInfoForLayout(s, e, this.mAnchorInfo);
            this.mAnchorInfo.Qs = (qs != 0);
        }
        int extraLayoutSpace = this.getExtraLayoutSpace(e);
        int n2;
        if (this.mLayoutState.Qf < 0) {
            n2 = 0;
        }
        else {
            n2 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        int n3 = extraLayoutSpace + this.mOrientationHelper.aak();
        int n4 = n2 + this.mOrientationHelper.aan();
        if (e.WN() && this.mPendingScrollPosition != n && this.mPendingScrollPositionOffset != -1 << -1) {
            final View viewByPosition = this.findViewByPosition(this.mPendingScrollPosition);
            if (viewByPosition != null) {
                int n5;
                if (!this.mShouldReverseLayout) {
                    n5 = this.mPendingScrollPositionOffset - (this.mOrientationHelper.aai(viewByPosition) - this.mOrientationHelper.aak());
                }
                else {
                    n5 = this.mOrientationHelper.aas() - this.mOrientationHelper.aaj(viewByPosition) - this.mPendingScrollPositionOffset;
                }
                if (n5 <= 0) {
                    n4 -= n5;
                }
                else {
                    n3 += n5;
                }
            }
        }
        if (!this.mAnchorInfo.Qr) {
            if (!this.mShouldReverseLayout) {
                n = qs;
            }
        }
        else if (this.mShouldReverseLayout) {
            n = qs;
        }
        this.onAnchorReady(s, e, this.mAnchorInfo, n);
        this.detachAndScrapAttachedViews(s);
        this.mLayoutState.Qo = this.resolveIsInfinite();
        this.mLayoutState.Qi = e.WN();
        int n6;
        int n7;
        if (!this.mAnchorInfo.Qr) {
            this.updateLayoutStateToFillEnd(this.mAnchorInfo);
            this.mLayoutState.Qm = n4;
            this.fill(s, this.mLayoutState, e, false);
            n6 = this.mLayoutState.mOffset;
            final int qk = this.mLayoutState.Qk;
            if (this.mLayoutState.Qj > 0) {
                n3 += this.mLayoutState.Qj;
            }
            this.updateLayoutStateToFillStart(this.mAnchorInfo);
            this.mLayoutState.Qm = n3;
            final R mLayoutState = this.mLayoutState;
            mLayoutState.Qk += this.mLayoutState.Qp;
            this.fill(s, this.mLayoutState, e, false);
            n7 = this.mLayoutState.mOffset;
            if (this.mLayoutState.Qj > 0) {
                final int qj = this.mLayoutState.Qj;
                this.updateLayoutStateToFillEnd(qk, n6);
                this.mLayoutState.Qm = qj;
                this.fill(s, this.mLayoutState, e, false);
                n6 = this.mLayoutState.mOffset;
            }
        }
        else {
            this.updateLayoutStateToFillStart(this.mAnchorInfo);
            this.mLayoutState.Qm = n3;
            this.fill(s, this.mLayoutState, e, false);
            n7 = this.mLayoutState.mOffset;
            final int qk2 = this.mLayoutState.Qk;
            if (this.mLayoutState.Qj > 0) {
                n4 += this.mLayoutState.Qj;
            }
            this.updateLayoutStateToFillEnd(this.mAnchorInfo);
            this.mLayoutState.Qm = n4;
            final R mLayoutState2 = this.mLayoutState;
            mLayoutState2.Qk += this.mLayoutState.Qp;
            this.fill(s, this.mLayoutState, e, false);
            n6 = this.mLayoutState.mOffset;
            if (this.mLayoutState.Qj > 0) {
                final int qj2 = this.mLayoutState.Qj;
                this.updateLayoutStateToFillStart(qk2, n7);
                this.mLayoutState.Qm = qj2;
                this.fill(s, this.mLayoutState, e, false);
                n7 = this.mLayoutState.mOffset;
            }
        }
        if (this.getChildCount() > 0) {
            if (!(this.mShouldReverseLayout ^ this.mStackFromEnd)) {
                final int fixLayoutStartGap = this.fixLayoutStartGap(n7, s, e, qs != 0);
                final int n8 = n7 + fixLayoutStartGap;
                final int n9 = n6 + fixLayoutStartGap;
                final int fixLayoutEndGap = this.fixLayoutEndGap(n9, s, e, false);
                n7 = n8 + fixLayoutEndGap;
                n6 = n9 + fixLayoutEndGap;
            }
            else {
                final int fixLayoutEndGap2 = this.fixLayoutEndGap(n6, s, e, qs != 0);
                final int n10 = n7 + fixLayoutEndGap2;
                final int n11 = n6 + fixLayoutEndGap2;
                final int fixLayoutStartGap2 = this.fixLayoutStartGap(n10, s, e, false);
                n7 = n10 + fixLayoutStartGap2;
                n6 = n11 + fixLayoutStartGap2;
            }
        }
        this.layoutForPredictiveAnimations(s, e, n7, n6);
        if (e.WN()) {
            this.mAnchorInfo.reset();
        }
        else {
            this.mOrientationHelper.aau();
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
                linearLayoutManager$SavedState.aaa();
            }
            else {
                this.ensureLayoutState();
                if (!(linearLayoutManager$SavedState.Qy = (this.mLastStackFromEnd ^ this.mShouldReverseLayout))) {
                    final View childClosestToStart = this.getChildClosestToStart();
                    linearLayoutManager$SavedState.Qz = this.getPosition(childClosestToStart);
                    linearLayoutManager$SavedState.Qx = this.mOrientationHelper.aai(childClosestToStart) - this.mOrientationHelper.aak();
                }
                else {
                    final View childClosestToEnd = this.getChildClosestToEnd();
                    linearLayoutManager$SavedState.Qx = this.mOrientationHelper.aas() - this.mOrientationHelper.aaj(childClosestToEnd);
                    linearLayoutManager$SavedState.Qz = this.getPosition(childClosestToEnd);
                }
            }
            return (Parcelable)linearLayoutManager$SavedState;
        }
        return (Parcelable)new LinearLayoutManager$SavedState(this.mPendingSavedState);
    }
    
    boolean resolveIsInfinite() {
        boolean b = false;
        if (this.mOrientationHelper.aad() == 0 && this.mOrientationHelper.aal() == 0) {
            b = true;
        }
        return b;
    }
    
    int scrollBy(int qf, final s s, final e e) {
        final boolean qg = true;
        if (this.getChildCount() == 0 || qf == 0) {
            return 0;
        }
        this.mLayoutState.Qg = qg;
        this.ensureLayoutState();
        int n;
        if (qf <= 0) {
            n = -1;
        }
        else {
            n = (qg ? 1 : 0);
        }
        final int abs = Math.abs(qf);
        this.updateLayoutState(n, abs, qg, e);
        final int n2 = this.mLayoutState.Qn + this.fill(s, this.mLayoutState, e, false);
        if (n2 >= 0) {
            if (abs > n2) {
                qf = n * n2;
            }
            this.mOrientationHelper.aat(-qf);
            return this.mLayoutState.Qf = qf;
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
            this.mPendingSavedState.aaa();
        }
        this.requestLayout();
    }
    
    public void scrollToPositionWithOffset(final int mPendingScrollPosition, final int mPendingScrollPositionOffset) {
        this.mPendingScrollPosition = mPendingScrollPosition;
        this.mPendingScrollPositionOffset = mPendingScrollPositionOffset;
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.aaa();
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
        av.WW(n);
        this.startSmoothScroll(av);
    }
    
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }
}
