// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.UserHandle;
import java.util.HashSet;

final class Launcher$36 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ HashSet val$components;
    final /* synthetic */ HashSet val$packageNames;
    final /* synthetic */ UserHandle val$user;
    
    Launcher$36(final Launcher this$0, final HashSet val$packageNames, final HashSet val$components, final UserHandle val$user) {
        this.this$0 = this$0;
        this.val$packageNames = val$packageNames;
        this.val$components = val$components;
        this.val$user = val$user;
    }
    
    public void run() {
        this.this$0.bindWorkspaceComponentsRemoved(this.val$packageNames, this.val$components, this.val$user);
    }
}
