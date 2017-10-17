// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import com.android.launcher3.Workspace;
import android.view.View;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;

public class SpringLoadedDragController implements OnAlarmListener
{
    final long ENTER_SPRING_LOAD_CANCEL_HOVER_TIME;
    final long ENTER_SPRING_LOAD_HOVER_TIME;
    Alarm mAlarm;
    private Launcher mLauncher;
    private CellLayout mScreen;
    
    public SpringLoadedDragController(final Launcher mLauncher) {
        this.ENTER_SPRING_LOAD_HOVER_TIME = 500L;
        this.ENTER_SPRING_LOAD_CANCEL_HOVER_TIME = 950L;
        this.mLauncher = mLauncher;
        (this.mAlarm = new Alarm()).setOnAlarmListener(this);
    }
    
    public void cancel() {
        this.mAlarm.cancelAlarm();
    }
    
    public void onAlarm(final Alarm alarm) {
        if (this.mScreen != null) {
            final Workspace workspace = this.mLauncher.getWorkspace();
            final int indexOfChild = workspace.indexOfChild((View)this.mScreen);
            if (indexOfChild != workspace.getCurrentPage()) {
                workspace.snapToPage(indexOfChild);
            }
        }
        else {
            this.mLauncher.getDragController().cancelDrag();
        }
    }
    
    public void setAlarm(final CellLayout mScreen) {
        this.mAlarm.cancelAlarm();
        final Alarm mAlarm = this.mAlarm;
        long alarm;
        if (mScreen == null) {
            alarm = 950L;
        }
        else {
            alarm = 500L;
        }
        mAlarm.setAlarm(alarm);
        this.mScreen = mScreen;
    }
}
