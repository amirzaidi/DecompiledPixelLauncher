// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

class j implements c
{
    final /* synthetic */ b Om;
    final /* synthetic */ b On;
    
    j(final b on, final b om) {
        this.On = on;
        this.Om = om;
    }
    
    public Boolean Ub(final int n) {
        if (this.Om.Nl[n] != 0.0) {
            final double[] nl = this.On.Nl;
            nl[n] += this.Om.Nl[n];
        }
        return true;
    }
}
