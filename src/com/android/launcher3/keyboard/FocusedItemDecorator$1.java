// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.keyboard;

import android.graphics.Rect;
import android.view.View;

final class FocusedItemDecorator$1 extends FocusIndicatorHelper
{
    final /* synthetic */ FocusedItemDecorator this$0;
    
    FocusedItemDecorator$1(final FocusedItemDecorator this$0, final View view) {
        this.this$0 = this$0;
        super(view);
    }
    
    public void viewToRect(final View view, final Rect rect) {
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }
}
