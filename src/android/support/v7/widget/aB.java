// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class ab implements Runnable
{
    final /* synthetic */ FastScroller Rg;
    
    ab(final FastScroller rg) {
        this.Rg = rg;
    }
    
    public void run() {
        this.Rg.hide(500);
    }
}
