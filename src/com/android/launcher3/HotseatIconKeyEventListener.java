// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnKeyListener;

class HotseatIconKeyEventListener implements View$OnKeyListener
{
    public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
        return FocusHelper.handleHotseatButtonKeyEvent(view, n, keyEvent);
    }
}
