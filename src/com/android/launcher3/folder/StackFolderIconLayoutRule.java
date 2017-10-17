// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

public class StackFolderIconLayoutRule implements FolderIcon$PreviewLayoutRule
{
    private int mAvailableSpaceInPreview;
    private float mBaselineIconScale;
    private int mBaselineIconSize;
    private float mMaxPerspectiveShift;
    
    public boolean clipToBackground() {
        return false;
    }
    
    public PreviewItemDrawingParams computePreviewItemDrawingParams(final int n, final int n2, PreviewItemDrawingParams previewItemDrawingParams) {
        final float n3 = 2.0f;
        final float n4 = 1.0f;
        final float scaleForItem = this.scaleForItem(n, n2);
        final float n5 = (3 - n - 1) * n4 / n3;
        final float n6 = (n4 - n5) * this.mMaxPerspectiveShift;
        final float n7 = this.mBaselineIconSize * scaleForItem;
        final float n8 = this.mAvailableSpaceInPreview - (n6 + n7 + (n4 - scaleForItem) * this.mBaselineIconSize);
        final float n9 = (this.mAvailableSpaceInPreview - n7) / n3;
        final float n10 = scaleForItem * this.mBaselineIconScale;
        final float overlayAlpha = (n4 - n5) * 80.0f / 255.0f;
        if (previewItemDrawingParams == null) {
            previewItemDrawingParams = new PreviewItemDrawingParams(n9, n8, n10, overlayAlpha);
        }
        else {
            previewItemDrawingParams.update(n9, n8, n10);
            previewItemDrawingParams.overlayAlpha = overlayAlpha;
        }
        return previewItemDrawingParams;
    }
    
    public int getEnterIndex() {
        throw new RuntimeException("hasEnterExitIndices not supported");
    }
    
    public int getExitIndex() {
        throw new RuntimeException("hasEnterExitIndices not supported");
    }
    
    public float getIconSize() {
        return this.mBaselineIconSize;
    }
    
    public boolean hasEnterExitIndices() {
        return false;
    }
    
    public void init(final int mAvailableSpaceInPreview, final float n, final boolean b) {
        this.mAvailableSpaceInPreview = mAvailableSpaceInPreview;
        this.mBaselineIconScale = (int)(this.mAvailableSpaceInPreview / 2 * 1.8f) * 1.0f / (int)(1.1800001f * n);
        this.mBaselineIconSize = (int)(this.mBaselineIconScale * n);
        this.mMaxPerspectiveShift = this.mBaselineIconSize * 0.18f;
    }
    
    public int maxNumItems() {
        return 3;
    }
    
    public float scaleForItem(final int n, final int n2) {
        final float n3 = 1.0f;
        return n3 - (n3 - (3 - n - 1) * n3 / 2.0f) * 0.35f;
    }
}
