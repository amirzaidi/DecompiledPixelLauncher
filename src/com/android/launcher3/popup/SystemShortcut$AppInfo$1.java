// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import com.android.launcher3.UninstallDropTarget$DropTargetResultCallback;
import com.android.launcher3.InfoDropTarget;
import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.ItemInfo;
import android.view.View$OnClickListener;

final class SystemShortcut$AppInfo$1 implements View$OnClickListener
{
    final /* synthetic */ SystemShortcut$AppInfo this$1;
    final /* synthetic */ ItemInfo val$itemInfo;
    final /* synthetic */ Launcher val$launcher;
    
    SystemShortcut$AppInfo$1(final SystemShortcut$AppInfo this$1, final Launcher val$launcher, final ItemInfo val$itemInfo) {
        this.this$1 = this$1;
        this.val$launcher = val$launcher;
        this.val$itemInfo = val$itemInfo;
    }
    
    public void onClick(final View view) {
        InfoDropTarget.startDetailsActivityForInfo(this.val$itemInfo, this.val$launcher, null, this.val$launcher.getViewBounds(view), this.val$launcher.getActivityLaunchOptions(view));
    }
}
