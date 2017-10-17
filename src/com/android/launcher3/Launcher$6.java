// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class Launcher$6 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ int val$resultCode;
    
    Launcher$6(final Launcher this$0, final int val$resultCode) {
        this.this$0 = this$0;
        this.val$resultCode = val$resultCode;
    }
    
    public void run() {
        boolean b = false;
        final Launcher this$0 = this.this$0;
        if (this.val$resultCode != 0) {
            b = true;
        }
        this$0.exitSpringLoadedDragModeDelayed(b, 500, null);
    }
}
