// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.a.a;

public class e
{
    private final int KA;
    
    public e(final boolean b, final boolean b2, final boolean b3) {
        int n = false ? 1 : 0;
        boolean b4;
        if (!b) {
            b4 = false;
        }
        else {
            b4 = true;
        }
        final boolean b5 = b4 | false;
        int n2;
        if (!b2) {
            n2 = 0;
        }
        else {
            n2 = 2;
        }
        final boolean b6 = (n2 | (b5 ? 1 : 0)) != 0x0;
        if (b3) {
            n = 4;
        }
        this.KA = ((b6 ? 1 : 0) | n);
    }
}
