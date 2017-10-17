// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import android.view.View$OnLongClickListener;
import android.view.View$OnClickListener;

public abstract class OverviewButtonClickListener implements View$OnClickListener, View$OnLongClickListener
{
    private int mControlType;
    
    public OverviewButtonClickListener(final int mControlType) {
        this.mControlType = mControlType;
    }
    
    private void handleViewClick(final View view, final int n) {
        this.handleViewClick(view);
        Launcher.getLauncher(view.getContext()).getUserEventDispatcher().logActionOnControl(n, this.mControlType);
    }
    
    private boolean shouldPerformClick(final View view) {
        return Launcher.getLauncher(view.getContext()).getWorkspace().isSwitchingState() ^ true;
    }
    
    public void attachTo(final View view) {
        view.setOnClickListener((View$OnClickListener)this);
        view.setOnLongClickListener((View$OnLongClickListener)this);
    }
    
    public abstract void handleViewClick(final View p0);
    
    public void onClick(final View view) {
        if (this.shouldPerformClick(view)) {
            this.handleViewClick(view, 0);
        }
    }
    
    public boolean onLongClick(final View view) {
        final int n = 1;
        if (this.shouldPerformClick(view)) {
            this.handleViewClick(view, n);
        }
        return n != 0;
    }
}
