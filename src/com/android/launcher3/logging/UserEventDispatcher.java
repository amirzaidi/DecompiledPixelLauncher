// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.logging;

import android.app.PendingIntent;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action;
import android.content.ComponentName;
import com.android.launcher3.ItemInfo;
import android.util.Log;
import java.util.Locale;
import android.os.SystemClock;
import android.content.Intent;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import android.content.SharedPreferences;
import java.util.UUID;
import com.android.launcher3.Utilities;
import android.content.Context;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import android.view.ViewParent;
import android.view.View;

public class UserEventDispatcher
{
    private static final boolean IS_VERBOSE;
    private long mActionDurationMillis;
    private long mElapsedContainerMillis;
    private long mElapsedSessionMillis;
    private boolean mIsInLandscapeMode;
    private boolean mIsInMultiWindowMode;
    private String mUuidStr;
    
    static {
        IS_VERBOSE = false;
    }
    
    public static UserEventDispatcher$LogContainerProvider getLaunchProviderRecursive(final View view) {
        if (view != null) {
            final ViewParent parent = view.getParent();
            final int n = 5;
            ViewParent parent2 = parent;
            int n2 = n;
            while (parent2 != null) {
                final int n3 = n2 - 1;
                if (n2 <= 0) {
                    break;
                }
                if (parent2 instanceof UserEventDispatcher$LogContainerProvider) {
                    return (UserEventDispatcher$LogContainerProvider)parent2;
                }
                parent2 = parent2.getParent();
                n2 = n3;
            }
            return null;
        }
        return null;
    }
    
    private static String getTargetsStr(final LauncherLogProto$Target[] array) {
        String s = "child:" + LoggerUtils.getTargetStr(array[0]);
        for (int i = 1; i < array.length; ++i) {
            s = s + "\tparent:" + LoggerUtils.getTargetStr(array[i]);
        }
        return s;
    }
    
    public static UserEventDispatcher newInstance(final Context context, final boolean mIsInLandscapeMode, final boolean mIsInMultiWindowMode) {
        final SharedPreferences devicePrefs = Utilities.getDevicePrefs(context);
        final String string = devicePrefs.getString("uuid", (String)null);
        String mUuidStr;
        if (string == null) {
            final String string2 = UUID.randomUUID().toString();
            devicePrefs.edit().putString("uuid", string2).apply();
            mUuidStr = string2;
        }
        else {
            mUuidStr = string;
        }
        final UserEventDispatcher userEventDispatcher = (UserEventDispatcher)Utilities.getOverrideObject(UserEventDispatcher.class, context.getApplicationContext(), 2131492891);
        userEventDispatcher.mIsInLandscapeMode = mIsInLandscapeMode;
        userEventDispatcher.mIsInMultiWindowMode = mIsInMultiWindowMode;
        userEventDispatcher.mUuidStr = mUuidStr;
        return userEventDispatcher;
    }
    
    public void dispatchUserEvent(final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent, final Intent intent) {
        launcherLogProto$LauncherEvent.isInLandscapeMode = this.mIsInLandscapeMode;
        launcherLogProto$LauncherEvent.isInMultiWindowMode = this.mIsInMultiWindowMode;
        launcherLogProto$LauncherEvent.elapsedContainerMillis = SystemClock.uptimeMillis() - this.mElapsedContainerMillis;
        launcherLogProto$LauncherEvent.elapsedSessionMillis = SystemClock.uptimeMillis() - this.mElapsedSessionMillis;
        if (!UserEventDispatcher.IS_VERBOSE) {
            return;
        }
        String s = "action:" + LoggerUtils.getActionStr(launcherLogProto$LauncherEvent.action);
        if (launcherLogProto$LauncherEvent.srcTarget != null && launcherLogProto$LauncherEvent.srcTarget.length > 0) {
            s = s + "\n Source " + getTargetsStr(launcherLogProto$LauncherEvent.srcTarget);
        }
        if (launcherLogProto$LauncherEvent.destTarget != null && launcherLogProto$LauncherEvent.destTarget.length > 0) {
            s = s + "\n Destination " + getTargetsStr(launcherLogProto$LauncherEvent.destTarget);
        }
        Log.d("UserEvent", s + String.format(Locale.US, "\n Elapsed container %d ms session %d ms action %d ms", launcherLogProto$LauncherEvent.elapsedContainerMillis, launcherLogProto$LauncherEvent.elapsedSessionMillis, launcherLogProto$LauncherEvent.actionDurationMillis) + "\n isInLandscapeMode " + launcherLogProto$LauncherEvent.isInLandscapeMode + "\n isInMultiWindowMode " + launcherLogProto$LauncherEvent.isInMultiWindowMode);
    }
    
    protected boolean fillInLogContainerData(final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent, final View view) {
        final int n = 1;
        final UserEventDispatcher$LogContainerProvider launchProviderRecursive = getLaunchProviderRecursive(view);
        if (view == null || (view.getTag() instanceof ItemInfo ^ true) || launchProviderRecursive == null) {
            return false;
        }
        launchProviderRecursive.fillInLogContainerData(view, (ItemInfo)view.getTag(), launcherLogProto$LauncherEvent.srcTarget[0], launcherLogProto$LauncherEvent.srcTarget[n]);
        return n != 0;
    }
    
    protected void fillIntentInfo(final LauncherLogProto$Target launcherLogProto$Target, final Intent intent) {
        launcherLogProto$Target.intentHash = intent.hashCode();
        final ComponentName component = intent.getComponent();
        if (component != null) {
            launcherLogProto$Target.packageNameHash = (this.mUuidStr + component.getPackageName()).hashCode();
            launcherLogProto$Target.componentHash = (this.mUuidStr + component.flattenToString()).hashCode();
        }
    }
    
    public void logActionCommand(final int n, final int n2) {
        this.logActionCommand(n, n2, 0);
    }
    
    public void logActionCommand(final int n, final int n2, final int pageIndex) {
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newCommandAction(n), LoggerUtils.newContainerTarget(n2));
        launcherEvent.srcTarget[0].pageIndex = pageIndex;
        this.dispatchUserEvent(launcherEvent, null);
    }
    
    public void logActionCommand(final int n, final View view, final int containerType) {
        final int type = 3;
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newCommandAction(n), LoggerUtils.newItemTarget(view), LoggerUtils.newTarget(type));
        if (this.fillInLogContainerData(launcherEvent, view)) {
            launcherEvent.srcTarget[0].type = type;
            launcherEvent.srcTarget[0].containerType = containerType;
        }
        this.dispatchUserEvent(launcherEvent, null);
    }
    
    public void logActionOnContainer(final int n, final int n2, final int n3) {
        this.logActionOnContainer(n, n2, n3, 0);
    }
    
    public void logActionOnContainer(final int n, final int dir, final int n2, final int pageIndex) {
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(n), LoggerUtils.newContainerTarget(n2));
        launcherEvent.action.dir = dir;
        launcherEvent.srcTarget[0].pageIndex = pageIndex;
        this.dispatchUserEvent(launcherEvent, null);
    }
    
    public void logActionOnControl(final int n, final int n2) {
        this.logActionOnControl(n, n2, null);
    }
    
    public void logActionOnControl(final int n, final int controlType, final View view) {
        final int n2 = 1;
        final int n3 = 2;
        LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent;
        if (view == null) {
            final LauncherLogProto$Action touchAction = LoggerUtils.newTouchAction(n);
            final LauncherLogProto$Target[] array = new LauncherLogProto$Target[n2];
            array[0] = LoggerUtils.newTarget(n3);
            launcherLogProto$LauncherEvent = LoggerUtils.newLauncherEvent(touchAction, array);
        }
        else {
            final LauncherLogProto$Action touchAction2 = LoggerUtils.newTouchAction(n);
            final LauncherLogProto$Target[] array2 = new LauncherLogProto$Target[n3];
            array2[0] = LoggerUtils.newTarget(n3);
            array2[n2] = LoggerUtils.newTarget(3);
            launcherLogProto$LauncherEvent = LoggerUtils.newLauncherEvent(touchAction2, array2);
        }
        launcherLogProto$LauncherEvent.srcTarget[0].controlType = controlType;
        this.fillInLogContainerData(launcherLogProto$LauncherEvent, view);
        this.dispatchUserEvent(launcherLogProto$LauncherEvent, null);
    }
    
    public void logActionOnItem(final int n, final int dir, final int itemType) {
        final int n2 = 1;
        final LauncherLogProto$Target target = LoggerUtils.newTarget(n2);
        target.itemType = itemType;
        final LauncherLogProto$Action touchAction = LoggerUtils.newTouchAction(n);
        final LauncherLogProto$Target[] array = new LauncherLogProto$Target[n2];
        array[0] = target;
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(touchAction, array);
        launcherEvent.action.dir = dir;
        this.dispatchUserEvent(launcherEvent, null);
    }
    
    public void logActionTapOutside(final LauncherLogProto$Target launcherLogProto$Target) {
        final int isOutside = 1;
        final LauncherLogProto$Action touchAction = LoggerUtils.newTouchAction(0);
        final LauncherLogProto$Target[] array = new LauncherLogProto$Target[isOutside];
        array[0] = launcherLogProto$Target;
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(touchAction, array);
        launcherEvent.action.isOutside = (isOutside != 0);
        this.dispatchUserEvent(launcherEvent, null);
    }
    
    public void logAppLaunch(final View view, final Intent intent) {
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(0), LoggerUtils.newItemTarget(view), LoggerUtils.newTarget(3));
        if (this.fillInLogContainerData(launcherEvent, view)) {
            this.fillIntentInfo(launcherEvent.srcTarget[0], intent);
        }
        this.dispatchUserEvent(launcherEvent, intent);
    }
    
    public void logDeepShortcutsOpen(final View view) {
        final int n = 1;
        final UserEventDispatcher$LogContainerProvider launchProviderRecursive = getLaunchProviderRecursive(view);
        if (view == null || (view.getTag() instanceof ItemInfo ^ true)) {
            return;
        }
        final ItemInfo itemInfo = (ItemInfo)view.getTag();
        final LauncherLogProto$Action touchAction = LoggerUtils.newTouchAction(n);
        final LauncherLogProto$Target[] array = { LoggerUtils.newItemTarget(itemInfo), null };
        array[n] = LoggerUtils.newTarget(3);
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(touchAction, array);
        launchProviderRecursive.fillInLogContainerData(view, itemInfo, launcherEvent.srcTarget[0], launcherEvent.srcTarget[n]);
        this.dispatchUserEvent(launcherEvent, null);
        this.resetElapsedContainerMillis();
    }
    
    public void logDragNDrop(final DropTarget$DragObject dropTarget$DragObject, final View view) {
        final int n = 2;
        final int n2 = 1;
        final LauncherLogProto$Action touchAction = LoggerUtils.newTouchAction(n);
        final LauncherLogProto$Target[] array = new LauncherLogProto$Target[n];
        array[0] = LoggerUtils.newItemTarget(dropTarget$DragObject.originalDragInfo);
        array[n2] = LoggerUtils.newTarget(3);
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(touchAction, array);
        final LauncherLogProto$Target[] destTarget = new LauncherLogProto$Target[n];
        destTarget[0] = LoggerUtils.newItemTarget(dropTarget$DragObject.originalDragInfo);
        destTarget[n2] = LoggerUtils.newDropTarget(view);
        launcherEvent.destTarget = destTarget;
        dropTarget$DragObject.dragSource.fillInLogContainerData(null, dropTarget$DragObject.originalDragInfo, launcherEvent.srcTarget[0], launcherEvent.srcTarget[n2]);
        if (view instanceof UserEventDispatcher$LogContainerProvider) {
            ((UserEventDispatcher$LogContainerProvider)view).fillInLogContainerData(null, dropTarget$DragObject.dragInfo, launcherEvent.destTarget[0], launcherEvent.destTarget[n2]);
        }
        launcherEvent.actionDurationMillis = SystemClock.uptimeMillis() - this.mActionDurationMillis;
        this.dispatchUserEvent(launcherEvent, null);
    }
    
    public void logNotificationLaunch(final View view, final PendingIntent pendingIntent) {
        final LauncherLogProto$LauncherEvent launcherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(0), LoggerUtils.newItemTarget(view), LoggerUtils.newTarget(3));
        if (this.fillInLogContainerData(launcherEvent, view)) {
            launcherEvent.srcTarget[0].packageNameHash = (this.mUuidStr + pendingIntent.getCreatorPackage()).hashCode();
        }
        this.dispatchUserEvent(launcherEvent, null);
    }
    
    public void logOverviewReorder() {
        final int n = 2;
        final int n2 = 1;
        final LauncherLogProto$Action touchAction = LoggerUtils.newTouchAction(n);
        final LauncherLogProto$Target[] array = new LauncherLogProto$Target[n];
        array[0] = LoggerUtils.newContainerTarget(n2);
        array[n2] = LoggerUtils.newContainerTarget(6);
        this.dispatchUserEvent(LoggerUtils.newLauncherEvent(touchAction, array), null);
    }
    
    public final void resetActionDurationMillis() {
        this.mActionDurationMillis = SystemClock.uptimeMillis();
    }
    
    public final void resetElapsedContainerMillis() {
        this.mElapsedContainerMillis = SystemClock.uptimeMillis();
    }
    
    public final void resetElapsedSessionMillis() {
        this.mElapsedSessionMillis = SystemClock.uptimeMillis();
        this.mElapsedContainerMillis = SystemClock.uptimeMillis();
    }
}
