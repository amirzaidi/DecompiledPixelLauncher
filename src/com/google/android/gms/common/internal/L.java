// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.text.TextUtils;

public final class l
{
    public static Object ho(final Object o, final Object o2) {
        if (o != null) {
            return o;
        }
        throw new NullPointerException(String.valueOf(o2));
    }
    
    public static String hp(final String s, final Object o) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            return s;
        }
        throw new IllegalArgumentException(String.valueOf(o));
    }
    
    public static void hq(final boolean b, final Object o) {
        if (b) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(o));
    }
    
    public static String hr(final String s) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            return s;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }
    
    public static void hs(final boolean b) {
        if (b) {
            return;
        }
        throw new IllegalStateException();
    }
    
    public static Object ht(final Object o) {
        if (o != null) {
            return o;
        }
        throw new NullPointerException("null reference");
    }
    
    public static void hu(final boolean b, final String s, final Object... array) {
        if (b) {
            return;
        }
        throw new IllegalArgumentException(String.format(s, array));
    }
    
    public static void hv(final boolean b, final Object o) {
        if (b) {
            return;
        }
        throw new IllegalStateException(String.valueOf(o));
    }
    
    public static void hw(final boolean b, final String s, final Object... array) {
        if (b) {
            return;
        }
        throw new IllegalStateException(String.format(s, array));
    }
    
    public static void hx(final boolean b) {
        if (b) {
            return;
        }
        throw new IllegalArgumentException();
    }
}
