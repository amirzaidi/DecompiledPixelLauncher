// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.Alarm;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.OnAlarmListener;

class Folder$OnScrollFinishedListener implements OnAlarmListener
{
    private final DropTarget$DragObject mDragObject;
    final /* synthetic */ Folder this$0;
    
    Folder$OnScrollFinishedListener(final Folder this$0, final DropTarget$DragObject mDragObject) {
        this.this$0 = this$0;
        this.mDragObject = mDragObject;
    }
    
    public void onAlarm(final Alarm alarm) {
        this.this$0.onDragOver(this.mDragObject, 1);
    }
}
