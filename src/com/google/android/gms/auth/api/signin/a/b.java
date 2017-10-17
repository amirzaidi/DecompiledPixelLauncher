// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.auth.api.signin.a;

public class b
{
    static int KI;
    private int KJ;
    
    static {
        b.KI = 31;
    }
    
    public b() {
        this.KJ = 1;
    }
    
    public b Qe(final Object o) {
        final int n = this.KJ * b.KI;
        int hashCode;
        if (o != null) {
            hashCode = o.hashCode();
        }
        else {
            hashCode = 0;
        }
        this.KJ = hashCode + n;
        return this;
    }
    
    public b Qf(final boolean b) {
        int n = 0;
        final int n2 = b.KI * this.KJ;
        if (b) {
            n = 1;
        }
        this.KJ = n + n2;
        return this;
    }
    
    public int Qg() {
        return this.KJ;
    }
}
