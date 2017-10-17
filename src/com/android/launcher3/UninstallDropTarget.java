// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Bundle;
import android.os.UserManager;
import android.os.Parcelable;
import android.net.Uri;
import android.widget.Toast;
import android.content.pm.LauncherActivityInfo;
import android.os.UserHandle;
import android.content.Intent;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.content.ComponentName;
import android.util.AttributeSet;
import android.content.Context;

public class UninstallDropTarget extends ButtonDropTarget
{
    public UninstallDropTarget(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public UninstallDropTarget(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    private static ComponentName getUninstallTarget(final Context context, final Object o) {
        Intent intent = null;
        UserHandle userHandle = null;
        Label_0025: {
            if (o instanceof AppInfo) {
                final AppInfo appInfo = (AppInfo)o;
                intent = appInfo.intent;
                userHandle = appInfo.user;
            }
            else {
                if (o instanceof ShortcutInfo) {
                    final ShortcutInfo shortcutInfo = (ShortcutInfo)o;
                    if (shortcutInfo.itemType == 0) {
                        intent = shortcutInfo.intent;
                        userHandle = shortcutInfo.user;
                        break Label_0025;
                    }
                }
                userHandle = null;
                intent = null;
            }
        }
        if (intent != null) {
            final LauncherActivityInfo resolveActivity = LauncherAppsCompat.getInstance(context).resolveActivity(intent, userHandle);
            if (resolveActivity != null && (resolveActivity.getApplicationInfo().flags & 0x1) == 0x0) {
                return resolveActivity.getComponentName();
            }
        }
        return null;
    }
    
    protected static void sendUninstallResult(final Launcher launcher, final boolean b, final ComponentName componentName, final UserHandle userHandle, final UninstallDropTarget$DropTargetResultCallback uninstallDropTarget$DropTargetResultCallback) {
        if (b) {
            launcher.addOnResumeCallback(new UninstallDropTarget$1(launcher, componentName, userHandle, uninstallDropTarget$DropTargetResultCallback));
        }
        else {
            uninstallDropTarget$DropTargetResultCallback.onDragObjectRemoved(false);
        }
    }
    
    public static boolean startUninstallActivity(final Launcher launcher, final ItemInfo itemInfo) {
        return startUninstallActivity(launcher, itemInfo, null);
    }
    
    public static boolean startUninstallActivity(final Launcher launcher, final ItemInfo itemInfo, final UninstallDropTarget$DropTargetResultCallback uninstallDropTarget$DropTargetResultCallback) {
        boolean b = false;
        final ComponentName uninstallTarget = getUninstallTarget((Context)launcher, itemInfo);
        if (uninstallTarget == null) {
            Toast.makeText((Context)launcher, 2131492931, 0).show();
        }
        else {
            final Intent setFlags = new Intent("android.intent.action.DELETE", Uri.fromParts("package", uninstallTarget.getPackageName(), uninstallTarget.getClassName())).setFlags(276824064);
            setFlags.putExtra("android.intent.extra.USER", (Parcelable)itemInfo.user);
            launcher.startActivity(setFlags);
            b = true;
        }
        if (uninstallDropTarget$DropTargetResultCallback != null) {
            sendUninstallResult(launcher, b, uninstallTarget, itemInfo.user, uninstallDropTarget$DropTargetResultCallback);
        }
        return b;
    }
    
    public static boolean supportsDrop(final Context context, final Object o) {
        final Bundle userRestrictions = ((UserManager)context.getSystemService("user")).getUserRestrictions();
        return !userRestrictions.getBoolean("no_control_apps", false) && !userRestrictions.getBoolean("no_uninstall_apps", false) && getUninstallTarget(context, o) != null;
    }
    
    public void completeDrop(final DropTarget$DragObject dropTarget$DragObject) {
        UninstallDropTarget$DropTargetResultCallback uninstallDropTarget$DropTargetResultCallback;
        if (dropTarget$DragObject.dragSource instanceof UninstallDropTarget$DropTargetResultCallback) {
            uninstallDropTarget$DropTargetResultCallback = (UninstallDropTarget$DropTargetResultCallback)dropTarget$DragObject.dragSource;
        }
        else {
            uninstallDropTarget$DropTargetResultCallback = null;
        }
        startUninstallActivity(this.mLauncher, dropTarget$DragObject.dragInfo, uninstallDropTarget$DropTargetResultCallback);
    }
    
    public void onDrop(final DropTarget$DragObject dropTarget$DragObject) {
        if (dropTarget$DragObject.dragSource instanceof UninstallDropTarget$DropTargetSource) {
            ((UninstallDropTarget$DropTargetSource)dropTarget$DragObject.dragSource).deferCompleteDropAfterUninstallActivity();
        }
        super.onDrop(dropTarget$DragObject);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setupUi();
    }
    
    protected void setupUi() {
        this.mHoverColor = this.getResources().getColor(2131361815);
        this.setDrawable(2130837579);
    }
    
    protected boolean supportsDrop(final DragSource dragSource, final ItemInfo itemInfo) {
        return supportsDrop(this.getContext(), itemInfo);
    }
}
