// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import com.google.research.reflection.common.e;
import com.google.research.reflection.common.a;

public class f extends b
{
    public int Ts() {
        return 24;
    }
    
    public com.google.research.reflection.layers.b Tt(final a a, final com.google.research.reflection.a.b b) {
        final int n = 30;
        final int n2 = 23;
        final double n3 = 1.0;
        final com.google.research.reflection.layers.b b2 = new com.google.research.reflection.layers.b(1, this.Ts());
        final int tk = e.Tk(b);
        b2.Nl[tk] = n3;
        final int tl = e.Tl(b);
        if (tl >= n) {
            if (tl > n) {
                int n4 = tk + 1;
                if (n4 > n2) {
                    n4 = 0;
                }
                b2.Nl[n4] = n3;
            }
        }
        else {
            int n5 = tk - 1;
            if (n5 < 0) {
                n5 = n2;
            }
            b2.Nl[n5] = n3;
        }
        return b2;
    }
    
    public b clone() {
        return new f();
    }
}
