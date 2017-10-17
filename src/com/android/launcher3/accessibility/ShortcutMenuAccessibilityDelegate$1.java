// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import com.android.launcher3.AbstractFloatingView;
import java.util.ArrayList;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.ShortcutInfo;

final class ShortcutMenuAccessibilityDelegate$1 implements Runnable
{
    final /* synthetic */ ShortcutMenuAccessibilityDelegate this$0;
    final /* synthetic */ int[] val$coordinates;
    final /* synthetic */ ShortcutInfo val$info;
    final /* synthetic */ long val$screenId;
    
    ShortcutMenuAccessibilityDelegate$1(final ShortcutMenuAccessibilityDelegate this$0, final ShortcutInfo val$info, final long val$screenId, final int[] val$coordinates) {
        this.this$0 = this$0;
        this.val$info = val$info;
        this.val$screenId = val$screenId;
        this.val$coordinates = val$coordinates;
    }
    
    public void run() {
        final int n = 1;
        this.this$0.mLauncher.getModelWriter().addItemToDatabase(this.val$info, -100, this.val$screenId, this.val$coordinates[0], this.val$coordinates[n]);
        final ArrayList<ShortcutInfo> list = new ArrayList<ShortcutInfo>();
        list.add(this.val$info);
        this.this$0.mLauncher.bindItems(list, 0, list.size(), n != 0);
        AbstractFloatingView.closeAllOpenViews(this.this$0.mLauncher);
        this.this$0.announceConfirmation(2131492967);
    }
}
