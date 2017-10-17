// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.m;
import com.google.android.gms.phenotype.Configurations;
import com.google.android.gms.common.api.Status;

class q extends j
{
    final /* synthetic */ s pb;
    
    q(final s pb) {
        this.pb = pb;
    }
    
    public void zza(final Status status, final Configurations configurations) {
        this.pb.rV(new t(status, configurations));
    }
}
