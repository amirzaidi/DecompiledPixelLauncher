// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.Context;
import android.content.BroadcastReceiver$PendingResult;

final class AppWidgetsRestoredReceiver$1 implements Runnable
{
    final /* synthetic */ AppWidgetsRestoredReceiver this$0;
    final /* synthetic */ BroadcastReceiver$PendingResult val$asyncResult;
    final /* synthetic */ Context val$context;
    final /* synthetic */ int[] val$newIds;
    final /* synthetic */ int[] val$oldIds;
    
    AppWidgetsRestoredReceiver$1(final AppWidgetsRestoredReceiver this$0, final Context val$context, final BroadcastReceiver$PendingResult val$asyncResult, final int[] val$oldIds, final int[] val$newIds) {
        this.this$0 = this$0;
        this.val$context = val$context;
        this.val$asyncResult = val$asyncResult;
        this.val$oldIds = val$oldIds;
        this.val$newIds = val$newIds;
    }
    
    public void run() {
        AppWidgetsRestoredReceiver.restoreAppWidgetIds(this.val$context, this.val$asyncResult, this.val$oldIds, this.val$newIds);
    }
}
