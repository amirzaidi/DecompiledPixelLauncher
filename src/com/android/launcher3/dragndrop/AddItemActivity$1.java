// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.graphics.Point;
import android.graphics.Canvas;
import android.view.View;
import android.view.View$DragShadowBuilder;

final class AddItemActivity$1 extends View$DragShadowBuilder
{
    final /* synthetic */ AddItemActivity this$0;
    
    AddItemActivity$1(final AddItemActivity this$0, final View view) {
        this.this$0 = this$0;
        super(view);
    }
    
    public void onDrawShadow(final Canvas canvas) {
    }
    
    public void onProvideShadowMetrics(final Point point, final Point point2) {
        final int n = 10;
        final int n2 = 5;
        point.set(n, n);
        point2.set(n2, n2);
    }
}
