// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dynamicui;

import java.util.Iterator;
import android.support.v7.a.d;
import java.util.List;
import android.support.v4.b.a;
import com.android.launcher3.Utilities;
import android.app.WallpaperManager;
import android.content.Context;

public class ExtractionUtils
{
    public static int getWallpaperId(final WallpaperManager wallpaperManager) {
        int wallpaperId;
        if (Utilities.ATLEAST_NOUGAT) {
            wallpaperId = wallpaperManager.getWallpaperId(1);
        }
        else {
            wallpaperId = -1;
        }
        return wallpaperId;
    }
    
    private static boolean hasWallpaperIdChanged(final Context context) {
        boolean b = false;
        if (!Utilities.ATLEAST_NOUGAT) {
            return false;
        }
        if (getWallpaperId(WallpaperManager.getInstance(context)) != Utilities.getPrefs(context).getInt("pref_wallpaperId", -1)) {
            b = true;
        }
        return b;
    }
    
    private static boolean isLegible(final int n, final int n2) {
        return a.arL(n, a.asb(n2, 255)) >= 2.0;
    }
    
    private static boolean isLegibleOnWallpaper(final int n, final List list) {
        boolean b = false;
        final Iterator<d> iterator = (Iterator<d>)list.iterator();
        int n2 = 0;
        int n3 = 0;
        while (iterator.hasNext()) {
            final d d = iterator.next();
            int n5;
            int n6;
            if (isLegible(n, d.adM())) {
                final int n4 = n3 + d.adK();
                n5 = n2;
                n6 = n4;
            }
            else {
                n5 = d.adK() + n2;
                n6 = n3;
            }
            n3 = n6;
            n2 = n5;
        }
        if (n3 > n2) {
            b = true;
        }
        return b;
    }
    
    public static boolean isSuperDark(final android.support.v7.a.a a) {
        return isLegibleOnWallpaper(-16777216, a.adr()) ^ true;
    }
    
    public static boolean isSuperLight(final android.support.v7.a.a a) {
        return isLegibleOnWallpaper(-1, a.adr()) ^ true;
    }
    
    public static void startColorExtractionService(final Context context) {
    }
    
    public static void startColorExtractionServiceIfNecessary(final Context context) {
    }
}
