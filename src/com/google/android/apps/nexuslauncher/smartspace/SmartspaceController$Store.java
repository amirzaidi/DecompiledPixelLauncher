// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

enum SmartspaceController$Store
{
    ee("CURRENT", n, "smartspace_current"), 
    ef("WEATHER", 0, "smartspace_weather");
    
    final String filename;
    
    static {
        final int n = 1;
        final SmartspaceController$Store[] eg2 = { SmartspaceController$Store.ef, null };
        eg2[n] = SmartspaceController$Store.ee;
        eg = eg2;
    }
    
    private SmartspaceController$Store(final String s, final int n, final String filename) {
        this.filename = filename;
    }
}
