// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import java.util.List;
import com.google.research.reflection.common.a;

public class j extends b
{
    public int UF() {
        return 2;
    }
    
    public com.google.research.reflection.layers.b UG(final a a, final com.google.research.reflection.a.b b) {
        final int n = 1;
        final double n2 = 1.0;
        final com.google.research.reflection.layers.b b2 = new com.google.research.reflection.layers.b(n, 2);
        final List up = com.google.research.reflection.common.b.Up(b, "semantic_place");
        if (up.size() > 0 && up.get(0).at() != null && up.get(0).at().size() > 0) {
            if (!((String)up.get(0).at().get(0)).equals("Work")) {
                if (((String)up.get(0).at().get(0)).equals("Home")) {
                    b2.Mr[n] = n2;
                }
            }
            else {
                b2.Mr[0] = n2;
            }
        }
        return b2;
    }
    
    public b clone() {
        return new j();
    }
}
