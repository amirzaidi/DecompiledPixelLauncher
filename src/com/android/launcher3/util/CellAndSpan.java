// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

public class CellAndSpan
{
    public int cellX;
    public int cellY;
    public int spanX;
    public int spanY;
    
    public CellAndSpan() {
        final boolean b = true;
        final int n = -1;
        this.cellX = n;
        this.cellY = n;
        this.spanX = (b ? 1 : 0);
        this.spanY = (b ? 1 : 0);
    }
    
    public CellAndSpan(final int cellX, final int cellY, final int spanX, final int spanY) {
        final boolean b = true;
        final int n = -1;
        this.cellX = n;
        this.cellY = n;
        this.spanX = (b ? 1 : 0);
        this.spanY = (b ? 1 : 0);
        this.cellX = cellX;
        this.cellY = cellY;
        this.spanX = spanX;
        this.spanY = spanY;
    }
    
    public void copyFrom(final CellAndSpan cellAndSpan) {
        this.cellX = cellAndSpan.cellX;
        this.cellY = cellAndSpan.cellY;
        this.spanX = cellAndSpan.spanX;
        this.spanY = cellAndSpan.spanY;
    }
    
    public String toString() {
        return "(" + this.cellX + ", " + this.cellY + ": " + this.spanX + ", " + this.spanY + ")";
    }
}
