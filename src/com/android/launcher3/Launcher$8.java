// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.PendingRequestArgs;

final class Launcher$8 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ int val$appWidgetId;
    final /* synthetic */ CellLayout val$dropLayout;
    final /* synthetic */ PendingRequestArgs val$requestArgs;
    final /* synthetic */ int val$resultCode;
    
    Launcher$8(final Launcher this$0, final int val$resultCode, final int val$appWidgetId, final PendingRequestArgs val$requestArgs, final CellLayout val$dropLayout) {
        this.this$0 = this$0;
        this.val$resultCode = val$resultCode;
        this.val$appWidgetId = val$appWidgetId;
        this.val$requestArgs = val$requestArgs;
        this.val$dropLayout = val$dropLayout;
    }
    
    public void run() {
        this.this$0.completeTwoStageWidgetDrop(this.val$resultCode, this.val$appWidgetId, this.val$requestArgs);
        this.val$dropLayout.setDropPending(false);
    }
}
