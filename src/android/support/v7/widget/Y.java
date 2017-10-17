// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import java.util.Arrays;

class y implements I
{
    int Pv;
    int Pw;
    int[] Px;
    int mCount;
    
    void Yj(final RecyclerView recyclerView, final boolean mPrefetchMaxObservedInInitialPrefetch) {
        this.mCount = 0;
        if (this.Px != null) {
            Arrays.fill(this.Px, -1);
        }
        final p mLayout = recyclerView.mLayout;
        if (recyclerView.mAdapter != null && mLayout != null && mLayout.isItemPrefetchEnabled()) {
            if (!mPrefetchMaxObservedInInitialPrefetch) {
                if (!recyclerView.hasPendingAdapterUpdates()) {
                    mLayout.collectAdjacentPrefetchPositions(this.Pv, this.Pw, recyclerView.mState, this);
                }
            }
            else if (!recyclerView.mAdapterHelper.Zn()) {
                mLayout.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
            }
            if (this.mCount > mLayout.mPrefetchMaxCountObserved) {
                mLayout.mPrefetchMaxCountObserved = this.mCount;
                mLayout.mPrefetchMaxObservedInInitialPrefetch = mPrefetchMaxObservedInInitialPrefetch;
                recyclerView.mRecycler.Xv();
            }
        }
    }
    
    public void Yk(final int n, final int n2) {
        if (n < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (n2 >= 0) {
            final int n3 = this.mCount * 2;
            if (this.Px != null) {
                if (n3 >= this.Px.length) {
                    final int[] px = this.Px;
                    System.arraycopy(px, 0, this.Px = new int[n3 * 2], 0, px.length);
                }
            }
            else {
                Arrays.fill(this.Px = new int[4], -1);
            }
            this.Px[n3] = n;
            this.Px[n3 + 1] = n2;
            ++this.mCount;
            return;
        }
        throw new IllegalArgumentException("Pixel distance must be non-negative");
    }
    
    void Yl(final int pv, final int pw) {
        this.Pv = pv;
        this.Pw = pw;
    }
    
    boolean Ym(final int n) {
        if (this.Px != null) {
            for (int n2 = this.mCount * 2, i = 0; i < n2; i += 2) {
                if (this.Px[i] == n) {
                    return true;
                }
            }
        }
        return false;
    }
    
    void Yn() {
        if (this.Px != null) {
            Arrays.fill(this.Px, -1);
        }
        this.mCount = 0;
    }
}
