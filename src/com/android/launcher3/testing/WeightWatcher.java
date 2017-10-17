// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.testing;

import android.view.View;
import android.content.ServiceConnection;
import android.content.Intent;
import android.util.AttributeSet;
import android.content.Context;
import android.os.Handler;
import android.widget.LinearLayout;

public class WeightWatcher extends LinearLayout
{
    Handler mHandler;
    MemoryTracker mMemoryService;
    
    public WeightWatcher(final Context context, final AttributeSet set) {
        final int orientation = 1;
        super(context, set);
        this.mHandler = new WeightWatcher$1(this);
        context.bindService(new Intent(context, (Class)MemoryTracker.class), (ServiceConnection)new WeightWatcher$2(this), orientation);
        this.setOrientation(orientation);
        this.setBackgroundColor(-1073741824);
    }
    
    static int indexOf(final int[] array, final int n) {
        for (int i = 0; i < array.length; ++i) {
            if (array[i] == n) {
                return i;
            }
        }
        return -1;
    }
    
    public void initViews() {
        this.removeAllViews();
        final int[] trackedProcesses = this.mMemoryService.getTrackedProcesses();
        for (int i = 0; i < trackedProcesses.length; ++i) {
            final WeightWatcher$ProcessWatcher weightWatcher$ProcessWatcher = new WeightWatcher$ProcessWatcher(this, this.getContext());
            weightWatcher$ProcessWatcher.setPid(trackedProcesses[i]);
            this.addView((View)weightWatcher$ProcessWatcher);
        }
    }
    
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mHandler.sendEmptyMessage(1);
    }
    
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mHandler.sendEmptyMessage(2);
    }
}
