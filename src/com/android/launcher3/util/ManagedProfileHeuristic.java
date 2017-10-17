// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.content.SharedPreferences$Editor;
import java.util.HashSet;
import android.os.Handler;
import com.android.launcher3.LauncherModel;
import android.content.pm.LauncherActivityInfo;
import com.android.launcher3.InstallShortcutReceiver;
import com.android.launcher3.SessionCommitReceiver;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.BgDataModel;
import java.util.List;
import android.content.SharedPreferences;
import java.util.Iterator;
import android.os.UserHandle;
import android.os.Process;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.Context;

public class ManagedProfileHeuristic
{
    public static void markExistingUsersForNoFolderCreation(final Context context) {
        final UserManagerCompat instance = UserManagerCompat.getInstance(context);
        final UserHandle myUserHandle = Process.myUserHandle();
        final Iterator iterator = instance.getUserProfiles().iterator();
        SharedPreferences prefs = null;
        while (iterator.hasNext()) {
            final UserHandle userHandle = iterator.next();
            SharedPreferences sharedPreferences;
            if (myUserHandle.equals((Object)userHandle)) {
                sharedPreferences = prefs;
            }
            else {
                if (prefs == null) {
                    prefs = prefs(context);
                }
                final String string = "user_folder_" + instance.getSerialNumberForUser(userHandle);
                if (!prefs.contains(string)) {
                    prefs.edit().putLong(string, (long)(-1)).apply();
                    sharedPreferences = prefs;
                }
                else {
                    sharedPreferences = prefs;
                }
            }
            prefs = sharedPreferences;
        }
    }
    
    public static void onAllAppsLoaded(final Context context, final List list, final UserHandle userHandle) {
        if (Process.myUserHandle().equals((Object)userHandle)) {
            return;
        }
        final ManagedProfileHeuristic$UserFolderInfo managedProfileHeuristic$UserFolderInfo = new ManagedProfileHeuristic$UserFolderInfo(context, userHandle, null);
        if (managedProfileHeuristic$UserFolderInfo.folderAlreadyCreated) {
            return;
        }
        if (Utilities.isAtLeastO() && (SessionCommitReceiver.isEnabled(context) ^ true)) {
            managedProfileHeuristic$UserFolderInfo.prefs.edit().putLong(managedProfileHeuristic$UserFolderInfo.folderIdKey, (long)(-1)).apply();
            return;
        }
        InstallShortcutReceiver.enableInstallQueue(4);
        for (final LauncherActivityInfo launcherActivityInfo : list) {
            if (launcherActivityInfo.getFirstInstallTime() < managedProfileHeuristic$UserFolderInfo.addIconToFolderTime) {
                InstallShortcutReceiver.queueActivityInfo(launcherActivityInfo, context);
            }
        }
        new Handler(LauncherModel.getWorkerLooper()).post((Runnable)new ManagedProfileHeuristic$1(context));
    }
    
    public static SharedPreferences prefs(final Context context) {
        return context.getSharedPreferences("com.android.launcher3.managedusers.prefs", 0);
    }
    
    public static void processAllUsers(final List list, final Context context) {
        final UserManagerCompat instance = UserManagerCompat.getInstance(context);
        final HashSet<String> set = new HashSet<String>();
        final Iterator<UserHandle> iterator = list.iterator();
        while (iterator.hasNext()) {
            set.add("user_folder_" + instance.getSerialNumberForUser(iterator.next()));
        }
        final SharedPreferences prefs = prefs(context);
        final SharedPreferences$Editor edit = prefs.edit();
        for (final String s : prefs.getAll().keySet()) {
            if (!set.contains(s)) {
                edit.remove(s);
            }
        }
        edit.apply();
    }
}
