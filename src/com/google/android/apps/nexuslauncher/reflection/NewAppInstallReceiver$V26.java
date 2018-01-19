// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import com.android.launcher3.util.PackageUserKey;
import android.text.TextUtils;
import android.os.UserHandle;
import android.content.pm.PackageInstaller$SessionInfo;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

public class NewAppInstallReceiver$V26 extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        final PackageInstaller$SessionInfo packageInstaller$SessionInfo = (PackageInstaller$SessionInfo)intent.getParcelableExtra("android.content.pm.extra.SESSION");
        final UserHandle userHandle = (UserHandle)intent.getParcelableExtra("android.intent.extra.USER");
        if (!TextUtils.isEmpty((CharSequence)packageInstaller$SessionInfo.getAppPackageName()) && userHandle != null && packageInstaller$SessionInfo.getInstallReason() == 4) {
            o.getInstance(context).bC(new PackageUserKey(packageInstaller$SessionInfo.getAppPackageName(), userHandle));
        }
    }
}
