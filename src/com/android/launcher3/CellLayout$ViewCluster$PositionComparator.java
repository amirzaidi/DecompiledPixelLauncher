// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.CellAndSpan;
import android.view.View;
import java.util.Comparator;

class CellLayout$ViewCluster$PositionComparator implements Comparator
{
    final /* synthetic */ CellLayout$ViewCluster this$1;
    int whichEdge;
    
    CellLayout$ViewCluster$PositionComparator(final CellLayout$ViewCluster this$1) {
        this.this$1 = this$1;
        this.whichEdge = 0;
    }
    
    public int compare(final View view, final View view2) {
        final CellAndSpan cellAndSpan = (CellAndSpan)this.this$1.config.map.get((Object)view);
        final CellAndSpan cellAndSpan2 = (CellAndSpan)this.this$1.config.map.get((Object)view2);
        switch (this.whichEdge) {
            default: {
                return cellAndSpan.cellY - cellAndSpan2.cellY;
            }
            case 1: {
                return cellAndSpan2.spanX + cellAndSpan2.cellX - (cellAndSpan.spanX + cellAndSpan.cellX);
            }
            case 4: {
                return cellAndSpan.cellX - cellAndSpan2.cellX;
            }
            case 2: {
                return cellAndSpan2.spanY + cellAndSpan2.cellY - (cellAndSpan.spanY + cellAndSpan.cellY);
            }
        }
    }
}
