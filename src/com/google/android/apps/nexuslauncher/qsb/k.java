// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import android.content.Context;
import android.view.View;
import com.android.launcher3.widget.PendingItemDragHelper;
import com.android.launcher3.Launcher;
import android.graphics.Rect;
import android.content.pm.LauncherActivityInfo;
import com.android.launcher3.dragndrop.BaseItemDragListener;
import com.android.launcher3.AppInfo;
import android.content.Intent;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import com.android.launcher3.widget.PendingAddShortcutInfo;

final class k extends PendingAddShortcutInfo
{
    final /* synthetic */ b de;
    
    k(final b de, final ShortcutConfigActivityInfo shortcutConfigActivityInfo) {
        this.de = de;
        super(shortcutConfigActivityInfo);
    }
    
    public Intent getIntent() {
        return AppInfo.makeLaunchIntent(this.de.cv);
    }
}
