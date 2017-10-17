// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import com.google.android.gms.phenotype.a;

public class k implements a
{
    private static long ou;
    
    static {
        k.ou = 0L;
    }
    
    public c oA(final d d, final String s) {
        return d.dy(new o(this, d, s));
    }
    
    public c oB(final d d, final String s, final int n, final String[] array, final byte[] array2) {
        return d.dy(new n(this, d, s, n, array, array2));
    }
    
    public c oC(final d d, final String s, final int n, final String[] array, final byte[] array2, final String s2, final String s3) {
        return d.dy(new s(this, d, s, n, array, array2, s2, s3));
    }
    
    public c oD(final d d, final String s, final String s2, final String s3) {
        return d.dy(new y(this, d, s, s2, s3));
    }
    
    public c oE(final d d, final String s, final int n, final String[] array, final int[] array2, final byte[] array3) {
        return d.dy(new l(this, d, s, n, array, array2, array3));
    }
}
