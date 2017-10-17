// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.InvariantDeviceProfile;

public class FolderIconPreviewVerifier
{
    private boolean mDisplayingUpperLeftQuadrant;
    private int mGridCountX;
    private final int[] mGridSize;
    private final int mMaxGridCountX;
    private final int mMaxGridCountY;
    private final int mMaxItemsPerPage;
    
    public FolderIconPreviewVerifier(final InvariantDeviceProfile invariantDeviceProfile) {
        this.mGridSize = new int[2];
        this.mDisplayingUpperLeftQuadrant = false;
        this.mMaxGridCountX = invariantDeviceProfile.numFolderColumns;
        this.mMaxGridCountY = invariantDeviceProfile.numFolderRows;
        this.mMaxItemsPerPage = this.mMaxGridCountX * this.mMaxGridCountY;
    }
    
    public boolean isItemInPreview(final int n) {
        return this.isItemInPreview(0, n);
    }
    
    public boolean isItemInPreview(final int n, final int n2) {
        final int n3 = 2;
        boolean b = true;
        if (n > 0 || this.mDisplayingUpperLeftQuadrant) {
            final int n4 = n2 % this.mGridCountX;
            final int n5 = n2 / this.mGridCountX;
            if (n4 >= n3 || n5 >= n3) {
                b = false;
            }
            return b;
        }
        if (n2 >= FolderIcon.NUM_ITEMS_IN_PREVIEW) {
            b = false;
        }
        return b;
    }
    
    public void setFolderInfo(final FolderInfo folderInfo) {
        boolean mDisplayingUpperLeftQuadrant = false;
        final int size = folderInfo.contents.size();
        FolderPagedView.calculateGridSize(size, 0, 0, this.mMaxGridCountX, this.mMaxGridCountY, this.mMaxItemsPerPage, this.mGridSize);
        this.mGridCountX = this.mGridSize[0];
        if (FeatureFlags.LAUNCHER3_NEW_FOLDER_ANIMATION && (FeatureFlags.LAUNCHER3_LEGACY_FOLDER_ICON ^ true) && size > FolderIcon.NUM_ITEMS_IN_PREVIEW) {
            mDisplayingUpperLeftQuadrant = true;
        }
        this.mDisplayingUpperLeftQuadrant = mDisplayingUpperLeftQuadrant;
    }
}
