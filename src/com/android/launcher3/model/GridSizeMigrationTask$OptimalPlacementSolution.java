// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.net.Uri;
import android.content.ContentProviderOperation;
import com.android.launcher3.LauncherSettings$WorkspaceScreens;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.compat.AppWidgetManagerCompat;
import android.content.ComponentName;
import android.content.Intent;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.util.LongArrayMap;
import android.os.CancellationSignal;
import com.android.launcher3.compat.PackageInstallerCompat;
import android.content.pm.PackageInfo;
import java.util.Locale;
import android.database.Cursor;
import java.util.Iterator;
import com.android.launcher3.LauncherSettings$Favorites;
import android.util.Log;
import android.text.TextUtils;
import com.android.launcher3.LauncherProvider;
import android.graphics.Point;
import com.android.launcher3.Utilities;
import java.util.HashSet;
import android.content.ContentValues;
import com.android.launcher3.InvariantDeviceProfile;
import android.content.Context;
import com.android.launcher3.ItemInfo;
import java.util.Collection;
import java.util.List;
import java.util.Collections;
import com.android.launcher3.util.GridOccupancy;
import java.util.ArrayList;

class GridSizeMigrationTask$OptimalPlacementSolution
{
    ArrayList finalPlacedItems;
    private final boolean ignoreMove;
    private final ArrayList itemsToPlace;
    float lowestMoveCost;
    float lowestWeightLoss;
    private final GridOccupancy occupied;
    private final int startY;
    final /* synthetic */ GridSizeMigrationTask this$0;
    
    public GridSizeMigrationTask$OptimalPlacementSolution(final GridSizeMigrationTask gridSizeMigrationTask, final GridOccupancy gridOccupancy, final ArrayList list, final int n) {
        this(gridSizeMigrationTask, gridOccupancy, list, n, false);
    }
    
    public GridSizeMigrationTask$OptimalPlacementSolution(final GridSizeMigrationTask this$0, final GridOccupancy occupied, final ArrayList itemsToPlace, final int startY, final boolean ignoreMove) {
        final float n = Float.MAX_VALUE;
        this.this$0 = this$0;
        this.lowestWeightLoss = n;
        this.lowestMoveCost = n;
        this.occupied = occupied;
        this.itemsToPlace = itemsToPlace;
        this.ignoreMove = ignoreMove;
        this.startY = startY;
        Collections.sort((List<Comparable>)this.itemsToPlace);
    }
    
    public void find() {
        this.find(0, 0.0f, 0.0f, new ArrayList());
    }
    
    public void find(final int n, float lowestWeightLoss, final float lowestMoveCost, final ArrayList list) {
        if (lowestWeightLoss >= this.lowestWeightLoss || (lowestWeightLoss == this.lowestWeightLoss && lowestMoveCost >= this.lowestMoveCost)) {
            return;
        }
        if (n >= this.itemsToPlace.size()) {
            this.lowestWeightLoss = lowestWeightLoss;
            this.lowestMoveCost = lowestMoveCost;
            this.finalPlacedItems = deepCopy(list);
            return;
        }
        final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry = this.itemsToPlace.get(n);
        final int cellX = gridSizeMigrationTask$DbEntry.cellX;
        final int cellY = gridSizeMigrationTask$DbEntry.cellY;
        final ArrayList list2 = new ArrayList<GridSizeMigrationTask$DbEntry>(list.size() + 1);
        list2.addAll(list);
        list2.add(gridSizeMigrationTask$DbEntry);
        if (gridSizeMigrationTask$DbEntry.spanX > 1 || gridSizeMigrationTask$DbEntry.spanY > 1) {
            final int spanX = gridSizeMigrationTask$DbEntry.spanX;
            final int spanY = gridSizeMigrationTask$DbEntry.spanY;
            for (int i = this.startY; i < this.this$0.mTrgY; ++i) {
                for (int j = 0; j < this.this$0.mTrgX; ++j) {
                    float n2;
                    if (j != cellX) {
                        gridSizeMigrationTask$DbEntry.cellX = j;
                        n2 = 1.0f + lowestMoveCost;
                    }
                    else {
                        n2 = lowestMoveCost;
                    }
                    if (i != cellY) {
                        gridSizeMigrationTask$DbEntry.cellY = i;
                        ++n2;
                    }
                    if (this.ignoreMove) {
                        n2 = lowestMoveCost;
                    }
                    if (this.occupied.isRegionVacant(j, i, spanX, spanY)) {
                        this.occupied.markCells(gridSizeMigrationTask$DbEntry, true);
                        this.find(n + 1, lowestWeightLoss, n2, list2);
                        this.occupied.markCells(gridSizeMigrationTask$DbEntry, false);
                    }
                    if (spanX > gridSizeMigrationTask$DbEntry.minSpanX && this.occupied.isRegionVacant(j, i, spanX - 1, spanY)) {
                        --gridSizeMigrationTask$DbEntry.spanX;
                        this.occupied.markCells(gridSizeMigrationTask$DbEntry, true);
                        this.find(n + 1, lowestWeightLoss, 1.0f + n2, list2);
                        this.occupied.markCells(gridSizeMigrationTask$DbEntry, false);
                        ++gridSizeMigrationTask$DbEntry.spanX;
                    }
                    if (spanY > gridSizeMigrationTask$DbEntry.minSpanY && this.occupied.isRegionVacant(j, i, spanX, spanY - 1)) {
                        --gridSizeMigrationTask$DbEntry.spanY;
                        this.occupied.markCells(gridSizeMigrationTask$DbEntry, true);
                        this.find(n + 1, lowestWeightLoss, 1.0f + n2, list2);
                        this.occupied.markCells(gridSizeMigrationTask$DbEntry, false);
                        ++gridSizeMigrationTask$DbEntry.spanY;
                    }
                    if (spanY > gridSizeMigrationTask$DbEntry.minSpanY && spanX > gridSizeMigrationTask$DbEntry.minSpanX && this.occupied.isRegionVacant(j, i, spanX - 1, spanY - 1)) {
                        --gridSizeMigrationTask$DbEntry.spanX;
                        --gridSizeMigrationTask$DbEntry.spanY;
                        this.occupied.markCells(gridSizeMigrationTask$DbEntry, true);
                        this.find(n + 1, lowestWeightLoss, n2 + 2.0f, list2);
                        this.occupied.markCells(gridSizeMigrationTask$DbEntry, false);
                        ++gridSizeMigrationTask$DbEntry.spanX;
                        ++gridSizeMigrationTask$DbEntry.spanY;
                    }
                    gridSizeMigrationTask$DbEntry.cellX = cellX;
                    gridSizeMigrationTask$DbEntry.cellY = cellY;
                }
            }
            this.find(n + 1, gridSizeMigrationTask$DbEntry.weight + lowestWeightLoss, lowestMoveCost, list);
        }
        else {
            int n3 = -1 >>> 1;
            int cellX2 = -1 >>> 1;
            int cellY2 = -1 >>> 1;
            for (int k = this.startY; k < this.this$0.mTrgY; ++k) {
                int l = 0;
            Label_1059_Outer:
                while (l < this.this$0.mTrgX) {
                    while (true) {
                        Label_1554: {
                            if (this.occupied.cells[l][k]) {
                                break Label_1554;
                            }
                            int n4;
                            if (this.ignoreMove) {
                                n4 = 0;
                            }
                            else {
                                n4 = (gridSizeMigrationTask$DbEntry.cellX - l) * (gridSizeMigrationTask$DbEntry.cellX - l) + (gridSizeMigrationTask$DbEntry.cellY - k) * (gridSizeMigrationTask$DbEntry.cellY - k);
                            }
                            if (n4 >= n3) {
                                break Label_1554;
                            }
                            final int n5 = k;
                            final int n6 = l;
                            ++l;
                            cellY2 = n5;
                            cellX2 = n6;
                            n3 = n4;
                            continue Label_1059_Outer;
                        }
                        int n4 = n3;
                        final int n6 = cellX2;
                        final int n5 = cellY2;
                        continue;
                    }
                }
            }
            if (cellX2 < this.this$0.mTrgX && cellY2 < this.this$0.mTrgY) {
                float n7;
                if (cellX2 != cellX) {
                    gridSizeMigrationTask$DbEntry.cellX = cellX2;
                    n7 = 1.0f + lowestMoveCost;
                }
                else {
                    n7 = lowestMoveCost;
                }
                if (cellY2 != cellY) {
                    gridSizeMigrationTask$DbEntry.cellY = cellY2;
                    ++n7;
                }
                if (this.ignoreMove) {
                    n7 = lowestMoveCost;
                }
                this.occupied.markCells(gridSizeMigrationTask$DbEntry, true);
                this.find(n + 1, lowestWeightLoss, n7, list2);
                this.occupied.markCells(gridSizeMigrationTask$DbEntry, false);
                gridSizeMigrationTask$DbEntry.cellX = cellX;
                gridSizeMigrationTask$DbEntry.cellY = cellY;
                if (n + 1 < this.itemsToPlace.size() && this.itemsToPlace.get(n + 1).weight >= gridSizeMigrationTask$DbEntry.weight && (this.ignoreMove ^ true)) {
                    this.find(n + 1, gridSizeMigrationTask$DbEntry.weight + lowestWeightLoss, lowestMoveCost, list);
                }
            }
            else {
                for (int n8 = n + 1; n8 < this.itemsToPlace.size(); ++n8) {
                    lowestWeightLoss += ((GridSizeMigrationTask$DbEntry)this.itemsToPlace.get(n8)).weight;
                }
                this.find(this.itemsToPlace.size(), gridSizeMigrationTask$DbEntry.weight + lowestWeightLoss, lowestMoveCost, list);
            }
        }
    }
}
