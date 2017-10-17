// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

class h implements c
{
    final /* synthetic */ b MM;
    final /* synthetic */ b MN;
    final /* synthetic */ boolean MO;
    final /* synthetic */ boolean MP;
    final /* synthetic */ b MQ;
    
    h(final boolean mo, final b mq, final b mn, final b mm, final boolean mp) {
        this.MO = mo;
        this.MQ = mq;
        this.MN = mn;
        this.MM = mm;
        this.MP = mp;
    }
    
    private double Vs(final int n, final int n2) {
        final int vh = this.MN.Vh(false);
        double n3 = 0.0;
        for (int i = 0; i < vh; ++i) {
            n3 += this.MN.Vc(false, n, i) * this.MM.Vc(this.MP, i, n2);
        }
        return n3;
    }
    
    public Boolean Vo(final int n) {
        if (!this.MO) {
            this.MQ.Mr[n] = this.Vs(n / this.MQ.Vh(false), n % this.MQ.Vh(false));
        }
        else {
            final double[] mr = this.MQ.Mr;
            mr[n] += this.Vs(n / this.MQ.Vh(false), n % this.MQ.Vh(false));
        }
        return true;
    }
}
