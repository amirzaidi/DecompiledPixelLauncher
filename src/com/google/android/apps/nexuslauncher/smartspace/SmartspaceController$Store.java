// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

enum SmartspaceController$Store
{
    dV("CURRENT", n, "smartspace_current"), 
    dW("WEATHER", 0, "smartspace_weather");
    
    final String filename;
    
    static {
        final int n = 1;
        final SmartspaceController$Store[] dx = { SmartspaceController$Store.dW, null };
        dx[n] = SmartspaceController$Store.dV;
        dX = dx;
    }
    
    private SmartspaceController$Store(final String s, final int n, final String filename) {
        this.filename = filename;
    }
}
