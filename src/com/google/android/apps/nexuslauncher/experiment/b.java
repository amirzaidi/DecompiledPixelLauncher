// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.experiment;

import android.util.Log;
import com.google.android.gms.phenotype.Configurations;
import android.content.SharedPreferences;
import com.google.android.gms.phenotype.a;

class b extends a implements com.google.android.gms.phenotype.b
{
    private final SharedPreferences fv;
    
    public b(final com.google.android.gms.common.api.a a) {
        super(a, "com.google.android.apps.nexuslauncher");
        this.fv = a.getContext().getSharedPreferences("phenotype_configs", 0);
    }
    
    protected void dU(final Configurations configurations) {
        a.CJ(this.fv, configurations);
        Log.d("PhenotypeFlagCommitter", "Committed to new configuration from Phenotype");
    }
    
    public void dV(final boolean b) {
        Log.d("PhenotypeFlagCommitter", "Commit finished, result:" + b);
        this.xN.gi();
    }
}
