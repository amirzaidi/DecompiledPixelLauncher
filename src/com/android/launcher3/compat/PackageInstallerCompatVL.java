// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.util.Iterator;
import android.os.Process;
import java.util.HashMap;
import android.os.UserHandle;
import android.content.pm.PackageInstaller$SessionInfo;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherAppState;
import android.content.Context;
import android.os.Handler;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageInstaller$SessionCallback;
import com.android.launcher3.IconCache;
import android.util.SparseArray;

public class PackageInstallerCompatVL extends PackageInstallerCompat
{
    final SparseArray mActiveSessions;
    private final IconCache mCache;
    private final PackageInstaller$SessionCallback mCallback;
    final PackageInstaller mInstaller;
    private final Handler mWorker;
    
    PackageInstallerCompatVL(final Context context) {
        this.mActiveSessions = new SparseArray();
        this.mCallback = new PackageInstallerCompatVL$1(this);
        this.mInstaller = context.getPackageManager().getPackageInstaller();
        this.mCache = LauncherAppState.getInstance(context).getIconCache();
        this.mWorker = new Handler(LauncherModel.getWorkerLooper());
        this.mInstaller.registerSessionCallback(this.mCallback, this.mWorker);
    }
    
    void addSessionInfoToCache(final PackageInstaller$SessionInfo packageInstaller$SessionInfo, final UserHandle userHandle) {
        final String appPackageName = packageInstaller$SessionInfo.getAppPackageName();
        if (appPackageName != null) {
            this.mCache.cachePackageInstallInfo(appPackageName, userHandle, packageInstaller$SessionInfo.getAppIcon(), packageInstaller$SessionInfo.getAppLabel());
        }
    }
    
    public void onStop() {
        this.mInstaller.unregisterSessionCallback(this.mCallback);
    }
    
    void sendUpdate(final PackageInstallerCompat$PackageInstallInfo packageState) {
        final LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
        if (instanceNoCreate != null) {
            instanceNoCreate.getModel().setPackageState(packageState);
        }
    }
    
    public HashMap updateAndGetActiveSessionCache() {
        final HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
        final UserHandle myUserHandle = Process.myUserHandle();
        for (final PackageInstaller$SessionInfo packageInstaller$SessionInfo : this.mInstaller.getAllSessions()) {
            this.addSessionInfoToCache(packageInstaller$SessionInfo, myUserHandle);
            if (packageInstaller$SessionInfo.getAppPackageName() != null) {
                hashMap.put(packageInstaller$SessionInfo.getAppPackageName(), (int)(packageInstaller$SessionInfo.getProgress() * 100.0f));
                this.mActiveSessions.put(packageInstaller$SessionInfo.getSessionId(), (Object)packageInstaller$SessionInfo.getAppPackageName());
            }
        }
        return hashMap;
    }
}
