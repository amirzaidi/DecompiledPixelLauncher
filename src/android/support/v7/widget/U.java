// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class u extends h
{
    final /* synthetic */ RecyclerView Po;
    
    u(final RecyclerView po) {
        this.Po = po;
    }
    
    public void onChanged() {
        this.Po.assertNotInLayoutOrScroll(null);
        this.Po.mState.OP = true;
        this.Po.setDataSetChangedAfterLayout();
        if (!this.Po.mAdapterHelper.Zn()) {
            this.Po.requestLayout();
        }
    }
}
