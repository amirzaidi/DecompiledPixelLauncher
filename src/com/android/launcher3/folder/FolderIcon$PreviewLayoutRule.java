// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

interface FolderIcon$PreviewLayoutRule
{
    boolean clipToBackground();
    
    PreviewItemDrawingParams computePreviewItemDrawingParams(final int p0, final int p1, final PreviewItemDrawingParams p2);
    
    int getEnterIndex();
    
    int getExitIndex();
    
    float getIconSize();
    
    boolean hasEnterExitIndices();
    
    void init(final int p0, final float p1, final boolean p2);
    
    int maxNumItems();
    
    float scaleForItem(final int p0, final int p1);
}
