// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import com.android.launcher3.Utilities;
import android.content.pm.LauncherActivityInfo;

public class CachedPackageTracker$LauncherActivityInstallInfo implements Comparable
{
    public final LauncherActivityInfo info;
    public final long installTime;
    
    public CachedPackageTracker$LauncherActivityInstallInfo(final LauncherActivityInfo info, final long installTime) {
        this.info = info;
        this.installTime = installTime;
    }
    
    public int compareTo(final CachedPackageTracker$LauncherActivityInstallInfo cachedPackageTracker$LauncherActivityInstallInfo) {
        return Utilities.longCompare(this.installTime, cachedPackageTracker$LauncherActivityInstallInfo.installTime);
    }
}
