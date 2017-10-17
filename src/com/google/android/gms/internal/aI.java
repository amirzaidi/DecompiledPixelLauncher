// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public class ai
{
    public static long ud(final long n, final long n2) {
        final long n3 = Long.MAX_VALUE;
        int n4;
        if (n < 0L) {
            n4 = 1;
        }
        else {
            n4 = 0;
        }
        if (n4 == 0) {
            return n % n2;
        }
        return (n3 % n2 + 1L + (n & n3) % n2) % n2;
    }
}
