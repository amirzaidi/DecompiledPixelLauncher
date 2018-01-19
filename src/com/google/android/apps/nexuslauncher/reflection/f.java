// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.util.List;
import java.util.Iterator;
import android.content.pm.LauncherActivityInfo;
import android.os.UserHandle;
import com.android.launcher3.util.Preconditions;
import android.content.Context;
import com.android.launcher3.compat.UserManagerCompat;
import com.google.android.apps.nexuslauncher.reflection.filter.d;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.android.launcher3.compat.LauncherAppsCompat$OnAppsChangedCallbackCompat;

public class f implements l, LauncherAppsCompat$OnAppsChangedCallbackCompat
{
    private final com.google.android.apps.nexuslauncher.reflection.filter.f bw;
    private final LauncherAppsCompat bx;
    private final d by;
    private final UserManagerCompat bz;
    private final k mServiceHandler;
    
    public f(final Context context, final k mServiceHandler, final d by, final com.google.android.apps.nexuslauncher.reflection.filter.f bw) {
        this.bz = UserManagerCompat.getInstance(context);
        this.bx = LauncherAppsCompat.getInstance(context);
        this.mServiceHandler = mServiceHandler;
        this.by = by;
        this.bw = bw;
    }
    
    public void aY() {
        Preconditions.assertNonUiThread();
        for (final UserHandle userHandle : this.bz.getUserProfiles()) {
            final List activityList = this.bx.getActivityList(null, userHandle);
            for (int i = activityList.size() - 1; i >= 0; --i) {
                final LauncherActivityInfo launcherActivityInfo = activityList.get(i);
                this.by.N(1, launcherActivityInfo, userHandle);
                this.bw.S(launcherActivityInfo, userHandle);
            }
        }
        this.bx.addOnAppsChangedCallback(this);
    }
    
    public void aw() {
        this.bx.removeOnAppsChangedCallback(this);
    }
    
    public void onPackageAdded(final String s, final UserHandle userHandle) {
        final List activityList = this.bx.getActivityList(s, userHandle);
        if (activityList.isEmpty()) {
            return;
        }
        final LauncherActivityInfo launcherActivityInfo = activityList.get(0);
        this.by.N(1, launcherActivityInfo, userHandle);
        this.bw.S(launcherActivityInfo, userHandle);
    }
    
    public void onPackageChanged(final String s, final UserHandle userHandle) {
        this.by.O(-1, s, userHandle);
        this.bw.T(s, userHandle);
    }
    
    public void onPackageRemoved(final String s, final UserHandle userHandle) {
        this.by.O(0, s, userHandle);
        this.bw.T(s, userHandle);
        this.mServiceHandler.bb(s, this.bz.getSerialNumberForUser(userHandle));
    }
    
    public void onPackagesAvailable(final String[] array, final UserHandle userHandle, final boolean b) {
        this.by.P(-1, array, userHandle);
        this.bw.U(array, userHandle);
    }
    
    public void onPackagesSuspended(final String[] array, final UserHandle userHandle) {
        this.by.P(0, array, userHandle);
        this.bw.U(array, userHandle);
    }
    
    public void onPackagesUnavailable(final String[] array, final UserHandle userHandle, final boolean b) {
        this.by.P(0, array, userHandle);
        this.bw.U(array, userHandle);
    }
    
    public void onPackagesUnsuspended(final String[] array, final UserHandle userHandle) {
        this.by.P(-1, array, userHandle);
        this.bw.U(array, userHandle);
    }
    
    public void onShortcutsChanged(final String s, final List list, final UserHandle userHandle) {
    }
}
