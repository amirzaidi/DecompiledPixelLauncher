// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import com.android.launcher3.ItemInfo;
import com.android.launcher3.ShortcutInfo;
import android.content.SharedPreferences$Editor;
import java.util.List;
import android.content.SharedPreferences;
import java.util.Iterator;
import com.android.launcher3.compat.UserManagerCompat;
import android.os.Process;
import java.util.HashSet;
import com.android.launcher3.SessionCommitReceiver;
import android.support.v4.os.a;
import com.android.launcher3.LauncherAppState;
import java.util.ArrayList;
import android.os.UserHandle;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.IconCache;
import android.content.Context;

public class ManagedProfileHeuristic
{
    private final boolean mAddIconsToHomescreen;
    private final Context mContext;
    private final IconCache mIconCache;
    private final LauncherModel mModel;
    private final UserHandle mUser;
    
    private ManagedProfileHeuristic(final Context mContext, final UserHandle mUser) {
        this.mContext = mContext;
        this.mUser = mUser;
        this.mModel = LauncherAppState.getInstance(mContext).getModel();
        this.mIconCache = LauncherAppState.getInstance(mContext).getIconCache();
        this.mAddIconsToHomescreen = (!a.isAtLeastO() || SessionCommitReceiver.isEnabled(mContext));
    }
    
    private static void addAllUserKeys(final long n, final HashSet set) {
        set.add("installed_packages_for_user_" + n);
        set.add("user_folder_" + n);
    }
    
    public static ManagedProfileHeuristic get(final Context context, final UserHandle userHandle) {
        if (!Process.myUserHandle().equals((Object)userHandle)) {
            return new ManagedProfileHeuristic(context, userHandle);
        }
        return null;
    }
    
    public static void markExistingUsersForNoFolderCreation(final Context context) {
        final UserManagerCompat instance = UserManagerCompat.getInstance(context);
        final UserHandle myUserHandle = Process.myUserHandle();
        final Iterator iterator = instance.getUserProfiles().iterator();
        SharedPreferences sharedPreferences = null;
        while (iterator.hasNext()) {
            final UserHandle userHandle = iterator.next();
            SharedPreferences sharedPreferences2;
            if (myUserHandle.equals((Object)userHandle)) {
                sharedPreferences2 = sharedPreferences;
            }
            else {
                if (sharedPreferences == null) {
                    sharedPreferences = context.getSharedPreferences("com.android.launcher3.managedusers.prefs", 0);
                }
                final String string = "user_folder_" + instance.getSerialNumberForUser(userHandle);
                if (!sharedPreferences.contains(string)) {
                    sharedPreferences.edit().putLong(string, (long)(-1)).apply();
                    sharedPreferences2 = sharedPreferences;
                }
                else {
                    sharedPreferences2 = sharedPreferences;
                }
            }
            sharedPreferences = sharedPreferences2;
        }
    }
    
    public static void processAllUsers(final List list, final Context context) {
        final UserManagerCompat instance = UserManagerCompat.getInstance(context);
        final HashSet set = new HashSet();
        final Iterator<UserHandle> iterator = list.iterator();
        while (iterator.hasNext()) {
            addAllUserKeys(instance.getSerialNumberForUser(iterator.next()), set);
        }
        final SharedPreferences sharedPreferences = context.getSharedPreferences("com.android.launcher3.managedusers.prefs", 0);
        final SharedPreferences$Editor edit = sharedPreferences.edit();
        for (final String s : sharedPreferences.getAll().keySet()) {
            if (!set.contains(s)) {
                edit.remove(s);
            }
        }
        edit.apply();
    }
    
    private void saveWorkFolderShortcuts(final long n, int rank, final ArrayList list) {
        for (final ShortcutInfo shortcutInfo : list) {
            final int n2 = rank + 1;
            shortcutInfo.rank = rank;
            this.mModel.getWriter(false).addItemToDatabase(shortcutInfo, n, 0L, 0, 0);
            rank = n2;
        }
    }
    
    public void processPackageAdd(final String[] array) {
        Preconditions.assertWorkerThread();
        final ManagedProfileHeuristic$ManagedProfilePackageHandler managedProfileHeuristic$ManagedProfilePackageHandler = new ManagedProfileHeuristic$ManagedProfilePackageHandler(this, null);
        for (int i = 0; i < array.length; ++i) {
            managedProfileHeuristic$ManagedProfilePackageHandler.onPackageAdded(array[i], this.mUser);
        }
    }
    
    public void processPackageRemoved(final String[] array) {
        Preconditions.assertWorkerThread();
        final ManagedProfileHeuristic$ManagedProfilePackageHandler managedProfileHeuristic$ManagedProfilePackageHandler = new ManagedProfileHeuristic$ManagedProfilePackageHandler(this, null);
        for (int i = 0; i < array.length; ++i) {
            managedProfileHeuristic$ManagedProfilePackageHandler.onPackageRemoved(array[i], this.mUser);
        }
    }
    
    public void processUserApps(final List list) {
        Preconditions.assertWorkerThread();
        new ManagedProfileHeuristic$ManagedProfilePackageHandler(this, null).processUserApps(list, this.mUser);
    }
}
