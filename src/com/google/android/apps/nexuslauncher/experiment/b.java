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
    private final com.google.android.gms.common.api.a fe;
    private final SharedPreferences ff;
    
    public b(final com.google.android.gms.common.api.a fe) {
        super(fe, "com.google.android.apps.nexuslauncher");
        this.ff = fe.getContext().getSharedPreferences("phenotype_configs", 0);
        this.fe = fe;
    }
    
    protected void el(final Configurations configurations) {
        a.fD(this.ff, configurations);
        Log.d("PhenotypeFlagCommitter", "Committed to new configuration from Phenotype");
    }
    
    public void em(final boolean b) {
        Log.d("PhenotypeFlagCommitter", "Commit finished, result:" + b);
        this.fe.gy();
    }
}
