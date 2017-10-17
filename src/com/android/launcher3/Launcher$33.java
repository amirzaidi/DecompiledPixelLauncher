// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;

final class Launcher$33 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ ArrayList val$apps;
    
    Launcher$33(final Launcher this$0, final ArrayList val$apps) {
        this.this$0 = this$0;
        this.val$apps = val$apps;
    }
    
    public void run() {
        this.this$0.bindAppsUpdated(this.val$apps);
    }
}
