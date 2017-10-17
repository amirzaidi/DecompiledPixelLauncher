// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.view.View;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Workspace$ItemOperator;

final class Folder$18 implements Workspace$ItemOperator
{
    final /* synthetic */ Folder this$0;
    
    Folder$18(final Folder this$0) {
        this.this$0 = this$0;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        this.this$0.mItemsInReadingOrder.add(view);
        return false;
    }
}
