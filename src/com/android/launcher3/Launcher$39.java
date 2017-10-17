// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;

final class Launcher$39 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ ArrayList val$appInfos;
    
    Launcher$39(final Launcher this$0, final ArrayList val$appInfos) {
        this.this$0 = this$0;
        this.val$appInfos = val$appInfos;
    }
    
    public void run() {
        this.this$0.bindAppInfosRemoved(this.val$appInfos);
    }
}
