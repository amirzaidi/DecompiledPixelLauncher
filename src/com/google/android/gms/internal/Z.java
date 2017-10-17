// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.phenotype.Configurations;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.phenotype.b;

class z implements b
{
    private final Status pa;
    private final Configurations pb;
    
    public z(final Status pa, final Configurations pb) {
        this.pa = pa;
        this.pb = pb;
    }
    
    public Status dr() {
        return this.pa;
    }
    
    public Configurations oF() {
        return this.pb;
    }
}
