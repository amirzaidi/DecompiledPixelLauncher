// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.support.v4.a.d;
import android.support.v4.a.i;

class aq
{
    static i Sk;
    E Sj;
    E Sl;
    int Sm;
    
    static {
        aq.Sk = new d(20);
    }
    
    static aq abA() {
        aq aq = (aq)android.support.v7.widget.aq.Sk.agV();
        if (aq == null) {
            aq = new aq();
        }
        return aq;
    }
    
    static void abB() {
        while (aq.Sk.agV() != null) {}
    }
    
    static void abz(final aq aq) {
        aq.Sm = 0;
        aq.Sj = null;
        aq.Sl = null;
        aq.Sk.agT(aq);
    }
}
