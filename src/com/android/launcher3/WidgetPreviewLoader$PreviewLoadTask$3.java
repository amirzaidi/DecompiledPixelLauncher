// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class WidgetPreviewLoader$PreviewLoadTask$3 implements Runnable
{
    final /* synthetic */ WidgetPreviewLoader$PreviewLoadTask this$1;
    
    WidgetPreviewLoader$PreviewLoadTask$3(final WidgetPreviewLoader$PreviewLoadTask this$1) {
        this.this$1 = this$1;
    }
    
    public void run() {
        final WidgetPreviewLoader this$0 = this.this$1.this$0;
        synchronized (this$0.mUnusedBitmaps) {
            this.this$1.this$0.mUnusedBitmaps.add(this.this$1.mBitmapToRecycle);
            // monitorexit(this$0.mUnusedBitmaps)
            this.this$1.mBitmapToRecycle = null;
        }
    }
}
