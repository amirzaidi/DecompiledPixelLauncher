// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import android.content.Context;
import com.google.android.gms.internal.i;

public abstract class g
{
    private static i lT;
    private static boolean lW;
    static Context ma;
    private static final Object mb;
    private final String lU;
    private final int lV;
    private final String lX;
    private final String lY;
    private Object lZ;
    private final com.google.android.gms.phenotype.i mc;
    private final String md;
    private final Object me;
    
    static {
        mb = new Object();
        g.ma = null;
        g.lW = false;
        g.lT = i.sh("gms:phenotype:phenotype_flag:debug_bypass_phenotype", false);
    }
    
    public g(final String lu, final String lx, final String md, final int lv, final String ly, final com.google.android.gms.phenotype.i mc, final Object me) {
        this.lZ = null;
        this.lU = lu;
        this.lX = lx;
        this.md = md;
        this.lV = lv;
        this.lY = ly;
        this.mc = mc;
        this.me = me;
    }
    
    public static void pe(final Context ma) {
        synchronized (g.mb) {
            if (g.ma == null) {
                g.ma = ma.getApplicationContext();
                if (g.ma == null) {
                    g.ma = ma;
                }
            }
            // monitorexit(g.mb)
            i.sj(ma);
            g.lW = false;
        }
    }
    
    private static g pf(final String s, final String s2, final String s3, final int n, final String s4, final com.google.android.gms.phenotype.i i, final boolean b) {
        return new p(s, s2, s3, n, s4, i, b, s3);
    }
}
