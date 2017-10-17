// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.content.pm.ResolveInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import android.app.AppOpsManager;
import android.text.TextUtils;
import java.util.List;
import com.android.launcher3.AppInfo;
import android.content.pm.LauncherActivityInfo;
import android.os.UserHandle;
import com.android.launcher3.Utilities;
import android.content.pm.ApplicationInfo;
import android.net.Uri$Builder;
import android.content.Intent;
import android.content.pm.PackageManager;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.content.Context;

public class PackageManagerHelper
{
    private final Context mContext;
    private final LauncherAppsCompat mLauncherApps;
    private final PackageManager mPm;
    
    public PackageManagerHelper(final Context mContext) {
        this.mContext = mContext;
        this.mPm = mContext.getPackageManager();
        this.mLauncherApps = LauncherAppsCompat.getInstance(mContext);
    }
    
    public static Intent getMarketIntent(final String s) {
        return new Intent("android.intent.action.VIEW").setData(new Uri$Builder().scheme("market").authority("details").appendQueryParameter("id", s).build());
    }
    
    public static boolean isAppSuspended(final ApplicationInfo applicationInfo) {
        boolean b = false;
        if (Utilities.ATLEAST_NOUGAT) {
            if ((applicationInfo.flags & 0x40000000) != 0x0) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public Intent getAppLaunchIntent(final String s, final UserHandle userHandle) {
        final List activityList = this.mLauncherApps.getActivityList(s, userHandle);
        Intent launchIntent;
        if (activityList.isEmpty()) {
            launchIntent = null;
        }
        else {
            launchIntent = AppInfo.makeLaunchIntent(activityList.get(0));
        }
        return launchIntent;
    }
    
    public boolean hasPermissionForActivity(final Intent intent, final String s) {
        boolean b = true;
        final ResolveInfo resolveActivity = this.mPm.resolveActivity(intent, 0);
        if (resolveActivity == null) {
            return false;
        }
        if (TextUtils.isEmpty((CharSequence)resolveActivity.activityInfo.permission)) {
            return b;
        }
        if (TextUtils.isEmpty((CharSequence)s)) {
            return false;
        }
        if (this.mPm.checkPermission(resolveActivity.activityInfo.permission, s) != 0) {
            return false;
        }
        if (!Utilities.ATLEAST_MARSHMALLOW) {
            return b;
        }
        if (TextUtils.isEmpty((CharSequence)AppOpsManager.permissionToOp(resolveActivity.activityInfo.permission))) {
            return b;
        }
        try {
            final ApplicationInfo applicationInfo = this.mPm.getApplicationInfo(s, 0);
            try {
                if (applicationInfo.targetSdkVersion < 23) {
                    b = false;
                }
                return b;
            }
            catch (PackageManager$NameNotFoundException ex) {
                return false;
            }
        }
        catch (PackageManager$NameNotFoundException ex2) {}
    }
    
    public boolean isAppOnSdcard(final String s, final UserHandle userHandle) {
        boolean b = false;
        final ApplicationInfo applicationInfo = this.mLauncherApps.getApplicationInfo(s, 8192, userHandle);
        if (applicationInfo != null && (applicationInfo.flags & 0x40000) != 0x0) {
            b = true;
        }
        return b;
    }
    
    public boolean isAppSuspended(final String s, final UserHandle userHandle) {
        boolean appSuspended = false;
        final ApplicationInfo applicationInfo = this.mLauncherApps.getApplicationInfo(s, 0, userHandle);
        if (applicationInfo != null) {
            appSuspended = isAppSuspended(applicationInfo);
        }
        return appSuspended;
    }
    
    public boolean isSafeMode() {
        return this.mContext.getPackageManager().isSafeMode();
    }
}
