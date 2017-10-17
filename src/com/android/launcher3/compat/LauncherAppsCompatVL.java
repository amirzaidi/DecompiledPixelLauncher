// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.os.Bundle;
import android.graphics.Rect;
import android.content.ComponentName;
import java.util.Iterator;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.Intent;
import java.util.ArrayList;
import com.android.launcher3.util.PackageUserKey;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.LauncherActivityInfo;
import android.os.Process;
import android.content.pm.ApplicationInfo;
import java.util.List;
import android.os.UserHandle;
import android.content.pm.LauncherApps$Callback;
import java.util.HashMap;
import android.content.pm.LauncherApps;
import android.content.Context;
import java.util.Map;

public class LauncherAppsCompatVL extends LauncherAppsCompat
{
    private Map mCallbacks;
    protected final Context mContext;
    protected final LauncherApps mLauncherApps;
    
    LauncherAppsCompatVL(final Context mContext) {
        this.mCallbacks = new HashMap();
        this.mContext = mContext;
        this.mLauncherApps = (LauncherApps)mContext.getSystemService("launcherapps");
    }
    
    public void addOnAppsChangedCallback(final LauncherAppsCompat$OnAppsChangedCallbackCompat launcherAppsCompat$OnAppsChangedCallbackCompat) {
        final LauncherAppsCompatVL$WrappedCallback launcherAppsCompatVL$WrappedCallback = new LauncherAppsCompatVL$WrappedCallback(launcherAppsCompat$OnAppsChangedCallbackCompat);
        synchronized (this.mCallbacks) {
            this.mCallbacks.put(launcherAppsCompat$OnAppsChangedCallbackCompat, launcherAppsCompatVL$WrappedCallback);
            // monitorexit(this.mCallbacks)
            this.mLauncherApps.registerCallback((LauncherApps$Callback)launcherAppsCompatVL$WrappedCallback);
        }
    }
    
    public List getActivityList(final String s, final UserHandle userHandle) {
        return this.mLauncherApps.getActivityList(s, userHandle);
    }
    
    public ApplicationInfo getApplicationInfo(final String s, final int n, final UserHandle userHandle) {
        ApplicationInfo applicationInfo = null;
        final boolean equals = Process.myUserHandle().equals((Object)userHandle);
        if (!equals && n == 0) {
            final List activityList = this.mLauncherApps.getActivityList(s, userHandle);
            if (activityList.size() > 0) {
                applicationInfo = activityList.get(0).getApplicationInfo();
            }
            return applicationInfo;
        }
        try {
            final Context mContext = this.mContext;
            try {
                final ApplicationInfo applicationInfo2 = mContext.getPackageManager().getApplicationInfo(s, n);
                if ((!equals || (applicationInfo2.flags & 0x800000) != 0x0) && !(applicationInfo2.enabled ^ true)) {
                    return applicationInfo2;
                }
                return null;
            }
            catch (PackageManager$NameNotFoundException ex) {
                return null;
            }
        }
        catch (PackageManager$NameNotFoundException ex2) {}
    }
    
    public List getCustomShortcutActivityList(final PackageUserKey packageUserKey) {
        final ArrayList<ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL> list = new ArrayList<ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL>();
        if (packageUserKey != null && (packageUserKey.mUser.equals((Object)Process.myUserHandle()) ^ true)) {
            return list;
        }
        final PackageManager packageManager = this.mContext.getPackageManager();
        for (final ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent("android.intent.action.CREATE_SHORTCUT"), 0)) {
            if (packageUserKey == null || packageUserKey.mPackageName.equals(resolveInfo.activityInfo.packageName)) {
                list.add(new ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL(resolveInfo.activityInfo, packageManager));
            }
        }
        return list;
    }
    
    public boolean isActivityEnabledForProfile(final ComponentName componentName, final UserHandle userHandle) {
        return this.mLauncherApps.isActivityEnabled(componentName, userHandle);
    }
    
    public boolean isPackageEnabledForProfile(final String s, final UserHandle userHandle) {
        return this.mLauncherApps.isPackageEnabled(s, userHandle);
    }
    
    public void removeOnAppsChangedCallback(final LauncherAppsCompat$OnAppsChangedCallbackCompat launcherAppsCompat$OnAppsChangedCallbackCompat) {
        Object o = this.mCallbacks;
        synchronized (o) {
            final LauncherAppsCompatVL$WrappedCallback launcherAppsCompatVL$WrappedCallback = this.mCallbacks.remove(launcherAppsCompat$OnAppsChangedCallbackCompat);
            // monitorexit(o)
            if (launcherAppsCompatVL$WrappedCallback != null) {
                o = this.mLauncherApps;
                ((LauncherApps)o).unregisterCallback((LauncherApps$Callback)launcherAppsCompatVL$WrappedCallback);
            }
        }
    }
    
    public LauncherActivityInfo resolveActivity(final Intent intent, final UserHandle userHandle) {
        return this.mLauncherApps.resolveActivity(intent, userHandle);
    }
    
    public void showAppDetailsForProfile(final ComponentName componentName, final UserHandle userHandle, final Rect rect, final Bundle bundle) {
        this.mLauncherApps.startAppDetailsActivity(componentName, userHandle, rect, bundle);
    }
    
    public void startActivityForProfile(final ComponentName componentName, final UserHandle userHandle, final Rect rect, final Bundle bundle) {
        this.mLauncherApps.startMainActivity(componentName, userHandle, rect, bundle);
    }
}
