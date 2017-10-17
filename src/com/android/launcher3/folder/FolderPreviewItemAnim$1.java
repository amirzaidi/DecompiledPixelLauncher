// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class FolderPreviewItemAnim$1 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ FolderPreviewItemAnim this$0;
    final /* synthetic */ PreviewItemDrawingParams val$params;
    final /* synthetic */ PreviewItemManager val$previewItemManager;
    final /* synthetic */ float val$scale0;
    final /* synthetic */ float val$transX0;
    final /* synthetic */ float val$transY0;
    
    FolderPreviewItemAnim$1(final FolderPreviewItemAnim this$0, final PreviewItemDrawingParams val$params, final float val$transX0, final float val$transY0, final float val$scale0, final PreviewItemManager val$previewItemManager) {
        this.this$0 = this$0;
        this.val$params = val$params;
        this.val$transX0 = val$transX0;
        this.val$transY0 = val$transY0;
        this.val$scale0 = val$scale0;
        this.val$previewItemManager = val$previewItemManager;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float animatedFraction = valueAnimator.getAnimatedFraction();
        this.val$params.transX = this.val$transX0 + (this.this$0.finalTransX - this.val$transX0) * animatedFraction;
        this.val$params.transY = this.val$transY0 + (this.this$0.finalTransY - this.val$transY0) * animatedFraction;
        this.val$params.scale = animatedFraction * (this.this$0.finalScale - this.val$scale0) + this.val$scale0;
        this.val$previewItemManager.onParamsChanged();
    }
}
