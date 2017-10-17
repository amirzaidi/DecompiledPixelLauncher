// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.Rect;

public interface DropTarget
{
    boolean acceptDrop(final DropTarget$DragObject p0);
    
    void getHitRectRelativeToDragLayer(final Rect p0);
    
    boolean isDropEnabled();
    
    void onDragEnter(final DropTarget$DragObject p0);
    
    void onDragExit(final DropTarget$DragObject p0);
    
    void onDragOver(final DropTarget$DragObject p0);
    
    void onDrop(final DropTarget$DragObject p0);
    
    void prepareAccessibilityDrop();
}
