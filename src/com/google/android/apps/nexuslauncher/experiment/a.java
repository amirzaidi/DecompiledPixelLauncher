// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.experiment;

import android.content.Context;
import com.google.android.gms.phenotype.d;
import com.google.android.gms.phenotype.e;

public class a
{
    private static final e fr;
    public static d fs;
    public static d ft;
    public static d fu;
    
    static {
        fr = new e("phenotype_configs").CQ("");
        a.fu = a.fr.CR("QSBFeature__qsb_is_wide", false);
        a.fs = a.fr.CR("QSBFeature__qsb_is_in_experiment", false);
        a.ft = a.fr.CR("QSBFeature__qsb_kill_switch", false);
    }
    
    public static void dS(final Context context) {
        d.CN(context);
        PhenotypeUpdateReceiver.dT(context);
    }
}
