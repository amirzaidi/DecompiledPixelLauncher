// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.Iterator;
import java.util.Collection;
import android.appwidget.AppWidgetProviderInfo;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.util.SparseArray;
import java.util.ArrayList;
import android.appwidget.AppWidgetHost;

public class LauncherAppWidgetHost extends AppWidgetHost
{
    private Launcher mLauncher;
    private final ArrayList mProviderChangeListeners;
    private final SparseArray mViews;
    
    public LauncherAppWidgetHost(final Launcher mLauncher, final int n) {
        super((Context)mLauncher, n);
        this.mProviderChangeListeners = new ArrayList();
        this.mViews = new SparseArray();
        this.mLauncher = mLauncher;
    }
    
    public void addProviderChangeListener(final Runnable runnable) {
        this.mProviderChangeListeners.add(runnable);
    }
    
    protected void clearViews() {
        super.clearViews();
        this.mViews.clear();
    }
    
    public AppWidgetHostView createView(final Context context, final int n, final LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo) {
        if (launcherAppWidgetProviderInfo.isCustomWidget) {
            final LauncherAppWidgetHostView launcherAppWidgetHostView = new LauncherAppWidgetHostView(context);
            ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(launcherAppWidgetProviderInfo.initialLayout, (ViewGroup)launcherAppWidgetHostView);
            launcherAppWidgetHostView.setAppWidget(0, (AppWidgetProviderInfo)launcherAppWidgetProviderInfo);
            launcherAppWidgetHostView.updateLastInflationOrientation();
            return launcherAppWidgetHostView;
        }
        try {
            return super.createView(context, n, (AppWidgetProviderInfo)launcherAppWidgetProviderInfo);
        }
        catch (Exception ex) {
            if (!Utilities.isBinderSizeError(ex)) {
                throw new RuntimeException(ex);
            }
            LauncherAppWidgetHostView onCreateView = (LauncherAppWidgetHostView)this.mViews.get(n);
            if (onCreateView == null) {
                onCreateView = this.onCreateView((Context)this.mLauncher, n, launcherAppWidgetProviderInfo);
            }
            onCreateView.setAppWidget(n, (AppWidgetProviderInfo)launcherAppWidgetProviderInfo);
            onCreateView.switchToErrorView();
            return onCreateView;
        }
    }
    
    public void deleteAppWidgetId(final int n) {
        super.deleteAppWidgetId(n);
        this.mViews.remove(n);
    }
    
    protected LauncherAppWidgetHostView onCreateView(final Context context, final int n, final AppWidgetProviderInfo appWidgetProviderInfo) {
        final LauncherAppWidgetHostView launcherAppWidgetHostView = new LauncherAppWidgetHostView(context);
        this.mViews.put(n, (Object)launcherAppWidgetHostView);
        return launcherAppWidgetHostView;
    }
    
    protected void onProviderChanged(final int n, final AppWidgetProviderInfo appWidgetProviderInfo) {
        final LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo((Context)this.mLauncher, appWidgetProviderInfo);
        super.onProviderChanged(n, (AppWidgetProviderInfo)fromProviderInfo);
        fromProviderInfo.initSpans((Context)this.mLauncher);
    }
    
    protected void onProvidersChanged() {
        if (!this.mProviderChangeListeners.isEmpty()) {
            final Iterator<Runnable> iterator = new ArrayList<Runnable>(this.mProviderChangeListeners).iterator();
            while (iterator.hasNext()) {
                iterator.next().run();
            }
        }
        if (Utilities.ATLEAST_MARSHMALLOW) {
            this.mLauncher.notifyWidgetProvidersChanged();
        }
    }
    
    public void removeProviderChangeListener(final Runnable runnable) {
        this.mProviderChangeListeners.remove(runnable);
    }
    
    public void startListening() {
        try {
            super.startListening();
        }
        catch (Exception ex) {
            if (!Utilities.isBinderSizeError(ex)) {
                throw new RuntimeException(ex);
            }
        }
    }
}
