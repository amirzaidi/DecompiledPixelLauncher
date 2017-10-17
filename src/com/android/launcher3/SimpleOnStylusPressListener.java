// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.MotionEvent;
import android.view.View;

public class SimpleOnStylusPressListener implements StylusEventHelper$StylusButtonListener
{
    private View mView;
    
    public SimpleOnStylusPressListener(final View mView) {
        this.mView = mView;
    }
    
    public boolean onPressed(final MotionEvent motionEvent) {
        return this.mView.isLongClickable() && this.mView.performLongClick();
    }
    
    public boolean onReleased(final MotionEvent motionEvent) {
        return false;
    }
}
