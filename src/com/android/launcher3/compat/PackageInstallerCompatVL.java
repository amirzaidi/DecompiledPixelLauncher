// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.util.Iterator;
import java.util.Collection;
import java.util.ArrayList;
import java.util.List;
import android.os.UserHandle;
import android.os.Process;
import android.text.TextUtils;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherAppState;
import android.content.pm.PackageInstaller$SessionInfo;
import android.os.Handler;
import java.util.HashMap;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageInstaller$SessionCallback;
import com.android.launcher3.IconCache;
import android.content.Context;
import android.util.SparseArray;

public class PackageInstallerCompatVL extends PackageInstallerCompat
{
    private static final boolean DEBUG;
    final SparseArray mActiveSessions;
    private final Context mAppContext;
    private final IconCache mCache;
    private final PackageInstaller$SessionCallback mCallback;
    final PackageInstaller mInstaller;
    private final HashMap mSessionVerifiedMap;
    private final Handler mWorker;
    
    PackageInstallerCompatVL(final Context context) {
        this.mActiveSessions = new SparseArray();
        this.mSessionVerifiedMap = new HashMap();
        this.mCallback = new PackageInstallerCompatVL$1(this);
        this.mAppContext = context.getApplicationContext();
        this.mInstaller = context.getPackageManager().getPackageInstaller();
        this.mCache = LauncherAppState.getInstance(context).getIconCache();
        this.mWorker = new Handler(LauncherModel.getWorkerLooper());
        this.mInstaller.registerSessionCallback(this.mCallback, this.mWorker);
    }
    
    private PackageInstaller$SessionInfo verify(PackageInstaller$SessionInfo packageInstaller$SessionInfo) {
        boolean b = true;
        if (packageInstaller$SessionInfo == null || packageInstaller$SessionInfo.getInstallerPackageName() == null || TextUtils.isEmpty((CharSequence)packageInstaller$SessionInfo.getAppPackageName())) {
            return null;
        }
        while (true) {
            final String installerPackageName = packageInstaller$SessionInfo.getInstallerPackageName();
            synchronized (this.mSessionVerifiedMap) {
                if (!this.mSessionVerifiedMap.containsKey(installerPackageName)) {
                    if (LauncherAppsCompat.getInstance(this.mAppContext).getApplicationInfo(installerPackageName, 1, Process.myUserHandle()) == null) {
                        b = false;
                    }
                    this.mSessionVerifiedMap.put(installerPackageName, b);
                }
                // monitorexit(this.mSessionVerifiedMap)
                if (this.mSessionVerifiedMap.get(installerPackageName)) {
                    return packageInstaller$SessionInfo;
                }
            }
            packageInstaller$SessionInfo = null;
            return packageInstaller$SessionInfo;
        }
    }
    
    void addSessionInfoToCache(final PackageInstaller$SessionInfo packageInstaller$SessionInfo, final UserHandle userHandle) {
        final String appPackageName = packageInstaller$SessionInfo.getAppPackageName();
        if (appPackageName != null) {
            this.mCache.cachePackageInstallInfo(appPackageName, userHandle, packageInstaller$SessionInfo.getAppIcon(), packageInstaller$SessionInfo.getAppLabel());
        }
    }
    
    public List getAllVerifiedSessions() {
        final ArrayList<PackageInstaller$SessionInfo> list = new ArrayList<PackageInstaller$SessionInfo>(this.mInstaller.getAllSessions());
        final Iterator<Object> iterator = list.iterator();
        while (iterator.hasNext()) {
            if (this.verify(iterator.next()) == null) {
                iterator.remove();
            }
        }
        return list;
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
        for (final PackageInstaller$SessionInfo packageInstaller$SessionInfo : this.getAllVerifiedSessions()) {
            this.addSessionInfoToCache(packageInstaller$SessionInfo, myUserHandle);
            if (packageInstaller$SessionInfo.getAppPackageName() != null) {
                hashMap.put(packageInstaller$SessionInfo.getAppPackageName(), (int)(packageInstaller$SessionInfo.getProgress() * 100.0f));
                this.mActiveSessions.put(packageInstaller$SessionInfo.getSessionId(), (Object)packageInstaller$SessionInfo.getAppPackageName());
            }
        }
        return hashMap;
    }
}
