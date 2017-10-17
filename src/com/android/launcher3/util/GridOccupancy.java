// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import com.android.launcher3.ItemInfo;
import android.graphics.Rect;
import java.lang.reflect.Array;

public class GridOccupancy
{
    public final boolean[][] cells;
    private final int mCountX;
    private final int mCountY;
    
    public GridOccupancy(final int mCountX, final int mCountY) {
        this.mCountX = mCountX;
        this.mCountY = mCountY;
        this.cells = (boolean[][])Array.newInstance(Boolean.TYPE, mCountX, mCountY);
    }
    
    public void clear() {
        this.markCells(0, 0, this.mCountX, this.mCountY, false);
    }
    
    public void copyTo(final GridOccupancy gridOccupancy) {
        for (int i = 0; i < this.mCountX; ++i) {
            for (int j = 0; j < this.mCountY; ++j) {
                gridOccupancy.cells[i][j] = this.cells[i][j];
            }
        }
    }
    
    public boolean findVacantCell(final int[] array, final int n, final int n2) {
        final int n3 = 1;
        for (int n4 = 0; n4 + n2 <= this.mCountY; ++n4) {
            for (int n5 = 0; n5 + n <= this.mCountX; ++n5) {
                boolean b = this.cells[n5][n4] ^ true;
            Label_0127:
                for (int i = n5; i < n5 + n; ++i) {
                    for (int j = n4; j < n4 + n2; ++j) {
                        b = (b && (this.cells[i][j] ^ true));
                        if (!b) {
                            break Label_0127;
                        }
                    }
                }
                if (b) {
                    array[0] = n5;
                    array[n3] = n4;
                    return n3 != 0;
                }
            }
        }
        return false;
    }
    
    public boolean isRegionVacant(int i, final int n, final int n2, final int n3) {
        final int n4 = i + n2 - 1;
        final int n5 = n + n3 - 1;
        if (i >= 0 && n >= 0 && n4 < this.mCountX && n5 < this.mCountY) {
            while (i <= n4) {
                for (int j = n; j <= n5; ++j) {
                    if (this.cells[i][j]) {
                        return false;
                    }
                }
                ++i;
            }
            return true;
        }
        return false;
    }
    
    public void markCells(final int n, final int n2, final int n3, final int n4, final boolean b) {
        if (n < 0 || n2 < 0) {
            return;
        }
        for (int n5 = n; n5 < n + n3 && n5 < this.mCountX; ++n5) {
            for (int n6 = n2; n6 < n2 + n4 && n6 < this.mCountY; ++n6) {
                this.cells[n5][n6] = b;
            }
        }
    }
    
    public void markCells(final Rect rect, final boolean b) {
        this.markCells(rect.left, rect.top, rect.width(), rect.height(), b);
    }
    
    public void markCells(final ItemInfo itemInfo, final boolean b) {
        this.markCells(itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY, b);
    }
    
    public void markCells(final CellAndSpan cellAndSpan, final boolean b) {
        this.markCells(cellAndSpan.cellX, cellAndSpan.cellY, cellAndSpan.spanX, cellAndSpan.spanY, b);
    }
}
