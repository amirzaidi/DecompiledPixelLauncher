// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import java.util.Arrays;

class y implements I
{
    int Rc;
    int Rd;
    int[] Re;
    int mCount;
    
    void Zl(final RecyclerView recyclerView, final boolean mPrefetchMaxObservedInInitialPrefetch) {
        this.mCount = 0;
        if (this.Re != null) {
            Arrays.fill(this.Re, -1);
        }
        final p mLayout = recyclerView.mLayout;
        if (recyclerView.mAdapter != null && mLayout != null && mLayout.isItemPrefetchEnabled()) {
            if (!mPrefetchMaxObservedInInitialPrefetch) {
                if (!recyclerView.hasPendingAdapterUpdates()) {
                    mLayout.collectAdjacentPrefetchPositions(this.Rc, this.Rd, recyclerView.mState, this);
                }
            }
            else if (!recyclerView.mAdapterHelper.aap()) {
                mLayout.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
            }
            if (this.mCount > mLayout.mPrefetchMaxCountObserved) {
                mLayout.mPrefetchMaxCountObserved = this.mCount;
                mLayout.mPrefetchMaxObservedInInitialPrefetch = mPrefetchMaxObservedInInitialPrefetch;
                recyclerView.mRecycler.Yv();
            }
        }
    }
    
    public void Zm(final int n, final int n2) {
        if (n < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (n2 >= 0) {
            final int n3 = this.mCount * 2;
            if (this.Re != null) {
                if (n3 >= this.Re.length) {
                    final int[] re = this.Re;
                    System.arraycopy(re, 0, this.Re = new int[n3 * 2], 0, re.length);
                }
            }
            else {
                Arrays.fill(this.Re = new int[4], -1);
            }
            this.Re[n3] = n;
            this.Re[n3 + 1] = n2;
            ++this.mCount;
            return;
        }
        throw new IllegalArgumentException("Pixel distance must be non-negative");
    }
    
    void Zn(final int rc, final int rd) {
        this.Rc = rc;
        this.Rd = rd;
    }
    
    boolean Zo(final int n) {
        if (this.Re != null) {
            for (int n2 = this.mCount * 2, i = 0; i < n2; i += 2) {
                if (this.Re[i] == n) {
                    return true;
                }
            }
        }
        return false;
    }
    
    void Zp() {
        if (this.Re != null) {
            Arrays.fill(this.Re, -1);
        }
        this.mCount = 0;
    }
}
