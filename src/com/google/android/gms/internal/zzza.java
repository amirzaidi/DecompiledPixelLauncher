// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.phenotype.Flag;
import com.google.android.gms.phenotype.ExperimentTokens;
import com.google.android.gms.phenotype.DogfoodsToken;
import com.google.android.gms.phenotype.Configurations;
import com.google.android.gms.common.api.Status;
import android.os.IInterface;

public interface zzza extends IInterface
{
    void zza(final Status p0, final Configurations p1);
    
    void zza(final Status p0, final DogfoodsToken p1);
    
    void zza(final Status p0, final ExperimentTokens p1);
    
    void zza(final Status p0, final Flag p1);
    
    void zzb(final Status p0, final Configurations p1);
    
    void zzgo(final Status p0);
    
    void zzgp(final Status p0);
    
    void zzgq(final Status p0);
    
    void zzgr(final Status p0);
    
    void zzgs(final Status p0);
    
    void zzgt(final Status p0);
}
