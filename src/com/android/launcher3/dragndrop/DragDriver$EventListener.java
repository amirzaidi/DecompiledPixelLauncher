// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

public interface DragDriver$EventListener
{
    void onDriverDragCancel();
    
    void onDriverDragEnd(final float p0, final float p1);
    
    void onDriverDragExitWindow();
    
    void onDriverDragMove(final float p0, final float p1);
}
