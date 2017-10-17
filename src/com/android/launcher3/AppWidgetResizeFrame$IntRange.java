// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

class AppWidgetResizeFrame$IntRange
{
    public int end;
    public int start;
    
    public void applyDelta(final boolean b, final boolean b2, final int n, final AppWidgetResizeFrame$IntRange appWidgetResizeFrame$IntRange) {
        int start;
        if (b) {
            start = this.start + n;
        }
        else {
            start = this.start;
        }
        appWidgetResizeFrame$IntRange.start = start;
        int end;
        if (b2) {
            end = this.end + n;
        }
        else {
            end = this.end;
        }
        appWidgetResizeFrame$IntRange.end = end;
    }
    
    public int applyDeltaAndBound(final boolean b, final boolean b2, final int n, final int n2, final int end, final AppWidgetResizeFrame$IntRange appWidgetResizeFrame$IntRange) {
        this.applyDelta(b, b2, n, appWidgetResizeFrame$IntRange);
        if (appWidgetResizeFrame$IntRange.start < 0) {
            appWidgetResizeFrame$IntRange.start = 0;
        }
        if (appWidgetResizeFrame$IntRange.end > end) {
            appWidgetResizeFrame$IntRange.end = end;
        }
        if (appWidgetResizeFrame$IntRange.size() < n2) {
            if (b) {
                appWidgetResizeFrame$IntRange.start = appWidgetResizeFrame$IntRange.end - n2;
            }
            else if (b2) {
                appWidgetResizeFrame$IntRange.end = appWidgetResizeFrame$IntRange.start + n2;
            }
        }
        int n3;
        int n4;
        if (b2) {
            n3 = appWidgetResizeFrame$IntRange.size();
            n4 = this.size();
        }
        else {
            n3 = this.size();
            n4 = appWidgetResizeFrame$IntRange.size();
        }
        return n3 - n4;
    }
    
    public int clamp(final int n) {
        return Utilities.boundToRange(n, this.start, this.end);
    }
    
    public void set(final int start, final int end) {
        this.start = start;
        this.end = end;
    }
    
    public int size() {
        return this.end - this.start;
    }
}
