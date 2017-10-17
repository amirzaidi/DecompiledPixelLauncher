// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.Iterator;
import java.util.ArrayList;

class u implements c
{
    final /* synthetic */ b OS;
    final /* synthetic */ b OT;
    final /* synthetic */ o OU;
    final /* synthetic */ ArrayList[] OV;
    
    u(final o ou, final ArrayList[] ov, final b ot, final b os) {
        this.OU = ou;
        this.OV = ov;
        this.OT = ot;
        this.OS = os;
    }
    
    public Boolean Ub(final int n) {
        int i = 0;
        final int n2 = n / this.OU.Pf;
        final int n3 = n % this.OU.Pf;
        final double n4 = this.OU.Ph.Nl[this.OU.Pf * n2 + n3];
        if (!this.OU.Pd) {
            for (int j = 0; j < this.OU.Pe; ++j) {
                final double[] nl = this.OU.Ov.Nl;
                final int n5 = this.OU.Pf * j + n3;
                nl[n5] += this.OT.Nl[this.OU.Pe * n2 + j] * n4;
            }
        }
        else {
            for (final com.google.research.reflection.common.c c : this.OV[n2]) {
                final double[] nl2 = this.OU.Ov.Nl;
                final int n6 = c.MV * this.OU.Pf + n3;
                nl2[n6] += c.MW * n4;
            }
        }
        if (this.OU.OW && this.OS != null) {
            while (i < this.OU.Pf) {
                final double[] nl3 = this.OU.OD.Nl;
                final int n7 = this.OU.Pf * i + n3;
                nl3[n7] += this.OS.Nl[this.OU.Pf * n2 + i] * n4;
                ++i;
            }
        }
        final double[] nl4 = this.OU.OA.Nl;
        nl4[n3] += n4;
        return true;
    }
}
