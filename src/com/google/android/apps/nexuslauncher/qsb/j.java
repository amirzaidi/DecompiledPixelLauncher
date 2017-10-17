// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.google.android.gms.phenotype.f;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;
import android.content.Context;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.a;

final class j implements a
{
    final /* synthetic */ d ac;
    final /* synthetic */ Context val$context;
    
    j(final d ac, final Context val$context) {
        this.ac = ac;
        this.val$context = val$context;
    }
    
    public void ah(final Status status) {
        f.lQ.oD(this.ac, this.val$context.getPackageName(), "", null).ds(new k(this, this.val$context, this.ac));
    }
}
