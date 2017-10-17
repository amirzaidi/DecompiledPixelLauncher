// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;

final class Launcher$20 implements View$OnTouchListener
{
    final /* synthetic */ Launcher this$0;
    
    Launcher$20(final Launcher this$0) {
        this.this$0 = this$0;
    }
    
    public boolean onTouch(final View view, final MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 0xFF) == 0x0) {
            view.performHapticFeedback(1);
        }
        return false;
    }
}
