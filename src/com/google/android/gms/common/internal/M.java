// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.util.Log;
import android.os.Looper;

public final class m
{
    public static void hA(final Object o) {
        if (o != null) {
            return;
        }
        throw new IllegalArgumentException("null reference");
    }
    
    public static void hy(final String s) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        final String value = String.valueOf(Thread.currentThread());
        final String value2 = String.valueOf(Looper.getMainLooper().getThread());
        Log.e("Asserts", new StringBuilder(String.valueOf(value).length() + 57 + String.valueOf(value2).length()).append("checkMainThread: current thread ").append(value).append(" IS NOT the main thread ").append(value2).append("!").toString());
        throw new IllegalStateException(s);
    }
    
    public static void hz(final String s) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            return;
        }
        final String value = String.valueOf(Thread.currentThread());
        final String value2 = String.valueOf(Looper.getMainLooper().getThread());
        Log.e("Asserts", new StringBuilder(String.valueOf(value).length() + 56 + String.valueOf(value2).length()).append("checkNotMainThread: current thread ").append(value).append(" IS the main thread ").append(value2).append("!").toString());
        throw new IllegalStateException(s);
    }
}
