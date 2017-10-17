// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

final class BaseItemDragListener$1 implements Runnable
{
    final /* synthetic */ BaseItemDragListener this$0;
    
    BaseItemDragListener$1(final BaseItemDragListener this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.removeListener();
    }
}
