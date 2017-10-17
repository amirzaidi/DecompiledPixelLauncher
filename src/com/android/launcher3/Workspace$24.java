// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import java.util.ArrayList;

final class Workspace$24 implements Workspace$ItemOperator
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ ArrayList val$changedInfo;
    
    Workspace$24(final Workspace this$0, final ArrayList val$changedInfo) {
        this.this$0 = this$0;
        this.val$changedInfo = val$changedInfo;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        if (view instanceof PendingAppWidgetHostView && this.val$changedInfo.contains(itemInfo)) {
            ((LauncherAppWidgetInfo)itemInfo).installProgress = 100;
            ((PendingAppWidgetHostView)view).applyState();
        }
        return false;
    }
}
