// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.ArrayList;

public class s extends v
{
    j[] NT;
    int NU;
    
    public String VI() {
        return "LSTMLayer";
    }
    
    public b VP(final boolean b, final a a, final ArrayList[] array, final b b2) {
        final int oj = 1;
        b b3 = null;
        if (array == null) {
            this.Oj = false;
            this.Oh.add(b2);
        }
        else {
            this.Oj = (oj != 0);
            this.Oi.add(array);
        }
        if (this.Om.Uk() > oj) {
            b3 = (b)this.Om.Uh();
        }
        b b4 = (b)this.Om.Uf();
        if (b4 == null) {
            b4 = new b(this.Og, this.Ol);
        }
        final b b5 = (b)this.Om.add(b4);
        e.Vq().Vp(this.NT.length, new f(this, array, b2, b3, b5));
        return b5;
    }
    
    void VQ() {
        super.VQ();
        final j[] nt = this.NT;
        for (int length = nt.length, i = 0; i < length; ++i) {
            nt[i].Vw();
        }
    }
    
    public void VR(final a a, final int n, final b b, final b b2, final b b3) {
        int i = 0;
        b.Vg(b, b2, this.On, false);
        e.Vq().Vp(this.NT.length, new w(this, n, (ArrayList[])this.Oi.Ug(n), (b)this.Oh.Ug(n), (b)this.Om.Ug(n - 1)));
        this.Oe.clear();
        for (int j = 0; j < this.NT.length; ++j) {
            this.Oe.Ve(this.NT[j].Vv());
        }
        this.Of.clear();
        while (i < this.NT.length) {
            this.Of.Ve(this.NT[i].VA());
            ++i;
        }
    }
    
    public void Wc() {
        super.Wc();
        final j[] nt = this.NT;
        for (int length = nt.length, i = 0; i < length; ++i) {
            nt[i].VB();
        }
    }
    
    public v clone() {
        return null;
    }
    
    public void update() {
        final j[] nt = this.NT;
        for (int length = nt.length, i = 0; i < length; ++i) {
            nt[i].update();
        }
    }
}
