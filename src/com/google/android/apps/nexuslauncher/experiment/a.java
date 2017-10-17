// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.experiment;

import android.util.Log;
import com.google.android.gms.phenotype.Configurations;
import android.content.SharedPreferences;
import com.google.android.gms.phenotype.d;
import com.google.android.gms.phenotype.c;

class a extends c implements d
{
    private final SharedPreferences dg;
    
    public a(final com.google.android.gms.common.api.d d) {
        super(d, "com.google.android.apps.nexuslauncher");
        this.dg = d.getContext().getSharedPreferences("phenotype_configs", 0);
    }
    
    protected void cI(final Configurations configurations) {
        c.oZ(this.dg, configurations);
        Log.d("PhenotypeFlagCommitter", "Committed to new configuration from Phenotype");
    }
    
    public void cJ(final boolean b) {
        Log.d("PhenotypeFlagCommitter", "Commit finished, result:" + b);
        this.lF.dx();
    }
}
