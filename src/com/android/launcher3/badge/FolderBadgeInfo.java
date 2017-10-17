// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.badge;

import com.android.launcher3.Utilities;
import com.android.launcher3.util.PackageUserKey;

public class FolderBadgeInfo extends BadgeInfo
{
    private int mNumNotifications;
    
    public FolderBadgeInfo() {
        super(null);
    }
    
    public void addBadgeInfo(final BadgeInfo badgeInfo) {
        if (badgeInfo == null) {
            return;
        }
        this.mNumNotifications += badgeInfo.getNotificationKeys().size();
        this.mNumNotifications = Utilities.boundToRange(this.mNumNotifications, 0, 999);
    }
    
    public int getNotificationCount() {
        return 0;
    }
    
    public boolean hasBadge() {
        boolean b = false;
        if (this.mNumNotifications > 0) {
            b = true;
        }
        return b;
    }
    
    public void subtractBadgeInfo(final BadgeInfo badgeInfo) {
        if (badgeInfo == null) {
            return;
        }
        this.mNumNotifications -= badgeInfo.getNotificationKeys().size();
        this.mNumNotifications = Utilities.boundToRange(this.mNumNotifications, 0, 999);
    }
}
