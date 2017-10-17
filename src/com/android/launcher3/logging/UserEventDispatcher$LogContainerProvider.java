// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.logging;

import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import android.view.View;

public interface UserEventDispatcher$LogContainerProvider
{
    void fillInLogContainerData(final View p0, final ItemInfo p1, final LauncherLogProto$Target p2, final LauncherLogProto$Target p3);
}
