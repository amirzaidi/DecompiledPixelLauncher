// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.LauncherAppState;
import android.graphics.Point;
import java.util.HashSet;
import android.content.Context;

class GridSizeMigrationTask$MultiStepMigrationTask
{
    private final Context mContext;
    private final HashSet mValidPackages;
    
    public GridSizeMigrationTask$MultiStepMigrationTask(final HashSet mValidPackages, final Context mContext) {
        this.mValidPackages = mValidPackages;
        this.mContext = mContext;
    }
    
    public boolean migrate(final Point point, final Point point2) {
        boolean b = false;
        if (!point2.equals((Object)point)) {
            if (point.x < point2.x) {
                point.x = point2.x;
            }
            if (point.y < point2.y) {
                point.y = point2.y;
            }
            while (!point2.equals((Object)point)) {
                final Point point3 = new Point(point);
                if (point2.x < point3.x) {
                    --point3.x;
                }
                if (point2.y < point3.y) {
                    --point3.y;
                }
                if (this.runStepTask(point, point3)) {
                    b = true;
                }
                point.set(point3.x, point3.y);
            }
        }
        return b;
    }
    
    protected boolean runStepTask(final Point point, final Point point2) {
        return new GridSizeMigrationTask(this.mContext, LauncherAppState.getIDP(this.mContext), this.mValidPackages, point, point2).migrateWorkspace();
    }
}
