// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.config.FeatureFlags;
import java.util.Collection;
import java.util.ArrayList;
import java.util.List;

public class ClippedFolderIconLayoutRule implements FolderIcon$PreviewLayoutRule
{
    final float ITEM_RADIUS_SCALE_FACTOR;
    final float MAX_RADIUS_DILATION;
    final float MAX_SCALE;
    final float MIN_SCALE;
    private float mAvailableSpace;
    private float mBaselineIconScale;
    private float mIconSize;
    private boolean mIsRtl;
    private float mRadius;
    private float[] mTmpPoint;
    
    public ClippedFolderIconLayoutRule() {
        this.MIN_SCALE = 0.48f;
        this.MAX_SCALE = 0.58f;
        this.MAX_RADIUS_DILATION = 0.15f;
        this.ITEM_RADIUS_SCALE_FACTOR = 1.33f;
        this.mTmpPoint = new float[2];
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
    
    public FolderIcon$PreviewItemDrawingParams computePreviewItemDrawingParams(final int n, final int n2, FolderIcon$PreviewItemDrawingParams folderIcon$PreviewItemDrawingParams) {
        final float n3 = 2.0f;
        final float scaleForItem = this.scaleForItem(n, n2);
        float n5;
        float n4;
        if (n >= 4) {
            n4 = (n5 = this.mAvailableSpace / n3 - this.mIconSize * scaleForItem / n3);
        }
        else {
            this.getPosition(n, n2, this.mTmpPoint);
            n4 = this.mTmpPoint[0];
            n5 = this.mTmpPoint[1];
        }
        if (folderIcon$PreviewItemDrawingParams == null) {
            folderIcon$PreviewItemDrawingParams = new FolderIcon$PreviewItemDrawingParams(n4, n5, scaleForItem, 0.0f);
        }
        else {
            folderIcon$PreviewItemDrawingParams.update(n4, n5, scaleForItem);
            folderIcon$PreviewItemDrawingParams.overlayAlpha = 0.0f;
        }
        return folderIcon$PreviewItemDrawingParams;
    }
    
    public List getItemsToDisplay(final Folder folder) {
        final int n = 4;
        final ArrayList list = new ArrayList(folder.getItemsInReadingOrder());
        final int size = list.size();
        if (FeatureFlags.LAUNCHER3_NEW_FOLDER_ANIMATION && size > n) {
            for (int i = folder.mContent.getPageAt(0).getCountX() - 2; i > 0; --i) {
                list.remove(2);
            }
        }
        return list.subList(0, Math.min(size, n));
    }
    
    public void init(final int n, final int n2, final boolean mIsRtl) {
        this.mAvailableSpace = n;
        this.mRadius = n * 1.33f / 2.0f;
        this.mIconSize = n2;
        this.mIsRtl = mIsRtl;
        this.mBaselineIconScale = n / (n2 * 1.0f);
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
