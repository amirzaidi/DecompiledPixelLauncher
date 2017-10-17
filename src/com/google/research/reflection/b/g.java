// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import java.util.Iterator;
import com.google.research.reflection.common.a;

public class g extends b
{
    public int Ts() {
        return 4;
    }
    
    public com.google.research.reflection.layers.b Tt(final a a, final com.google.research.reflection.a.b b) {
        final int n = 1;
        final double n2 = 1.0;
        final com.google.research.reflection.layers.b b2 = new com.google.research.reflection.layers.b(n, 4);
        for (final com.google.research.reflection.a.a a2 : com.google.research.reflection.common.b.Tc(b, "headset")) {
            int n3;
            if (b.F() - a2.D() >= 600000L) {
                n3 = n;
            }
            else {
                n3 = 0;
            }
            if (n3 == 0) {
                if (!a2.getId().equals("headset_wired_in")) {
                    if (!a2.getId().equals("headset_wired_out")) {
                        if (!a2.getId().equals("headset_bluetooth_in")) {
                            if (!a2.getId().equals("headset_bluetooth_out")) {
                                continue;
                            }
                            b2.Nl[3] = n2;
                        }
                        else {
                            b2.Nl[2] = n2;
                        }
                    }
                    else {
                        b2.Nl[n] = n2;
                    }
                }
                else {
                    b2.Nl[0] = n2;
                }
            }
        }
        return b2;
    }
    
    public b clone() {
        return new g();
    }
}
