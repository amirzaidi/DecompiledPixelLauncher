// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.Color;
import android.content.Context;
import android.content.res.Resources;
import android.support.v4.b.a;
import com.android.launcher3.util.Themes;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;

public class IconPalette
{
    private static IconPalette sBadgePalette;
    private static IconPalette sFolderBadgePalette;
    public final int backgroundColor;
    public final ColorMatrixColorFilter backgroundColorMatrixFilter;
    public final int dominantColor;
    public final ColorMatrixColorFilter saturatedBackgroundColorMatrixFilter;
    public final int secondaryColor;
    public final int textColor;
    
    private IconPalette(final int dominantColor, final boolean b) {
        this.dominantColor = dominantColor;
        int backgroundColor;
        if (b) {
            backgroundColor = getMutedColor(this.dominantColor, 0.87f);
        }
        else {
            backgroundColor = this.dominantColor;
        }
        this.backgroundColor = backgroundColor;
        final ColorMatrix colorMatrix = new ColorMatrix();
        Themes.setColorScaleOnMatrix(this.backgroundColor, colorMatrix);
        this.backgroundColorMatrixFilter = new ColorMatrixColorFilter(colorMatrix);
        if (!b) {
            this.saturatedBackgroundColorMatrixFilter = this.backgroundColorMatrixFilter;
        }
        else {
            Themes.setColorScaleOnMatrix(getMutedColor(this.dominantColor, 0.54f), colorMatrix);
            this.saturatedBackgroundColorMatrixFilter = new ColorMatrixColorFilter(colorMatrix);
        }
        this.textColor = getTextColorForBackground(this.backgroundColor);
        this.secondaryColor = getLowContrastColor(this.backgroundColor);
    }
    
    private static int ensureTextContrast(final int n, final int n2) {
        return findContrastColor(n, n2, 4.5);
    }
    
    private static int findContrastColor(final int n, final int n2, final double n3) {
        if (a.arL(n, n2) >= n3) {
            return n;
        }
        final double[] array = new double[3];
        a.arY(n2, array);
        final double n4 = array[0];
        a.arY(n, array);
        double n5 = array[0];
        final boolean b = n4 < 50.0 && true;
        double n6;
        if (b) {
            n6 = n5;
        }
        else {
            n6 = 0.0;
        }
        if (b) {
            n5 = 100.0;
        }
        final double n7 = array[1];
        final double n8 = array[2];
        int n9 = 0;
        double n11;
        double n12;
        for (double n10 = n5; n9 < 15 && n10 - n6 > 1.0E-5; ++n9, n6 = n12, n10 = n11) {
            n11 = (n6 + n10) / 2.0;
            if (a.arL(a.arQ(n11, n7, n8), n2) > n3) {
                if (b) {
                    n12 = n6;
                }
                else {
                    final double n13 = n10;
                    n12 = n11;
                    n11 = n13;
                }
            }
            else if (b) {
                final double n14 = n10;
                n12 = n11;
                n11 = n14;
            }
            else {
                n12 = n6;
            }
        }
        return a.arQ(n6, n7, n8);
    }
    
    public static IconPalette fromDominantColor(final int n, final boolean b) {
        return new IconPalette(n, b);
    }
    
    public static IconPalette getBadgePalette(final Resources resources) {
        final int color = resources.getColor(2131361821);
        if (color == 0) {
            return null;
        }
        if (IconPalette.sBadgePalette == null) {
            IconPalette.sBadgePalette = fromDominantColor(color, false);
        }
        return IconPalette.sBadgePalette;
    }
    
    public static IconPalette getFolderBadgePalette(final Resources resources) {
        if (IconPalette.sFolderBadgePalette == null) {
            IconPalette.sFolderBadgePalette = fromDominantColor(resources.getColor(2131361822), false);
        }
        return IconPalette.sFolderBadgePalette;
    }
    
    private static int getLighterOrDarkerVersionOfColor(final int n, final float n2) {
        final int n3 = -16777216;
        int n4 = -1;
        final int ase = a.ase(n4, n, n2);
        final int ase2 = a.ase(n3, n, n2);
        if (ase >= 0) {
            n4 = a.asb(n4, ase);
        }
        else if (ase2 >= 0) {
            n4 = a.asb(n3, ase2);
        }
        return a.asf(n4, n);
    }
    
    private static int getLowContrastColor(final int n) {
        return getLighterOrDarkerVersionOfColor(n, 1.5f);
    }
    
    private static int getMutedColor(final int n, final float n2) {
        return a.asf(a.asb(-1, (int)(255.0f * n2)), n);
    }
    
    private static int getTextColorForBackground(final int n) {
        return getLighterOrDarkerVersionOfColor(n, 4.5f);
    }
    
    private static int resolveColor(final Context context, final int n) {
        if (n == 0) {
            return context.getColor(2131361820);
        }
        return n;
    }
    
    public static int resolveContrastColor(final Context context, final int n, final int n2) {
        return ensureTextContrast(resolveColor(context, n), n2);
    }
    
    public int getPreloadProgressColor(final Context context) {
        final int n = 2;
        final int dominantColor = this.dominantColor;
        final float[] array = new float[3];
        Color.colorToHSV(dominantColor, array);
        int n2;
        if (array[1] < 0.2f) {
            n2 = Themes.getColorAccent(context);
        }
        else {
            array[n] = Math.max(0.6f, array[n]);
            n2 = Color.HSVToColor(array);
        }
        return n2;
    }
}
