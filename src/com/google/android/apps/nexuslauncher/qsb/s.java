// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import android.content.Context;
import android.view.View;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.widget.PendingItemDragHelper;
import android.graphics.Rect;
import com.android.launcher3.AppInfo;
import com.android.launcher3.dragndrop.BaseItemDragListener;
import com.android.launcher3.FastBitmapDrawable;
import android.graphics.drawable.Drawable;
import com.android.launcher3.IconCache;
import com.android.launcher3.ShortcutInfo;
import android.os.UserHandle;
import android.content.ComponentName;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;

final class s extends ShortcutConfigActivityInfo
{
    final /* synthetic */ i dm;
    
    s(final i dm, final ComponentName componentName, final UserHandle userHandle) {
        this.dm = dm;
        super(componentName, userHandle);
    }
    
    public ShortcutInfo createShortcutInfo() {
        return this.dm.dc.makeShortcut();
    }
    
    public Drawable getFullResIcon(final IconCache iconCache) {
        return new FastBitmapDrawable(this.dm.dc.iconBitmap);
    }
    
    public CharSequence getLabel() {
        return this.dm.dc.title;
    }
}
