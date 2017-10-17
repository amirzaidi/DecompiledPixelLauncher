// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;

final class Workspace$14 implements Workspace$ItemOperator
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ long val$id;
    
    Workspace$14(final Workspace this$0, final long val$id) {
        this.this$0 = this$0;
        this.val$id = val$id;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        boolean b = false;
        if (itemInfo != null && itemInfo.id == this.val$id) {
            b = true;
        }
        return b;
    }
}
