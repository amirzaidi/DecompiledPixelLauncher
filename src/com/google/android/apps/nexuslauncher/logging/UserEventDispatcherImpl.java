// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.logging;

import com.android.launcher3.userevent.nano.LauncherLogExtensions$TargetExtension;
import com.android.launcher3.Utilities;
import com.android.launcher3.ItemInfo;
import android.view.View;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.util.ComponentKey;
import android.content.Intent;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import android.content.Context;
import com.google.android.apps.nexuslauncher.reflection.o;
import com.android.launcher3.logging.UserEventDispatcher;

public class UserEventDispatcherImpl extends UserEventDispatcher
{
    private static b gq;
    private final a gm;
    private final ThreadLocal gn;
    private final com.google.android.apps.nexuslauncher.reflection.a.a go;
    private final o gp;
    private final Context mContext;
    
    static {
        UserEventDispatcherImpl.gq = null;
    }
    
    public UserEventDispatcherImpl(final Context mContext) {
        this.gn = new ThreadLocal();
        this.mContext = mContext;
        this.gm = new a(mContext);
        this.gp = o.getInstance(mContext);
        if (!(boolean)com.google.android.apps.nexuslauncher.experiment.a.fb.get()) {
            this.go = com.google.android.apps.nexuslauncher.reflection.a.a.getInstance(mContext);
        }
        else {
            this.go = null;
        }
    }
    
    private static b eX(final Context context) {
        synchronized (UserEventDispatcherImpl.class) {
            if (UserEventDispatcherImpl.gq == null) {
                UserEventDispatcherImpl.gq = new b(context.getApplicationContext());
            }
            return UserEventDispatcherImpl.gq;
        }
    }
    
    public void dispatchUserEvent(final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent, final Intent intent) {
        final ComponentKey componentKey = this.gn.get();
        final b ex = eX(this.mContext);
        if (componentKey != null && ex.gr) {
            launcherLogProto$LauncherEvent.srcTarget[0].predictedRank = ex.mApps.indexOf(componentKey);
            if (this.go != null && ((boolean)com.google.android.apps.nexuslauncher.experiment.a.fb.get() ^ true)) {
                this.go.g(componentKey, launcherLogProto$LauncherEvent);
            }
        }
        super.dispatchUserEvent(launcherLogProto$LauncherEvent, intent);
        this.gm.eT(launcherLogProto$LauncherEvent);
        if (componentKey != null) {
            this.gp.bB(componentKey, launcherLogProto$LauncherEvent);
        }
    }
    
    public void eU(final int n, final int pageIndex) {
        final int n2 = 1;
        final LauncherLogProto$Action touchAction = LoggerUtils.newTouchAction(0);
        final LauncherLogProto$Target[] array = { LoggerUtils.newTarget(n2), null };
        array[n2] = LoggerUtils.newContainerTarget(n);
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(touchAction, array);
        launcherEvent.srcTarget[0].itemType = 6;
        launcherEvent.srcTarget[0].pageIndex = pageIndex;
        this.dispatchUserEvent(launcherEvent, null);
    }
    
    public void eV(final View view, final ItemInfo itemInfo, final int containerType) {
        final int n = 2;
        final int n2 = 3;
        if (view != null && Utilities.isLauncherAppTarget(itemInfo.getIntent())) {
            this.gn.set(new ComponentKey(itemInfo.getTargetComponent(), itemInfo.user));
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
        this.gn.set(null);
    }
    
    public void eW(final int smartspaceType) {
        final int n = 1;
        final LauncherLogProto$Action touchAction = LoggerUtils.newTouchAction(0);
        final LauncherLogProto$Target[] array = new LauncherLogProto$Target[n];
        array[0] = LoggerUtils.newTarget(n, new LauncherLogExtensions$TargetExtension());
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(touchAction, array);
        launcherEvent.srcTarget[0].extension.smartspaceType = smartspaceType;
        this.dispatchUserEvent(launcherEvent, null);
    }
    
    public void logAppLaunch(final View view, final Intent intent) {
        if (view != null && view.getTag() instanceof ItemInfo && Utilities.isLauncherAppTarget(intent)) {
            this.gn.set(new ComponentKey(intent.getComponent(), ((ItemInfo)view.getTag()).user));
        }
        super.logAppLaunch(view, intent);
        this.gn.set(null);
    }
}
