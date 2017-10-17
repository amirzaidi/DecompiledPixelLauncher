// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.List;
import android.content.pm.LauncherActivityInfo;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.os.Process;
import android.text.TextUtils;
import android.os.UserHandle;
import android.content.pm.PackageInstaller$SessionInfo;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.Context;
import android.content.BroadcastReceiver;

public class SessionCommitReceiver extends BroadcastReceiver
{
    public static void applyDefaultUserPrefs(final Context context) {
        if (!Utilities.isAtLeastO()) {
            return;
        }
        final SharedPreferences prefs = Utilities.getPrefs(context);
        if (prefs.getAll().isEmpty()) {
            prefs.edit().putBoolean("pref_add_icon_to_home", true).apply();
        }
        else if (!prefs.contains("pref_add_icon_to_home_initialized")) {
            new SessionCommitReceiver$PrefInitTask(context).executeOnExecutor(Utilities.THREAD_POOL_EXECUTOR, (Object[])new Void[0]);
        }
    }
    
    public static boolean isEnabled(final Context context) {
        return Utilities.getPrefs(context).getBoolean("pref_add_icon_to_home", true);
    }
    
    public void onReceive(final Context context, final Intent intent) {
        if (!isEnabled(context) || (Utilities.isAtLeastO() ^ true)) {
            return;
        }
        final PackageInstaller$SessionInfo packageInstaller$SessionInfo = (PackageInstaller$SessionInfo)intent.getParcelableExtra("android.content.pm.extra.SESSION");
        final UserHandle userHandle = (UserHandle)intent.getParcelableExtra("android.intent.extra.USER");
        if (TextUtils.isEmpty((CharSequence)packageInstaller$SessionInfo.getAppPackageName()) || packageInstaller$SessionInfo.getInstallReason() != 4) {
            return;
        }
        if (!Process.myUserHandle().equals((Object)userHandle)) {
            return;
        }
        final List activityList = LauncherAppsCompat.getInstance(context).getActivityList(packageInstaller$SessionInfo.getAppPackageName(), userHandle);
        if (activityList == null || activityList.isEmpty()) {
            return;
        }
        InstallShortcutReceiver.queueActivityInfo(activityList.get(0), context);
    }
}
