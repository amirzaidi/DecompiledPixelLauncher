// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.content.pm.PackageInstaller$SessionInfo;
import com.android.launcher3.LauncherAppState;
import android.os.Process;
import android.content.pm.PackageInstaller$SessionCallback;

final class PackageInstallerCompatVL$1 extends PackageInstaller$SessionCallback
{
    final /* synthetic */ PackageInstallerCompatVL this$0;
    
    PackageInstallerCompatVL$1(final PackageInstallerCompatVL this$0) {
        this.this$0 = this$0;
    }
    
    private void pushSessionDisplayToLauncher(final int n) {
        final PackageInstaller$SessionInfo sessionInfo = this.this$0.mInstaller.getSessionInfo(n);
        if (sessionInfo != null && sessionInfo.getAppPackageName() != null) {
            this.this$0.addSessionInfoToCache(sessionInfo, Process.myUserHandle());
            final LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
            if (instanceNoCreate != null) {
                instanceNoCreate.getModel().updateSessionDisplayInfo(sessionInfo.getAppPackageName());
            }
        }
    }
    
    public void onActiveChanged(final int n, final boolean b) {
    }
    
    public void onBadgingChanged(final int n) {
        this.pushSessionDisplayToLauncher(n);
    }
    
    public void onCreated(final int n) {
        this.pushSessionDisplayToLauncher(n);
    }
    
    public void onFinished(final int n, final boolean b) {
        final String s = (String)this.this$0.mActiveSessions.get(n);
        this.this$0.mActiveSessions.remove(n);
        if (s != null) {
            final PackageInstallerCompatVL this$0 = this.this$0;
            int n2;
            if (b) {
                n2 = 0;
            }
            else {
                n2 = 2;
            }
            this$0.sendUpdate(new PackageInstallerCompat$PackageInstallInfo(s, n2, 0));
        }
    }
    
    public void onProgressChanged(final int n, final float n2) {
        final PackageInstaller$SessionInfo sessionInfo = this.this$0.mInstaller.getSessionInfo(n);
        if (sessionInfo != null && sessionInfo.getAppPackageName() != null) {
            this.this$0.sendUpdate(new PackageInstallerCompat$PackageInstallInfo(sessionInfo.getAppPackageName(), 1, (int)(sessionInfo.getProgress() * 100.0f)));
        }
    }
}
