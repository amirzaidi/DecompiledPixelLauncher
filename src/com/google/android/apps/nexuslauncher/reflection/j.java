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
import com.google.android.apps.nexuslauncher.reflection.filter.a;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.google.android.apps.nexuslauncher.reflection.filter.c;
import com.android.launcher3.compat.LauncherAppsCompat$OnAppsChangedCallbackCompat;

public class j implements o, LauncherAppsCompat$OnAppsChangedCallbackCompat
{
    private final c bu;
    private final LauncherAppsCompat bv;
    private final a bw;
    private final UserManagerCompat bx;
    private final n mServiceHandler;
    
    public j(final Context context, final n mServiceHandler, final a bw, final c bu) {
        this.bx = UserManagerCompat.getInstance(context);
        this.bv = LauncherAppsCompat.getInstance(context);
        this.mServiceHandler = mServiceHandler;
        this.bw = bw;
        this.bu = bu;
    }
    
    public void aW() {
        Preconditions.assertNonUiThread();
        for (final UserHandle userHandle : this.bx.getUserProfiles()) {
            final List activityList = this.bv.getActivityList(null, userHandle);
            for (int i = activityList.size() - 1; i >= 0; --i) {
                final LauncherActivityInfo launcherActivityInfo = activityList.get(i);
                this.bw.s(1, launcherActivityInfo, userHandle);
                this.bu.w(launcherActivityInfo, userHandle);
            }
        }
        this.bv.addOnAppsChangedCallback(this);
    }
    
    public void c() {
        this.bv.removeOnAppsChangedCallback(this);
    }
    
    public void onPackageAdded(final String s, final UserHandle userHandle) {
        final List activityList = this.bv.getActivityList(s, userHandle);
        if (activityList.isEmpty()) {
            return;
        }
        final LauncherActivityInfo launcherActivityInfo = activityList.get(0);
        this.bw.s(1, launcherActivityInfo, userHandle);
        this.bu.w(launcherActivityInfo, userHandle);
    }
    
    public void onPackageChanged(final String s, final UserHandle userHandle) {
        this.bw.r(-1, s, userHandle);
        this.bu.t(s, userHandle);
    }
    
    public void onPackageRemoved(final String s, final UserHandle userHandle) {
        this.bw.r(0, s, userHandle);
        this.bu.t(s, userHandle);
        this.mServiceHandler.bi(s, this.bx.getSerialNumberForUser(userHandle));
    }
    
    public void onPackagesAvailable(final String[] array, final UserHandle userHandle, final boolean b) {
        this.bw.q(-1, array, userHandle);
        this.bu.u(array, userHandle);
    }
    
    public void onPackagesSuspended(final String[] array, final UserHandle userHandle) {
        this.bw.q(0, array, userHandle);
        this.bu.u(array, userHandle);
    }
    
    public void onPackagesUnavailable(final String[] array, final UserHandle userHandle, final boolean b) {
        this.bw.q(0, array, userHandle);
        this.bu.u(array, userHandle);
    }
    
    public void onPackagesUnsuspended(final String[] array, final UserHandle userHandle) {
        this.bw.q(-1, array, userHandle);
        this.bu.u(array, userHandle);
    }
    
    public void onShortcutsChanged(final String s, final List list, final UserHandle userHandle) {
    }
}
