// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;

final class Workspace$18 implements Workspace$ItemOperator
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ Workspace$ItemOperator val$operator;
    final /* synthetic */ View[] val$value;
    
    Workspace$18(final Workspace this$0, final Workspace$ItemOperator val$operator, final View[] val$value) {
        this.this$0 = this$0;
        this.val$operator = val$operator;
        this.val$value = val$value;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        if (this.val$operator.evaluate(itemInfo, view)) {
            this.val$value[0] = view;
            return true;
        }
        return false;
    }
}
