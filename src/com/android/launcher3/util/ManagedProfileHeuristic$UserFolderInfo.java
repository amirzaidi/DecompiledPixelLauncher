// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.content.pm.LauncherActivityInfo;
import java.util.Iterator;
import com.android.launcher3.MainThreadExecutor;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.model.BgDataModel;
import android.content.Context;
import android.os.UserHandle;
import android.content.SharedPreferences;
import java.util.ArrayList;
import com.android.launcher3.FolderInfo;

public class ManagedProfileHeuristic$UserFolderInfo
{
    final long addIconToFolderTime;
    final boolean folderAlreadyCreated;
    final String folderIdKey;
    final FolderInfo folderInfo;
    boolean folderPendingAddition;
    final ArrayList pendingShortcuts;
    final SharedPreferences prefs;
    final UserHandle user;
    final long userSerial;
    
    public ManagedProfileHeuristic$UserFolderInfo(final Context context, final UserHandle user, final BgDataModel bgDataModel) {
        final boolean folderPendingAddition = true;
        this.pendingShortcuts = new ArrayList();
        this.user = user;
        final UserManagerCompat instance = UserManagerCompat.getInstance(context);
        this.userSerial = instance.getSerialNumberForUser(user);
        this.addIconToFolderTime = instance.getUserCreationTime(user) + 28800000L;
        this.folderIdKey = "user_folder_" + this.userSerial;
        this.prefs = ManagedProfileHeuristic.prefs(context);
        this.folderAlreadyCreated = this.prefs.contains(this.folderIdKey);
        if (bgDataModel != null) {
            if (this.folderAlreadyCreated) {
                this.folderInfo = (FolderInfo)bgDataModel.folders.get(this.prefs.getLong(this.folderIdKey, (long)(-1)));
            }
            else {
                this.folderInfo = new FolderInfo();
                this.folderInfo.title = context.getText(2131492896);
                this.folderInfo.setOption(2, folderPendingAddition, null);
                this.folderPendingAddition = folderPendingAddition;
            }
        }
        else {
            this.folderInfo = null;
        }
    }
    
    public void applyPendingState(final ModelWriter modelWriter) {
        if (this.folderInfo == null) {
            return;
        }
        int size;
        if (this.folderAlreadyCreated) {
            size = this.folderInfo.contents.size();
        }
        else {
            size = 0;
        }
        for (final ShortcutInfo shortcutInfo : this.pendingShortcuts) {
            final int n = size + 1;
            shortcutInfo.rank = size;
            modelWriter.addItemToDatabase(shortcutInfo, this.folderInfo.id, 0L, 0, 0);
            size = n;
        }
        if (this.folderAlreadyCreated) {
            new MainThreadExecutor().execute(new ManagedProfileHeuristic$UserFolderInfo$1(this));
        }
        else {
            this.prefs.edit().putLong(this.folderIdKey, this.folderInfo.id).apply();
        }
    }
    
    public ItemInfo convertToWorkspaceItem(final ShortcutInfo shortcutInfo, final LauncherActivityInfo launcherActivityInfo) {
        if (launcherActivityInfo.getFirstInstallTime() >= this.addIconToFolderTime) {
            return shortcutInfo;
        }
        if (this.folderAlreadyCreated) {
            if (this.folderInfo == null) {
                return shortcutInfo;
            }
            this.pendingShortcuts.add(shortcutInfo);
            return null;
        }
        else {
            this.pendingShortcuts.add(shortcutInfo);
            this.folderInfo.add(shortcutInfo, false);
            if (this.folderPendingAddition) {
                this.folderPendingAddition = false;
                return this.folderInfo;
            }
            return null;
        }
    }
}
