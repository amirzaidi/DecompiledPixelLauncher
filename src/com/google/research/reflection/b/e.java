// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import com.google.research.reflection.common.a;

public class e extends b
{
    public int Ts() {
        return 7;
    }
    
    public com.google.research.reflection.layers.b Tt(final a a, final com.google.research.reflection.a.b b) {
        final com.google.research.reflection.layers.b b2 = new com.google.research.reflection.layers.b(1, this.Ts());
        b2.Nl[com.google.research.reflection.common.e.To(b) - 1] = 1.0;
        return b2;
    }
    
    public b clone() {
        return new e();
    }
}
