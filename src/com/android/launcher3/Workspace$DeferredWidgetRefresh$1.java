// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;
import android.os.Handler;
import android.view.View;

final class Workspace$DeferredWidgetRefresh$1 implements Workspace$ItemOperator
{
    final /* synthetic */ Workspace$DeferredWidgetRefresh this$1;
    
    Workspace$DeferredWidgetRefresh$1(final Workspace$DeferredWidgetRefresh this$1) {
        this.this$1 = this$1;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        if (view instanceof PendingAppWidgetHostView && this.this$1.mInfos.contains(itemInfo)) {
            this.this$1.this$0.mLauncher.removeItem(view, itemInfo, false);
            this.this$1.this$0.mLauncher.bindAppWidget((LauncherAppWidgetInfo)itemInfo);
        }
        return false;
    }
}
