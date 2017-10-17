// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.util.Iterator;
import android.content.pm.LauncherActivityInfo;
import android.os.Process;
import java.util.ArrayList;
import java.util.List;
import com.android.launcher3.util.PackageUserKey;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.ApplicationInfo;
import android.os.UserHandle;
import android.os.Parcelable;
import android.content.Intent;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.ShortcutInfo;
import android.content.pm.LauncherApps$PinItemRequest;
import android.content.Context;

public class LauncherAppsCompatVO extends LauncherAppsCompatVL
{
    LauncherAppsCompatVO(final Context context) {
        super(context);
    }
    
    public static ShortcutInfo createShortcutInfoFromPinItemRequest(final Context context, final LauncherApps$PinItemRequest launcherApps$PinItemRequest, final long n) {
        if (launcherApps$PinItemRequest != null && launcherApps$PinItemRequest.getRequestType() == 1 && launcherApps$PinItemRequest.isValid()) {
            if (n <= 0L) {
                if (!launcherApps$PinItemRequest.accept()) {
                    return null;
                }
            }
            else {
                new LooperExecutor(LauncherModel.getWorkerLooper()).execute(new LauncherAppsCompatVO$1(n, launcherApps$PinItemRequest));
            }
            final ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat(launcherApps$PinItemRequest.getShortcutInfo());
            final ShortcutInfo shortcutInfo = new ShortcutInfo(shortcutInfoCompat, context);
            shortcutInfo.iconBitmap = LauncherIcons.createShortcutIcon(shortcutInfoCompat, context, false);
            LauncherAppState.getInstance(context).getModel().updateAndBindShortcutInfo(shortcutInfo, shortcutInfoCompat);
            return shortcutInfo;
        }
        return null;
    }
    
    public static LauncherApps$PinItemRequest getPinItemRequest(final Intent intent) {
        final Parcelable parcelableExtra = intent.getParcelableExtra("android.content.pm.extra.PIN_ITEM_REQUEST");
        LauncherApps$PinItemRequest launcherApps$PinItemRequest;
        if (parcelableExtra instanceof LauncherApps$PinItemRequest) {
            launcherApps$PinItemRequest = (LauncherApps$PinItemRequest)parcelableExtra;
        }
        else {
            launcherApps$PinItemRequest = null;
        }
        return launcherApps$PinItemRequest;
    }
    
    public ApplicationInfo getApplicationInfo(final String s, final int n, final UserHandle userHandle) {
        try {
            ApplicationInfo applicationInfo = this.mLauncherApps.getApplicationInfo(s, n, userHandle);
            try {
                if ((applicationInfo.flags & 0x800000) == 0x0 || (applicationInfo.enabled ^ true)) {
                    applicationInfo = null;
                }
                return applicationInfo;
            }
            catch (PackageManager$NameNotFoundException ex) {
                return null;
            }
        }
        catch (PackageManager$NameNotFoundException ex2) {}
    }
    
    public List getCustomShortcutActivityList(final PackageUserKey packageUserKey) {
        final ArrayList<ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO> list = new ArrayList<ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO>();
        final UserHandle myUserHandle = Process.myUserHandle();
        List<Object> userProfiles;
        String s;
        if (packageUserKey == null) {
            userProfiles = (List<Object>)UserManagerCompat.getInstance(this.mContext).getUserProfiles();
            s = null;
        }
        else {
            final ArrayList<Object> list2 = new ArrayList<Object>(1);
            list2.add(packageUserKey.mUser);
            final String mPackageName = packageUserKey.mPackageName;
            userProfiles = list2;
            s = mPackageName;
        }
        for (final UserHandle userHandle : userProfiles) {
            final boolean equals = myUserHandle.equals((Object)userHandle);
            for (final LauncherActivityInfo launcherActivityInfo : this.mLauncherApps.getShortcutConfigActivityList(s, userHandle)) {
                if (equals || launcherActivityInfo.getApplicationInfo().targetSdkVersion >= 26) {
                    list.add(new ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO(launcherActivityInfo));
                }
            }
        }
        return list;
    }
}
