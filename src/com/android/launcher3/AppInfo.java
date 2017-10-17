// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.compat.UserManagerCompat;
import android.os.UserHandle;
import android.content.pm.LauncherActivityInfo;
import android.content.Context;
import android.content.Intent;
import android.content.ComponentName;

public class AppInfo extends ItemInfoWithIcon
{
    public ComponentName componentName;
    public Intent intent;
    public int isDisabled;
    
    public AppInfo() {
        this.isDisabled = 0;
        this.itemType = 0;
    }
    
    public AppInfo(final Context context, final LauncherActivityInfo launcherActivityInfo, final UserHandle userHandle) {
        this(launcherActivityInfo, userHandle, UserManagerCompat.getInstance(context).isQuietModeEnabled(userHandle));
    }
    
    public AppInfo(final LauncherActivityInfo launcherActivityInfo, final UserHandle user, final boolean b) {
        this.isDisabled = 0;
        this.componentName = launcherActivityInfo.getComponentName();
        this.container = -1;
        this.user = user;
        if (PackageManagerHelper.isAppSuspended(launcherActivityInfo.getApplicationInfo())) {
            this.isDisabled |= 0x4;
        }
        if (b) {
            this.isDisabled |= 0x8;
        }
        this.intent = makeLaunchIntent(launcherActivityInfo);
    }
    
    public static Intent makeLaunchIntent(final LauncherActivityInfo launcherActivityInfo) {
        return new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(launcherActivityInfo.getComponentName()).setFlags(270532608);
    }
    
    protected String dumpProperties() {
        return super.dumpProperties() + " componentName=" + this.componentName;
    }
    
    public Intent getIntent() {
        return this.intent;
    }
    
    public boolean isDisabled() {
        boolean b = false;
        if (this.isDisabled != 0) {
            b = true;
        }
        return b;
    }
    
    public ShortcutInfo makeShortcut() {
        return new ShortcutInfo(this);
    }
    
    public ComponentKey toComponentKey() {
        return new ComponentKey(this.componentName, this.user);
    }
}
