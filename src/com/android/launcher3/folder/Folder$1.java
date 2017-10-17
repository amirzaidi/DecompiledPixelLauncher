// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;

final class Folder$1 implements OnAlarmListener
{
    final /* synthetic */ Folder this$0;
    
    Folder$1(final Folder this$0) {
        this.this$0 = this$0;
    }
    
    public void onAlarm(final Alarm alarm) {
        this.this$0.mContent.realTimeReorder(this.this$0.mEmptyCellRank, this.this$0.mTargetRank);
        this.this$0.mEmptyCellRank = this.this$0.mTargetRank;
    }
}
