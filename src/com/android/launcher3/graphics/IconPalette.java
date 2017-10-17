// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.content.Context;
import android.support.v4.b.a;
import com.android.launcher3.util.Themes;
import android.graphics.ColorMatrix;
import android.graphics.Color;
import android.graphics.ColorMatrixColorFilter;

public class IconPalette
{
    public static final IconPalette FOLDER_ICON_PALETTE;
    public final int backgroundColor;
    public final ColorMatrixColorFilter backgroundColorMatrixFilter;
    public final int dominantColor;
    public final ColorMatrixColorFilter saturatedBackgroundColorMatrixFilter;
    public final int secondaryColor;
    public final int textColor;
    
    static {
        FOLDER_ICON_PALETTE = new IconPalette(Color.parseColor("#BDC1C6"));
    }
    
    private IconPalette(final int dominantColor) {
        this.dominantColor = dominantColor;
        this.backgroundColor = this.dominantColor;
        final ColorMatrix colorMatrix = new ColorMatrix();
        Themes.setColorScaleOnMatrix(this.backgroundColor, colorMatrix);
        this.backgroundColorMatrixFilter = new ColorMatrixColorFilter(colorMatrix);
        Themes.setColorScaleOnMatrix(getMutedColor(this.dominantColor, 0.54f), colorMatrix);
        this.saturatedBackgroundColorMatrixFilter = new ColorMatrixColorFilter(colorMatrix);
        this.textColor = getTextColorForBackground(this.backgroundColor);
        this.secondaryColor = getLowContrastColor(this.backgroundColor);
    }
    
    private static int ensureTextContrast(final int n, final int n2) {
        return findContrastColor(n, n2, true, 4.5);
    }
    
    private static int findContrastColor(final int n, int n2, final boolean b, final double n3) {
        int n4;
        if (b) {
            n4 = n;
        }
        else {
            n4 = n2;
        }
        if (!b) {
            n2 = n;
        }
        if (a.aqN(n4, n2) >= n3) {
            return n;
        }
        final double[] array = new double[3];
        int n5;
        if (b) {
            n5 = n4;
        }
        else {
            n5 = n2;
        }
        a.ara(n5, array);
        double n6 = 0.0;
        double n7 = array[0];
        final double n8 = array[1];
        final double n9 = array[2];
        int n10 = 0;
        int aqS = n2;
        int aqS2 = n4;
        while (n10 < 15 && n7 - n6 > 1.0E-5) {
            double n11 = (n6 + n7) / 2.0;
            if (b) {
                aqS2 = a.aqS(n11, n8, n9);
            }
            else {
                aqS = a.aqS(n11, n8, n9);
            }
            double n13;
            if (a.aqN(aqS2, aqS) > n3) {
                final double n12 = n7;
                n13 = n11;
                n11 = n12;
            }
            else {
                n13 = n6;
            }
            ++n10;
            n6 = n13;
            n7 = n11;
        }
        return a.aqS(n6, n8, n9);
    }
    
    public static IconPalette fromDominantColor(final int n) {
        return new IconPalette(n);
    }
    
    private static int getLighterOrDarkerVersionOfColor(final int n, final float n2) {
        final int n3 = -16777216;
        int n4 = -1;
        final int arf = a.arf(n4, n, n2);
        final int arf2 = a.arf(n3, n, n2);
        if (arf >= 0) {
            n4 = a.arc(n4, arf);
        }
        else if (arf2 >= 0) {
            n4 = a.arc(n3, arf2);
        }
        return a.arg(n4, n);
    }
    
    private static int getLowContrastColor(final int n) {
        return getLighterOrDarkerVersionOfColor(n, 1.5f);
    }
    
    private static int getMutedColor(final int n, final float n2) {
        return a.arg(a.arc(-1, (int)(255.0f * n2)), n);
    }
    
    private static int getTextColorForBackground(final int n) {
        return getLighterOrDarkerVersionOfColor(n, 4.5f);
    }
    
    private static int resolveColor(final Context context, final int n) {
        if (n == 0) {
            return context.getColor(2131361825);
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
