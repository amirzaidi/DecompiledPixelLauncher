// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import com.android.launcher3.AppInfo;
import android.os.Process;
import android.content.Context;
import com.android.launcher3.compat.UserManagerCompat;
import android.os.UserHandle;
import com.android.launcher3.util.LabelComparator;
import java.util.Comparator;

public class AppInfoComparator implements Comparator
{
    private final LabelComparator mLabelComparator;
    private final UserHandle mMyUser;
    private final UserManagerCompat mUserManager;
    
    public AppInfoComparator(final Context context) {
        this.mUserManager = UserManagerCompat.getInstance(context);
        this.mMyUser = Process.myUserHandle();
        this.mLabelComparator = new LabelComparator();
    }
    
    public int compare(final AppInfo appInfo, final AppInfo appInfo2) {
        final int compare = this.mLabelComparator.compare(appInfo.title.toString(), appInfo2.title.toString());
        if (compare != 0) {
            return compare;
        }
        final int compareTo = appInfo.componentName.compareTo(appInfo2.componentName);
        if (compareTo != 0) {
            return compareTo;
        }
        if (this.mMyUser.equals((Object)appInfo.user)) {
            return -1;
        }
        return Long.valueOf(this.mUserManager.getSerialNumberForUser(appInfo.user)).compareTo(Long.valueOf(this.mUserManager.getSerialNumberForUser(appInfo2.user)));
    }
}
