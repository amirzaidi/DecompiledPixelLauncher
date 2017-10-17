// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.ViewGroup$LayoutParams;
import android.util.AttributeSet;
import android.content.Context;
import android.view.ViewGroup$MarginLayoutParams;

public class CellLayout$LayoutParams extends ViewGroup$MarginLayoutParams
{
    public boolean canReorder;
    public int cellHSpan;
    public int cellVSpan;
    public int cellX;
    public int cellY;
    boolean dropped;
    public boolean isFullscreen;
    public boolean isLockedToGrid;
    public int tmpCellX;
    public int tmpCellY;
    public boolean useTmpCoords;
    public int x;
    public int y;
    
    public CellLayout$LayoutParams(final int cellX, final int cellY, final int cellHSpan, final int cellVSpan) {
        final boolean b = true;
        final int n = -1;
        super(n, n);
        this.isLockedToGrid = b;
        this.isFullscreen = false;
        this.canReorder = b;
        this.cellX = cellX;
        this.cellY = cellY;
        this.cellHSpan = cellHSpan;
        this.cellVSpan = cellVSpan;
    }
    
    public CellLayout$LayoutParams(final Context context, final AttributeSet set) {
        final boolean b = true;
        super(context, set);
        this.isLockedToGrid = b;
        this.isFullscreen = false;
        this.canReorder = b;
        this.cellHSpan = (b ? 1 : 0);
        this.cellVSpan = (b ? 1 : 0);
    }
    
    public CellLayout$LayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        final boolean b = true;
        super(viewGroup$LayoutParams);
        this.isLockedToGrid = b;
        this.isFullscreen = false;
        this.canReorder = b;
        this.cellHSpan = (b ? 1 : 0);
        this.cellVSpan = (b ? 1 : 0);
    }
    
    public int getHeight() {
        return this.height;
    }
    
    public int getWidth() {
        return this.width;
    }
    
    public int getX() {
        return this.x;
    }
    
    public int getY() {
        return this.y;
    }
    
    public void setHeight(final int height) {
        this.height = height;
    }
    
    public void setWidth(final int width) {
        this.width = width;
    }
    
    public void setX(final int x) {
        this.x = x;
    }
    
    public void setY(final int y) {
        this.y = y;
    }
    
    public void setup(final int n, final int n2, final boolean b, final int n3) {
        final float n4 = 1.0f;
        this.setup(n, n2, b, n3, n4, n4);
    }
    
    public void setup(final int n, final int n2, final boolean b, final int n3, final float n4, final float n5) {
        if (this.isLockedToGrid) {
            final int cellHSpan = this.cellHSpan;
            final int cellVSpan = this.cellVSpan;
            int n6;
            if (this.useTmpCoords) {
                n6 = this.tmpCellX;
            }
            else {
                n6 = this.cellX;
            }
            int n7;
            if (this.useTmpCoords) {
                n7 = this.tmpCellY;
            }
            else {
                n7 = this.cellY;
            }
            if (b) {
                n6 = n3 - n6 - this.cellHSpan;
            }
            this.width = (int)(cellHSpan * n / n4 - this.leftMargin - this.rightMargin);
            this.height = (int)(cellVSpan * n2 / n5 - this.topMargin - this.bottomMargin);
            this.x = n6 * n + this.leftMargin;
            this.y = n7 * n2 + this.topMargin;
        }
    }
    
    public String toString() {
        return "(" + this.cellX + ", " + this.cellY + ")";
    }
}
