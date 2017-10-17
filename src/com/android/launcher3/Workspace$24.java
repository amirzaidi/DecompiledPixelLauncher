// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import java.util.HashSet;

final class Workspace$24 implements Workspace$ItemOperator
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ HashSet val$updates;
    
    Workspace$24(final Workspace this$0, final HashSet val$updates) {
        this.this$0 = this$0;
        this.val$updates = val$updates;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        if (itemInfo instanceof ShortcutInfo && view instanceof BubbleTextView && this.val$updates.contains(itemInfo)) {
            ((BubbleTextView)view).applyPromiseState(false);
        }
        else if (view instanceof PendingAppWidgetHostView && itemInfo instanceof LauncherAppWidgetInfo && this.val$updates.contains(itemInfo)) {
            ((PendingAppWidgetHostView)view).applyState();
        }
        return false;
    }
}
