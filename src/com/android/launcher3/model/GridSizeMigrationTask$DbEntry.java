// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.content.ContentValues;
import com.android.launcher3.ItemInfo;

class GridSizeMigrationTask$DbEntry extends ItemInfo implements Comparable
{
    public float weight;
    
    public void addToContentValues(final ContentValues contentValues) {
        contentValues.put("screen", this.screenId);
        contentValues.put("cellX", this.cellX);
        contentValues.put("cellY", this.cellY);
        contentValues.put("spanX", this.spanX);
        contentValues.put("spanY", this.spanY);
    }
    
    public boolean columnsSame(final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry) {
        boolean b = false;
        if (gridSizeMigrationTask$DbEntry.cellX == this.cellX && gridSizeMigrationTask$DbEntry.cellY == this.cellY && gridSizeMigrationTask$DbEntry.spanX == this.spanX && gridSizeMigrationTask$DbEntry.spanY == this.spanY && gridSizeMigrationTask$DbEntry.screenId == this.screenId) {
            b = true;
        }
        return b;
    }
    
    public int compareTo(final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry) {
        final int n = 4;
        if (this.itemType == n) {
            if (gridSizeMigrationTask$DbEntry.itemType == n) {
                return gridSizeMigrationTask$DbEntry.spanY * gridSizeMigrationTask$DbEntry.spanX - this.spanX * this.spanY;
            }
            return -1;
        }
        else {
            if (gridSizeMigrationTask$DbEntry.itemType == n) {
                return 1;
            }
            return Float.compare(gridSizeMigrationTask$DbEntry.weight, this.weight);
        }
    }
    
    public GridSizeMigrationTask$DbEntry copy() {
        final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry = new GridSizeMigrationTask$DbEntry();
        gridSizeMigrationTask$DbEntry.copyFrom(this);
        gridSizeMigrationTask$DbEntry.weight = this.weight;
        gridSizeMigrationTask$DbEntry.minSpanX = this.minSpanX;
        gridSizeMigrationTask$DbEntry.minSpanY = this.minSpanY;
        return gridSizeMigrationTask$DbEntry;
    }
}
