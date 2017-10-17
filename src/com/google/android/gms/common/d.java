// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import java.util.Arrays;

class d extends l
{
    private final byte[] ns;
    
    d(final byte[] ns) {
        super(Arrays.copyOfRange(ns, 0, 25));
        this.ns = ns;
    }
    
    byte[] qD() {
        return this.ns;
    }
}
