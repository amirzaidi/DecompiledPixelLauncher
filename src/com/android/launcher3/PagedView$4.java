// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class PagedView$4 implements Runnable
{
    final /* synthetic */ PagedView this$0;
    
    PagedView$4(final PagedView this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.onEndReordering();
        this.this$0.enableFreeScroll();
    }
}
