// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import com.android.launcher3.compat.AppWidgetManagerCompat;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import android.os.Bundle;

final class WidgetHostViewLoader$1 implements Runnable
{
    final /* synthetic */ WidgetHostViewLoader this$0;
    final /* synthetic */ Bundle val$options;
    final /* synthetic */ LauncherAppWidgetProviderInfo val$pInfo;
    
    WidgetHostViewLoader$1(final WidgetHostViewLoader this$0, final LauncherAppWidgetProviderInfo val$pInfo, final Bundle val$options) {
        this.this$0 = this$0;
        this.val$pInfo = val$pInfo;
        this.val$options = val$options;
    }
    
    public void run() {
        this.this$0.mWidgetLoadingId = this.this$0.mLauncher.getAppWidgetHost().allocateAppWidgetId();
        if (AppWidgetManagerCompat.getInstance((Context)this.this$0.mLauncher).bindAppWidgetIdIfAllowed(this.this$0.mWidgetLoadingId, this.val$pInfo, this.val$options)) {
            this.this$0.mHandler.post(this.this$0.mInflateWidgetRunnable);
        }
    }
}
