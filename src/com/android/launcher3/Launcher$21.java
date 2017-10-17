// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;

final class Launcher$21 implements View$OnTouchListener
{
    final /* synthetic */ Launcher this$0;
    
    Launcher$21(final Launcher this$0) {
        this.this$0 = this$0;
    }
    
    public boolean onTouch(final View view, final MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 0xFF) == 0x0) {
            view.performHapticFeedback(1);
        }
        return false;
    }
}
