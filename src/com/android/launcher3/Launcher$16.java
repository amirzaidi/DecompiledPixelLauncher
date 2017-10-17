// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class Launcher$16 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    
    Launcher$16(final Launcher this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        if (this.this$0.mWorkspace != null) {
            this.this$0.mWorkspace.moveToDefaultScreen(true);
        }
    }
}
