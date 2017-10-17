// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import com.android.launcher3.ItemInfo;
import android.content.SharedPreferences$Editor;
import android.content.SharedPreferences;
import android.os.Process;
import java.util.HashSet;
import com.android.launcher3.SessionCommitReceiver;
import android.support.v4.os.a;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.IconCache;
import android.content.Context;
import com.android.launcher3.ItemInfoWithIcon;
import com.android.launcher3.AppInfo;
import com.android.launcher3.compat.UserManagerCompat;
import java.util.Iterator;
import java.util.List;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.MainThreadExecutor;
import java.util.Collection;
import java.util.ArrayList;
import android.os.UserHandle;

class ManagedProfileHeuristic$ManagedProfilePackageHandler extends CachedPackageTracker
{
    final /* synthetic */ ManagedProfileHeuristic this$0;
    
    private ManagedProfileHeuristic$ManagedProfilePackageHandler(final ManagedProfileHeuristic this$0) {
        this.this$0 = this$0;
        super(this$0.mContext, "com.android.launcher3.managedusers.prefs");
    }
    
    private void finalizeWorkFolder(final UserHandle userHandle, final ArrayList list, final ArrayList list2) {
        final int n = 2;
        final boolean b = true;
        if (list.isEmpty()) {
            return;
        }
        final String string = "user_folder_" + this.mUserManager.getSerialNumberForUser(userHandle);
        if (!this.this$0.mAddIconsToHomescreen) {
            if (!this.mPrefs.contains(string)) {
                this.mPrefs.edit().putLong(string, (long)(-1)).apply();
            }
            return;
        }
        if (this.mPrefs.contains(string)) {
            final long long1 = this.mPrefs.getLong(string, 0L);
            final FolderInfo folderById = this.this$0.mModel.findFolderById(long1);
            if (folderById == null || (folderById.hasOption(n) ^ true)) {
                list2.addAll(0, list);
                return;
            }
            this.this$0.saveWorkFolderShortcuts(long1, folderById.contents.size(), list);
            new MainThreadExecutor().execute(new ManagedProfileHeuristic$ManagedProfilePackageHandler$1(this, folderById, list));
        }
        else {
            final FolderInfo folderInfo = new FolderInfo();
            folderInfo.title = this.this$0.mContext.getText(2131492894);
            folderInfo.setOption(n, b, null);
            final Iterator<ShortcutInfo> iterator = (Iterator<ShortcutInfo>)list.iterator();
            while (iterator.hasNext()) {
                folderInfo.add(iterator.next(), false);
            }
            final ArrayList list3 = new ArrayList<FolderInfo>(b ? 1 : 0);
            list3.add(folderInfo);
            this.this$0.mModel.addAndBindAddedWorkspaceItems(list3);
            this.mPrefs.edit().putLong(string, folderInfo.id).apply();
            this.this$0.saveWorkFolderShortcuts(folderInfo.id, 0, list);
        }
    }
    
    protected void onLauncherAppsAdded(final List list, final UserHandle userHandle, final boolean b) {
        final ArrayList<ShortcutInfo> list2 = new ArrayList<ShortcutInfo>();
        final ArrayList<ShortcutInfo> list3 = new ArrayList<ShortcutInfo>();
        final int size = list.size();
        final long n = this.mUserManager.getUserCreationTime(userHandle) + 28800000L;
        final boolean quietModeEnabled = UserManagerCompat.getInstance(this.this$0.mContext).isQuietModeEnabled(userHandle);
        for (int i = 0; i < size; ++i) {
            final CachedPackageTracker$LauncherActivityInstallInfo cachedPackageTracker$LauncherActivityInstallInfo = list.get(i);
            final AppInfo appInfo = new AppInfo(cachedPackageTracker$LauncherActivityInstallInfo.info, userHandle, quietModeEnabled);
            this.this$0.mIconCache.getTitleAndIcon(appInfo, cachedPackageTracker$LauncherActivityInstallInfo.info, false);
            final ShortcutInfo shortcut = appInfo.makeShortcut();
            ArrayList<ShortcutInfo> list4;
            if (cachedPackageTracker$LauncherActivityInstallInfo.installTime <= n) {
                list4 = list2;
            }
            else {
                list4 = list3;
            }
            list4.add(shortcut);
        }
        this.finalizeWorkFolder(userHandle, list2, list3);
        if (b && (list3.isEmpty() ^ true) && this.this$0.mAddIconsToHomescreen) {
            this.this$0.mModel.addAndBindAddedWorkspaceItems(new ArrayList(list3));
        }
    }
    
    protected void onLauncherPackageRemoved(final String s, final UserHandle userHandle) {
    }
    
    public void onShortcutsChanged(final String s, final List list, final UserHandle userHandle) {
    }
}
