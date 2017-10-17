// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import android.content.pm.LauncherActivityInfo;
import java.util.Iterator;
import java.util.List;
import android.os.UserHandle;
import com.android.launcher3.util.CachedPackageTracker$LauncherActivityInstallInfo;
import com.android.launcher3.compat.LauncherAppsCompat$OnAppsChangedCallbackCompat;
import com.android.launcher3.util.Preconditions;
import android.content.Context;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.google.android.apps.nexuslauncher.reflection.filter.a;
import com.android.launcher3.compat.UserManagerCompat;
import com.google.android.apps.nexuslauncher.reflection.filter.b;
import com.android.launcher3.util.CachedPackageTracker;

public class d extends CachedPackageTracker implements f
{
    private final b cA;
    private final com.google.android.apps.nexuslauncher.reflection.filter.d cB;
    private final UserManagerCompat cC;
    private final a cy;
    private final LauncherAppsCompat cz;
    private final Context mContext;
    private final e mServiceHandler;
    
    public d(final Context mContext, final e mServiceHandler, final com.google.android.apps.nexuslauncher.reflection.filter.d cb, final a cy, final b ca) {
        super(mContext, "package_info");
        this.mContext = mContext;
        this.cC = UserManagerCompat.getInstance(mContext);
        this.cz = LauncherAppsCompat.getInstance(mContext);
        this.mServiceHandler = mServiceHandler;
        Preconditions.assertNonUiThread();
        this.cz.addOnAppsChangedCallback(this);
        this.cB = cb;
        this.cy = cy;
        this.cA = ca;
    }
    
    protected void bP(final CachedPackageTracker$LauncherActivityInstallInfo cachedPackageTracker$LauncherActivityInstallInfo, final UserHandle userHandle, final boolean b) {
        this.cB.br(1, cachedPackageTracker$LauncherActivityInstallInfo.info, userHandle);
        this.cy.bi(cachedPackageTracker$LauncherActivityInstallInfo.info, userHandle);
        if (b) {
            this.cA.bn(cachedPackageTracker$LauncherActivityInstallInfo.info.getComponentName(), this.cC.getSerialNumberForUser(userHandle), cachedPackageTracker$LauncherActivityInstallInfo.installTime);
        }
    }
    
    public void be() {
        this.cz.removeOnAppsChangedCallback(this);
    }
    
    protected void onLauncherAppsAdded(final List list, final UserHandle userHandle, final boolean b) {
        final Iterator<CachedPackageTracker$LauncherActivityInstallInfo> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.bP(iterator.next(), userHandle, b);
        }
    }
    
    protected void onLauncherPackageRemoved(final String s, final UserHandle userHandle) {
        this.cB.bs(0, s, userHandle);
        this.cy.bj(s, userHandle);
        this.mServiceHandler.bQ(s, this.cC.getSerialNumberForUser(userHandle));
    }
    
    public void onPackageChanged(final String s, final UserHandle userHandle) {
        this.cB.bs(-1, s, userHandle);
        this.cy.bj(s, userHandle);
    }
    
    public void onPackagesAvailable(final String[] array, final UserHandle userHandle, final boolean b) {
        this.cB.bt(-1, array, userHandle);
        this.cy.bk(array, userHandle);
    }
    
    public void onPackagesSuspended(final String[] array, final UserHandle userHandle) {
        this.cB.bt(0, array, userHandle);
        this.cy.bk(array, userHandle);
    }
    
    public void onPackagesUnavailable(final String[] array, final UserHandle userHandle, final boolean b) {
        this.cB.bt(0, array, userHandle);
        this.cy.bk(array, userHandle);
    }
    
    public void onPackagesUnsuspended(final String[] array, final UserHandle userHandle) {
        this.cB.bt(-1, array, userHandle);
        this.cy.bk(array, userHandle);
    }
    
    public void onShortcutsChanged(final String s, final List list, final UserHandle userHandle) {
    }
    
    public void processUserApps(final List list, final UserHandle userHandle) {
        for (int i = list.size() - 1; i >= 0; --i) {
            final LauncherActivityInfo launcherActivityInfo = list.get(i);
            this.cB.br(1, launcherActivityInfo, userHandle);
            this.cy.bi(launcherActivityInfo, userHandle);
        }
        super.processUserApps(list, userHandle);
    }
}
