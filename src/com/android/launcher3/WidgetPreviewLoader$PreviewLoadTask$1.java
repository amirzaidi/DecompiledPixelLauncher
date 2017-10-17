// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.Bitmap;

final class WidgetPreviewLoader$PreviewLoadTask$1 implements Runnable
{
    final /* synthetic */ WidgetPreviewLoader$PreviewLoadTask this$1;
    final /* synthetic */ Bitmap val$preview;
    
    WidgetPreviewLoader$PreviewLoadTask$1(final WidgetPreviewLoader$PreviewLoadTask this$1, final Bitmap val$preview) {
        this.this$1 = this$1;
        this.val$preview = val$preview;
    }
    
    public void run() {
        if (!this.this$1.isCancelled()) {
            this.this$1.this$0.writeToDb(this.this$1.mKey, this.this$1.mVersions, this.val$preview);
            this.this$1.mBitmapToRecycle = this.val$preview;
        }
        else {
            final WidgetPreviewLoader this$0 = this.this$1.this$0;
            synchronized (this$0.mUnusedBitmaps) {
                this.this$1.this$0.mUnusedBitmaps.add(this.val$preview);
            }
        }
    }
}
