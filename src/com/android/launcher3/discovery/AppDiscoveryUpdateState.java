// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.discovery;

public enum AppDiscoveryUpdateState
{
    END("END", n), 
    START("START", 0), 
    UPDATE("UPDATE", n2);
    
    static {
        final int n = 2;
        final int n2 = 1;
        final AppDiscoveryUpdateState[] $values = { AppDiscoveryUpdateState.START, null, null };
        $values[n2] = AppDiscoveryUpdateState.UPDATE;
        $values[n] = AppDiscoveryUpdateState.END;
        $VALUES = $values;
    }
    
    private AppDiscoveryUpdateState(final String s, final int n) {
    }
}
