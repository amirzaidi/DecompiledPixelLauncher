// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.AsyncTask;

final class Launcher$17 extends AsyncTask
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ LauncherAppWidgetHost val$appWidgetHost;
    final /* synthetic */ LauncherAppWidgetInfo val$widgetInfo;
    
    Launcher$17(final Launcher this$0, final LauncherAppWidgetHost val$appWidgetHost, final LauncherAppWidgetInfo val$widgetInfo) {
        this.this$0 = this$0;
        this.val$appWidgetHost = val$appWidgetHost;
        this.val$widgetInfo = val$widgetInfo;
    }
    
    public Void doInBackground(final Void... array) {
        this.val$appWidgetHost.deleteAppWidgetId(this.val$widgetInfo.appWidgetId);
        return null;
    }
}
