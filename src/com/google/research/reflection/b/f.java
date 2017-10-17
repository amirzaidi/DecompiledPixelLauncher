// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import com.google.research.reflection.common.e;
import com.google.research.reflection.common.a;

public class f extends b
{
    public int UF() {
        return 24;
    }
    
    public com.google.research.reflection.layers.b UG(final a a, final com.google.research.reflection.a.b b) {
        final int n = 30;
        final int n2 = 23;
        final double n3 = 1.0;
        final com.google.research.reflection.layers.b b2 = new com.google.research.reflection.layers.b(1, this.UF());
        final int ux = e.Ux(b);
        b2.Mr[ux] = n3;
        final int uy = e.Uy(b);
        if (uy >= n) {
            if (uy > n) {
                int n4 = ux + 1;
                if (n4 > n2) {
                    n4 = 0;
                }
                b2.Mr[n4] = n3;
            }
        }
        else {
            int n5 = ux - 1;
            if (n5 < 0) {
                n5 = n2;
            }
            b2.Mr[n5] = n3;
        }
        return b2;
    }
    
    public b clone() {
        return new f();
    }
}
