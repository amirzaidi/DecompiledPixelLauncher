// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.util.Log;
import java.util.HashSet;
import com.android.launcher3.util.FlagOp;
import com.android.launcher3.util.ItemInfoMatcher;
import android.os.Process;
import com.android.launcher3.compat.PackageInstallerCompat$PackageInstallInfo;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.content.Context;
import android.os.UserHandle;
import java.util.Iterator;
import android.content.pm.LauncherActivityInfo;
import android.content.ComponentName;
import java.util.List;
import java.util.ArrayList;

public class AllAppsList
{
    public ArrayList added;
    public final ArrayList data;
    private AppFilter mAppFilter;
    private IconCache mIconCache;
    public ArrayList modified;
    public ArrayList removed;
    
    public AllAppsList(final IconCache mIconCache, final AppFilter mAppFilter) {
        final int n = 42;
        this.data = new ArrayList(n);
        this.added = new ArrayList(n);
        this.removed = new ArrayList();
        this.modified = new ArrayList();
        this.mIconCache = mIconCache;
        this.mAppFilter = mAppFilter;
    }
    
    private static boolean findActivity(final List list, final ComponentName componentName) {
        final Iterator<LauncherActivityInfo> iterator = list.iterator();
        while (iterator.hasNext()) {
            if (iterator.next().getComponentName().equals((Object)componentName)) {
                return true;
            }
        }
        return false;
    }
    
    private AppInfo findAppInfo(final ComponentName componentName, final UserHandle userHandle) {
        for (final AppInfo appInfo : this.data) {
            if (componentName.equals((Object)appInfo.componentName) && userHandle.equals((Object)appInfo.user)) {
                return appInfo;
            }
        }
        return null;
    }
    
    public void add(final AppInfo appInfo, final LauncherActivityInfo launcherActivityInfo) {
        if (!this.mAppFilter.shouldShowApp(appInfo.componentName)) {
            return;
        }
        if (this.findAppInfo(appInfo.componentName, appInfo.user) != null) {
            return;
        }
        this.mIconCache.getTitleAndIcon(appInfo, launcherActivityInfo, true);
        this.data.add(appInfo);
        this.added.add(appInfo);
    }
    
    public void addPackage(final Context context, final String s, final UserHandle userHandle) {
        for (final LauncherActivityInfo launcherActivityInfo : LauncherAppsCompat.getInstance(context).getActivityList(s, userHandle)) {
            this.add(new AppInfo(context, launcherActivityInfo, userHandle), launcherActivityInfo);
        }
    }
    
    public void addPromiseApp(final Context context, final PackageInstallerCompat$PackageInstallInfo packageInstallerCompat$PackageInstallInfo) {
        if (LauncherAppsCompat.getInstance(context).getApplicationInfo(packageInstallerCompat$PackageInstallInfo.packageName, 0, Process.myUserHandle()) == null) {
            final PromiseAppInfo promiseAppInfo = new PromiseAppInfo(packageInstallerCompat$PackageInstallInfo);
            this.mIconCache.getTitleAndIcon(promiseAppInfo, promiseAppInfo.usingLowResIcon);
            this.data.add(promiseAppInfo);
            this.added.add(promiseAppInfo);
        }
    }
    
    public void clear() {
        this.data.clear();
        this.added.clear();
        this.removed.clear();
        this.modified.clear();
    }
    
    public AppInfo get(final int n) {
        return this.data.get(n);
    }
    
    public void removePackage(final String s, final UserHandle userHandle) {
        final ArrayList data = this.data;
        for (int i = data.size() - 1; i >= 0; --i) {
            final AppInfo appInfo = data.get(i);
            if (appInfo.user.equals((Object)userHandle) && s.equals(appInfo.componentName.getPackageName())) {
                this.removed.add(appInfo);
                data.remove(i);
            }
        }
    }
    
    public void removePromiseApp(final AppInfo appInfo) {
        this.data.remove(appInfo);
    }
    
    public int size() {
        return this.data.size();
    }
    
    public void updateDisabledFlags(final ItemInfoMatcher itemInfoMatcher, final FlagOp flagOp) {
        final ArrayList data = this.data;
        for (int i = data.size() - 1; i >= 0; --i) {
            final AppInfo appInfo = data.get(i);
            if (itemInfoMatcher.matches(appInfo, appInfo.componentName)) {
                appInfo.isDisabled = flagOp.apply(appInfo.isDisabled);
                this.modified.add(appInfo);
            }
        }
    }
    
    public void updateIconsAndLabels(final HashSet set, final UserHandle userHandle, final ArrayList list) {
        for (final AppInfo appInfo : this.data) {
            if (appInfo.user.equals((Object)userHandle) && set.contains(appInfo.componentName.getPackageName())) {
                this.mIconCache.updateTitleAndIcon(appInfo);
                list.add(appInfo);
            }
        }
    }
    
    public void updatePackage(final Context context, final String s, final UserHandle userHandle) {
        final List activityList = LauncherAppsCompat.getInstance(context).getActivityList(s, userHandle);
        if (activityList.size() > 0) {
            for (int i = this.data.size() - 1; i >= 0; --i) {
                final AppInfo appInfo = this.data.get(i);
                if (userHandle.equals((Object)appInfo.user) && s.equals(appInfo.componentName.getPackageName()) && !findActivity(activityList, appInfo.componentName)) {
                    Log.w("AllAppsList", "Shortcut will be removed due to app component name change.");
                    this.removed.add(appInfo);
                    this.data.remove(i);
                }
            }
            for (final LauncherActivityInfo launcherActivityInfo : activityList) {
                final AppInfo appInfo2 = this.findAppInfo(launcherActivityInfo.getComponentName(), userHandle);
                if (appInfo2 == null) {
                    this.add(new AppInfo(context, launcherActivityInfo, userHandle), launcherActivityInfo);
                }
                else {
                    this.mIconCache.getTitleAndIcon(appInfo2, launcherActivityInfo, true);
                    this.modified.add(appInfo2);
                }
            }
        }
        else {
            for (int j = this.data.size() - 1; j >= 0; --j) {
                final AppInfo appInfo3 = this.data.get(j);
                if (userHandle.equals((Object)appInfo3.user) && s.equals(appInfo3.componentName.getPackageName())) {
                    this.removed.add(appInfo3);
                    this.mIconCache.remove(appInfo3.componentName, userHandle);
                    this.data.remove(j);
                }
            }
        }
    }
}
