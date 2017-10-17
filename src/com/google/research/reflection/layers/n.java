// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.concurrent.Callable;

class n implements Callable
{
    int Oq;
    c Or;
    private int Os;
    int Ot;
    
    public n(final int os, final int oq, final int ot, final c or) {
        this.Os = os;
        this.Oq = oq;
        this.Ot = ot;
        this.Or = or;
    }
    
    public Boolean call() {
        for (int i = this.Oq * this.Os; i < Math.min(this.Ot, (this.Os + 1) * this.Oq); ++i) {
            this.Or.Ub(i);
        }
        return true;
    }
}
