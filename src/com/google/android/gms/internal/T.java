// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.phenotype.Configurations;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.phenotype.r;

class t implements r
{
    private final Status ph;
    private final Configurations pi;
    
    public t(final Status ph, final Configurations pi) {
        this.ph = ph;
        this.pi = pi;
    }
    
    public Status gV() {
        return this.ph;
    }
    
    public Configurations sx() {
        return this.pi;
    }
}
