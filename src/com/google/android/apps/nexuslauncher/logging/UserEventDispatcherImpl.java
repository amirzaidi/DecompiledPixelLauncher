// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.logging;

import android.content.Intent;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.Utilities;
import com.android.launcher3.ItemInfo;
import android.view.View;
import android.content.Context;
import com.google.android.apps.nexuslauncher.reflection.c;
import com.android.launcher3.logging.UserEventDispatcher;

public class UserEventDispatcherImpl extends UserEventDispatcher
{
    private final a bO;
    private final ThreadLocal bP;
    private final c bQ;
    
    public UserEventDispatcherImpl(final Context context) {
        this.bP = new ThreadLocal();
        this.bO = new a(context);
        this.bQ = c.getInstance(context);
    }
    
    public void bn(final View view, final ItemInfo itemInfo, final int containerType) {
        final int n = 2;
        final int n2 = 3;
        if (view != null && Utilities.isLauncherAppTarget(itemInfo.getIntent())) {
            this.bP.set(new ComponentKey(itemInfo.getTargetComponent(), itemInfo.user));
        }
        final LauncherLogProto$Action touchAction = LoggerUtils.newTouchAction(0);
        final LauncherLogProto$Target[] array = new LauncherLogProto$Target[n2];
        array[0] = LoggerUtils.newItemTarget(view);
        array[1] = LoggerUtils.newTarget(n2);
        array[n] = LoggerUtils.newTarget(n2);
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(touchAction, array);
        if (this.fillInLogContainerData(launcherEvent, view)) {
            this.fillIntentInfo(launcherEvent.srcTarget[0], itemInfo.getIntent());
        }
        launcherEvent.srcTarget[n].containerType = containerType;
        this.dispatchUserEvent(launcherEvent, itemInfo.getIntent());
        this.bP.set(null);
    }
    
    public void bo(final int n) {
        final int n2 = 1;
        final LauncherLogProto$Action touchAction = LoggerUtils.newTouchAction(0);
        final LauncherLogProto$Target[] array = { LoggerUtils.newTarget(n2), null };
        array[n2] = LoggerUtils.newContainerTarget(n);
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(touchAction, array);
        launcherEvent.srcTarget[0].itemType = 6;
        this.dispatchUserEvent(launcherEvent, null);
    }
    
    public void bp(final int spanX) {
        final int n = 1;
        final LauncherLogProto$Action touchAction = LoggerUtils.newTouchAction(0);
        final LauncherLogProto$Target[] array = new LauncherLogProto$Target[n];
        array[0] = LoggerUtils.newTarget(n);
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(touchAction, array);
        launcherEvent.srcTarget[0].itemType = 3;
        launcherEvent.srcTarget[0].spanX = spanX;
        this.dispatchUserEvent(launcherEvent, null);
    }
    
    public void dispatchUserEvent(final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent, final Intent intent) {
        super.dispatchUserEvent(launcherLogProto$LauncherEvent, intent);
        this.bO.bm(launcherLogProto$LauncherEvent);
        final ComponentKey componentKey = this.bP.get();
        if (componentKey != null) {
            this.bQ.aC(componentKey, launcherLogProto$LauncherEvent);
        }
    }
    
    public void logAppLaunch(final View view, final Intent intent) {
        if (view != null && view.getTag() instanceof ItemInfo && Utilities.isLauncherAppTarget(intent)) {
            this.bP.set(new ComponentKey(intent.getComponent(), ((ItemInfo)view.getTag()).user));
        }
        super.logAppLaunch(view, intent);
        this.bP.set(null);
    }
}
