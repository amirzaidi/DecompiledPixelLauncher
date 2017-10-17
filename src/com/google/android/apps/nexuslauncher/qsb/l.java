// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.a;

final class l implements a
{
    final /* synthetic */ d af;
    
    l(final d af) {
        this.af = af;
    }
    
    public void aj(final Status status) {
        Log.i("QsbExperiment", "Phenotype published " + status.dF());
        this.af.dx();
    }
}
