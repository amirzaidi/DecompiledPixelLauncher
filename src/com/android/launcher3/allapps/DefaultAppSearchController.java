// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

public class DefaultAppSearchController extends AllAppsSearchBarController
{
    public DefaultAppSearchAlgorithm onInitializeSearch() {
        return new DefaultAppSearchAlgorithm(this.mApps.getApps());
    }
}
