// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.graphics.drawable.ColorDrawable;

class DragView$FixedSizeEmptyDrawable extends ColorDrawable
{
    private final int mSize;
    
    public DragView$FixedSizeEmptyDrawable(final int mSize) {
        super(0);
        this.mSize = mSize;
    }
    
    public int getIntrinsicHeight() {
        return this.mSize;
    }
    
    public int getIntrinsicWidth() {
        return this.mSize;
    }
}
