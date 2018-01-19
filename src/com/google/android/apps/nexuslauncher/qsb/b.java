// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import android.content.Context;
import android.view.View;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import com.android.launcher3.widget.PendingItemDragHelper;
import com.android.launcher3.Launcher;
import android.graphics.Rect;
import android.content.pm.LauncherActivityInfo;
import com.android.launcher3.dragndrop.BaseItemDragListener;

public class b extends BaseItemDragListener
{
    private final LauncherActivityInfo cv;
    
    public b(final LauncherActivityInfo cv, final Rect rect) {
        super(rect, rect.width(), rect.width());
        this.cv = cv;
    }
    
    protected PendingItemDragHelper createDragHelper() {
        final k tag = new k(this, new j(this, this.cv));
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
