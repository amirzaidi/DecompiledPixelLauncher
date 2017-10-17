// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import java.util.List;
import com.google.research.reflection.common.c;
import com.google.research.reflection.common.a;

public class i extends b
{
    public int UF() {
        return 3;
    }
    
    public com.google.research.reflection.layers.b UG(final a a, final com.google.research.reflection.a.b b) {
        final int n = 2;
        final int n2 = 1;
        final com.google.research.reflection.layers.b b2 = new com.google.research.reflection.layers.b(n2, this.UF());
        final List up = com.google.research.reflection.common.b.Up(b, "lat_long");
        if (up.size() > 0) {
            final float[] ut = c.Ut(up.get(0).ar().get(0), up.get(0).ar().get(n2));
            b2.Mr[0] = ut[0];
            b2.Mr[n2] = ut[n2];
            b2.Mr[n] = ut[n];
        }
        return b2;
    }
    
    public b clone() {
        return new i();
    }
}
