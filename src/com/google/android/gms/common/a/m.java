// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import android.os.SystemClock;

public final class m implements a
{
    private static m kt;
    
    public static a mF() {
        synchronized (m.class) {
            if (m.kt == null) {
                m.kt = new m();
            }
            return m.kt;
        }
    }
    
    public long mg() {
        return System.currentTimeMillis();
    }
    
    public long mh() {
        return SystemClock.elapsedRealtime();
    }
}
