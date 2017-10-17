// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import java.util.Iterator;
import java.util.HashSet;
import java.util.Collection;
import java.util.ArrayList;
import android.os.UserHandle;
import java.util.Map;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.content.Intent;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.LauncherModel;
import android.content.Context;
import android.content.BroadcastReceiver;

public class SdCardAvailableReceiver extends BroadcastReceiver
{
    private final Context mContext;
    private final LauncherModel mModel;
    private final MultiHashMap mPackages;
    
    public SdCardAvailableReceiver(final LauncherAppState launcherAppState, final MultiHashMap mPackages) {
        this.mModel = launcherAppState.getModel();
        this.mContext = launcherAppState.getContext();
        this.mPackages = mPackages;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        final LauncherAppsCompat instance = LauncherAppsCompat.getInstance(context);
        final PackageManagerHelper packageManagerHelper = new PackageManagerHelper(context);
        for (final Map.Entry<UserHandle, Object> entry : this.mPackages.entrySet()) {
            final UserHandle userHandle = entry.getKey();
            final ArrayList<String> list = new ArrayList<String>();
            final ArrayList<String> list2 = new ArrayList<String>();
            for (final String s : new HashSet<Object>(entry.getValue())) {
                if (!instance.isPackageEnabledForProfile(s, userHandle)) {
                    if (packageManagerHelper.isAppOnSdcard(s, userHandle)) {
                        list2.add(s);
                    }
                    else {
                        list.add(s);
                    }
                }
            }
            if (!list.isEmpty()) {
                this.mModel.onPackagesRemoved(userHandle, (String[])list.toArray(new String[list.size()]));
            }
            if (!list2.isEmpty()) {
                this.mModel.onPackagesUnavailable(list2.toArray(new String[list2.size()]), userHandle, false);
            }
        }
        this.mContext.unregisterReceiver((BroadcastReceiver)this);
    }
}
