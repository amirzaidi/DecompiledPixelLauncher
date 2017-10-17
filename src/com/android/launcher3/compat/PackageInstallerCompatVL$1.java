// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.util.Iterator;
import java.util.Collection;
import java.util.ArrayList;
import java.util.List;
import android.os.UserHandle;
import android.text.TextUtils;
import com.android.launcher3.LauncherModel;
import android.os.Handler;
import java.util.HashMap;
import android.content.pm.PackageInstaller;
import com.android.launcher3.IconCache;
import android.content.Context;
import android.util.SparseArray;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.LauncherAppState;
import android.os.Process;
import android.content.pm.PackageInstaller$SessionInfo;
import android.content.pm.PackageInstaller$SessionCallback;

final class PackageInstallerCompatVL$1 extends PackageInstaller$SessionCallback
{
    final /* synthetic */ PackageInstallerCompatVL this$0;
    
    PackageInstallerCompatVL$1(final PackageInstallerCompatVL this$0) {
        this.this$0 = this$0;
    }
    
    private PackageInstaller$SessionInfo pushSessionDisplayToLauncher(final int n) {
        final PackageInstaller$SessionInfo -wrap0 = this.this$0.verify(this.this$0.mInstaller.getSessionInfo(n));
        if (-wrap0 != null && -wrap0.getAppPackageName() != null) {
            this.this$0.mActiveSessions.put(n, (Object)-wrap0.getAppPackageName());
            this.this$0.addSessionInfoToCache(-wrap0, Process.myUserHandle());
            final LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
            if (instanceNoCreate != null) {
                instanceNoCreate.getModel().updateSessionDisplayInfo(-wrap0.getAppPackageName());
            }
            return -wrap0;
        }
        return null;
    }
    
    public void onActiveChanged(final int n, final boolean b) {
    }
    
    public void onBadgingChanged(final int n) {
        this.pushSessionDisplayToLauncher(n);
    }
    
    public void onCreated(final int n) {
        final PackageInstaller$SessionInfo pushSessionDisplayToLauncher = this.pushSessionDisplayToLauncher(n);
        if (FeatureFlags.LAUNCHER3_PROMISE_APPS_IN_ALL_APPS && pushSessionDisplayToLauncher != null) {
            final LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
            if (instanceNoCreate != null) {
                instanceNoCreate.getModel().onInstallSessionCreated(PackageInstallerCompat$PackageInstallInfo.fromInstallingState(pushSessionDisplayToLauncher));
            }
        }
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
            this$0.sendUpdate(PackageInstallerCompat$PackageInstallInfo.fromState(n2, s));
        }
    }
    
    public void onProgressChanged(final int n, final float n2) {
        final PackageInstaller$SessionInfo -wrap0 = this.this$0.verify(this.this$0.mInstaller.getSessionInfo(n));
        if (-wrap0 != null && -wrap0.getAppPackageName() != null) {
            this.this$0.sendUpdate(PackageInstallerCompat$PackageInstallInfo.fromInstallingState(-wrap0));
        }
    }
}
