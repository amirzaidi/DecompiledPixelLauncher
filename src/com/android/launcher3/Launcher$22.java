// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class Launcher$22 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    
    Launcher$22(final Launcher this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.mWidgetsView.requestFocus();
    }
}
