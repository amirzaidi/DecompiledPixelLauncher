// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import com.android.launcher3.shortcuts.DeepShortcutManager;
import java.util.Arrays;
import android.service.notification.StatusBarNotification;
import com.android.launcher3.ItemInfo;
import android.os.UserHandle;

public class PackageUserKey
{
    private int mHashCode;
    public String mPackageName;
    public UserHandle mUser;
    
    public PackageUserKey(final String s, final UserHandle userHandle) {
        this.update(s, userHandle);
    }
    
    public static PackageUserKey fromItemInfo(final ItemInfo itemInfo) {
        return new PackageUserKey(itemInfo.getTargetComponent().getPackageName(), itemInfo.user);
    }
    
    public static PackageUserKey fromNotification(final StatusBarNotification statusBarNotification) {
        return new PackageUserKey(statusBarNotification.getPackageName(), statusBarNotification.getUser());
    }
    
    private void update(final String mPackageName, final UserHandle mUser) {
        this.mPackageName = mPackageName;
        this.mUser = mUser;
        this.mHashCode = Arrays.hashCode(new Object[] { mPackageName, mUser });
    }
    
    public boolean equals(final Object o) {
        boolean equals = false;
        if (!(o instanceof PackageUserKey)) {
            return false;
        }
        final PackageUserKey packageUserKey = (PackageUserKey)o;
        if (this.mPackageName.equals(packageUserKey.mPackageName)) {
            equals = this.mUser.equals((Object)packageUserKey.mUser);
        }
        return equals;
    }
    
    public int hashCode() {
        return this.mHashCode;
    }
    
    public boolean updateFromItemInfo(final ItemInfo itemInfo) {
        if (DeepShortcutManager.supportsShortcuts(itemInfo)) {
            this.update(itemInfo.getTargetComponent().getPackageName(), itemInfo.user);
            return true;
        }
        return false;
    }
}
