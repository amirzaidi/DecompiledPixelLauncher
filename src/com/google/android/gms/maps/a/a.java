// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.a;

public final class a
{
    public static Boolean KB(final byte b) {
        switch (b) {
            default: {
                return null;
            }
            case 1: {
                return Boolean.TRUE;
            }
            case 0: {
                return Boolean.FALSE;
            }
        }
    }
    
    public static byte KC(final Boolean b) {
        byte b2 = 0;
        if (b == null) {
            b2 = -1;
        }
        else if (b) {
            b2 = 1;
        }
        return b2;
    }
}
