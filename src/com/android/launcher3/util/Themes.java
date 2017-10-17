// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.drawable.Drawable;
import android.content.res.TypedArray;
import android.content.Context;

public class Themes
{
    public static int getAlpha(final Context context, final int n) {
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[] { n });
        final float float1 = obtainStyledAttributes.getFloat(0, 0.0f);
        obtainStyledAttributes.recycle();
        return (int)(255.0f * float1 + 0.5f);
    }
    
    public static boolean getAttrBoolean(final Context context, final int n) {
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[] { n });
        final boolean boolean1 = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return boolean1;
    }
    
    public static int getAttrColor(final Context context, final int n) {
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[] { n });
        final int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        return color;
    }
    
    public static Drawable getAttrDrawable(final Context context, final int n) {
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[] { n });
        final Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }
    
    public static int getColorAccent(final Context context) {
        return getAttrColor(context, 16843829);
    }
    
    public static void setColorScaleOnMatrix(final int n, final ColorMatrix colorMatrix) {
        final float n2 = 255.0f;
        colorMatrix.setScale(Color.red(n) / n2, Color.green(n) / n2, Color.blue(n) / n2, Color.alpha(n) / n2);
    }
}
