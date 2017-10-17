// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

final class PinItemDragListener$3 implements Runnable
{
    final /* synthetic */ PinItemDragListener this$0;
    
    PinItemDragListener$3(final PinItemDragListener this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.removeListener();
    }
}
