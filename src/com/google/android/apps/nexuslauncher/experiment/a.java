// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.experiment;

import android.content.Context;
import com.google.android.gms.phenotype.e;
import com.google.android.gms.phenotype.f;

public class a
{
    private static final f eV;
    public static e eW;
    public static e eX;
    public static e eY;
    public static e eZ;
    public static e fa;
    public static e fb;
    public static e fc;
    public static e fd;
    
    static {
        eV = new f("phenotype_configs").fU("");
        a.fb = a.eV.fW("TensorflowFeature__kill_switch", true);
        a.eZ = a.eV.fV("TensorflowFeature__inference_plan", "mrepo:/com.google.android.apps.nexuslauncher.reflection/v2/reflection_ranker_model_pgen_inference_plan.pb?02206e05b5f04cbdd42ab27ee66af63bfca60667#15433");
        a.fc = a.eV.fV("TensorflowFeature__training_plan", "mrepo:/com.google.android.apps.nexuslauncher.reflection/v2/reflection_ranker_model_pgen_plan.pb?f90dd8339e44a24ab8eeaa2a1db555373b48c536#56988");
        a.fa = a.eV.fV("TensorflowFeature__init_param", "mrepo:/com.google.android.apps.nexuslauncher.reflection/v2/reflection_ranker_model_pgen_initial_state.ckp?c818310d73dbfd22e062c198fdc8488ce60b4bb7#217182");
        a.fd = a.eV.fV("TensorflowFeature__trained_param", "file:trained_params.ckp");
        a.eY = a.eV.fW("QSBFeature__qsb_is_wide", false);
        a.eW = a.eV.fW("QSBFeature__qsb_is_in_experiment", false);
        a.eX = a.eV.fW("QSBFeature__qsb_kill_switch", false);
    }
    
    public static void ej(final Context context) {
        e.fL(context);
        PhenotypeUpdateReceiver.ek(context);
    }
}
