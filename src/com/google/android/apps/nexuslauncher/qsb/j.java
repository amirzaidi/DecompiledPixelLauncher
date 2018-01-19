// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import android.view.View;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import com.android.launcher3.widget.PendingItemDragHelper;
import com.android.launcher3.Launcher;
import android.graphics.Rect;
import com.android.launcher3.dragndrop.BaseItemDragListener;
import android.content.Context;
import com.android.launcher3.InstallShortcutReceiver;
import com.android.launcher3.ShortcutInfo;
import android.content.pm.LauncherActivityInfo;
import com.android.launcher3.compat.ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;

final class j extends ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO
{
    final /* synthetic */ b dd;
    
    j(final b dd, final LauncherActivityInfo launcherActivityInfo) {
        this.dd = dd;
        super(launcherActivityInfo);
    }
    
    public ShortcutInfo createShortcutInfo() {
        return InstallShortcutReceiver.fromActivityInfo(this.dd.cv, (Context)this.dd.mLauncher);
    }
    
    public int getItemType() {
        return 0;
    }
}
