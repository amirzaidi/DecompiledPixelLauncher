// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import java.util.Iterator;
import java.util.Collections;
import java.util.ArrayList;
import java.util.Arrays;
import android.content.pm.LauncherActivityInfo;
import android.os.UserHandle;
import java.util.List;
import java.util.Collection;
import java.util.Set;
import java.util.HashSet;
import android.content.Context;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.SharedPreferences;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.android.launcher3.compat.LauncherAppsCompat$OnAppsChangedCallbackCompat;

public abstract class CachedPackageTracker implements LauncherAppsCompat$OnAppsChangedCallbackCompat
{
    protected final LauncherAppsCompat mLauncherApps;
    protected final SharedPreferences mPrefs;
    protected final UserManagerCompat mUserManager;
    
    public CachedPackageTracker(final Context context, final String s) {
        this.mPrefs = context.getSharedPreferences(s, 0);
        this.mUserManager = UserManagerCompat.getInstance(context);
        this.mLauncherApps = LauncherAppsCompat.getInstance(context);
    }
    
    private boolean getUserApps(final HashSet set, final String s) {
        final Set stringSet = this.mPrefs.getStringSet(s, (Set)null);
        if (stringSet == null) {
            return false;
        }
        set.addAll(stringSet);
        return true;
    }
    
    protected abstract void onLauncherAppsAdded(final List p0, final UserHandle p1, final boolean p2);
    
    protected abstract void onLauncherPackageRemoved(final String p0, final UserHandle p1);
    
    public void onPackageAdded(final String s, final UserHandle userHandle) {
        final String string = "installed_packages_for_user_" + this.mUserManager.getSerialNumberForUser(userHandle);
        final HashSet<String> set = new HashSet<String>();
        final boolean userApps = this.getUserApps(set, string);
        if (!set.contains(s)) {
            final List activityList = this.mLauncherApps.getActivityList(s, userHandle);
            if (!activityList.isEmpty()) {
                final LauncherActivityInfo launcherActivityInfo = activityList.get(0);
                set.add(s);
                this.mPrefs.edit().putStringSet(string, (Set)set).apply();
                this.onLauncherAppsAdded(Arrays.asList(new CachedPackageTracker$LauncherActivityInstallInfo(launcherActivityInfo, System.currentTimeMillis())), userHandle, userApps);
            }
        }
    }
    
    public void onPackageChanged(final String s, final UserHandle userHandle) {
    }
    
    public void onPackageRemoved(final String s, final UserHandle userHandle) {
        final String string = "installed_packages_for_user_" + this.mUserManager.getSerialNumberForUser(userHandle);
        final HashSet set = new HashSet();
        if (this.getUserApps(set, string) && set.remove(s)) {
            this.mPrefs.edit().putStringSet(string, (Set)set).apply();
        }
        this.onLauncherPackageRemoved(s, userHandle);
    }
    
    public void onPackagesAvailable(final String[] array, final UserHandle userHandle, final boolean b) {
    }
    
    public void onPackagesSuspended(final String[] array, final UserHandle userHandle) {
    }
    
    public void onPackagesUnavailable(final String[] array, final UserHandle userHandle, final boolean b) {
    }
    
    public void onPackagesUnsuspended(final String[] array, final UserHandle userHandle) {
    }
    
    public void processUserApps(final List list, final UserHandle userHandle) {
        final String string = "installed_packages_for_user_" + this.mUserManager.getSerialNumberForUser(userHandle);
        final HashSet<String> set = new HashSet<String>();
        final boolean userApps = this.getUserApps(set, string);
        final HashSet set2 = new HashSet<String>(set);
        final HashSet<String> set3 = new HashSet<String>();
        final ArrayList<Comparable> list2 = new ArrayList<Comparable>();
        for (final LauncherActivityInfo launcherActivityInfo : list) {
            final String packageName = launcherActivityInfo.getComponentName().getPackageName();
            set3.add(packageName);
            set2.remove(packageName);
            if (!set.contains(packageName)) {
                set.add((Object)packageName);
                list2.add(new CachedPackageTracker$LauncherActivityInstallInfo(launcherActivityInfo, launcherActivityInfo.getFirstInstallTime()));
            }
        }
        if (!list2.isEmpty() || (set2.isEmpty() ^ true)) {
            this.mPrefs.edit().putStringSet(string, (Set)set3).apply();
            if (!list2.isEmpty()) {
                Collections.sort(list2);
                this.onLauncherAppsAdded(list2, userHandle, userApps);
            }
            if (!set2.isEmpty()) {
                final Iterator<String> iterator2 = (Iterator<String>)set2.iterator();
                while (iterator2.hasNext()) {
                    this.onLauncherPackageRemoved(iterator2.next(), userHandle);
                }
            }
        }
    }
}
