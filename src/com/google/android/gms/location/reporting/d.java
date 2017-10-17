// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

public final class d
{
    public static boolean GN(final int n) {
        boolean b = false;
        if (n > 0) {
            b = true;
        }
        return b;
    }
    
    public static int GO(final int n) {
        switch (n) {
            default: {
                int n2;
                if (!GN(n)) {
                    n2 = -3;
                }
                else {
                    n2 = 99;
                }
                return n2;
            }
            case -2:
            case -1:
            case 0:
            case 1: {
                return n;
            }
        }
    }
}
