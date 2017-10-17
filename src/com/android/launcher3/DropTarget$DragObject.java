// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.dragndrop.DragView;

public class DropTarget$DragObject
{
    public boolean accessibleDrag;
    public boolean cancelled;
    public boolean deferDragViewCleanupPostAnimation;
    public boolean dragComplete;
    public ItemInfo dragInfo;
    public DragSource dragSource;
    public DragView dragView;
    public ItemInfo originalDragInfo;
    public Runnable postAnimationRunnable;
    public DragViewStateAnnouncer stateAnnouncer;
    public int x;
    public int xOffset;
    public int y;
    public int yOffset;
    
    public DropTarget$DragObject() {
        final int n = -1;
        this.x = n;
        this.y = n;
        this.xOffset = n;
        this.yOffset = n;
        this.dragComplete = false;
        this.dragView = null;
        this.dragInfo = null;
        this.originalDragInfo = null;
        this.dragSource = null;
        this.postAnimationRunnable = null;
        this.cancelled = false;
        this.deferDragViewCleanupPostAnimation = true;
    }
    
    public final float[] getVisualCenter(float[] array) {
        if (array == null) {
            array = new float[2];
        }
        final int n = this.x - this.xOffset;
        final int n2 = this.y - this.yOffset;
        array[0] = n + this.dragView.getDragRegion().width() / 2;
        array[1] = this.dragView.getDragRegion().height() / 2 + n2;
        return array;
    }
}
