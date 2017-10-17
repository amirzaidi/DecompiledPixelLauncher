// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.android.launcher3.util.Preconditions;
import android.content.SharedPreferences;
import android.content.IntentFilter;
import com.google.android.gms.phenotype.f;
import com.google.android.gms.common.api.e;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import android.content.BroadcastReceiver;
import com.google.android.gms.common.api.b;
import android.content.Context;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.a;

final class k implements a
{
    final /* synthetic */ j ad;
    final /* synthetic */ d ae;
    final /* synthetic */ Context val$context;
    
    k(final j ad, final Context val$context, final d ae) {
        this.ad = ad;
        this.val$context = val$context;
        this.ae = ae;
    }
    
    public void ai(final com.google.android.gms.phenotype.b b) {
        if (b.dr().dF() && ExperimentSetupService.x(b)) {
            s(this.val$context, 3, true);
            this.val$context.unregisterReceiver(c.r);
        }
        this.ae.dx();
    }
}
