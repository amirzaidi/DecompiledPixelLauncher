// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.view.MotionEvent;
import android.view.View;

public interface SwipeHelper$Callback
{
    boolean canChildBeDismissed(final View p0);
    
    View getChildAtPosition(final MotionEvent p0);
    
    float getFalsingThresholdFactor();
    
    boolean isAntiFalsingNeeded();
    
    void onBeginDrag(final View p0);
    
    void onChildDismissed(final View p0);
    
    void onChildSnappedBack(final View p0, final float p1);
    
    void onDragCancelled(final View p0);
    
    boolean updateSwipeProgress(final View p0, final boolean p1, final float p2);
}
