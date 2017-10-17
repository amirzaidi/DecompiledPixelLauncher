// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import android.os.Build$VERSION;

public final class n
{
    public static boolean jS() {
        return jX(20);
    }
    
    public static boolean jT() {
        return jX(19);
    }
    
    public static boolean jU() {
        return jX(21);
    }
    
    public static boolean jV() {
        return jX(11);
    }
    
    public static boolean jW() {
        return jX(18);
    }
    
    private static boolean jX(final int n) {
        return Build$VERSION.SDK_INT >= n;
    }
    
    public static boolean jY() {
        return jX(12);
    }
    
    public static boolean jZ() {
        return jX(16);
    }
    
    public static boolean ka() {
        return jX(13);
    }
    
    public static boolean kb() {
        return jX(14);
    }
}
