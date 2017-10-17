// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dynamicui;

import java.util.Arrays;

class ColorExtractionAlgorithm$TonalPalette
{
    final float[] h;
    final float[] l;
    final float maxHue;
    final float minHue;
    final float[] s;
    
    ColorExtractionAlgorithm$TonalPalette(final float[] h, final float[] s, final float[] l) {
        if (h.length != s.length || s.length != l.length) {
            throw new IllegalArgumentException("All arrays should have the same size. h: " + Arrays.toString(h) + " s: " + Arrays.toString(s) + " l: " + Arrays.toString(l));
        }
        this.h = h;
        this.s = s;
        this.l = l;
        float min = 1.0f / 0.0f;
        float max = -1.0f / 0.0f;
        for (int i = 0; i < h.length; ++i) {
            final float n = h[i];
            min = Math.min(n, min);
            max = Math.max(n, max);
        }
        this.minHue = min;
        this.maxHue = max;
    }
}
