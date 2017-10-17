// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import android.os.SystemClock;

public final class m implements a
{
    private static m hB;
    
    public static a jR() {
        synchronized (m.class) {
            if (m.hB == null) {
                m.hB = new m();
            }
            return m.hB;
        }
    }
    
    public long js() {
        return System.currentTimeMillis();
    }
    
    public long jt() {
        return SystemClock.elapsedRealtime();
    }
}
