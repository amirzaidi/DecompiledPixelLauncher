// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dynamicui;

import android.support.v7.a.a;
import android.util.Log;
import com.android.launcher3.Utilities;
import android.content.Context;

public class ExtractedColors
{
    private int[] mColors;
    
    public ExtractedColors() {
        (this.mColors = new int[3])[0] = 1;
    }
    
    void decodeFromString(final String s) {
        final String[] split = s.split(",");
        this.mColors = new int[split.length];
        for (int i = 0; i < this.mColors.length; ++i) {
            this.mColors[i] = Integer.parseInt(split[i]);
        }
    }
    
    String encodeAsString() {
        final StringBuilder sb = new StringBuilder();
        final int[] mColors = this.mColors;
        for (int i = 0; i < mColors.length; ++i) {
            sb.append(mColors[i]).append(",");
        }
        return sb.toString();
    }
    
    public int getColor(final int n, final int n2) {
        if (n > 0 && n < this.mColors.length) {
            return this.mColors[n];
        }
        return n2;
    }
    
    public void load(final Context context) {
        this.decodeFromString(Utilities.getPrefs(context).getString("pref_extractedColors", "1"));
        if (this.mColors[0] != 1) {
            ExtractionUtils.startColorExtractionService(context);
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
        final int n = -1;
        int n2;
        if (a != null && ExtractionUtils.isSuperLight(a)) {
            n2 = android.support.v4.b.a.arc(-16777216, 30);
        }
        else if (a != null && ExtractionUtils.isSuperDark(a)) {
            n2 = android.support.v4.b.a.arc(n, 45);
        }
        else {
            n2 = android.support.v4.b.a.arc(n, 63);
        }
        this.setColorAtIndex(1, n2);
    }
}
