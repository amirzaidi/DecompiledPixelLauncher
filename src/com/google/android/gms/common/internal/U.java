// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import java.util.Arrays;

public final class u
{
    public static boolean kv(final Object o, final Object o2) {
        boolean b = false;
        if (o != o2) {
            if (o == null) {
                return b;
            }
            if (!o.equals(o2)) {
                return b;
            }
        }
        b = true;
        return b;
    }
    
    public static int kw(final Object... array) {
        return Arrays.hashCode(array);
    }
    
    public static n kx(final Object o) {
        return new n(o, null);
    }
}
