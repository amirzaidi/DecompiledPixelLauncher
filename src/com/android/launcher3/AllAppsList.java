// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.HashSet;
import com.android.launcher3.util.FlagOp;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.content.Context;
import java.util.Iterator;
import android.content.pm.LauncherActivityInfo;
import java.util.List;
import android.os.UserHandle;
import android.content.ComponentName;
import java.util.ArrayList;

public class AllAppsList
{
    public ArrayList added;
    public ArrayList data;
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
    
    private static boolean findActivity(final ArrayList list, final ComponentName componentName, final UserHandle userHandle) {
        for (int size = list.size(), i = 0; i < size; ++i) {
            final AppInfo appInfo = list.get(i);
            if (appInfo.user.equals((Object)userHandle) && appInfo.componentName.equals((Object)componentName)) {
                return true;
            }
        }
        return false;
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
    
    private AppInfo findApplicationInfoLocked(final String s, final UserHandle userHandle, final String s2) {
        for (final AppInfo appInfo : this.data) {
            if (userHandle.equals((Object)appInfo.user) && s.equals(appInfo.componentName.getPackageName()) && s2.equals(appInfo.componentName.getClassName())) {
                return appInfo;
            }
        }
        return null;
    }
    
    public void add(final AppInfo appInfo, final LauncherActivityInfo launcherActivityInfo) {
        if (!this.mAppFilter.shouldShowApp(appInfo.componentName)) {
            return;
        }
        if (findActivity(this.data, appInfo.componentName, appInfo.user)) {
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
    
    public void clear() {
        this.data.clear();
        this.added.clear();
        this.removed.clear();
        this.modified.clear();
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
                    this.removed.add(appInfo);
                    this.data.remove(i);
                }
            }
            for (final LauncherActivityInfo launcherActivityInfo : activityList) {
                final AppInfo applicationInfoLocked = this.findApplicationInfoLocked(launcherActivityInfo.getComponentName().getPackageName(), userHandle, launcherActivityInfo.getComponentName().getClassName());
                if (applicationInfoLocked == null) {
                    this.add(new AppInfo(context, launcherActivityInfo, userHandle), launcherActivityInfo);
                }
                else {
                    this.mIconCache.getTitleAndIcon(applicationInfoLocked, launcherActivityInfo, true);
                    this.modified.add(applicationInfoLocked);
                }
            }
        }
        else {
            for (int j = this.data.size() - 1; j >= 0; --j) {
                final AppInfo appInfo2 = this.data.get(j);
                if (userHandle.equals((Object)appInfo2.user) && s.equals(appInfo2.componentName.getPackageName())) {
                    this.removed.add(appInfo2);
                    this.mIconCache.remove(appInfo2.componentName, userHandle);
                    this.data.remove(j);
                }
            }
        }
    }
}
