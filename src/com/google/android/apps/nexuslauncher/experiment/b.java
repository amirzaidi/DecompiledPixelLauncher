// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.experiment;

import android.content.Context;
import com.google.android.gms.phenotype.g;
import com.google.android.gms.phenotype.h;

public class b
{
    private static final h dh;
    public static g di;
    public static g dj;
    public static g dk;
    
    static {
        dh = new h("phenotype_configs").ph("");
        b.dk = b.dh.pi("QSBFeature__qsb_is_wide", false);
        b.di = b.dh.pi("QSBFeature__qsb_is_in_experiment", false);
        b.dj = b.dh.pi("QSBFeature__qsb_kill_switch", false);
    }
    
    public static void cK(final Context context) {
        g.pe(context);
        PhenotypeUpdateReceiver.cH(context);
    }
}
