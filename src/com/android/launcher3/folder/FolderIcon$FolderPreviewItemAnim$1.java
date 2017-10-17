// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class FolderIcon$FolderPreviewItemAnim$1 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ FolderIcon$FolderPreviewItemAnim this$1;
    final /* synthetic */ FolderIcon$PreviewItemDrawingParams val$params;
    final /* synthetic */ float val$scale0;
    final /* synthetic */ float val$transX0;
    final /* synthetic */ float val$transY0;
    
    FolderIcon$FolderPreviewItemAnim$1(final FolderIcon$FolderPreviewItemAnim this$1, final FolderIcon$PreviewItemDrawingParams val$params, final float val$transX0, final float val$transY0, final float val$scale0) {
        this.this$1 = this$1;
        this.val$params = val$params;
        this.val$transX0 = val$transX0;
        this.val$transY0 = val$transY0;
        this.val$scale0 = val$scale0;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float animatedFraction = valueAnimator.getAnimatedFraction();
        this.val$params.transX = this.val$transX0 + (this.this$1.finalTransX - this.val$transX0) * animatedFraction;
        this.val$params.transY = this.val$transY0 + (this.this$1.finalTransY - this.val$transY0) * animatedFraction;
        this.val$params.scale = animatedFraction * (this.this$1.finalScale - this.val$scale0) + this.val$scale0;
        this.this$1.this$0.invalidate();
    }
}
