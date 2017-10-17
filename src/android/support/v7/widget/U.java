// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.View;
import android.support.v4.view.f;

class u extends h
{
    final /* synthetic */ RecyclerView QV;
    
    u(final RecyclerView qv) {
        this.QV = qv;
    }
    
    void YY() {
        if (RecyclerView.POST_UPDATES_ON_ANIMATION && this.QV.mHasFixedSize && this.QV.mIsAttached) {
            f.agG((View)this.QV, this.QV.mUpdateChildViewsRunnable);
        }
        else {
            this.QV.mAdapterUpdateDuringMeasure = true;
            this.QV.requestLayout();
        }
    }
    
    public void onChanged() {
        this.QV.assertNotInLayoutOrScroll(null);
        this.QV.mState.Qv = true;
        this.QV.setDataSetChangedAfterLayout();
        if (!this.QV.mAdapterHelper.aap()) {
            this.QV.requestLayout();
        }
    }
    
    public void onItemRangeChanged(final int n, final int n2, final Object o) {
        this.QV.assertNotInLayoutOrScroll(null);
        if (this.QV.mAdapterHelper.onItemRangeChanged(n, n2, o)) {
            this.YY();
        }
    }
}
