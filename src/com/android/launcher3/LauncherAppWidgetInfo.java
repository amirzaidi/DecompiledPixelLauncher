// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.appwidget.AppWidgetHostView;
import com.android.launcher3.util.ContentWriter;
import android.os.Process;
import android.content.ComponentName;
import android.content.Intent;

public class LauncherAppWidgetInfo extends ItemInfo
{
    public int appWidgetId;
    public Intent bindOptions;
    public int installProgress;
    private boolean mHasNotifiedInitialWidgetSizeChanged;
    public ComponentName providerName;
    public int restoreStatus;
    
    public LauncherAppWidgetInfo() {
        final int n = -1;
        this.appWidgetId = n;
        this.installProgress = n;
        this.itemType = 4;
    }
    
    public LauncherAppWidgetInfo(final int appWidgetId, final ComponentName providerName) {
        final int n = -1;
        this.appWidgetId = n;
        this.installProgress = n;
        if (appWidgetId == -100) {
            this.itemType = 5;
        }
        else {
            this.itemType = 4;
        }
        this.appWidgetId = appWidgetId;
        this.providerName = providerName;
        this.spanX = n;
        this.spanY = n;
        this.user = Process.myUserHandle();
        this.restoreStatus = 0;
    }
    
    protected String dumpProperties() {
        return super.dumpProperties() + " appWidgetId=" + this.appWidgetId;
    }
    
    public final boolean hasRestoreFlag(final int n) {
        return (this.restoreStatus & n) == n;
    }
    
    public boolean isCustomWidget() {
        return this.appWidgetId == -100;
    }
    
    public final boolean isWidgetIdAllocated() {
        boolean b = true;
        if ((this.restoreStatus & 0x1) != 0x0 && (this.restoreStatus & 0x10) != 0x10) {
            b = false;
        }
        return b;
    }
    
    public void onAddToDatabase(final ContentWriter contentWriter) {
        super.onAddToDatabase(contentWriter);
        contentWriter.put("appWidgetId", Integer.valueOf(this.appWidgetId)).put("appWidgetProvider", this.providerName.flattenToString()).put("restored", Integer.valueOf(this.restoreStatus)).put("intent", this.bindOptions);
    }
    
    void onBindAppWidget(final Launcher launcher, final AppWidgetHostView appWidgetHostView) {
        if (!this.mHasNotifiedInitialWidgetSizeChanged) {
            AppWidgetResizeFrame.updateWidgetSizeRanges(appWidgetHostView, launcher, this.spanX, this.spanY);
            this.mHasNotifiedInitialWidgetSizeChanged = true;
        }
    }
}
