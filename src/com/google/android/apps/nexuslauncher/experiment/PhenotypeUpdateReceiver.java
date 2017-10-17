// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.experiment;

import android.content.Intent;
import com.google.android.gms.phenotype.d;
import com.google.android.gms.phenotype.f;
import com.google.android.gms.common.api.e;
import android.content.Context;
import android.content.BroadcastReceiver;

public class PhenotypeUpdateReceiver extends BroadcastReceiver
{
    static void cH(final Context context) {
        final com.google.android.gms.common.api.d build = new e(context).dO(f.lS).build();
        build.dv();
        final a a = new a(build);
        a.oX("", a);
    }
    
    public void onReceive(final Context context, final Intent intent) {
        cH(context.getApplicationContext());
    }
}
