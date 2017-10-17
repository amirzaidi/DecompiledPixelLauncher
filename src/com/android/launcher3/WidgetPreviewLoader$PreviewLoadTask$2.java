// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.Bitmap;

final class WidgetPreviewLoader$PreviewLoadTask$2 implements Runnable
{
    final /* synthetic */ WidgetPreviewLoader$PreviewLoadTask this$1;
    final /* synthetic */ Bitmap val$preview;
    
    WidgetPreviewLoader$PreviewLoadTask$2(final WidgetPreviewLoader$PreviewLoadTask this$1, final Bitmap val$preview) {
        this.this$1 = this$1;
        this.val$preview = val$preview;
    }
    
    public void run() {
        final WidgetPreviewLoader this$0 = this.this$1.this$0;
        synchronized (this$0.mUnusedBitmaps) {
            this.this$1.this$0.mUnusedBitmaps.add(this.val$preview);
        }
    }
}
