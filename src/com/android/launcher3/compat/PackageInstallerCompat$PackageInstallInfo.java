// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

public final class PackageInstallerCompat$PackageInstallInfo
{
    public final String packageName;
    public int progress;
    public int state;
    
    public PackageInstallerCompat$PackageInstallInfo(final String packageName) {
        this.packageName = packageName;
    }
    
    public PackageInstallerCompat$PackageInstallInfo(final String packageName, final int state, final int progress) {
        this.packageName = packageName;
        this.state = state;
        this.progress = progress;
    }
}
