// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.graphics.Point;

public class DragOptions
{
    public boolean isAccessibleDrag;
    public DragOptions$PreDragCondition preDragCondition;
    public Point systemDndStartPoint;
    
    public DragOptions() {
        this.isAccessibleDrag = false;
        this.systemDndStartPoint = null;
        this.preDragCondition = null;
    }
}
