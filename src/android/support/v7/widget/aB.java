// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class ab implements Runnable
{
    final /* synthetic */ FastScroller SP;
    
    ab(final FastScroller sp) {
        this.SP = sp;
    }
    
    public void run() {
        this.SP.hide(500);
    }
}
