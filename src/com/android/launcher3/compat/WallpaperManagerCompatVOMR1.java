// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.util.Log;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import android.graphics.Color;
import android.content.Context;
import android.app.WallpaperManager;
import java.lang.reflect.Method;

public class WallpaperManagerCompatVOMR1 extends WallpaperManagerCompat
{
    private static final String TAG = "WMCompatVOMR1";
    private final Method mAddOCLMethod;
    private final Class mOCLClass;
    private final Method mWCColorHintsMethod;
    private final Method mWCGetMethod;
    private final Method mWCGetPrimaryColorMethod;
    private final Method mWCGetSecondaryColorMethod;
    private final Method mWCGetTertiaryColorMethod;
    private final WallpaperManager mWm;
    
    WallpaperManagerCompatVOMR1(final Context context) {
        final int n = 1;
        this.mWm = (WallpaperManager)context.getSystemService((Class)WallpaperManager.class);
        this.mOCLClass = Class.forName("android.app.WallpaperManager$OnColorsChangedListener");
        final Class[] array = new Class[n];
        array[0] = this.mOCLClass;
        this.mAddOCLMethod = WallpaperManager.class.getDeclaredMethod("addOnColorsChangedListener", (Class<?>[])array);
        final Class[] array2 = new Class[n];
        array2[0] = Integer.TYPE;
        this.mWCGetMethod = WallpaperManager.class.getDeclaredMethod("getWallpaperColors", (Class<?>[])array2);
        final Class<?> returnType = this.mWCGetMethod.getReturnType();
        this.mWCGetPrimaryColorMethod = returnType.getDeclaredMethod("getPrimaryColor", (Class<?>[])new Class[0]);
        this.mWCGetSecondaryColorMethod = returnType.getDeclaredMethod("getSecondaryColor", (Class<?>[])new Class[0]);
        this.mWCGetTertiaryColorMethod = returnType.getDeclaredMethod("getTertiaryColor", (Class<?>[])new Class[0]);
        this.mWCColorHintsMethod = returnType.getDeclaredMethod("getColorHints", (Class<?>[])new Class[0]);
    }
    
    private WallpaperColorsCompat convertColorsObject(final Object o) {
        if (o == null) {
            return null;
        }
        final Color color = (Color)this.mWCGetPrimaryColorMethod.invoke(o, new Object[0]);
        final Color color2 = (Color)this.mWCGetSecondaryColorMethod.invoke(o, new Object[0]);
        final Color color3 = (Color)this.mWCGetTertiaryColorMethod.invoke(o, new Object[0]);
        int argb;
        if (color != null) {
            argb = color.toArgb();
        }
        else {
            argb = 0;
        }
        int argb2;
        if (color2 != null) {
            argb2 = color2.toArgb();
        }
        else {
            argb2 = 0;
        }
        int argb3;
        if (color3 != null) {
            argb3 = color3.toArgb();
        }
        else {
            argb3 = 0;
        }
        return new WallpaperColorsCompat(argb, argb2, argb3, (int)this.mWCColorHintsMethod.invoke(o, new Object[0]));
    }
    
    public void addOnColorsChangedListener(final WallpaperManagerCompat$OnColorsChangedListenerCompat wallpaperManagerCompat$OnColorsChangedListenerCompat) {
        final int n = 1;
        final ClassLoader classLoader = WallpaperManager.class.getClassLoader();
        final Class[] array = new Class[n];
        array[0] = this.mOCLClass;
        final Object proxyInstance = Proxy.newProxyInstance(classLoader, array, new WallpaperManagerCompatVOMR1$1(this, wallpaperManagerCompat$OnColorsChangedListenerCompat));
        try {
            final Method mAddOCLMethod = this.mAddOCLMethod;
            try {
                mAddOCLMethod.invoke(this.mWm, proxyInstance);
            }
            catch (Exception ex) {
                Log.e("WMCompatVOMR1", "Error calling wallpaper API", (Throwable)ex);
            }
        }
        catch (Exception ex2) {}
    }
    
    public WallpaperColorsCompat getWallpaperColors(final int n) {
        try {
            final Method mwcGetMethod = this.mWCGetMethod;
            try {
                final WallpaperManager mWm = this.mWm;
                final Object[] array = { null };
                try {
                    array[0] = n;
                    return this.convertColorsObject(mwcGetMethod.invoke(mWm, array));
                }
                catch (Exception ex) {
                    Log.e("WMCompatVOMR1", "Error calling wallpaper API", (Throwable)ex);
                    return null;
                }
            }
            catch (Exception ex2) {}
        }
        catch (Exception ex3) {}
    }
}
