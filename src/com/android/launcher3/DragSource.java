// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import com.android.launcher3.logging.UserEventDispatcher$LogContainerProvider;

public interface DragSource extends UserEventDispatcher$LogContainerProvider
{
    float getIntrinsicIconScaleFactor();
    
    void onDropCompleted(final View p0, final DropTarget$DragObject p1, final boolean p2, final boolean p3);
    
    boolean supportsAppInfoDropTarget();
    
    boolean supportsDeleteDropTarget();
}
