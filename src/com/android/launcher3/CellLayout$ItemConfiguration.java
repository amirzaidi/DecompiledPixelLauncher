// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.Iterator;
import android.graphics.Rect;
import android.view.View;
import java.util.HashMap;
import java.util.ArrayList;
import com.android.launcher3.util.CellAndSpan;

class CellLayout$ItemConfiguration extends CellAndSpan
{
    ArrayList intersectingViews;
    boolean isSolution;
    HashMap map;
    private HashMap savedMap;
    ArrayList sortedViews;
    
    private CellLayout$ItemConfiguration() {
        this.map = new HashMap();
        this.savedMap = new HashMap();
        this.sortedViews = new ArrayList();
        this.isSolution = false;
    }
    
    void add(final View view, final CellAndSpan cellAndSpan) {
        this.map.put(view, cellAndSpan);
        this.savedMap.put(view, new CellAndSpan());
        this.sortedViews.add(view);
    }
    
    int area() {
        return this.spanX * this.spanY;
    }
    
    void getBoundingRectForViews(final ArrayList list, final Rect rect) {
        final boolean b = true;
        final float n = Float.MIN_VALUE;
        final Iterator<View> iterator = (Iterator<View>)list.iterator();
        int n2 = b ? 1 : 0;
        float n3 = n;
        while (iterator.hasNext()) {
            final CellAndSpan cellAndSpan = this.map.get(iterator.next());
            int n4;
            float n5;
            if (n2 != 0) {
                rect.set(cellAndSpan.cellX, cellAndSpan.cellY, cellAndSpan.cellX + cellAndSpan.spanX, cellAndSpan.spanY + cellAndSpan.cellY);
                n4 = 0;
                n5 = 0.0f;
            }
            else {
                rect.union(cellAndSpan.cellX, cellAndSpan.cellY, cellAndSpan.cellX + cellAndSpan.spanX, cellAndSpan.spanY + cellAndSpan.cellY);
                n4 = n2;
                n5 = n3;
            }
            n2 = n4;
            n3 = n5;
        }
    }
    
    void restore() {
        for (final View view : this.savedMap.keySet()) {
            ((CellAndSpan)this.map.get(view)).copyFrom((CellAndSpan)this.savedMap.get(view));
        }
    }
    
    void save() {
        for (final View view : this.map.keySet()) {
            ((CellAndSpan)this.savedMap.get(view)).copyFrom((CellAndSpan)this.map.get(view));
        }
    }
}
