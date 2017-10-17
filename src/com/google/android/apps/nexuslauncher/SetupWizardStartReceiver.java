// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

public class SetupWizardStartReceiver extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        context.getSharedPreferences("com.android.launcher3.device.prefs", 0).edit().putString("data_import_src_pkg", "com.google.android.googlequicksearchbox").putString("data_import_src_authority", "com.google.android.launcher.settings").putBoolean("pref_show_discovery_bounce", true).commit();
    }
}
