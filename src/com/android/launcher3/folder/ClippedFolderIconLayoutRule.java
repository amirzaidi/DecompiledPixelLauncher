// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

public class ClippedFolderIconLayoutRule implements FolderIcon$PreviewLayoutRule
{
    private float mAvailableSpace;
    private float mBaselineIconScale;
    private float mIconSize;
    private boolean mIsRtl;
    private float mRadius;
    private float[] mTmpPoint;
    
    public ClippedFolderIconLayoutRule() {
        this.mTmpPoint = new float[2];
    }
    
    private void getGridPosition(final int n, final int n2, final float[] array) {
        final int n3 = 4;
        final int n4 = 1;
        this.getPosition(0, n3, array);
        final float n5 = array[0];
        final float n6 = array[n4];
        this.getPosition(3, n3, array);
        final float n7 = array[0] - n5;
        final float n8 = array[n4] - n6;
        array[0] = n5 + n7 * n2;
        array[n4] = n * n8 + n6;
    }
    
    private void getPosition(int n, final int n2, final float[] array) {
        final int max = Math.max(n2, 2);
        double n3;
        if (this.mIsRtl) {
            n3 = 0.0;
        }
        else {
            n3 = 3.141592653589793;
        }
        int n4;
        if (this.mIsRtl) {
            n4 = 1;
        }
        else {
            n4 = -1;
        }
        double n5 = 0.0;
        if (max == 3) {
            n5 = 0.5235987755982988;
        }
        else if (max == 4) {
            n5 = 0.7853981633974483;
        }
        final double n6 = n3 + n5 * n4;
        if (max == 4 && n == 3) {
            n = 2;
        }
        else if (max == 4 && n == 2) {
            n = 3;
        }
        final float n7 = this.mRadius * ((max - 2) * 0.15f / 2.0f + 1.0f);
        final double n8 = n6 + n * (6.283185307179586 / max) * n4;
        final float n9 = this.mIconSize * this.scaleForItem(n, max) / 2.0f;
        array[0] = this.mAvailableSpace / 2.0f + (float)(n7 * Math.cos(n8) / 2.0) - n9;
        array[1] = (float)(Math.sin(n8) * -n7 / 2.0) + this.mAvailableSpace / 2.0f - n9;
    }
    
    public boolean clipToBackground() {
        return true;
    }
    
    public PreviewItemDrawingParams computePreviewItemDrawingParams(final int n, final int n2, PreviewItemDrawingParams previewItemDrawingParams) {
        final int n3 = 2;
        final float n4 = 2.0f;
        final int n5 = 1;
        final float scaleForItem = this.scaleForItem(n, n2);
        if (n == this.getExitIndex()) {
            this.getGridPosition(0, n3, this.mTmpPoint);
        }
        else if (n == this.getEnterIndex()) {
            this.getGridPosition(n5, n3, this.mTmpPoint);
        }
        else if (n >= 4) {
            this.mTmpPoint[0] = (this.mTmpPoint[n5] = this.mAvailableSpace / n4 - this.mIconSize * scaleForItem / n4);
        }
        else {
            this.getPosition(n, n2, this.mTmpPoint);
        }
        final float n6 = this.mTmpPoint[0];
        final float n7 = this.mTmpPoint[n5];
        if (previewItemDrawingParams == null) {
            previewItemDrawingParams = new PreviewItemDrawingParams(n6, n7, scaleForItem, 0.0f);
        }
        else {
            previewItemDrawingParams.update(n6, n7, scaleForItem);
            previewItemDrawingParams.overlayAlpha = 0.0f;
        }
        return previewItemDrawingParams;
    }
    
    public int getEnterIndex() {
        return -3;
    }
    
    public int getExitIndex() {
        return -2;
    }
    
    public float getIconSize() {
        return this.mIconSize;
    }
    
    public boolean hasEnterExitIndices() {
        return true;
    }
    
    public void init(final int n, final float mIconSize, final boolean mIsRtl) {
        this.mAvailableSpace = n;
        this.mRadius = n * 1.33f / 2.0f;
        this.mIconSize = mIconSize;
        this.mIsRtl = mIsRtl;
        this.mBaselineIconScale = n / (1.0f * mIconSize);
    }
    
    public int maxNumItems() {
        return 4;
    }
    
    public float scaleForItem(final int n, final int n2) {
        float n3;
        if (n2 <= 2) {
            n3 = 0.58f;
        }
        else if (n2 == 3) {
            n3 = 0.53f;
        }
        else {
            n3 = 0.48f;
        }
        return n3 * this.mBaselineIconScale;
    }
}
