// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import java.util.List;
import com.google.research.reflection.common.d;
import com.google.research.reflection.common.a;

public class i extends b
{
    public int Ts() {
        return 3;
    }
    
    public com.google.research.reflection.layers.b Tt(final a a, final com.google.research.reflection.a.b b) {
        final int n = 2;
        final int n2 = 1;
        final com.google.research.reflection.layers.b b2 = new com.google.research.reflection.layers.b(n2, this.Ts());
        final List tc = com.google.research.reflection.common.b.Tc(b, "lat_long");
        if (tc.size() > 0) {
            final float[] th = d.Th(tc.get(0).B().get(0), tc.get(0).B().get(n2));
            b2.Nl[0] = th[0];
            b2.Nl[n2] = th[n2];
            b2.Nl[n] = th[n];
        }
        return b2;
    }
    
    public b clone() {
        return new i();
    }
}
