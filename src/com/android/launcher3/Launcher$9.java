// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.PendingRequestArgs;
import android.appwidget.AppWidgetHostView;

final class Launcher$9 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ int val$appWidgetId;
    final /* synthetic */ AppWidgetHostView val$layout;
    final /* synthetic */ PendingRequestArgs val$requestArgs;
    final /* synthetic */ int val$resultCode;
    
    Launcher$9(final Launcher this$0, final int val$appWidgetId, final PendingRequestArgs val$requestArgs, final AppWidgetHostView val$layout, final int val$resultCode) {
        this.this$0 = this$0;
        this.val$appWidgetId = val$appWidgetId;
        this.val$requestArgs = val$requestArgs;
        this.val$layout = val$layout;
        this.val$resultCode = val$resultCode;
    }
    
    public void run() {
        boolean b = false;
        this.this$0.completeAddAppWidget(this.val$appWidgetId, this.val$requestArgs, this.val$layout, null);
        final Launcher this$0 = this.this$0;
        if (this.val$resultCode != 0) {
            b = true;
        }
        this$0.exitSpringLoadedDragModeDelayed(b, 500, null);
    }
}
