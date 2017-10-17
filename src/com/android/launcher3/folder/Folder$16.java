// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.view.View;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.Workspace$ItemOperator;

final class Folder$16 implements Workspace$ItemOperator
{
    final /* synthetic */ Folder this$0;
    final /* synthetic */ ShortcutInfo val$item;
    
    Folder$16(final Folder this$0, final ShortcutInfo val$item) {
        this.this$0 = this$0;
        this.val$item = val$item;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        return itemInfo == this.val$item;
    }
}
