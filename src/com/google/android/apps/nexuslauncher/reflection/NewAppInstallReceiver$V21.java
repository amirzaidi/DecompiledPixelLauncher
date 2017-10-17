// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import com.android.launcher3.util.PackageUserKey;
import android.os.Process;
import android.text.TextUtils;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

public class NewAppInstallReceiver$V21 extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction()) && (intent.getBooleanExtra("android.intent.extra.REPLACING", false) ^ true)) {
            final String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            if (!TextUtils.isEmpty((CharSequence)schemeSpecificPart)) {
                c.getInstance(context).ax(new PackageUserKey(schemeSpecificPart, Process.myUserHandle()));
            }
        }
    }
}
