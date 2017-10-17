// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;

final class Workspace$16 implements Workspace$ItemOperator
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ int val$appWidgetId;
    
    Workspace$16(final Workspace this$0, final int val$appWidgetId) {
        this.this$0 = this$0;
        this.val$appWidgetId = val$appWidgetId;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        boolean b = false;
        if (itemInfo instanceof LauncherAppWidgetInfo && ((LauncherAppWidgetInfo)itemInfo).appWidgetId == this.val$appWidgetId) {
            b = true;
        }
        return b;
    }
}
