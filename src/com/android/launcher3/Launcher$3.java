// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class Launcher$3 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    
    Launcher$3(final Launcher this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.bindAllApplications(this.this$0.mTmpAppsList);
        this.this$0.mTmpAppsList = null;
    }
}
