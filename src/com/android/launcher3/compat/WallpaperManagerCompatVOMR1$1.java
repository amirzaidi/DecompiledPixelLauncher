// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.util.Log;
import java.lang.reflect.Proxy;
import android.graphics.Color;
import android.content.Context;
import android.app.WallpaperManager;
import java.lang.reflect.Method;
import java.lang.reflect.InvocationHandler;

final class WallpaperManagerCompatVOMR1$1 implements InvocationHandler
{
    final /* synthetic */ WallpaperManagerCompatVOMR1 this$0;
    final /* synthetic */ WallpaperManagerCompat$OnColorsChangedListenerCompat val$listener;
    
    WallpaperManagerCompatVOMR1$1(final WallpaperManagerCompatVOMR1 this$0, final WallpaperManagerCompat$OnColorsChangedListenerCompat val$listener) {
        this.this$0 = this$0;
        this.val$listener = val$listener;
    }
    
    public Object invoke(final Object o, final Method method, final Object[] array) {
        final String name = method.getName();
        if ("onColorsChanged".equals(name)) {
            this.val$listener.onColorsChanged(this.this$0.convertColorsObject(array[0]), (int)array[1]);
        }
        else if ("toString".equals(name)) {
            return this.val$listener.toString();
        }
        return null;
    }
}
