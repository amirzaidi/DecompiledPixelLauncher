// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnKeyListener;

final class Folder$15 implements View$OnKeyListener
{
    final /* synthetic */ Folder this$0;
    final /* synthetic */ View val$lastChild;
    
    Folder$15(final Folder this$0, final View val$lastChild) {
        this.this$0 = this$0;
        this.val$lastChild = val$lastChild;
    }
    
    public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
        return n == 61 && keyEvent.hasModifiers(1) && this.this$0.isFocused() && this.val$lastChild.requestFocus();
    }
}
