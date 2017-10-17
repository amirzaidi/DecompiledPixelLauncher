// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import java.util.Arrays;

class d extends l
{
    private final byte[] kA;
    
    d(final byte[] ka) {
        super(Arrays.copyOfRange(ka, 0, 25));
        this.kA = ka;
    }
    
    byte[] nR() {
        return this.kA;
    }
}
