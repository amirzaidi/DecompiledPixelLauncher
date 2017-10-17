// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;

final class Launcher$25 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ ArrayList val$addAnimated;
    final /* synthetic */ ArrayList val$addNotAnimated;
    final /* synthetic */ ArrayList val$addedApps;
    final /* synthetic */ ArrayList val$newScreens;
    
    Launcher$25(final Launcher this$0, final ArrayList val$newScreens, final ArrayList val$addNotAnimated, final ArrayList val$addAnimated, final ArrayList val$addedApps) {
        this.this$0 = this$0;
        this.val$newScreens = val$newScreens;
        this.val$addNotAnimated = val$addNotAnimated;
        this.val$addAnimated = val$addAnimated;
        this.val$addedApps = val$addedApps;
    }
    
    public void run() {
        this.this$0.bindAppsAdded(this.val$newScreens, this.val$addNotAnimated, this.val$addAnimated, this.val$addedApps);
    }
}
