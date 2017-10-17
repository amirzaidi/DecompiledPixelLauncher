// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import java.util.List;

public interface FolderIcon$PreviewLayoutRule
{
    boolean clipToBackground();
    
    FolderIcon$PreviewItemDrawingParams computePreviewItemDrawingParams(final int p0, final int p1, final FolderIcon$PreviewItemDrawingParams p2);
    
    List getItemsToDisplay(final Folder p0);
    
    void init(final int p0, final int p1, final boolean p2);
    
    int maxNumItems();
}
