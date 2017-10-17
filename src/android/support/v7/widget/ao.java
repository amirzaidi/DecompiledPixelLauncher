// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class ao extends m
{
    final /* synthetic */ FastScroller TN;
    
    ao(final FastScroller tn) {
        this.TN = tn;
    }
    
    public void onScrolled(final RecyclerView recyclerView, final int n, final int n2) {
        this.TN.abM(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
    }
}
