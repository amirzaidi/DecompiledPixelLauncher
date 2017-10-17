// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import com.android.launcher3.Launcher;
import android.view.accessibility.AccessibilityManager;
import android.view.View;

public class DragViewStateAnnouncer implements Runnable
{
    private final View mTargetView;
    
    private DragViewStateAnnouncer(final View mTargetView) {
        this.mTargetView = mTargetView;
    }
    
    public static DragViewStateAnnouncer createFor(final View view) {
        if (((AccessibilityManager)view.getContext().getSystemService("accessibility")).isEnabled()) {
            return new DragViewStateAnnouncer(view);
        }
        return null;
    }
    
    public void announce(final CharSequence contentDescription) {
        this.mTargetView.setContentDescription(contentDescription);
        this.mTargetView.removeCallbacks((Runnable)this);
        this.mTargetView.postDelayed((Runnable)this, 200L);
    }
    
    public void cancel() {
        this.mTargetView.removeCallbacks((Runnable)this);
    }
    
    public void completeAction(final int n) {
        this.cancel();
        final Launcher launcher = Launcher.getLauncher(this.mTargetView.getContext());
        launcher.getDragLayer().announceForAccessibility(launcher.getText(n));
    }
    
    public void run() {
        this.mTargetView.sendAccessibilityEvent(4);
    }
}
