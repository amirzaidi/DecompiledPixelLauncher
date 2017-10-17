// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import java.util.ArrayList;
import com.android.launcher3.ItemInfo;

final class LauncherAccessibilityDelegate$2 implements Runnable
{
    final /* synthetic */ LauncherAccessibilityDelegate this$0;
    final /* synthetic */ ItemInfo val$item;
    
    LauncherAccessibilityDelegate$2(final LauncherAccessibilityDelegate this$0, final ItemInfo val$item) {
        this.this$0 = this$0;
        this.val$item = val$item;
    }
    
    public void run() {
        final ArrayList<ItemInfo> list = new ArrayList<ItemInfo>();
        list.add(this.val$item);
        this.this$0.mLauncher.bindItems(list, 0, list.size(), true);
        this.this$0.announceConfirmation(2131492973);
    }
}
