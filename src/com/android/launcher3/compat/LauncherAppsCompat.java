// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.os.Bundle;
import android.graphics.Rect;
import android.content.pm.LauncherActivityInfo;
import android.content.Intent;
import android.content.ComponentName;
import com.android.launcher3.util.PackageUserKey;
import android.content.pm.ApplicationInfo;
import java.util.List;
import android.os.UserHandle;
import com.android.launcher3.Utilities;
import android.content.Context;

public abstract class LauncherAppsCompat
{
    private static LauncherAppsCompat sInstance;
    private static final Object sInstanceLock;
    
    static {
        sInstanceLock = new Object();
    }
    
    public static LauncherAppsCompat getInstance(final Context context) {
        synchronized (LauncherAppsCompat.sInstanceLock) {
            if (LauncherAppsCompat.sInstance == null) {
                if (Utilities.isAtLeastO()) {
                    LauncherAppsCompat.sInstance = new LauncherAppsCompatVO(context.getApplicationContext());
                }
                else {
                    LauncherAppsCompat.sInstance = new LauncherAppsCompatVL(context.getApplicationContext());
                }
            }
            return LauncherAppsCompat.sInstance;
        }
    }
    
    public abstract void addOnAppsChangedCallback(final LauncherAppsCompat$OnAppsChangedCallbackCompat p0);
    
    public abstract List getActivityList(final String p0, final UserHandle p1);
    
    public abstract ApplicationInfo getApplicationInfo(final String p0, final int p1, final UserHandle p2);
    
    public abstract List getCustomShortcutActivityList(final PackageUserKey p0);
    
    public abstract boolean isActivityEnabledForProfile(final ComponentName p0, final UserHandle p1);
    
    public abstract boolean isPackageEnabledForProfile(final String p0, final UserHandle p1);
    
    public abstract void removeOnAppsChangedCallback(final LauncherAppsCompat$OnAppsChangedCallbackCompat p0);
    
    public abstract LauncherActivityInfo resolveActivity(final Intent p0, final UserHandle p1);
    
    public void showAppDetailsForProfile(final ComponentName componentName, final UserHandle userHandle) {
        this.showAppDetailsForProfile(componentName, userHandle, null, null);
    }
    
    public abstract void showAppDetailsForProfile(final ComponentName p0, final UserHandle p1, final Rect p2, final Bundle p3);
    
    public abstract void startActivityForProfile(final ComponentName p0, final UserHandle p1, final Rect p2, final Bundle p3);
}
