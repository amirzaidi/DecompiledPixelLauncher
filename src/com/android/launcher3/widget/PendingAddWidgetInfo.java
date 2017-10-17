// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import android.appwidget.AppWidgetHostView;
import android.os.Bundle;
import com.android.launcher3.PendingAddItemInfo;

public class PendingAddWidgetInfo extends PendingAddItemInfo
{
    public Bundle bindOptions;
    public AppWidgetHostView boundWidget;
    public int icon;
    public LauncherAppWidgetProviderInfo info;
    public int previewImage;
    
    public PendingAddWidgetInfo(final LauncherAppWidgetProviderInfo info) {
        this.bindOptions = null;
        if (info.isCustomWidget) {
            this.itemType = 5;
        }
        else {
            this.itemType = 4;
        }
        this.info = info;
        this.user = info.getUser();
        this.componentName = info.provider;
        this.previewImage = info.previewImage;
        this.icon = info.icon;
        this.spanX = info.spanX;
        this.spanY = info.spanY;
        this.minSpanX = info.minSpanX;
        this.minSpanY = info.minSpanY;
    }
    
    public WidgetAddFlowHandler getHandler() {
        return new WidgetAddFlowHandler(this.info);
    }
}
