// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.io.Serializable;
import android.view.View;
import com.android.launcher3.util.CellAndSpan;

public final class CellLayout$CellInfo extends CellAndSpan
{
    public View cell;
    long container;
    long screenId;
    
    public CellLayout$CellInfo(final View cell, final ItemInfo itemInfo) {
        this.cellX = itemInfo.cellX;
        this.cellY = itemInfo.cellY;
        this.spanX = itemInfo.spanX;
        this.spanY = itemInfo.spanY;
        this.cell = cell;
        this.screenId = itemInfo.screenId;
        this.container = itemInfo.container;
    }
    
    public String toString() {
        final StringBuilder append = new StringBuilder().append("Cell[view=");
        Serializable class1;
        if (this.cell == null) {
            class1 = "null";
        }
        else {
            class1 = this.cell.getClass();
        }
        return append.append(class1).append(", x=").append(this.cellX).append(", y=").append(this.cellY).append("]").toString();
    }
}
