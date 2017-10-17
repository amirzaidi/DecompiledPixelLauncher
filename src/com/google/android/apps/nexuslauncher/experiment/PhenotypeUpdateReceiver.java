// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.experiment;

import android.content.Intent;
import com.google.android.gms.common.api.a;
import com.google.android.gms.phenotype.g;
import com.google.android.gms.common.api.b;
import android.content.Context;
import android.content.BroadcastReceiver;

public class PhenotypeUpdateReceiver extends BroadcastReceiver
{
    static void dT(final Context context) {
        final a build = new b(context).gu(g.yN).build();
        build.gg();
        final com.google.android.apps.nexuslauncher.experiment.b b = new com.google.android.apps.nexuslauncher.experiment.b(build);
        b.CH("", b);
    }
    
    public void onReceive(final Context context, final Intent intent) {
        dT(context.getApplicationContext());
    }
}
