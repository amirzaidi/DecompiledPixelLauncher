// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;

final class Launcher$13 implements Workspace$ItemOperator
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ long val$folderIconId;
    
    Launcher$13(final Launcher this$0, final long val$folderIconId) {
        this.this$0 = this$0;
        this.val$folderIconId = val$folderIconId;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        boolean b = false;
        if (itemInfo != null && itemInfo.id == this.val$folderIconId) {
            b = true;
        }
        return b;
    }
}
