// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.Context;
import java.util.concurrent.Callable;

final class LauncherAppState$1 implements Callable
{
    final /* synthetic */ Context val$context;
    
    LauncherAppState$1(final Context val$context) {
        this.val$context = val$context;
    }
    
    public LauncherAppState call() {
        return LauncherAppState.getInstance(this.val$context);
    }
}
