// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

public abstract class Provider
{
    public static Provider of(final Object o) {
        return new Provider$1(o);
    }
    
    public abstract Object get();
}
