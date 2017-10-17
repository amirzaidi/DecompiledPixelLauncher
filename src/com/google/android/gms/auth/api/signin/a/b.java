// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.auth.api.signin.a;

public class b
{
    static int Jd;
    private int Je;
    
    static {
        b.Jd = 31;
    }
    
    public b() {
        this.Je = 1;
    }
    
    public b Pl(final Object o) {
        final int n = this.Je * b.Jd;
        int hashCode;
        if (o != null) {
            hashCode = o.hashCode();
        }
        else {
            hashCode = 0;
        }
        this.Je = hashCode + n;
        return this;
    }
    
    public b Pm(final boolean b) {
        int n = 0;
        final int n2 = b.Jd * this.Je;
        if (b) {
            n = 1;
        }
        this.Je = n + n2;
        return this;
    }
    
    public int Pn() {
        return this.Je;
    }
}
