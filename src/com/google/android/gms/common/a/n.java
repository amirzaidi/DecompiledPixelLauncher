// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import android.os.Build$VERSION;

public final class n
{
    public static boolean mG() {
        return mL(20);
    }
    
    public static boolean mH() {
        return mL(19);
    }
    
    public static boolean mI() {
        return mL(21);
    }
    
    public static boolean mJ() {
        return mL(11);
    }
    
    public static boolean mK() {
        return mL(18);
    }
    
    private static boolean mL(final int n) {
        return Build$VERSION.SDK_INT >= n;
    }
    
    public static boolean mM() {
        return mL(12);
    }
    
    public static boolean mN() {
        return mL(16);
    }
    
    public static boolean mO() {
        return mL(13);
    }
    
    public static boolean mP() {
        return mL(14);
    }
}
