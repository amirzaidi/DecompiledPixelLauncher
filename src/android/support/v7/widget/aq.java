// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.support.v4.a.d;
import android.support.v4.a.j;

class aq
{
    static j TT;
    E TS;
    E TU;
    int TV;
    
    static {
        aq.TT = new d(20);
    }
    
    static void acA(final aq aq) {
        aq.TV = 0;
        aq.TS = null;
        aq.TU = null;
        aq.TT.aip(aq);
    }
    
    static aq acB() {
        aq aq = (aq)android.support.v7.widget.aq.TT.air();
        if (aq == null) {
            aq = new aq();
        }
        return aq;
    }
    
    static void acC() {
        while (aq.TT.air() != null) {}
    }
}
