// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.content.pm.PackageInstaller$SessionInfo;
import android.content.ComponentName;

public final class PackageInstallerCompat$PackageInstallInfo
{
    public final ComponentName componentName;
    public final String packageName;
    public final int progress;
    public final int state;
    
    private PackageInstallerCompat$PackageInstallInfo(final PackageInstaller$SessionInfo packageInstaller$SessionInfo) {
        this.state = 1;
        this.packageName = packageInstaller$SessionInfo.getAppPackageName();
        this.componentName = new ComponentName(this.packageName, "");
        this.progress = (int)(packageInstaller$SessionInfo.getProgress() * 100.0f);
    }
    
    public PackageInstallerCompat$PackageInstallInfo(final String packageName, final int state, final int progress) {
        this.state = state;
        this.packageName = packageName;
        this.componentName = new ComponentName(packageName, "");
        this.progress = progress;
    }
    
    public static PackageInstallerCompat$PackageInstallInfo fromInstallingState(final PackageInstaller$SessionInfo packageInstaller$SessionInfo) {
        return new PackageInstallerCompat$PackageInstallInfo(packageInstaller$SessionInfo);
    }
    
    public static PackageInstallerCompat$PackageInstallInfo fromState(final int n, final String s) {
        return new PackageInstallerCompat$PackageInstallInfo(s, n, 0);
    }
}
