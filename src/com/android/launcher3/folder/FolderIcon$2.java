// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;

final class FolderIcon$2 implements OnAlarmListener
{
    final /* synthetic */ FolderIcon this$0;
    
    FolderIcon$2(final FolderIcon this$0) {
        this.this$0 = this$0;
    }
    
    public void onAlarm(final Alarm alarm) {
        this.this$0.mFolder.beginExternalDrag();
        this.this$0.mFolder.animateOpen();
    }
}
