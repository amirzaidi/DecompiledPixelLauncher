// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;

final class Folder$2 implements OnAlarmListener
{
    final /* synthetic */ Folder this$0;
    
    Folder$2(final Folder this$0) {
        this.this$0 = this$0;
    }
    
    public void onAlarm(final Alarm alarm) {
        this.this$0.completeDragExit();
    }
}
