// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.Alarm;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.OnAlarmListener;

class Folder$OnScrollHintListener implements OnAlarmListener
{
    private final DropTarget$DragObject mDragObject;
    final /* synthetic */ Folder this$0;
    
    Folder$OnScrollHintListener(final Folder this$0, final DropTarget$DragObject mDragObject) {
        this.this$0 = this$0;
        this.mDragObject = mDragObject;
    }
    
    public void onAlarm(final Alarm alarm) {
        final int mCurrentScrollDir = -1;
        if (this.this$0.mCurrentScrollDir == 0) {
            this.this$0.mContent.scrollLeft();
            this.this$0.mScrollHintDir = mCurrentScrollDir;
        }
        else {
            if (this.this$0.mCurrentScrollDir != 1) {
                return;
            }
            this.this$0.mContent.scrollRight();
            this.this$0.mScrollHintDir = mCurrentScrollDir;
        }
        this.this$0.mCurrentScrollDir = mCurrentScrollDir;
        this.this$0.mScrollPauseAlarm.setOnAlarmListener(new Folder$OnScrollFinishedListener(this.this$0, this.mDragObject));
        this.this$0.mScrollPauseAlarm.setAlarm(900L);
    }
}
