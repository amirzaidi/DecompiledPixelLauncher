// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import java.util.Iterator;
import com.google.research.reflection.common.a;

public class g extends b
{
    public int UF() {
        return 4;
    }
    
    public com.google.research.reflection.layers.b UG(final a a, final com.google.research.reflection.a.b b) {
        final int n = 1;
        final double n2 = 1.0;
        final com.google.research.reflection.layers.b b2 = new com.google.research.reflection.layers.b(n, 4);
        for (final com.google.research.reflection.a.a a2 : com.google.research.reflection.common.b.Up(b, "headset")) {
            int n3;
            if (b.ax() - a2.au() >= 600000L) {
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
                            b2.Mr[3] = n2;
                        }
                        else {
                            b2.Mr[2] = n2;
                        }
                    }
                    else {
                        b2.Mr[n] = n2;
                    }
                }
                else {
                    b2.Mr[0] = n2;
                }
            }
        }
        return b2;
    }
    
    public b clone() {
        return new g();
    }
}
