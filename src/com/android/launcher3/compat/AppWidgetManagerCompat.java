// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.appwidget.AppWidgetHost;
import android.app.Activity;
import java.util.HashMap;
import java.util.List;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import android.os.UserHandle;
import android.content.ComponentName;
import android.os.Bundle;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.Utilities;
import android.content.Context;
import android.appwidget.AppWidgetManager;

public abstract class AppWidgetManagerCompat
{
    private static AppWidgetManagerCompat sInstance;
    private static final Object sInstanceLock;
    final AppWidgetManager mAppWidgetManager;
    final Context mContext;
    
    static {
        sInstanceLock = new Object();
    }
    
    AppWidgetManagerCompat(final Context mContext) {
        this.mContext = mContext;
        this.mAppWidgetManager = AppWidgetManager.getInstance(mContext);
    }
    
    public static AppWidgetManagerCompat getInstance(final Context context) {
        synchronized (AppWidgetManagerCompat.sInstanceLock) {
            if (AppWidgetManagerCompat.sInstance == null) {
                if (Utilities.isAtLeastO()) {
                    AppWidgetManagerCompat.sInstance = new AppWidgetManagerCompatVO(context.getApplicationContext());
                }
                else {
                    AppWidgetManagerCompat.sInstance = new AppWidgetManagerCompatVL(context.getApplicationContext());
                }
            }
            return AppWidgetManagerCompat.sInstance;
        }
    }
    
    public abstract boolean bindAppWidgetIdIfAllowed(final int p0, final AppWidgetProviderInfo p1, final Bundle p2);
    
    public abstract LauncherAppWidgetProviderInfo findProvider(final ComponentName p0, final UserHandle p1);
    
    public abstract List getAllProviders(final PackageUserKey p0);
    
    public abstract HashMap getAllProvidersMap();
    
    public AppWidgetProviderInfo getAppWidgetInfo(final int n) {
        return this.mAppWidgetManager.getAppWidgetInfo(n);
    }
    
    public LauncherAppWidgetProviderInfo getLauncherAppWidgetInfo(final int n) {
        LauncherAppWidgetProviderInfo fromProviderInfo = null;
        final AppWidgetProviderInfo appWidgetInfo = this.getAppWidgetInfo(n);
        if (appWidgetInfo != null) {
            fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidgetInfo);
        }
        return fromProviderInfo;
    }
    
    public abstract void startConfigActivity(final AppWidgetProviderInfo p0, final int p1, final Activity p2, final AppWidgetHost p3, final int p4);
}
