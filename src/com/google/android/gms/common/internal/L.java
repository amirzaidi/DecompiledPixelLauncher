// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.text.TextUtils;

public final class l
{
    public static Object kc(final Object o, final Object o2) {
        if (o != null) {
            return o;
        }
        throw new NullPointerException(String.valueOf(o2));
    }
    
    public static String kd(final String s, final Object o) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            return s;
        }
        throw new IllegalArgumentException(String.valueOf(o));
    }
    
    public static void ke(final boolean b, final Object o) {
        if (b) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(o));
    }
    
    public static String kf(final String s) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            return s;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }
    
    public static void kg(final boolean b) {
        if (b) {
            return;
        }
        throw new IllegalStateException();
    }
    
    public static Object kh(final Object o) {
        if (o != null) {
            return o;
        }
        throw new NullPointerException("null reference");
    }
    
    public static void ki(final boolean b, final String s, final Object... array) {
        if (b) {
            return;
        }
        throw new IllegalArgumentException(String.format(s, array));
    }
    
    public static void kj(final boolean b, final Object o) {
        if (b) {
            return;
        }
        throw new IllegalStateException(String.valueOf(o));
    }
    
    public static void kk(final boolean b, final String s, final Object... array) {
        if (b) {
            return;
        }
        throw new IllegalStateException(String.format(s, array));
    }
    
    public static void kl(final boolean b) {
        if (b) {
            return;
        }
        throw new IllegalArgumentException();
    }
}
