// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.drawable.Drawable;
import java.util.concurrent.Callable;

final class WidgetPreviewLoader$1 implements Callable
{
    final /* synthetic */ WidgetPreviewLoader this$0;
    final /* synthetic */ Drawable val$drawable;
    
    WidgetPreviewLoader$1(final WidgetPreviewLoader this$0, final Drawable val$drawable) {
        this.this$0 = this$0;
        this.val$drawable = val$drawable;
    }
    
    public Drawable call() {
        return this.val$drawable.mutate();
    }
}
