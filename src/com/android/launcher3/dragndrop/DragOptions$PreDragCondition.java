// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import com.android.launcher3.DropTarget$DragObject;

public interface DragOptions$PreDragCondition
{
    void onPreDragEnd(final DropTarget$DragObject p0, final boolean p1);
    
    void onPreDragStart(final DropTarget$DragObject p0);
    
    boolean shouldStartDrag(final double p0);
}
