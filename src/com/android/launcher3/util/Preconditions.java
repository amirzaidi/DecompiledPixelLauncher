// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.os.Looper;

public class Preconditions
{
    public static void assertNonUiThread() {
    }
    
    public static void assertNotNull(final Object o) {
    }
    
    public static void assertUIThread() {
    }
    
    public static void assertWorkerThread() {
    }
    
    private static boolean isSameLooper(final Looper looper) {
        return Looper.myLooper() == looper;
    }
}
