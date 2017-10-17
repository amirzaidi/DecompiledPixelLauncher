// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class ao extends m
{
    final /* synthetic */ FastScroller Se;
    
    ao(final FastScroller se) {
        this.Se = se;
    }
    
    public void onScrolled(final RecyclerView recyclerView, final int n, final int n2) {
        this.Se.aaK(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
    }
}
