// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import com.android.launcher3.InstallShortcutReceiver;
import android.content.Context;

final class ManagedProfileHeuristic$1 implements Runnable
{
    final /* synthetic */ Context val$context;
    
    ManagedProfileHeuristic$1(final Context val$context) {
        this.val$context = val$context;
    }
    
    public void run() {
        InstallShortcutReceiver.disableAndFlushInstallQueue(4, this.val$context);
    }
}
