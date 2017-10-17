// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import com.android.launcher3.LauncherAnimUtils;
import android.animation.ValueAnimator;

class FolderPreviewItemAnim
{
    private static PreviewItemDrawingParams sTmpParams;
    float finalScale;
    float finalTransX;
    float finalTransY;
    private ValueAnimator mValueAnimator;
    
    static {
        FolderPreviewItemAnim.sTmpParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0.0f);
    }
    
    FolderPreviewItemAnim(final PreviewItemManager previewItemManager, final PreviewItemDrawingParams previewItemDrawingParams, final int n, final int n2, final int n3, final int n4, final int n5, final Runnable runnable) {
        previewItemManager.computePreviewItemDrawingParams(n3, n4, FolderPreviewItemAnim.sTmpParams);
        this.finalScale = FolderPreviewItemAnim.sTmpParams.scale;
        this.finalTransX = FolderPreviewItemAnim.sTmpParams.transX;
        this.finalTransY = FolderPreviewItemAnim.sTmpParams.transY;
        previewItemManager.computePreviewItemDrawingParams(n, n2, FolderPreviewItemAnim.sTmpParams);
        final float scale = FolderPreviewItemAnim.sTmpParams.scale;
        final float transX = FolderPreviewItemAnim.sTmpParams.transX;
        final float transY = FolderPreviewItemAnim.sTmpParams.transY;
        final float[] array2;
        final float[] array = array2 = new float[2];
        array2[0] = 0.0f;
        array2[1] = 1.0f;
        (this.mValueAnimator = LauncherAnimUtils.ofFloat(array)).addUpdateListener((ValueAnimator$AnimatorUpdateListener)new FolderPreviewItemAnim$1(this, previewItemDrawingParams, transX, transY, scale, previewItemManager));
        this.mValueAnimator.addListener((Animator$AnimatorListener)new FolderPreviewItemAnim$2(this, runnable, previewItemDrawingParams));
        this.mValueAnimator.setDuration((long)n5);
    }
    
    public void cancel() {
        this.mValueAnimator.cancel();
    }
    
    public boolean hasEqualFinalState(final FolderPreviewItemAnim folderPreviewItemAnim) {
        boolean b = false;
        if (this.finalTransY == folderPreviewItemAnim.finalTransY && this.finalTransX == folderPreviewItemAnim.finalTransX && this.finalScale == folderPreviewItemAnim.finalScale) {
            b = true;
        }
        return b;
    }
    
    public void start() {
        this.mValueAnimator.start();
    }
}
