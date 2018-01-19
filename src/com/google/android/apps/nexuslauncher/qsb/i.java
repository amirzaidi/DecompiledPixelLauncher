// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import android.content.Context;
import android.view.View;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.widget.PendingItemDragHelper;
import android.graphics.Rect;
import com.android.launcher3.AppInfo;
import com.android.launcher3.dragndrop.BaseItemDragListener;

public class i extends BaseItemDragListener
{
    private final AppInfo dc;
    
    public i(final AppInfo dc, final Rect rect) {
        super(rect, rect.width(), rect.width());
        this.dc = dc;
    }
    
    protected PendingItemDragHelper createDragHelper() {
        final PendingAddShortcutInfo tag = new PendingAddShortcutInfo(new s(this, this.dc.componentName, this.dc.user));
        final View view = new View((Context)this.mLauncher);
        view.setTag((Object)tag);
        return new PendingItemDragHelper(view);
    }
    
    public void fillInLogContainerData(final View view, final ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target, final LauncherLogProto$Target launcherLogProto$Target2) {
    }
    
    public boolean supportsAppInfoDropTarget() {
        return true;
    }
}
