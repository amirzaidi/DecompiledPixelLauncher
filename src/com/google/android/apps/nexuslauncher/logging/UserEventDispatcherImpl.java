// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.logging;

import com.android.launcher3.Utilities;
import com.android.launcher3.ItemInfo;
import android.view.View;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action;
import android.content.Intent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.logging.LoggerUtils;
import android.content.Context;
import com.google.android.apps.nexuslauncher.reflection.l;
import com.android.launcher3.logging.UserEventDispatcher;

public class UserEventDispatcherImpl extends UserEventDispatcher
{
    private final a db;
    private final ThreadLocal dc;
    private final l dd;
    
    public UserEventDispatcherImpl(final Context context) {
        this.dc = new ThreadLocal();
        this.db = new a(context);
        this.dd = l.getInstance(context);
    }
    
    public void cz(final int spanX) {
        final int n = 1;
        final LauncherLogProto$Action touchAction = LoggerUtils.newTouchAction(0);
        final LauncherLogProto$Target[] array = new LauncherLogProto$Target[n];
        array[0] = LoggerUtils.newTarget(n);
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(touchAction, array);
        launcherEvent.srcTarget[0].itemType = 6;
        launcherEvent.srcTarget[0].spanX = spanX;
        this.dispatchUserEvent(launcherEvent, null);
    }
    
    public void dispatchUserEvent(final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent, final Intent intent) {
        super.dispatchUserEvent(launcherLogProto$LauncherEvent, intent);
        this.db.cy(launcherLogProto$LauncherEvent);
        final ComponentKey componentKey = this.dc.get();
        if (componentKey != null) {
            this.dd.cu(componentKey, launcherLogProto$LauncherEvent);
        }
    }
    
    public void logAppLaunch(final View view, final Intent intent) {
        if (view != null && view.getTag() instanceof ItemInfo && Utilities.isLauncherAppTarget(intent)) {
            this.dc.set(new ComponentKey(intent.getComponent(), ((ItemInfo)view.getTag()).user));
        }
        super.logAppLaunch(view, intent);
        this.dc.set(null);
    }
}
