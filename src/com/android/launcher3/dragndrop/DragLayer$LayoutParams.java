// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.view.ViewGroup$LayoutParams;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.InsettableFrameLayout$LayoutParams;

public class DragLayer$LayoutParams extends InsettableFrameLayout$LayoutParams
{
    public boolean customPosition;
    public int x;
    public int y;
    
    public DragLayer$LayoutParams(final int n, final int n2) {
        super(n, n2);
        this.customPosition = false;
    }
    
    public DragLayer$LayoutParams(final Context context, final AttributeSet set) {
        super(context, set);
        this.customPosition = false;
    }
    
    public DragLayer$LayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.customPosition = false;
    }
    
    public int getHeight() {
        return this.height;
    }
    
    public int getWidth() {
        return this.width;
    }
    
    public int getX() {
        return this.x;
    }
    
    public int getY() {
        return this.y;
    }
    
    public void setHeight(final int height) {
        this.height = height;
    }
    
    public void setWidth(final int width) {
        this.width = width;
    }
    
    public void setX(final int x) {
        this.x = x;
    }
    
    public void setY(final int y) {
        this.y = y;
    }
}
