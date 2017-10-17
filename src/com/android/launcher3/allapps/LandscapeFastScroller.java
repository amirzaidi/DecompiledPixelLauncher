// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.view.MotionEvent;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.views.RecyclerViewFastScroller;

public class LandscapeFastScroller extends RecyclerViewFastScroller
{
    public LandscapeFastScroller(final Context context) {
        super(context);
    }
    
    public LandscapeFastScroller(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public LandscapeFastScroller(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public boolean handleTouchEvent(final MotionEvent motionEvent) {
        return false;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final boolean b = true;
        motionEvent.offsetLocation(0.0f, (float)(-this.mRv.getPaddingTop()));
        if (super.handleTouchEvent(motionEvent)) {
            this.getParent().requestDisallowInterceptTouchEvent(b);
        }
        motionEvent.offsetLocation(0.0f, (float)this.mRv.getPaddingTop());
        return b;
    }
    
    public boolean shouldBlockIntercept(final int n, final int n2) {
        boolean b = false;
        if (n >= 0 && n < this.getWidth() && n2 >= 0 && n2 < this.getHeight()) {
            b = true;
        }
        return b;
    }
}
