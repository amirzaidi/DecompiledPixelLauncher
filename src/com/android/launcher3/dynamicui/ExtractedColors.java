// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dynamicui;

import android.support.v7.a.a;
import android.util.Log;
import java.util.Iterator;
import com.android.launcher3.Utilities;
import android.content.Context;
import java.util.Arrays;
import java.util.ArrayList;

public class ExtractedColors
{
    private static final int[] DEFAULT_VALUES;
    private static final int VERSION;
    private final int[] mColors;
    private final ArrayList mListeners;
    
    static {
        final int version = 3;
        final int n = -16777216;
        VERSION = version;
        final int[] default_VALUES = { ExtractedColors.VERSION, 1090519039, n, 0, 0, 0 };
        default_VALUES[version] = -3355444;
        default_VALUES[5] = (default_VALUES[4] = n);
        DEFAULT_VALUES = default_VALUES;
    }
    
    public ExtractedColors() {
        this.mListeners = new ArrayList();
        this.mColors = Arrays.copyOf(ExtractedColors.DEFAULT_VALUES, ExtractedColors.DEFAULT_VALUES.length);
    }
    
    String encodeAsString() {
        final StringBuilder sb = new StringBuilder();
        final int[] mColors = this.mColors;
        for (int i = 0; i < mColors.length; ++i) {
            sb.append(mColors[i]).append(",");
        }
        return sb.toString();
    }
    
    public int getColor(final int n) {
        return this.mColors[n];
    }
    
    public void load(final Context context) {
        int i = 0;
        final String[] split = Utilities.getPrefs(context).getString("pref_extractedColors", ExtractedColors.VERSION + "").split(",");
        if (split.length == ExtractedColors.DEFAULT_VALUES.length && Integer.parseInt(split[0]) == ExtractedColors.VERSION) {
            while (i < this.mColors.length) {
                this.mColors[i] = Integer.parseInt(split[i]);
                ++i;
            }
        }
        else {
            ExtractionUtils.startColorExtractionService(context);
        }
    }
    
    public void notifyChange() {
        final Iterator iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onExtractedColorsChanged();
        }
    }
    
    public void setColorAtIndex(final int n, final int n2) {
        if (n > 0 && n < this.mColors.length) {
            this.mColors[n] = n2;
        }
        else {
            Log.e("ExtractedColors", "Attempted to set a color at an invalid index " + n);
        }
    }
    
    public void updateHotseatPalette(final a a) {
        final int n = 1;
        int n2;
        if (a != null && ExtractionUtils.isSuperLight(a)) {
            n2 = android.support.v4.b.a.asb(-16777216, 30);
        }
        else if (a != null && ExtractionUtils.isSuperDark(a)) {
            n2 = android.support.v4.b.a.asb(-1, 45);
        }
        else {
            n2 = ExtractedColors.DEFAULT_VALUES[n];
        }
        this.setColorAtIndex(n, n2);
    }
    
    public void updateWallpaperThemePalette(final a a) {
        final int n = 3;
        int adt = ExtractedColors.DEFAULT_VALUES[n];
        if (a != null) {
            adt = a.adt(adt);
        }
        this.setColorAtIndex(n, adt);
    }
}
