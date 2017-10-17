// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.android.launcher3.util.Preconditions;
import android.content.SharedPreferences;
import android.content.IntentFilter;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.a;
import com.google.android.gms.phenotype.f;
import com.google.android.gms.common.api.e;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

final class i extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        q(context.getApplicationContext());
    }
}
