// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.a;
import com.google.android.gms.phenotype.c;

public class k implements c
{
    private static long oW;
    
    static {
        k.oW = 0L;
    }
    
    public f sq(final a a, final String s, final String s2, final String s3) {
        return a.gj(new s(this, a, s, s2, s3));
    }
    
    public f sr(final a a, final String s) {
        return a.gj(new m(this, a, s));
    }
}
