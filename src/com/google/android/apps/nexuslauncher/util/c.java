// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.util;

import android.os.Bundle;
import android.appwidget.AppWidgetProviderInfo;
import android.content.SharedPreferences;
import android.appwidget.AppWidgetHost;
import android.content.ComponentName;
import com.android.launcher3.Utilities;
import android.content.Context;
import android.appwidget.AppWidgetManager;

public class c
{
    private final AppWidgetManager de;
    private final int df;
    
    public c(final Context context) {
        this.de = AppWidgetManager.getInstance(context);
        this.df = this.cF(context, this.de);
    }
    
    private int cF(final Context context, final AppWidgetManager appWidgetManager) {
        int n = 1;
        final int n2 = -1;
        final SharedPreferences prefs = Utilities.getPrefs(context);
        final int int1 = prefs.getInt("bundle_store_widget_id", n2);
        int n3;
        if (int1 == n2) {
            n3 = n;
        }
        else {
            n3 = 0;
        }
        final ComponentName componentName = new ComponentName(context, (Class)DummyWidget.class);
        if (n3 == 0) {
            final AppWidgetProviderInfo appWidgetInfo = this.de.getAppWidgetInfo(int1);
            if (appWidgetInfo != null) {
                n = ((componentName.equals((Object)appWidgetInfo.provider) ^ true) ? 1 : 0);
            }
        }
        else {
            n = n3;
        }
        int allocateAppWidgetId;
        if (n != 0) {
            final AppWidgetHost appWidgetHost = new AppWidgetHost(context, 2048);
            appWidgetHost.deleteHost();
            if (componentName != null) {
                allocateAppWidgetId = appWidgetHost.allocateAppWidgetId();
                if (!this.de.bindAppWidgetIdIfAllowed(allocateAppWidgetId, componentName)) {
                    appWidgetHost.deleteAppWidgetId(allocateAppWidgetId);
                    allocateAppWidgetId = n2;
                }
            }
            else {
                allocateAppWidgetId = n2;
            }
            prefs.edit().putInt("bundle_store_widget_id", allocateAppWidgetId).apply();
        }
        else {
            allocateAppWidgetId = int1;
        }
        return allocateAppWidgetId;
    }
    
    public Bundle cE() {
        Bundle appWidgetOptions;
        if (this.df != -1) {
            appWidgetOptions = this.de.getAppWidgetOptions(this.df);
        }
        else {
            appWidgetOptions = null;
        }
        return appWidgetOptions;
    }
    
    public void cG(final Bundle bundle) {
        if (this.df != -1) {
            this.de.updateAppWidgetOptions(this.df, bundle);
        }
    }
}
